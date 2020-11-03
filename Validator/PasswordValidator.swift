//
//  PasswordValidator.swift
//  Validator
//
//  Created by FeedMyTummy on 11/3/20.
//

import Foundation

final class PasswordValidator {
    
    private let specifications: [TextSpecification] = [
        LengthSpecification(minimumLength: 4),
        NumericSpecification(),
        LowercaseSpecification(),
        UppercaseSpecification(),
        SpecialCharacterSpecification()
    ]
    
    func validate(password: String, completion: (Result<Void, TextRequirementError>) -> Void) {
        TextValidator(specifications).validate(password: password) { result in
            completion(result)
        }
    }
}
