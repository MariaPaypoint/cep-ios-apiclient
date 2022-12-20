# LoginAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**loginAccessTokenApiV1LoginAccessTokenPost**](LoginAPI.md#loginaccesstokenapiv1loginaccesstokenpost) | **POST** /api/v1/login/access-token | Login Access Token
[**recoverPasswordApiV1PasswordRecoveryEmailPost**](LoginAPI.md#recoverpasswordapiv1passwordrecoveryemailpost) | **POST** /api/v1/password-recovery/{email} | Recover Password
[**resetPasswordApiV1ResetPasswordPost**](LoginAPI.md#resetpasswordapiv1resetpasswordpost) | **POST** /api/v1/reset-password/ | Reset Password
[**testTokenApiV1LoginTestTokenPost**](LoginAPI.md#testtokenapiv1logintesttokenpost) | **POST** /api/v1/login/test-token | Test Token


# **loginAccessTokenApiV1LoginAccessTokenPost**
```swift
    open class func loginAccessTokenApiV1LoginAccessTokenPost(username: String, password: String, grantType: String? = nil, scope: String? = nil, clientId: String? = nil, clientSecret: String? = nil, completion: @escaping (_ data: Token?, _ error: Error?) -> Void)
```

Login Access Token

OAuth2 compatible token login, get an access token for future requests

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let username = "username_example" // String | 
let password = "password_example" // String | 
let grantType = "grantType_example" // String |  (optional)
let scope = "scope_example" // String |  (optional) (default to "")
let clientId = "clientId_example" // String |  (optional)
let clientSecret = "clientSecret_example" // String |  (optional)

// Login Access Token
LoginAPI.loginAccessTokenApiV1LoginAccessTokenPost(username: username, password: password, grantType: grantType, scope: scope, clientId: clientId, clientSecret: clientSecret) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String** |  | 
 **password** | **String** |  | 
 **grantType** | **String** |  | [optional] 
 **scope** | **String** |  | [optional] [default to &quot;&quot;]
 **clientId** | **String** |  | [optional] 
 **clientSecret** | **String** |  | [optional] 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recoverPasswordApiV1PasswordRecoveryEmailPost**
```swift
    open class func recoverPasswordApiV1PasswordRecoveryEmailPost(email: String, completion: @escaping (_ data: Msg?, _ error: Error?) -> Void)
```

Recover Password

Password Recovery

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let email = "email_example" // String | 

// Recover Password
LoginAPI.recoverPasswordApiV1PasswordRecoveryEmailPost(email: email) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String** |  | 

### Return type

[**Msg**](Msg.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resetPasswordApiV1ResetPasswordPost**
```swift
    open class func resetPasswordApiV1ResetPasswordPost(bodyResetPasswordApiV1ResetPasswordPost: BodyResetPasswordApiV1ResetPasswordPost, completion: @escaping (_ data: Msg?, _ error: Error?) -> Void)
```

Reset Password

Reset password

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let bodyResetPasswordApiV1ResetPasswordPost = Body_reset_password_api_v1_reset_password__post(token: "token_example", newPassword: "newPassword_example") // BodyResetPasswordApiV1ResetPasswordPost | 

// Reset Password
LoginAPI.resetPasswordApiV1ResetPasswordPost(bodyResetPasswordApiV1ResetPasswordPost: bodyResetPasswordApiV1ResetPasswordPost) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bodyResetPasswordApiV1ResetPasswordPost** | [**BodyResetPasswordApiV1ResetPasswordPost**](BodyResetPasswordApiV1ResetPasswordPost.md) |  | 

### Return type

[**Msg**](Msg.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testTokenApiV1LoginTestTokenPost**
```swift
    open class func testTokenApiV1LoginTestTokenPost(completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```

Test Token

Test access token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Test Token
LoginAPI.testTokenApiV1LoginTestTokenPost() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**User**](User.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

