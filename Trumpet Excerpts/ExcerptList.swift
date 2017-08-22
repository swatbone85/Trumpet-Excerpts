//
//  ExcerptList.swift
//  Trumpet Excerpts
//
//  Created by Thomas Swatland on 22/08/2017.
//  Copyright © 2017 Thomas Swatland. All rights reserved.
//

import Foundation

struct Excerpt {
    
    let composer: String
    let pieces: [String]
    
}


let soloExcerpts: [Excerpt] = [Excerpt.init(composer: "Bach",
                                            pieces: ["Christmas Oratorio",
                                                     "Mass in b minor"]),
                               Excerpt.init(composer: "Beethoven",
                                            pieces: ["Leonore Overture no. 2"]),
                               Excerpt.init(composer: "Bizet",
                                            pieces: ["Carmen"]),
                               Excerpt.init(composer: "Bruckner",
                                            pieces: ["Symphony no. 7",
                                                     "Symphony no. 8"]),
                               Excerpt.init(composer: "Donizetti",
                                            pieces: ["Don Pasquale"]),
                               Excerpt.init(composer: "Mahler",
                                            pieces: ["Symphony no. 3",
                                                     "Symphony no. 5",
                                                     "Symphony no. 9"]),
                               Excerpt.init(composer: "Mussorgsky",
                                            pieces: ["Pictures at an Exhibition"]),
                               Excerpt.init(composer: "Ravel",
                                            pieces: ["Piano Concerto"]),
                               Excerpt.init(composer: "Respighi",
                                            pieces: ["Pines of Rome"]),
                               Excerpt.init(composer: "Rimsky-Korsakov",
                                            pieces: ["Scheherazade"]),
                               Excerpt.init(composer: "Wagner",
                                            pieces: ["Parsifal"])
                               ]







let tuttiExcerpts: [Excerpt] = [Excerpt.init(composer: "Bach",
                                            pieces: ["Christmas Oratorio"]),
                               Excerpt.init(composer: "Beethoven",
                                            pieces: ["Symphony no. 7"]),
                               Excerpt.init(composer: "Mahler",
                                            pieces: ["Symphony no. 3",
                                                     "Symphony no. 5"]),
                               Excerpt.init(composer: "Schumann",
                                            pieces: ["Symphony no. 2"]),
                               Excerpt.init(composer: "Tchaikovsky",
                                            pieces: ["Neapolitanischer Tanz",
                                                     "Symphony no. 5"])]
