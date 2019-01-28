//
//  ViewController.swift
//  Battle Front 2 HVV Counters
//
//  Created by Gorkem on 2019-01-25.
//  Copyright © 2019 Star. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    let rey = Heroes( name: "Rey", counters: ["Iden Versio","Emperor Palpatine",""], heroesCounter: ["General Grevious","Dooku"] )
    
    let darthVader = Villains( name: "Darth Vader", counters: ["Han solo","Leia Organa","Finn"], villainCounter: ["Obi-Wan Kenobi","Yoda"] )
    
    let hanSolo = Heroes( name: "Han Solo", counters: ["Darth Maul","Boba Fett"], heroesCounter: ["Darth Vader","Kylo Ren","General Grevious","Count Dooku"] )
    
    let idenVersio = Villains( name: "Iden Versio", counters: ["Leia Organa","Finn"], villainCounter: ["Rey","Chewbacca","Obi-Wan Kenobi","Yoda"] )
    
    let darthMaul = Villains( name: "Darth Maul", counters: ["Yoda","Finn","Leia Organa"], villainCounter: ["Lando Calrissian","Chewbacca","Han Solo"] )
    
    let lukeSkywalker = Heroes( name: "Luke Skywalker", counters: ["Bossk","Captain Phasma"], heroesCounter: ["Darth Maul","Emperor Palpatine","Boba Fett","General Grevious"] )
    
    let leiaOrgana = Heroes( name: "Leia Organa", counters: ["Emperor Palpatine","Boba Fett","Captain Phasma"], heroesCounter: ["Darth Vader","Darth Maul","Kylo Ren","General Grevious","Count Dooku"] )
    
    let emperorPalpatine = Villains( name: "Emperor Palpatine", counters: ["Luke Skywalker","Finn","Obi-Wan Kenobi","Yoda"], villainCounter: ["Leia Organa","Lando Calrissian","Chewbacca","Rey"] )
    
    let bossk = Villains( name: "Bossk", counters: ["Yoda","Obi-Wan Kenobi","Finn"], villainCounter: ["Rey","Luke Skywalker","Chewbacca"] )
    
    let landoCalrissian = Heroes( name: "Lando Calrissian", counters: ["Darth Maul", "Emperor Palpatine", "Count Dooku"], heroesCounter: ["Darth Vader", "General Grevious"] )
    
    let bobaFett = Villains( name: "Boba Fett", counters: ["Luke Skywalker","Yoda","Obi-Wan Kenobi"], villainCounter: ["Leia Organa","Chewbacca","Finn"] )
    
    let chewbacca = Heroes( name: "Chewbacca", counters: ["Darth Maul","Emperor Palpatine","Boba Fett","Kylo Ren","Dooku"], heroesCounter: ["Darth Vader"] )
    
    let yoda = Heroes( name: "Yoda", counters: ["Darth Vader","Iden Versio","General Grevious","Count Dooku"], heroesCounter: ["Emperor Palpatine","Bossk","Darth Maul","Boba Fett"] )
    
    let kyloRen = Villains( name: "Kylo Ren", counters: ["Leia Organa","Finn"], villainCounter: ["Chewbacca"] )
    
    let finn = Heroes( name: "Finn", counters: ["Boba Fett"], heroesCounter: ["Darth Vader","Iden Versio","Darth Maul","Emperor Palpatine","Bossk","Kylo Ren","General Grevious","Count Dooku"] )
    
    let captainPhasma = Villains( name: "Captain Phasma", counters: ["Leia Organa", "Lando Calrissian"], villainCounter: ["Luke Skywalker","Leia Organa","Chewbacca"] )
    
    let generalGrevious = Villains(name: "General Grevious", counters: ["Rey","Han Solo","Luke Skywalker","Leia Organa","General Grevious","Finn"], villainCounter: ["Yoda"])
    
    let obiwanKenobi = Heroes(name: "Obi-Wan Kenobi", counters: ["Darth Vader","Iden Versio"], heroesCounter: ["Emperor Palpatine","Bossk","Boba Fett"])
    
    let countDooku = Villains(name: "Count Dooku", counters: ["Rey","Han Solo","Leia Organa","Finn"], villainCounter: ["Lando Calrissian","Chewbacca","Yoda"])
    
    
    @IBOutlet weak var mainImage: UIImageView!
    
    // Best counter array
    var bestArray: Array<String> = [] //name
    var counterArray: Array<String> = [] // heroes' or villains' counters
    
    // Count for Villains
    
    var countBoba = 0
    var countBosk = 0
    var countMaul = 0
    var countGrevious = 0
    var countIden = 0
    var countKylo = 0
    var countVader = 0
    var countTheSenate = 0
    var countPhasma = 0
    var countDookulol = 0
    
    // Villains
    @IBAction func bobaButton(_ sender: Any) {
        if (countBoba % 2 == 0) {
            bestArray.append(bobaFett.name)
            counterArray.append(contentsOf:(bobaFett.villainCounter))
        }else if (countBoba % 2 == 1){
            bestArray.removeAll { $0 == bobaFett.name }
            counterArray.removeAll(where: {bobaFett.villainCounter.contains($0)})
            }
       // print(counterArray)
        countBoba = countBoba + 1
    }
    
    @IBAction func boskButton(_ sender: Any) {
        if (countBosk % 2 == 0) {
            bestArray.append(bossk.name)
            counterArray.append(contentsOf:(bossk.villainCounter))
        }else if (countBosk % 2 == 1){
            bestArray.removeAll { $0 == bossk.name }
            counterArray.removeAll(where: {bossk.villainCounter.contains($0)})
        }
       // print(counterArray)
        countBosk = countBosk + 1
        
    }
    
    @IBAction func maulButton(_ sender: Any) {
        if (countMaul % 2 == 0) {
            bestArray.append(darthMaul.name)
            counterArray.append(contentsOf:(darthMaul.villainCounter))
        }else if (countMaul % 2 == 1){
            bestArray.removeAll { $0 == darthMaul.name }
            counterArray.removeAll(where: {darthMaul.villainCounter.contains($0)})
        }
        countMaul = countMaul + 1
    }
    
    @IBAction func greviousButton(_ sender: Any) {
        if (countGrevious % 2 == 0) {
            bestArray.append(generalGrevious.name)
            counterArray.append(contentsOf:(generalGrevious.villainCounter))
        }else if (countGrevious % 2 == 1){
            bestArray.removeAll { $0 == generalGrevious.name }
            counterArray.removeAll(where: {generalGrevious.villainCounter.contains($0)})
        }
        countGrevious = countGrevious + 1
        
    }
    
    @IBAction func idenButton(_ sender: Any) {
        if (countIden % 2 == 0) {
            bestArray.append(idenVersio.name)
            counterArray.append(contentsOf:(idenVersio.villainCounter))
        }else if (countIden % 2 == 1){
            bestArray.removeAll { $0 == idenVersio.name }
            counterArray.removeAll(where: {idenVersio.villainCounter.contains($0)})
        }
        countIden = countIden + 1
        
    }
    @IBAction func kyloButton(_ sender: Any) {
        if (countKylo % 2 == 0) {
            bestArray.append(kyloRen.name)
            counterArray.append(contentsOf:(kyloRen.villainCounter))
        }else if (countKylo % 2 == 1){
            bestArray.removeAll { $0 == kyloRen.name }
            counterArray.removeAll(where: {kyloRen.villainCounter.contains($0)})
        }
        countKylo = countKylo + 1
        
    }
    
    @IBAction func vaderButton(_ sender: Any) {
        if (countVader % 2 == 0) {
            bestArray.append(darthVader.name)
            counterArray.append(contentsOf:(darthVader.villainCounter))
        }else if (countVader % 2 == 1){
            bestArray.removeAll { $0 == darthVader.name }
            counterArray.removeAll(where: {darthVader.villainCounter.contains($0)})
        }
        countVader = countVader + 1
        
    }
    
    @IBAction func palpatineButton(_ sender: Any) {
        if (countTheSenate % 2 == 0) {
            bestArray.append(emperorPalpatine.name)
            counterArray.append(contentsOf:(emperorPalpatine.villainCounter))
        }else if (countTheSenate % 2 == 1){
            bestArray.removeAll { $0 == emperorPalpatine.name }
            counterArray.removeAll(where: {emperorPalpatine.villainCounter.contains($0)})
        }
        countTheSenate = countTheSenate + 1
        
    }
    
    @IBAction func phasmaButton(_ sender: Any) {
        if (countPhasma % 2 == 0) {
            bestArray.append(captainPhasma.name)
            counterArray.append(contentsOf:(captainPhasma.villainCounter))
        }else if (countPhasma % 2 == 1){
            bestArray.removeAll { $0 == captainPhasma.name }
            counterArray.removeAll(where: {captainPhasma.villainCounter.contains($0)})
        }
        countPhasma = countPhasma + 1
        
    }
    
    @IBAction func dookuButton(_ sender: Any) {
        if (countDookulol % 2 == 0) {
            bestArray.append(countDooku.name)
            counterArray.append(contentsOf:(countDooku.villainCounter))
        }else if (countDookulol % 2 == 1){
            bestArray.removeAll { $0 == countDooku.name }
            counterArray.removeAll(where: {countDooku.villainCounter.contains($0)})
        }
        countDookulol = countDookulol + 1
        
    }
    
    // Count for Heroes
    
    var countChewy = 0
    var countFinn = 0
    var countHan = 0
    var countLeia = 0
    var countYoda = 0
    var countLando = 0
    var countLuke = 0
    var countObi = 0
    var countRey = 0
    
    // Heroes
    
    @IBAction func chewbaccaButton(_ sender: Any) {
        if (countChewy % 2 == 0) {
            bestArray.append(chewbacca.name)
            counterArray.append(contentsOf:(chewbacca.heroesCounter))
        }else if (countChewy % 2 == 1){
            bestArray.removeAll { $0 == chewbacca.name }
            counterArray.removeAll(where: {chewbacca.heroesCounter.contains($0)})
        }
        countChewy = countChewy + 1
        
    }
    
    @IBAction func finnButon(_ sender: Any) {
        if (countFinn % 2 == 0) {
            bestArray.append(finn.name)
            counterArray.append(contentsOf:(finn.heroesCounter))
        }else if (countFinn % 2 == 1){
            bestArray.removeAll { $0 == finn.name }
            counterArray.removeAll(where: {finn.heroesCounter.contains($0)})
        }
        countFinn = countFinn + 1
        
    }
    
    @IBAction func hanButton(_ sender: Any) {
        if (countHan % 2 == 0) {
            bestArray.append(hanSolo.name)
            counterArray.append(contentsOf:(hanSolo.heroesCounter))
        }else if (countHan % 2 == 1){
            bestArray.removeAll { $0 == hanSolo.name }
            counterArray.removeAll(where: {hanSolo.heroesCounter.contains($0)})
        }
        countHan = countHan + 1
        
    }
    
    @IBAction func leiaButton(_ sender: Any) {
        if (countLeia % 2 == 0) {
            bestArray.append(leiaOrgana.name)
            counterArray.append(contentsOf:(leiaOrgana.heroesCounter))
        }else if (countLeia % 2 == 1){
            bestArray.removeAll { $0 == leiaOrgana.name }
            counterArray.removeAll(where: {leiaOrgana.heroesCounter.contains($0)})
        }
        countLeia = countLeia + 1
        
    }
    
    @IBAction func yodaButton(_ sender: Any) {
        if (countYoda % 2 == 0) {
            bestArray.append(yoda.name)
            counterArray.append(contentsOf:(yoda.heroesCounter))
        }else if (countYoda % 2 == 1){
            bestArray.removeAll { $0 == yoda.name }
            counterArray.removeAll(where: {yoda.heroesCounter.contains($0)})
        }
        countYoda = countYoda + 1
        
    }
    
    @IBAction func landoButton(_ sender: Any) {
        if (countLando % 2 == 0) {
            bestArray.append(landoCalrissian.name)
            counterArray.append(contentsOf:(landoCalrissian.heroesCounter))
        }else if (countLando % 2 == 1){
            bestArray.removeAll { $0 == landoCalrissian.name }
            counterArray.removeAll(where: {landoCalrissian.heroesCounter.contains($0)})
        }
        countLando = countLando + 1
        
    }
    
    @IBAction func lukeButton(_ sender: Any) {
        if (countLuke % 2 == 0) {
            bestArray.append(lukeSkywalker.name)
            counterArray.append(contentsOf:(lukeSkywalker.heroesCounter))
        }else if (countLuke % 2 == 1){
            bestArray.removeAll { $0 == lukeSkywalker.name }
            counterArray.removeAll(where: {lukeSkywalker.heroesCounter.contains($0)})
        }
        countLuke = countLuke + 1
        
    }
    
    @IBAction func obiButton(_ sender: Any) {
        if (countObi % 2 == 0) {
            bestArray.append(obiwanKenobi.name)
            counterArray.append(contentsOf:(obiwanKenobi.heroesCounter))
        }else if (countObi % 2 == 1){
            bestArray.removeAll { $0 == obiwanKenobi.name }
            counterArray.removeAll(where: {obiwanKenobi.heroesCounter.contains($0)})
        }
        countObi = countObi + 1
        
    }
    
    @IBAction func reyButton(_ sender: Any) {
        if (countRey % 2 == 0) {
            bestArray.append(rey.name)
            counterArray.append(contentsOf:(rey.heroesCounter))
        }else if (countRey % 2 == 1){
            bestArray.removeAll { $0 == rey.name }
            counterArray.removeAll(where: {rey.heroesCounter.contains($0)})
        }
        countRey = countRey + 1
        
    }
    
    // ui a yeni bir kutucuk koy, sectiginiz herolar diye, submit edince oraya da sectigini printlesin ayrica sonuc olarak secmen gereken heroyu da printlesin bir tanede reset butonu yap butun countlari resetlesin ve yeniden secip yapabil. Son olarak submitledikten sonraki logic soyle olucak: secilen herolarin ortak counterlari varsa onlari secicek sonra ortak olanlari printliyicek eger ortak olan yoksa her heronun kendi counterini printlicek
    
    func evaluate(selectedCounters: Array<String>) -> String {
        var bestMatchArray: Array<String> = []
        var n = selectedCounters.count
        var numberArray: Array<Int> = []
        bestMatchArray.insert(contentsOf: selectedCounters, at: 0)
        
       for i in 0..<n{
           numberArray.insert(0, at: i)
       } 
       // print(numberArray)
        
    
        bestMatchArray.append("")
        
        let j = bestMatchArray.count
        
        for m in 0..<j-1 {
            var b = 0
            for k in 0..<j {
                if bestMatchArray[m] == bestMatchArray[k] {
                    b = b+1
                    numberArray[m] = b
                    }
                }
        }
        
        let maxValue = numberArray.max()
        let result = numberArray.firstIndex(of: maxValue ?? 0)
        let returnValue = bestMatchArray[result ?? 0]
        
        print(numberArray)
        print(bestMatchArray)
        print(result)
        
        return returnValue
    }
    
    
    @IBAction func submitButton(_ sender: Any) {
         let text = evaluate(selectedCounters: counterArray)
        selectedHeroes.text = bestArray.joined(separator: " ")
            counterText.text = text
    }
    
    @IBOutlet weak var counterText: UITextField!
    @IBOutlet weak var selectedHeroes: UITextField!
    
    @IBAction func resetButton(_ sender: Any) {
        bestArray = []
        counterArray = []
        counterText.text = nil
        selectedHeroes.text = nil
         countBoba = 0
         countBosk = 0
         countMaul = 0
         countGrevious = 0
         countIden = 0
         countKylo = 0
         countVader = 0
         countTheSenate = 0
         countPhasma = 0
         countDookulol = 0
        
         countChewy = 0
         countFinn = 0
         countHan = 0
         countLeia = 0
         countYoda = 0
         countLando = 0
         countLuke = 0
         countObi = 0
         countRey = 0
    }
    
}

