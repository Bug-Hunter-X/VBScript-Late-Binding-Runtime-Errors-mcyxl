Late Binding: VBScript's late binding can lead to runtime errors if an object or method doesn't exist.  This is especially problematic when interacting with COM objects or external libraries where the interface might change unexpectedly.

Example:
```vbscript
Set obj = CreateObject("Some.Object.That.Might.Not.Exist")
result = obj.SomeMethod()
```
If "Some.Object.That.Might.Not.Exist" isn't registered, or SomeMethod doesn't exist on the object, a runtime error occurs. Early binding (declaring object variables with specific types using Dim obj As Object) reduces this, but might require updating if object interfaces change. 