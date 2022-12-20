//
// LoginAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class LoginAPI {

    /**
     Login Access Token
     
     - parameter username: (form)  
     - parameter password: (form)  
     - parameter grantType: (form)  (optional)
     - parameter scope: (form)  (optional, default to "")
     - parameter clientId: (form)  (optional)
     - parameter clientSecret: (form)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func loginAccessTokenApiV1LoginAccessTokenPost(username: String, password: String, grantType: String? = nil, scope: String? = nil, clientId: String? = nil, clientSecret: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Token?, _ error: Error?) -> Void)) -> RequestTask {
        return loginAccessTokenApiV1LoginAccessTokenPostWithRequestBuilder(username: username, password: password, grantType: grantType, scope: scope, clientId: clientId, clientSecret: clientSecret).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Login Access Token
     - POST /api/v1/login/access-token
     - OAuth2 compatible token login, get an access token for future requests
     - parameter username: (form)  
     - parameter password: (form)  
     - parameter grantType: (form)  (optional)
     - parameter scope: (form)  (optional, default to "")
     - parameter clientId: (form)  (optional)
     - parameter clientSecret: (form)  (optional)
     - returns: RequestBuilder<Token> 
     */
    open class func loginAccessTokenApiV1LoginAccessTokenPostWithRequestBuilder(username: String, password: String, grantType: String? = nil, scope: String? = nil, clientId: String? = nil, clientSecret: String? = nil) -> RequestBuilder<Token> {
        let localVariablePath = "/api/v1/login/access-token"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableFormParams: [String: Any?] = [
            "grant_type": grantType?.encodeToJSON(),
            "username": username.encodeToJSON(),
            "password": password.encodeToJSON(),
            "scope": scope?.encodeToJSON(),
            "client_id": clientId?.encodeToJSON(),
            "client_secret": clientSecret?.encodeToJSON(),
        ]

        let localVariableNonNullParameters = APIHelper.rejectNil(localVariableFormParams)
        let localVariableParameters = APIHelper.convertBoolToString(localVariableNonNullParameters)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/x-www-form-urlencoded",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Token>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Recover Password
     
     - parameter email: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func recoverPasswordApiV1PasswordRecoveryEmailPost(email: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Msg?, _ error: Error?) -> Void)) -> RequestTask {
        return recoverPasswordApiV1PasswordRecoveryEmailPostWithRequestBuilder(email: email).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Recover Password
     - POST /api/v1/password-recovery/{email}
     - Password Recovery
     - parameter email: (path)  
     - returns: RequestBuilder<Msg> 
     */
    open class func recoverPasswordApiV1PasswordRecoveryEmailPostWithRequestBuilder(email: String) -> RequestBuilder<Msg> {
        var localVariablePath = "/api/v1/password-recovery/{email}"
        let emailPreEscape = "\(APIHelper.mapValueToPathItem(email))"
        let emailPostEscape = emailPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{email}", with: emailPostEscape, options: .literal, range: nil)
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Msg>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Reset Password
     
     - parameter bodyResetPasswordApiV1ResetPasswordPost: (body)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func resetPasswordApiV1ResetPasswordPost(bodyResetPasswordApiV1ResetPasswordPost: BodyResetPasswordApiV1ResetPasswordPost, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Msg?, _ error: Error?) -> Void)) -> RequestTask {
        return resetPasswordApiV1ResetPasswordPostWithRequestBuilder(bodyResetPasswordApiV1ResetPasswordPost: bodyResetPasswordApiV1ResetPasswordPost).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Reset Password
     - POST /api/v1/reset-password/
     - Reset password
     - parameter bodyResetPasswordApiV1ResetPasswordPost: (body)  
     - returns: RequestBuilder<Msg> 
     */
    open class func resetPasswordApiV1ResetPasswordPostWithRequestBuilder(bodyResetPasswordApiV1ResetPasswordPost: BodyResetPasswordApiV1ResetPasswordPost) -> RequestBuilder<Msg> {
        let localVariablePath = "/api/v1/reset-password/"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: bodyResetPasswordApiV1ResetPasswordPost)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Msg>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**
     Test Token
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func testTokenApiV1LoginTestTokenPost(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: User?, _ error: Error?) -> Void)) -> RequestTask {
        return testTokenApiV1LoginTestTokenPostWithRequestBuilder().execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Test Token
     - POST /api/v1/login/test-token
     - Test access token
     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - returns: RequestBuilder<User> 
     */
    open class func testTokenApiV1LoginTestTokenPostWithRequestBuilder() -> RequestBuilder<User> {
        let localVariablePath = "/api/v1/login/test-token"
        let localVariableURLString = OpenAPIClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<User>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
