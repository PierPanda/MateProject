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
    response = @client.chat(
      parameters: {
          model: "gpt-4o",
          response_format: { type: "json_object" },
          messages: [{ role: "user", content: "Bonjour, peux-tu rendre du JSON stp. Tu est un générateur de défis, je vais te donner des contraintes(la durée du défis, sa difficulté, sa catégory et quelques informations supplémentaire.) En tennant compte de ces contraintes génère moi un name et un content du défis ainsi qu'une reward. Je veux également que tu me décomposes le challenge en steps (minimum: 2) que tu stockeras dans un array. Exemple : name: un nom court (3 mots maximum), content: description du défi (maximum 40 mots), reward: donne lui un nombre de points en fonction du level et du time ( level : facile / time : court / reward : 50pts level : facile / time : intermédiaire / reward : 75pts level : facile / time : long / reward : 100pts level : moyen / time : court / reward : 75pts level : moyen / time : intermédiaire / reward : 100pts level : moyen / time : long / reward : 150pts level : difficile / time : court / reward : 100pts level : difficile / time : intermédiaire / reward : 150pts level : difficile / time : long / reward : 200pts ). Voicis les contraintes: difficulté: #{@challenge.level} catégory: #{@challenge.category} informations supplémentaires: (#{@challenge.content}) durée du défis: #{@challenge.time}"}]
    })
    # response = @client.chat(
    #   parameters: {
    #       model: "gpt-4o",
    #       response_format: { type: "json_object" },
    #       messages: [{ role: "user", content: "Hello! Give me some JSON please."}],
    #       temperature: 0.7,
    #   })
      # puts response.dig("choices", 0, "message", "content")
      # {
      #   "name": "John",
      #   "age": 30,
      #   "city": "New York",
      #   "hobbies": ["reading", "traveling", "hiking"],
      #   "isStudent": false
      # }
  end

  def parse_and_assign_challenge_details(content)
#     regexp = /
#   name:\s*(?<name>"[^"]+"|[^,\n]+),?\s*
#   content:\s*(?<content>"[^"]+"|[^,\n]+),?\s*
#   reward:\s*(?<reward>\d+)
# /mix

#     matches = content.match(regexp)
#     if matches
#       @challenge.update(
#         name: matches[:name],
#         format: "Dans la vrai vie",
#         content: matches[:content],
#         reward: matches[:reward].to_i
#       )

#     end
    result = JSON.parse(content)
    @challenge.update(
      name: result["name"],
      content: result["content"],
      reward: result["reward"],
    )
    result["steps"].each do |step|
      Step.create(
        challenge_id: @challenge.id,
        name: step["description"],
        position: step["stepNumber"]
        )
    end
  end
end
