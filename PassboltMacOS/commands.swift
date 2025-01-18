//
//  commands.swift
//  PassboltMacOS
//
//  Created by Konstantin Beug on 18.01.25.
//

import Foundation

func runCommand(launchPath: String, arguments: [String]) -> String? {
    let task = Process()
    task.executableURL = URL(fileURLWithPath: launchPath) // Oder der tatsächliche Pfad zu passbolt

    // Hier kannst du auch Argumente für passbolt hinzufügen
    task.arguments = arguments  // Beispielargumente

    let pipe = Pipe()
    task.standardOutput = pipe
    task.standardError = pipe

    do {
        try task.run()
        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        if let output = String(data: data, encoding: .utf8) {
            print(output)  // Ausgabe des Befehls
        }
    } catch {
        print("Fehler beim Ausführen des Befehls: \(error)")
    }
    return nil
}


