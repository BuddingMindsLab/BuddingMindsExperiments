//
//  CSVReader.swift
//  project1
//
//  Created by Sakshaat Choyikandi on 2018-08-01.
//  Copyright © 2018 The Budding Minds Lab. All rights reserved.
//

import Foundation

class CSVReader {
    func getPresSeq() -> [String] {
        return cleanPicArray(array: readSeqFile()).flatMap({$0});
    }
    
    func getTestSeq() -> [[String]] {
        return cleanPicArray(array: readTestFile());
    }
    
    func cleanPicArray(array:[String]) -> [[String]] {
        return array.map{$0.components(separatedBy: ",")};
    }
    
    func readFile(file:String) -> [String] {
        if let file = Bundle.main.url(forResource:file, withExtension: "csv") {
            do {
                var contents = (try String(contentsOf: file)).components(separatedBy: .newlines)
                contents = contents.filter({ $0 != ""});
                return contents;
            } catch {}
        } else {
            // example.txt not found!
        }
        
        return []
    }
    
    func readTestFile() -> [String] {
        return readFile(file: "testing");
    }
    
    func readSeqFile() -> [String] {
        return readFile(file: "sequences2");

    }
}
