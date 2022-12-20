//
// ItemCreate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ItemCreate: Codable, JSONEncodable, Hashable {

    public var title: String
    public var description: String?

    public init(title: String, description: String? = nil) {
        self.title = title
        self.description = description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case description
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encodeIfPresent(description, forKey: .description)
    }
}

