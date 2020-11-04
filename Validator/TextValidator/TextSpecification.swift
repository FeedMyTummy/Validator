//
//  PasswordSpecification.swift
//  PasswordValidator
//
//  Created by FeedMyTummy on 11/3/20.
//

import Foundation

enum TextRequirementError: Error {
    case minimumLength(minimum: Int)
    case maximumLength(maximum: Int)
    case numeric
    case uppercase
    case lowercase
    case specialCharacters
    case exludeSpecialCharacters
}

protocol TextSpecification {
    func isSatisfied(_ text: String, completion: (Result<Void, TextRequirementError>) -> Void)
}
