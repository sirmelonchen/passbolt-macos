//
//  register.swift
//  PassboltMacOS
//
//  Created by Konstantin Beug on 18.01.25.
//
import SwiftUI


var site = ""
var password = ""
var privateKeyFile = ""
var privateKeyText = ""



func register(adress: String, password: String, privateKeyFile: String) {
    let site = adress
    let password = password
    let privateKeyFile = privateKeyFile
    let output = runCommand(launchPath: "/opt/homebrew/bin/passbolt", arguments: ["--serverAddress \(site)", "--userPassword \(password)", "--userPrivateKeyFile \(privateKeyFile)"])
    let output2 = runCommand(launchPath: "/opt/homebrew/bin/passbolt", arguments: ["list", "resource"])
    print(output2)
    }

func openRegisterView() {
}
// passbolt configure --serverAddress https://passwords.beugsiud.de --userPassword 'Konsti-9012!' --userPrivateKeyFile 'Downloads/passbolt-recovery-kit.txt'
