//
//  PersonDataHelper.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 23.05.2021.
//

import Foundation

class PersonDataHelper: ObservableObject {
    
    private static var documentsFolder: URL {
        do {
            return try FileManager.default.url(for: .documentDirectory,
                                               in: .userDomainMask,
                                               appropriateFor: nil,
                                               create: false)
        } catch {
            fatalError("Can't find documents directory.")
        }
    }
    
    private static var fileURL: URL {
        return documentsFolder.appendingPathComponent("scrums.data")
    }
    
    @Published var person: Person = Person.data
    
    func load() {
        DispatchQueue.global(qos: .background).async { [weak self] in
            guard let data = try? Data(contentsOf: Self.fileURL) else {
                #if DEBUG
                DispatchQueue.main.async {
                    self?.person = Person.data
                }
                #endif
                return
            }
            guard let dailyScrums = try? JSONDecoder().decode(Person.self, from: data) else {
                fatalError("Can't decode saved text data.")
            }
            DispatchQueue.main.async {
                self?.person = dailyScrums
            }
        }
    }
    
    func save() {
        DispatchQueue.global(qos: .background).async { [weak self] in
            guard let texts = self?.person else { fatalError("Self out of scope") }
            guard let data = try? JSONEncoder().encode(texts) else { fatalError("Error encoding data") }
            do {
                let outfile = Self.fileURL
                try data.write(to: outfile)
            } catch {
                fatalError("Can't write to file")
            }
        }
    }
}
