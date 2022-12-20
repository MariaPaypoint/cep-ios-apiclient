# UsersAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUserApiV1UsersPost**](UsersAPI.md#createuserapiv1userspost) | **POST** /api/v1/users/ | Create User
[**createUserOpenApiV1UsersOpenPost**](UsersAPI.md#createuseropenapiv1usersopenpost) | **POST** /api/v1/users/open | Create User Open
[**readUserByIdApiV1UsersUserIdGet**](UsersAPI.md#readuserbyidapiv1usersuseridget) | **GET** /api/v1/users/{user_id} | Read User By Id
[**readUserMeApiV1UsersMeGet**](UsersAPI.md#readusermeapiv1usersmeget) | **GET** /api/v1/users/me | Read User Me
[**readUsersApiV1UsersGet**](UsersAPI.md#readusersapiv1usersget) | **GET** /api/v1/users/ | Read Users
[**updateUserApiV1UsersUserIdPut**](UsersAPI.md#updateuserapiv1usersuseridput) | **PUT** /api/v1/users/{user_id} | Update User
[**updateUserMeApiV1UsersMePut**](UsersAPI.md#updateusermeapiv1usersmeput) | **PUT** /api/v1/users/me | Update User Me


# **createUserApiV1UsersPost**
```swift
    open class func createUserApiV1UsersPost(userCreate: UserCreate, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```

Create User

Create new user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userCreate = UserCreate(email: "email_example", isActive: false, isSuperuser: false, fullName: "fullName_example", password: "password_example") // UserCreate | 

// Create User
UsersAPI.createUserApiV1UsersPost(userCreate: userCreate) { (response, error) in
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
 **userCreate** | [**UserCreate**](UserCreate.md) |  | 

### Return type

[**User**](User.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUserOpenApiV1UsersOpenPost**
```swift
    open class func createUserOpenApiV1UsersOpenPost(bodyCreateUserOpenApiV1UsersOpenPost: BodyCreateUserOpenApiV1UsersOpenPost, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```

Create User Open

Create new user without the need to be logged in.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let bodyCreateUserOpenApiV1UsersOpenPost = Body_create_user_open_api_v1_users_open_post(password: "password_example", email: "email_example", fullName: "fullName_example") // BodyCreateUserOpenApiV1UsersOpenPost | 

// Create User Open
UsersAPI.createUserOpenApiV1UsersOpenPost(bodyCreateUserOpenApiV1UsersOpenPost: bodyCreateUserOpenApiV1UsersOpenPost) { (response, error) in
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
 **bodyCreateUserOpenApiV1UsersOpenPost** | [**BodyCreateUserOpenApiV1UsersOpenPost**](BodyCreateUserOpenApiV1UsersOpenPost.md) |  | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readUserByIdApiV1UsersUserIdGet**
```swift
    open class func readUserByIdApiV1UsersUserIdGet(userId: Int, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```

Read User By Id

Get a specific user by id.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // Int | 

// Read User By Id
UsersAPI.readUserByIdApiV1UsersUserIdGet(userId: userId) { (response, error) in
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
 **userId** | **Int** |  | 

### Return type

[**User**](User.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readUserMeApiV1UsersMeGet**
```swift
    open class func readUserMeApiV1UsersMeGet(completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```

Read User Me

Get current user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Read User Me
UsersAPI.readUserMeApiV1UsersMeGet() { (response, error) in
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

# **readUsersApiV1UsersGet**
```swift
    open class func readUsersApiV1UsersGet(skip: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: [User]?, _ error: Error?) -> Void)
```

Read Users

Retrieve users.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let skip = 987 // Int |  (optional) (default to 0)
let limit = 987 // Int |  (optional) (default to 100)

// Read Users
UsersAPI.readUsersApiV1UsersGet(skip: skip, limit: limit) { (response, error) in
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
 **skip** | **Int** |  | [optional] [default to 0]
 **limit** | **Int** |  | [optional] [default to 100]

### Return type

[**[User]**](User.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserApiV1UsersUserIdPut**
```swift
    open class func updateUserApiV1UsersUserIdPut(userId: Int, userUpdate: UserUpdate, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```

Update User

Update a user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let userId = 987 // Int | 
let userUpdate = UserUpdate(email: "email_example", isActive: false, isSuperuser: false, fullName: "fullName_example", password: "password_example") // UserUpdate | 

// Update User
UsersAPI.updateUserApiV1UsersUserIdPut(userId: userId, userUpdate: userUpdate) { (response, error) in
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
 **userId** | **Int** |  | 
 **userUpdate** | [**UserUpdate**](UserUpdate.md) |  | 

### Return type

[**User**](User.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserMeApiV1UsersMePut**
```swift
    open class func updateUserMeApiV1UsersMePut(bodyUpdateUserMeApiV1UsersMePut: BodyUpdateUserMeApiV1UsersMePut? = nil, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```

Update User Me

Update own user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let bodyUpdateUserMeApiV1UsersMePut = Body_update_user_me_api_v1_users_me_put(password: "password_example", fullName: "fullName_example", email: "email_example") // BodyUpdateUserMeApiV1UsersMePut |  (optional)

// Update User Me
UsersAPI.updateUserMeApiV1UsersMePut(bodyUpdateUserMeApiV1UsersMePut: bodyUpdateUserMeApiV1UsersMePut) { (response, error) in
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
 **bodyUpdateUserMeApiV1UsersMePut** | [**BodyUpdateUserMeApiV1UsersMePut**](BodyUpdateUserMeApiV1UsersMePut.md) |  | [optional] 

### Return type

[**User**](User.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

