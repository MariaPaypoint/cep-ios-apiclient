//
// CourseUpdate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CourseUpdate: Codable, JSONEncodable, Hashable {

    public var name: String?
    public var language: String?
    public var image: String?
    public var isActive: Bool? = true
    public var description: String?

    public init(name: String? = nil, language: String? = nil, image: String? = nil, isActive: Bool? = true, description: String? = nil) {
        self.name = name
        self.language = language
        self.image = image
        self.isActive = isActive
        self.description = description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case language
        case image
        case isActive = "is_active"
        case description
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(image, forKey: .image)
        try container.encodeIfPresent(isActive, forKey: .isActive)
        try container.encodeIfPresent(description, forKey: .description)
    }
}

