class ChallengeOpenAi
  def initialize(challenge)
    @client = OpenAI::Client.new
    @challenge = challenge
  end


  def call
    chatgpt_api_call
  end

  private

  def chatgpt_api_call
    @client.chat(parameters: {
                 model: "gpt-3.5-turbo",
                 messages: [{ role: "user", content: "Propose moi 3 défis pour une application de challenge, pour une seule personne, sans image ni vidéos à générer, sous forme de hash ruby, en fonction des couple key/value suivant : \n Name = trouve moi un nom (3 mots maximum) à partir des informations \n Level = facile (facile, moyen ou difficile) \n Format : dans la vrai vie (la vraie vie ou en ligne) \n Category = Culturel description = Série TV, Récent, US \n Content = décris moi le défis ici en quelques mots Time = intermédiaire (court, intermédiaire, long) \n Reward = en points en fonction du level et du temps ( level : facile / time : court / reward : 50pts level : facile / time : intermédiaire / reward : 75pts level : facile / time : long / rewards : 100pts level : moyen / time : court / rewards : 75pts level : moyen / time : intermédiaire / rewards : 100pts level : moyen / time : long / rewards : 150pts level : difficile / time : court / rewards : 100pts level : difficile / time : intermédiaire / rewards : 150pts level : difficile / time : long / rewards : 200pts \n Steps : Découpe moi le défis en plusieurs steps (entre 1 et 5 steps selon le time du défis)"}]
    })
  end
end
