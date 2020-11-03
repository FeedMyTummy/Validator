//
//  PasswordSpecification.swift
//  PasswordValidator
//
//  Created by FeedMyTummy on 11/3/20.
//

import Foundation

enum TextRequirementError: Error {
    case length(minimum: Int)
    case numeric
    case uppercase
    case lowercase
    case specialCharacter
}

protocol TextSpecification {
    func isSatisfied(_ text: String, completion: (Result<Void, TextRequirementError>) -> Void)
}
