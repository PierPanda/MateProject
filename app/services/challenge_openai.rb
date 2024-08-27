class ChallengeOpenai
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
                 messages: [{ role: "user", content: "Propose moi 3 défis pour une application de challenge, pour une seule personne, sans image ni vidéos à générer, sous forme de hash ruby, en fonction des couple key/value suivant : \n Name = trouve moi un nom (3 mots maximum) à partir des informations \n Level = facile (facile, moyen ou difficile) \n Format : dans la vrai vie (la vraie vie ou en ligne) \n Category = Culturel description = Série TV, Récent, US \n Content = décris moi le défis ici en quelques mots Time = intermédiaire (court, intermédiaire, long) \n Reward = en points en fonction du level et du temps ( level : facile / time : court / reward : 50pts level : facile / time : intermédiaire / reward : 75pts level : facile / time : long / rewards : 100pts level : moyen / time : court / rewards : 75pts level : moyen / time : intermédiaire / rewards : 100pts level : moyen / time : long / rewards : 150pts level : difficile / time : court / rewards : 100pts level : difficile / time : intermédiaire / rewards : 150pts level : difficile / time : long / rewards : 200pts \n Steps : Découpe moi le défis en plusieurs steps (entre 1 et 5 steps selon le time du défis)"}]
    })
  end

  def parse_and_assign_challenge_details(content)
    # Supposons que response contient le texte brut de l'API
    regexp = /\{[^}]*name\s*=\s*"(?<name>[^"]*)".*level\s*=\s*"(?<level>[^"]*)".*format\s*=\s*"(?<format>[^"]*)".*category\s*=\s*"(?<category>[^"]*)".*content\s*=\s*"(?<content>[^"]*)".*time\s*=\s*"(?<time>[^"]*)".*reward\s*=\s*(?<reward>\d+)[^}]*\}/

    matches = content.match(/#{regexp}/)
    if matches
      @challenge = {
        name: matches[:name],
        level: matches[:level],
        format: matches[:format],
        category: matches[:category],
        content: matches[:content],
        time: matches[:time],
        reward: matches[:reward].to_i
    }
    end
    # @challenge.name = matches[:name]
    # @challenge.level = matches[:level]
    # @challenge.format = matches[:format]
    # @challenge.category = matches[:category]
    # @challenge.content = matches[:content]
    # @challenge.time = matches[:time]
    # @challenge.reward = matches[:reward].to_i
  end
end
