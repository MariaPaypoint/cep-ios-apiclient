# ItemsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createItemApiV1ItemsPost**](ItemsAPI.md#createitemapiv1itemspost) | **POST** /api/v1/items/ | Create Item
[**deleteItemApiV1ItemsIdDelete**](ItemsAPI.md#deleteitemapiv1itemsiddelete) | **DELETE** /api/v1/items/{id} | Delete Item
[**readItemApiV1ItemsIdGet**](ItemsAPI.md#readitemapiv1itemsidget) | **GET** /api/v1/items/{id} | Read Item
[**readItemsApiV1ItemsGet**](ItemsAPI.md#readitemsapiv1itemsget) | **GET** /api/v1/items/ | Read Items
[**updateItemApiV1ItemsIdPut**](ItemsAPI.md#updateitemapiv1itemsidput) | **PUT** /api/v1/items/{id} | Update Item


# **createItemApiV1ItemsPost**
```swift
    open class func createItemApiV1ItemsPost(itemCreate: ItemCreate, completion: @escaping (_ data: Item?, _ error: Error?) -> Void)
```

Create Item

Create new item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let itemCreate = ItemCreate(title: "title_example", description: "description_example") // ItemCreate | 

// Create Item
ItemsAPI.createItemApiV1ItemsPost(itemCreate: itemCreate) { (response, error) in
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
 **itemCreate** | [**ItemCreate**](ItemCreate.md) |  | 

### Return type

[**Item**](Item.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteItemApiV1ItemsIdDelete**
```swift
    open class func deleteItemApiV1ItemsIdDelete(id: Int, completion: @escaping (_ data: Item?, _ error: Error?) -> Void)
```

Delete Item

Delete an item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | 

// Delete Item
ItemsAPI.deleteItemApiV1ItemsIdDelete(id: id) { (response, error) in
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

[**Item**](Item.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readItemApiV1ItemsIdGet**
```swift
    open class func readItemApiV1ItemsIdGet(id: Int, completion: @escaping (_ data: Item?, _ error: Error?) -> Void)
```

Read Item

Get item by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | 

// Read Item
ItemsAPI.readItemApiV1ItemsIdGet(id: id) { (response, error) in
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

[**Item**](Item.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readItemsApiV1ItemsGet**
```swift
    open class func readItemsApiV1ItemsGet(skip: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: [Item]?, _ error: Error?) -> Void)
```

Read Items

Retrieve items.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let skip = 987 // Int |  (optional) (default to 0)
let limit = 987 // Int |  (optional) (default to 100)

// Read Items
ItemsAPI.readItemsApiV1ItemsGet(skip: skip, limit: limit) { (response, error) in
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

[**[Item]**](Item.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateItemApiV1ItemsIdPut**
```swift
    open class func updateItemApiV1ItemsIdPut(id: Int, itemUpdate: ItemUpdate, completion: @escaping (_ data: Item?, _ error: Error?) -> Void)
```

Update Item

Update an item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // Int | 
let itemUpdate = ItemUpdate(title: "title_example", description: "description_example") // ItemUpdate | 

// Update Item
ItemsAPI.updateItemApiV1ItemsIdPut(id: id, itemUpdate: itemUpdate) { (response, error) in
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
 **itemUpdate** | [**ItemUpdate**](ItemUpdate.md) |  | 

### Return type

[**Item**](Item.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

