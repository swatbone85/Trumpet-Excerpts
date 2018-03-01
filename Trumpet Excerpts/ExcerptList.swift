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
    let firstName: String
    let pieces: [String]
    
}


let soloExcerpts: [Excerpt] = [Excerpt.init(composer: "Bach",
                                            firstName: "Johann Sebastian",
                                            pieces: ["Brandenburg Concerto no.2",
                                                     "Christmas Oratorio",
                                                     "Magnificat",
                                                     "Mass in b minor"]),
                               Excerpt.init(composer: "Beethoven",
                                            firstName: "Ludwig van",
                                            pieces: ["Leonore Overture no. 2",
                                                     "Symphony no. 9"]),
                               Excerpt.init(composer: "Bizet",
                                            firstName: "Georges",
                                            pieces: ["Carmen"]),
                               Excerpt.init(composer: "Brahms",
                                            firstName: "Johannes",
                                            pieces: ["Academic Festival Overture",
                                                     "Symphony no. 2"]),
                               Excerpt.init(composer: "Bruckner",
                                            firstName: "Anton",
                                            pieces: ["Symphony no. 7",
                                                     "Symphony no. 8"]),
                               Excerpt.init(composer: "Donizetti",
                                            firstName: "Gaetano",
                                            pieces: ["Don Pasquale"]),
                               Excerpt.init(composer: "Dvorak",
                                            firstName: "Antonin",
                                            pieces: ["Symphony no. 8"]),
                               Excerpt.init(composer: "Mahler",
                                            firstName: "Gustav",
                                            pieces: ["Symphony no. 3",
                                                     "Symphony no. 5",
                                                     "Symphony no. 9"]),
                               Excerpt.init(composer: "Mussorgsky",
                                            firstName: "Modest",
                                            pieces: ["Pictures at an Exhibition"]),
                               Excerpt.init(composer: "Ravel",
                                            firstName: "Maurice",
                                            pieces: ["Piano Concerto"]),
                               Excerpt.init(composer: "Rimsky-Korsakov",
                                            firstName: "Nikolai",
                                            pieces: ["Scheherazade"]),
                               Excerpt.init(composer: "Tchaikovsky",
                                            firstName: "Pyotr Ilych",
                                            pieces: ["The Nutcracker",
                                                     "Swan Lake",
                                                     "Symphony no. 4",
                                                     "Symphony no. 5"]),
                               Excerpt.init(composer: "Wagner",
                                            firstName: "Richard",
                                            pieces: ["Parsifal",
                                                     "Tannhauser"])
                               ]
