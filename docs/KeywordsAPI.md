# KeywordsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**readKeywordsApiV1KeywordsGet**](KeywordsAPI.md#readkeywordsapiv1keywordsget) | **GET** /api/v1/keywords/ | Read Keywords


# **readKeywordsApiV1KeywordsGet**
```swift
    open class func readKeywordsApiV1KeywordsGet(skip: Int? = nil, limit: Int? = nil, alias: String? = nil, language: String? = nil, completion: @escaping (_ data: [Keyword]?, _ error: Error?) -> Void)
```

Read Keywords

Retrieve course.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let skip = 987 // Int |  (optional) (default to 0)
let limit = 987 // Int |  (optional) (default to 100)
let alias = "alias_example" // String |  (optional)
let language = "language_example" // String |  (optional)

// Read Keywords
KeywordsAPI.readKeywordsApiV1KeywordsGet(skip: skip, limit: limit, alias: alias, language: language) { (response, error) in
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
 **alias** | **String** |  | [optional] 
 **language** | **String** |  | [optional] 

### Return type

[**[Keyword]**](Keyword.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

