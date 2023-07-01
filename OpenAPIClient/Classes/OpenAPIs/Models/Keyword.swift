//
// Keyword.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Keyword: Codable, JSONEncodable, Hashable {

    public var alias: String?
    public var id: Int?
    public var items: [KeywordValue]?

    public init(alias: String? = nil, id: Int? = nil, items: [KeywordValue]? = nil) {
        self.alias = alias
        self.id = id
        self.items = items
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case alias
        case id
        case items
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(alias, forKey: .alias)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(items, forKey: .items)
    }
}
