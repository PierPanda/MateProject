class ChallengeOpenaiService
  def initialize(challenge)
    @client = OpenAI::Client.new
    @challenge = challenge
  end


  def call
    response = chatgpt_api_call
    content = response.dig("choices", 0, "message", "content")
    parse_and_assign_challenge_details(content)
  end

  private

  def chatgpt_api_call
    @client.chat(parameters: {
                 model: "gpt-3.5-turbo",
                #  messages: [{ role: "user", content: "Tu est un générateur de défis, je vais te donner des contraintes(la durée du défis, sa difficulté, sa catégorie et quelques informations supplémentaire.) En tennant compte de ces contraintes génère moi un nom et un description du défis. Exemple : name: un nom court (3 mots maximum), content: description du défi (maximum 40 mots). Voicis les contraintes: durée du défis #{@challenge.time}, difficulté: #{@challenge.level}, catégorie: #{@challenge.category} et détails du défis: #{@challenge.content}" }]
                 messages: [{ role: "user", content: "Tu est un générateur de défis, je vais te donner des contraintes(la durée du défis, sa difficulté, sa catégory et quelques informations supplémentaire.) En tennant compte de ces contraintes génère moi un name et un content du défis ainsi qu'une reward. Exemple : name: un nom court (3 mots maximum), content: description du défi (maximum 40 mots), reward: donne lui un nombre de points en fonction du level et du time ( level : facile / time : court / reward : 50pts level : facile / time : intermédiaire / reward : 75pts level : facile / time : long / reward : 100pts level : moyen / time : court / reward : 75pts level : moyen / time : intermédiaire / reward : 100pts level : moyen / time : long / reward : 150pts level : difficile / time : court / reward : 100pts level : difficile / time : intermédiaire / reward : 150pts level : difficile / time : long / reward : 200pts ). Voicis les contraintes: difficulté: #{@challenge.level} catégory: #{@challenge.category} informations supplémentaires: (#{@challenge.content}) durée du défis: #{@challenge.time}"}]
    })
  end

  def parse_and_assign_challenge_details(content)
    regexp = /
  name:\s*(?<name>"[^"]+"|[^,\n]+),?\s*
  content:\s*(?<content>"[^"]+"|[^,\n]+),?\s*
  reward:\s*(?<reward>\d+)
/mix

    matches = content.match(regexp)
    if matches
      @challenge.update(
        name: matches[:name],
        format: "Dans la vrai vie",
        content: matches[:content],
        reward: matches[:reward].to_i
      )

    end
  end
end
