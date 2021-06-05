//
//  TextDataHelper.swift
//  TextTestEditor
//
//  Created by Максим Чесников on 28.04.2021.
//

import Foundation

class TextDataHelper: ObservableObject {
    
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
    
    @Published var texts: [TextData] = []
    
    func load() {
        DispatchQueue.global(qos: .background).async { [weak self] in
            guard let data = try? Data(contentsOf: Self.fileURL) else {
                #if DEBUG
                DispatchQueue.main.async {
                    self?.texts = TextData.data
                }
                #endif
                return
            }
            guard let dailyScrums = try? JSONDecoder().decode([TextData].self, from: data) else {
                fatalError("Can't decode saved text data.")
            }
            DispatchQueue.main.async {
                self?.texts = dailyScrums
            }
        }
    }
    
    func save() {
        DispatchQueue.global(qos: .background).async { [weak self] in
            guard let texts = self?.texts else { fatalError("Self out of scope") }
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
extension Float {
    var clean: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
    
}
