//
// BodyCreateUserOpenApiV1UsersOpenPost.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct BodyCreateUserOpenApiV1UsersOpenPost: Codable, JSONEncodable, Hashable {

    public var password: String
    public var email: String
    public var fullName: String?

    public init(password: String, email: String, fullName: String? = nil) {
        self.password = password
        self.email = email
        self.fullName = fullName
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case password
        case email
        case fullName = "full_name"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(password, forKey: .password)
        try container.encode(email, forKey: .email)
        try container.encodeIfPresent(fullName, forKey: .fullName)
    }
}

