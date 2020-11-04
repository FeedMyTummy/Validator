//
//  UsernameValidator.swift
//  Validator
//
//  Created by FeedMyTummy on 11/4/20.
//

import Foundation

final class UsernameValidator {
    
    private let specifications: [TextSpecification] = [
        MinimumLengthSpecification(minimumLength: 4),
        ExcludeSpecialCharacterSpecification()
    ]
    
    func validate(username: String, completion: (Result<Void, TextRequirementError>) -> Void) {
        TextValidator(specifications).validate(username) { completion($0) }
    }
}
