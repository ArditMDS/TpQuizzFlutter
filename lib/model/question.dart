import 'package:flutter/material.dart';

class Question {
  String question;
  String thumbnail;
  bool answer;
  String explanation;
  Question({
    required this.answer,
    required this.question,
    required this.thumbnail,
    required this.explanation
  });
}

final List<Question> questionList = [
  Question(
      question: "Faker a gagné 4 fois les worlds de League of Legends ?",
      answer: true,
      explanation: 'Il a gagné pour la 4eme fois cette année car il est, tout simplement, le GOAT',
      thumbnail: 'faker.webp'
  ),
  Question(
      question: "Gentle Mates est l'équipe la plus nulle de la ligue française de LOL (LFL) ?",
      answer: true,
      explanation: "C'est un fait, elle à perdu contre TDS (la honte)",
      thumbnail: 'm8.webp'
  ),
  Question(
      question: "Valentin Folliguet est-il stuck silver sur Valorant parce qu'il est nul au jeu ?",
      answer: false,
      explanation: "C'est faux, Valentin est excellent sur Valorant, le jeu édité par Riot Games. Malheuresement ses teams mates sont la raison de son stuck silver (au cas où, mon paypal: mataj.ardit@gmail.com)",
      thumbnail: 'silver.jpg'),
  Question(
      question: "Serait-je un jour à la Kcorp et gagnerais-je un jour les worlds de League Of Legends ?",
      answer: true,
      explanation: "C'est en effet la pure vérité, je gagnerai les worlds et je ruinerai Faker en midlane avec mon Azir légendaire tout ça en jouant dans la meilleur équipe du monde",
      thumbnail: 'kcorpLogo.png'
  ),
  Question(
      question: "Cette image est-elle tiré du jeu No Man's Sky ?",
      answer: false,
      explanation: "Eh bien non, elle vient du meilleur jeu jamais fait à ce jour, aka Outer Wilds",
      thumbnail: 'OW.webp'
  ),
  Question(
      question: "Assassin's creed Valhalla et Odyssey sont-ils les meilleures de toutes la license ?",
      answer: false,
      explanation: "Et non, il s'agit des pires jeux de la license AC, les meilleurs étant bien évidemment Unity et Black Flag",
      thumbnail: 'AC.webp'
  ),
  Question(
      question: "TheGreatReview est le meilleur story-teller du youtube game ?",
      answer: true,
      explanation: 'Ce mec est une légende (sa meilleur vidéo étant celle sur Outer Wilds suivi de près par celle sur les Rox Tigers)',
      thumbnail: 'TGR.webp'
  ),
  Question(
      question: "Suis-je le meilleur développeur de cette salle ?",
      answer: false,
      explanation: "Malheuresement je n'arrive pas à la cheville du GOAT: Valentin Folliguet ! (pour rappel, mon paypal: mataj.ardit@gmail.com)",
      thumbnail: 'VF.png'
  ),
  Question(
      question: "En 2020 je me suis fais bannir mon premier compte LoL et ai donc perdu 350€ de skins à cause de ça",
      answer: true,
      explanation: "... je ne préfère de pas en parler",
      thumbnail: 'RG.webp'
  ),
  Question(
      question: "J'ai voté Macron au premier tour",
      answer: false,
      explanation: "Macron démission",
      thumbnail: 'pessimacron.jpg'
  )
];