# UtilsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**testCeleryApiV1UtilsTestCeleryPost**](UtilsAPI.md#testceleryapiv1utilstestcelerypost) | **POST** /api/v1/utils/test-celery/ | Test Celery
[**testEmailApiV1UtilsTestEmailPost**](UtilsAPI.md#testemailapiv1utilstestemailpost) | **POST** /api/v1/utils/test-email/ | Test Email


# **testCeleryApiV1UtilsTestCeleryPost**
```swift
    open class func testCeleryApiV1UtilsTestCeleryPost(msg: Msg, completion: @escaping (_ data: Msg?, _ error: Error?) -> Void)
```

Test Celery

Test Celery worker.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let msg = Msg(msg: "msg_example") // Msg | 

// Test Celery
UtilsAPI.testCeleryApiV1UtilsTestCeleryPost(msg: msg) { (response, error) in
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
 **msg** | [**Msg**](Msg.md) |  | 

### Return type

[**Msg**](Msg.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **testEmailApiV1UtilsTestEmailPost**
```swift
    open class func testEmailApiV1UtilsTestEmailPost(emailTo: String, completion: @escaping (_ data: Msg?, _ error: Error?) -> Void)
```

Test Email

Test emails.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let emailTo = "emailTo_example" // String | 

// Test Email
UtilsAPI.testEmailApiV1UtilsTestEmailPost(emailTo: emailTo) { (response, error) in
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
 **emailTo** | **String** |  | 

### Return type

[**Msg**](Msg.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

