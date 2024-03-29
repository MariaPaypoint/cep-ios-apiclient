//
// CoursesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class CoursesAPI {

    /**
     Create Course
     
     - parameter courseCreate: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func createCourseApiV1CoursesPost(courseCreate: CourseCreate, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Course?, _ error: Error?) -> Void)) -> RequestTask {
        return createCourseApiV1CoursesPostWithRequestBuilder(courseCreate: courseCreate).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Course
     - POST /api/v1/courses/
     - Create new course.
     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - parameter courseCreate: (body)  
     - returns: RequestBuilder<Course> 
     */
    open class func createCourseApiV1CoursesPostWithRequestBuilder(courseCreate: CourseCreate) -> RequestBuilder<Course> {
        let localVariablePath = "/api/v1/courses/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: courseCreate)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Course>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Delete Course
     
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func deleteCourseApiV1CoursesIdDelete(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Course?, _ error: Error?) -> Void)) -> RequestTask {
        return deleteCourseApiV1CoursesIdDeleteWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Course
     - DELETE /api/v1/courses/{id}
     - Delete a course.
     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - parameter id: (path)  
     - returns: RequestBuilder<Course> 
     */
    open class func deleteCourseApiV1CoursesIdDeleteWithRequestBuilder(id: Int) -> RequestBuilder<Course> {
        var localVariablePath = "/api/v1/courses/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Course>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Read Course
     
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func readCourseApiV1CoursesIdGet(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Course?, _ error: Error?) -> Void)) -> RequestTask {
        return readCourseApiV1CoursesIdGetWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Read Course
     - GET /api/v1/courses/{id}
     - Get course by ID.
     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - parameter id: (path)  
     - returns: RequestBuilder<Course> 
     */
    open class func readCourseApiV1CoursesIdGetWithRequestBuilder(id: Int) -> RequestBuilder<Course> {
        var localVariablePath = "/api/v1/courses/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Course>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Read Courses
     
     - parameter skip: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 100)
     - parameter language: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func readCoursesApiV1CoursesGet(skip: Int? = nil, limit: Int? = nil, language: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [Course]?, _ error: Error?) -> Void)) -> RequestTask {
        return readCoursesApiV1CoursesGetWithRequestBuilder(skip: skip, limit: limit, language: language).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Read Courses
     - GET /api/v1/courses/
     - Retrieve course.
     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - parameter skip: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 100)
     - parameter language: (query)  (optional)
     - returns: RequestBuilder<[Course]> 
     */
    open class func readCoursesApiV1CoursesGetWithRequestBuilder(skip: Int? = nil, limit: Int? = nil, language: String? = nil) -> RequestBuilder<[Course]> {
        let localVariablePath = "/api/v1/courses/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "skip": (wrappedValue: skip?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "language": (wrappedValue: language?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[Course]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Search Courses
     
     - parameter skip: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 100)
     - parameter language: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func searchCoursesApiV1CoursesSearchGet(skip: Int? = nil, limit: Int? = nil, language: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [CourseInfo]?, _ error: Error?) -> Void)) -> RequestTask {
        return searchCoursesApiV1CoursesSearchGetWithRequestBuilder(skip: skip, limit: limit, language: language).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Search Courses
     - GET /api/v1/courses/search/
     - Search courses.
     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - parameter skip: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 100)
     - parameter language: (query)  (optional)
     - returns: RequestBuilder<[CourseInfo]> 
     */
    open class func searchCoursesApiV1CoursesSearchGetWithRequestBuilder(skip: Int? = nil, limit: Int? = nil, language: String? = nil) -> RequestBuilder<[CourseInfo]> {
        let localVariablePath = "/api/v1/courses/search/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "skip": (wrappedValue: skip?.encodeToJSON(), isExplode: true),
            "limit": (wrappedValue: limit?.encodeToJSON(), isExplode: true),
            "language": (wrappedValue: language?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[CourseInfo]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Update Course
     
     - parameter id: (path)  
     - parameter courseUpdate: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func updateCourseApiV1CoursesIdPut(id: Int, courseUpdate: CourseUpdate, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Course?, _ error: Error?) -> Void)) -> RequestTask {
        return updateCourseApiV1CoursesIdPutWithRequestBuilder(id: id, courseUpdate: courseUpdate).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Course
     - PUT /api/v1/courses/{id}
     - Update an course.
     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - parameter id: (path)  
     - parameter courseUpdate: (body)  
     - returns: RequestBuilder<Course> 
     */
    open class func updateCourseApiV1CoursesIdPutWithRequestBuilder(id: Int, courseUpdate: CourseUpdate) -> RequestBuilder<Course> {
        var localVariablePath = "/api/v1/courses/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: courseUpdate)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Course>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     Verify Course
     
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func verifyCourseApiV1CoursesVerifyIdPost(id: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Course?, _ error: Error?) -> Void)) -> RequestTask {
        return verifyCourseApiV1CoursesVerifyIdPostWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Verify Course
     - POST /api/v1/courses/verify/{id}
     - Accept a course.
     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - parameter id: (path)  
     - returns: RequestBuilder<Course> 
     */
    open class func verifyCourseApiV1CoursesVerifyIdPostWithRequestBuilder(id: Int) -> RequestBuilder<Course> {
        var localVariablePath = "/api/v1/courses/verify/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Course>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
