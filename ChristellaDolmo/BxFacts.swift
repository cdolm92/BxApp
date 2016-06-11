//
//  BxFacts.swift
//  ChristellaDolmo
//
//  Created by Christella on 4/29/16.
//  Copyright © 2016 Christella. All rights reserved.
//

import Foundation

struct BxFacts {
    
    let factsArray = [
        "Edgar Allan Poe called The Bronx home where wrote Annabel Lee and several other of his famous poems.",
        "The Bronx was known as Rananchqua by the Siwanoy, a group of Native Americans of the Lenape Tribe.",
        "Morrisania and Morris Avenue get their names from the Morris family of The Bronx of which Lewis Morris was one of the signers of the Declaration of Independence.",
        "In the 17th century, the Bronx River was known as the Aquahung River by the Native Americans",
        "The Bronx was once part of Westchester County",
        "Abraham Lincoln’s statue at the Lincoln Memorial in DC was carved in The Bronx",
        "The Bronx is the greenest borough with the highest percentage of land dedicated to parks",
        "Pelham Bay Park is the largest park in New York City with 2,765 acres",
        "Calvin Klein was born, raised, and lived in The Bronx",
        "Neil deGrasse Tyson, the legendary astrophysicist, was raised in The Bronx and attended Bronx High School of Science.",
        "Ralph Lauren was born and raised in The Bronx and attended the same school as Calvin Klein, PS 80",
        "The Bronx is the only borough with the article 'the' in it's name",
        "Thirteen bridges connect The Bronx to Manhattan, including 2 for rail, making it the borough with the most connecttions to Manhattan",
        "The Bronx is home to the world’s largest collection of Art Deco architecture, mostly concentrated along the Grand Concourse",
        "Hart Island, aka Potter’s Field, just off of City Island is the “largest tax funded cemetery in the world”",
        "Hart Island is the resting place for almost a million unclaimed bodies of the homeless, destitute, and stillborn",
        "Bronx Community College was originally New York University’s uptown campus and opened in 1894",
        "President John F. Kennedy lived in  Riverdale, The Bronx for 2 years",
        "The United States Capital dome was made in The Bronx",
        "The Bronx Zoo first opened in 1899, consists of 265 acres, has 5000 animals and 700 species",
        "The Bronx was founded by Jonas Bronck in 1636 as farmland",
        "The Van Cortland House Museum, built between 1748-49, is the oldest building in The Bronx",
        "Supreme Court Justice Sonia Sotomayor was born in The Bronx",
        "In the early 20th century The South Bronx was known as a piano manufacturing center, with 63 factories in 1919",
        "The phrase 'the Bronx is burning' was attributed to the arson epidemic in The South Bronx during the 1970's",
        "Between 1970 and 1980 The South Bronx experienced urban decay due to economic collapse",
        "Bronx County was the third most densely populated county in the United States, after Manhattan and Brooklyn"
    ]
    
    func randomFact() -> String {
        let unsignedArrayCount = UInt32(factsArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
    
}