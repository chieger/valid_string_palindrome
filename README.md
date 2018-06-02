# valid_string_palindrome
Palindrome identification with Strings playground

Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

Note: For the purpose of this problem, we define empty string as valid palindrome.

### Example 1:

```swift
Input: "A man, a plan, a canal: Panama"
Output: true
```

### Example 2:

```swift
Input: "race a car"
Output: false
```

## Approach

### Step 1 - Handle case of empty string
> we define empty string as valid palindrome

```swift
// Step 1: Handle case of empty string, return true
if myString.isEmpty {
   // return true
} else {
   // Step 2...
}
```

This is a good situation to use guard, so you don't have to wrap the rest of the function in the `else` clause from a traditional if statement. Although I find the semantics slightly less intuitive since we have to test for the converse `!isEmpty`

```swift
guard myString.!isEmpty else { return true }
```

### Step 2 - Convert input to alphanumeric character string

>...considering only alphanumeric characters

1. Create a string from the input where all non-alpha numeric characters have been removed. Since spaces and other punctuation are not alphanumeric, an input of...

    `"A man, a plan, a canal: Panama"` should return `"AmanaplanacanalPanama"`

   > ...ignoring cases

1. To ignore cases, we can normalize our string to either all upper or lower, i.e.      `"amanaplanacanalpanama"`

```swift
let myString = "A man, a plan, a canal: Panama"
// .inverted will actually return the alpha numeric characters, stripping away non-aphanumeric
// .components returns an array of sub-strings, so we use .joined() method to concat array into single string
// To normalize case, we can use .lowercase
let alphaNumericString = myString.components(separatedBy: CharacterSet.alphanumerics.inverted).joined().lowercased()

// returns: "amanaplanacanalpanama"
```
  



