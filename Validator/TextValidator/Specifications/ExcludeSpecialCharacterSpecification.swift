//
//  ExcludeSpecialCharacterSpecification.swift
//  Validator
//
//  Created by FeedMyTummy on 11/4/20.
//

import Foundation

struct ExcludeSpecialCharacterSpecification: TextSpecification {
    
    func isSatisfied(_ text: String, completion: (Result<Void, TextRequirementError>) -> Void) {
        if !NSPredicate(format: "SELF MATCHES %@", ".*[!&^%$#@()/]+.*").evaluate(with: text) {
            completion(.success(()))
        } else {
            completion(.failure(.exludeSpecialCharacters))
        }
    }
    
}
