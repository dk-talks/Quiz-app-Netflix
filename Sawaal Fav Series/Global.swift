//
//  Global.swift
//  Sawaal Fav Series
//
//  Created by Dinesh Sharma on 06/04/23.
//

import Foundation

struct questions {
    
    static let moneyHiest: String = "MH"
    static let vampireDiaries: String = "TVD"
    static let strangerThings: String = "ST"
    
    static let MH: [Question] = [
        Question(question: "1. What was the Professor's real name?", options: ["Ricardo Ramos", "Sergio Marquina", "Andres de Fonollosa", "Augustin Ramos"], answer: "Sergio Marquina"),

        Question(question: "2. Who planned the Bank of Spain heist?", options: ["The Professor's father", "The Professor", "Berlin", "Palermo"], answer: "Berlin"),
        Question(question: "3. What was the relation between Berlin and The Professor?", options: ["Best Friend",
                                                                                        "Friend's Brother",
                                                                                        "Real Brother",
                                                                                        "Lovers"], answer: "Real Brother"),

        Question(question: "4. Where did Raquel find The Professor after the first heist?", options: ["Sri Lanka",
                                                                                                               "Maldives",
                                                                                                               "Indonesia",
                                                                                                               "Thailand"], answer: "Thailand"),
        Question(question: "5. Which disease does Raquel's mother had?", options: ["Parkinson's disease",
                                                                                            "Alzheimer's disease",
                                                                                            "Huntington's disease",
                                                                                            "Congestive heart failure"], answer: "Alzheimer's disease"),
        Question(question: "6. Who was Gandia?", options: ["Hostage",
                                                                    "Robber",
                                                                    "S.W.A.T",
                                                                    "Personal Security Guard"], answer: "Personal Security Guard"),

        Question(question: "7. With whom does Berlin get married?", options: ["Nairobi",
                                                                                       "tatiana",
                                                                                       "Ariadna",
                                                                                       "Palermo"], answer: "tatiana"),
        Question(question: "8. What was the name of Stockholm's son?", options: ["Ohio",
                                                                                          "Miami",
                                                                                          "Cincinnati",
                                                                                          "Lisbon"], answer: "Cincinnati"),
        Question(question: "9. How many robbers died till the 2nd heist?", options: ["Three",
                                                                                              "Four",
                                                                                              "Five",
                                                                                              "Six"], answer: "Four"),

        Question(question: "10. How does Professor tell Raquel that he knows she is alive?", options: ["He sent a letter to her.",
                                                                                                                 "He calls her",
                                                                                                                 "He surrender himself.",
                                                                                                                 "He sent his watch."], answer: "He sent his watch.")

    ]
    
    static let TVD: [Question] = [
        Question(
            question: "What is the name of the town where the Vampire Diaries is set?",
            options: ["Sunnydale", "Tree Hill","Mystic Falls", "Riverdale"],
            answer: "Mystic Falls"
        ),
        Question(
            question: "Who is the main protagonist in the Vampire Diaries?",
            options: ["Elena Gilbert", "Caroline Forbes", "Bonnie Bennett", "Katherine Pierce"],
            answer: "Elena Gilbert"
        ),
        Question(
            question: "What is the name of the vampire who falls in love with Elena?",
            options: ["Damon Salvatore","Stefan Salvatore", "Klaus Mikaelson", "Elijah Mikaelson"],
            answer: "Stefan Salvatore"
        ),
        Question(
            question: "What is the name of the vampire who is Damon's best friend?",
            options: ["Alaric Saltzman", "Enzo St. John", "Kai Parker", "Kol Mikaelson"],
            answer: "Enzo St. John"
        ),
        Question(
            question: "What is the name of the werewolf who becomes Tyler's love interest?",
            options: ["Vicki Donovan", "Anna Zhu", "Jules", "Hayley Marshall"],
            answer: "Hayley Marshall"
        ),
        Question(
            question: "What is the name of the witch who is Bonnie's mother?",
            options: ["Abby Bennett Wilson", "Esther Mikaelson", "Liv Parker", "Jo Laughlin"],
            answer: "Abby Bennett Wilson"
        ),
        Question(
            question: "What is the name of the vampire who was turned by Katherine Pierce?",
            options: ["Pearl", "Rose", "Anna", "Isobel"],
            answer: "Rose"
        ),
        Question(
            question: "What is the name of the villain in Season 2 who wants to break the curse of the sun and the moon?",
            options: ["Klaus Mikaelson", "Elijah Mikaelson", "Kol Mikaelson", "Finn Mikaelson"],
            answer: "Klaus Mikaelson"
        ),
        Question(
            question: "What is the name of the other side of the supernatural world in the Vampire Diaries?",
            options: ["The Dark Side", "The Bright Side", "The Other Side", "The Shadow Realm"],
            answer: "The Other Side"
        ),
        Question(
            question: "What is the name of the final season of the Vampire Diaries?",
            options: ["Season 8", "Season 9", "Season 10", "There was no final season"],
            answer: "Season 8"
        )
    ]
    
    static let ST: [Question] = [
        Question(
            question: "What is the name of the town where Stranger Things is set?",
            options: ["Hawkins", "Derry", "Sunnydale", "Riverdale"],
            answer: "Hawkins"
        ),
        Question(
            question: "What is the name of the telekinetic girl in Stranger Things?",
            options: ["Eleven", "Seven", "Nine", "Thirteen"],
            answer: "Eleven"
        ),
        Question(
            question: "What is the name of the game that the boys play in Stranger Things?",
            options: ["Risk", "Monopoly", "Settlers of Catan", "Dungeons & Dragons"],
            answer: "Dungeons & Dragons"
        ),
        Question(
            question: "What is the name of the government agency that is experimenting on Eleven in Stranger Things?",
            options: ["Area 51", "The CIA", "Hawkins National Laboratory", "NASA"],
            answer: "Hawkins National Laboratory"
        ),
        Question(
            question: "What is the name of Will's mother in Stranger Things?",
            options: ["Nancy", "Joyce", "Karen", "Barb"],
            answer: "Joyce"
        ),
        Question(
            question: "What is the name of the police chief in Stranger Things?",
            options: ["Jim Hopper", "Bob Newby", "Mike Wheeler", "Steve Harrington"],
            answer: "Jim Hopper"
        ),
        Question(
            question: "What is the name of the arcade in Stranger Things?",
            options: ["The Grid", "The Oasis", "The Palace", "The Hive"],
            answer: "The Palace"
        ),
        Question(
            question: "What is the name of the monster in the first season of Stranger Things?",
            options: ["The Demogorgon", "The Mind Flayer", "The Hydra", "The Kraken"],
            answer: "The Demogorgon"
        ),
        Question(
            question: "What is the name of the new girl who joins the gang in Stranger Things 2?",
            options: ["Robin", "Erica", "Kali", "Max"],
            answer: "Max"
        ),
        Question(
            question: "What is the name of the mall that features prominently in Stranger Things 3?",
            options: ["Starcourt", "Westfield", "Meadowhall", "Mall of America"],
            answer: "Starcourt"
        )
    ]

    
}

