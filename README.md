# PrettyPrintJSON

Usage:

```

struct ErrorMessage: Encodable {
    var status_code: Int
}

let data = try! JSONEncoder().encode(testObject)
print(PrettyPrintJSON.with(data: data), testJSON)
```
Output:

```
{
  "status_code" : 30
}
```
