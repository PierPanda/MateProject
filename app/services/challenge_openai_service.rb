class ChallengeOpenaiService
  def initialize(challenge)
    @client = OpenAI::Client.new
    @challenge = challenge
  end

  def call
    response = chatgpt_api_call
    content = response.dig("choices", 0, "message", "content")
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
          position: step["order"]
          )
      end

    end

  private

  def chatgpt_api_call
    @client.chat(
      parameters: {
          model: "gpt-4o",
          response_format: { type: "json_object" },
          messages: [{ role: "user", content: "Bonjour, peux-tu rendre du JSON stp.

          Tu est un générateur de défis, je vais te donner des contraintes(la durée du défis, sa difficulté, sa catégory et quelques informations supplémentaire.) En tennant compte de ces contraintes génère moi un name et un content du défis ainsi qu'une reward et les étapes clés. Exemple : name: un nom court (3 mots maximum), content: description du défi (maximum 40 mots). Voicis les contraintes: difficulté: #{@challenge.level} catégory: #{@challenge.category} informations supplémentaires: (#{@challenge.content}) durée du défis: #{@challenge.time}

          Voilà le format que j'attend comme réponse:

            {'name': ici on veut le titre du challenge,
            'content': ici on veut le contenu du challenge,
            'reward': donne lui un nombre de points en fonction du level et du time ( level : facile / time : court / reward : 50pts level : facile / time : intermédiaire / reward : 75pts level : facile / time : long / reward : 100pts level : moyen / time : court / reward : 75pts level : moyen / time : intermédiaire / reward : 100pts level : moyen / time : long / reward : 150pts level : difficile / time : court / reward : 100pts level : difficile / time : intermédiaire / reward : 150pts level : difficile / time : long / reward : 200pts ),
            'steps' => Je veux que tu me décomposes le challenge en steps (minimum: 2) que tu stockeras dans un array. Cet array contiendra un hash avec pour chaque élément une clé que l'on appelera 'order' qui aura pour valeur l'ordre chronologique de la step et une clé 'description' qui aura pour valeur la description de la step
          }"}]
    })
  end
end
