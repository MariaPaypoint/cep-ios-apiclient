# CoursesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCourseApiV1CoursesPost**](CoursesAPI.md#createcourseapiv1coursespost) | **POST** /api/v1/courses/ | Create Course
[**deleteCourseApiV1CoursesIdDelete**](CoursesAPI.md#deletecourseapiv1coursesiddelete) | **DELETE** /api/v1/courses/{id} | Delete Course
[**readCourseApiV1CoursesIdGet**](CoursesAPI.md#readcourseapiv1coursesidget) | **GET** /api/v1/courses/{id} | Read Course
[**readCoursesApiV1CoursesGet**](CoursesAPI.md#readcoursesapiv1coursesget) | **GET** /api/v1/courses/ | Read Courses
[**searchCoursesApiV1CoursesSearchGet**](CoursesAPI.md#searchcoursesapiv1coursessearchget) | **GET** /api/v1/courses/search/ | Search Courses
[**updateCourseApiV1CoursesIdPut**](CoursesAPI.md#updatecourseapiv1coursesidput) | **PUT** /api/v1/courses/{id} | Update Course
[**verifyCourseApiV1CoursesVerifyIdPost**](CoursesAPI.md#verifycourseapiv1coursesverifyidpost) | **POST** /api/v1/courses/verify/{id} | Verify Course


# **createCourseApiV1CoursesPost**
```swift
    open class func createCourseApiV1CoursesPost(courseCreate: CourseCreate, completion: @escaping (_ data: Course?, _ error: Error?) -> Void)
```

Create Course

Create new course.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let courseCreate = CourseCreate(name: "name_example", language: "language_example", image: "image_example", isActive: false, description: "description_example") // CourseCreate | 

// Create Course
CoursesAPI.createCourseApiV1CoursesPost(courseCreate: courseCreate) { (response, error) in
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
 **courseCreate** | [**CourseCreate**](CourseCreate.md) |  | 

### Return type

[**Course**](Course.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCourseApiV1CoursesIdDelete**
```swift
    open class func deleteCourseApiV1CoursesIdDelete(id: Int, completion: @escaping (_ data: Course?, _ error: Error?) -> Void)
```

Delete Course

Delete a course.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | 

// Delete Course
CoursesAPI.deleteCourseApiV1CoursesIdDelete(id: id) { (response, error) in
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
 **id** | **Int** |  | 

### Return type

[**Course**](Course.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readCourseApiV1CoursesIdGet**
```swift
    open class func readCourseApiV1CoursesIdGet(id: Int, completion: @escaping (_ data: Course?, _ error: Error?) -> Void)
```

Read Course

Get course by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | 

// Read Course
CoursesAPI.readCourseApiV1CoursesIdGet(id: id) { (response, error) in
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
 **id** | **Int** |  | 

### Return type

[**Course**](Course.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readCoursesApiV1CoursesGet**
```swift
    open class func readCoursesApiV1CoursesGet(skip: Int? = nil, limit: Int? = nil, language: String? = nil, completion: @escaping (_ data: [Course]?, _ error: Error?) -> Void)
```

Read Courses

Retrieve course.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let skip = 987 // Int |  (optional) (default to 0)
let limit = 987 // Int |  (optional) (default to 100)
let language = "language_example" // String |  (optional)

// Read Courses
CoursesAPI.readCoursesApiV1CoursesGet(skip: skip, limit: limit, language: language) { (response, error) in
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
 **language** | **String** |  | [optional] 

### Return type

[**[Course]**](Course.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCoursesApiV1CoursesSearchGet**
```swift
    open class func searchCoursesApiV1CoursesSearchGet(skip: Int? = nil, limit: Int? = nil, language: String? = nil, completion: @escaping (_ data: [CourseInfo]?, _ error: Error?) -> Void)
```

Search Courses

Search courses.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let skip = 987 // Int |  (optional) (default to 0)
let limit = 987 // Int |  (optional) (default to 100)
let language = "language_example" // String |  (optional)

// Search Courses
CoursesAPI.searchCoursesApiV1CoursesSearchGet(skip: skip, limit: limit, language: language) { (response, error) in
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
 **language** | **String** |  | [optional] 

### Return type

[**[CourseInfo]**](CourseInfo.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCourseApiV1CoursesIdPut**
```swift
    open class func updateCourseApiV1CoursesIdPut(id: Int, courseUpdate: CourseUpdate, completion: @escaping (_ data: Course?, _ error: Error?) -> Void)
```

Update Course

Update an course.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | 
let courseUpdate = CourseUpdate(name: "name_example", language: "language_example", image: "image_example", isActive: false, description: "description_example") // CourseUpdate | 

// Update Course
CoursesAPI.updateCourseApiV1CoursesIdPut(id: id, courseUpdate: courseUpdate) { (response, error) in
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
 **id** | **Int** |  | 
 **courseUpdate** | [**CourseUpdate**](CourseUpdate.md) |  | 

### Return type

[**Course**](Course.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyCourseApiV1CoursesVerifyIdPost**
```swift
    open class func verifyCourseApiV1CoursesVerifyIdPost(id: Int, completion: @escaping (_ data: Course?, _ error: Error?) -> Void)
```

Verify Course

Accept a course.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | 

// Verify Course
CoursesAPI.verifyCourseApiV1CoursesVerifyIdPost(id: id) { (response, error) in
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
 **id** | **Int** |  | 

### Return type

[**Course**](Course.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

