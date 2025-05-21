#!/bin/bash
cd sdks
cd php 
php src/test.php
echo "PHP tests completed"
cd ..
cd typescript
npm run test
echo "TypeScript tests completed"
cd ..
cd python
python3 test.py
echo "Python tests completed"
cd ..
cd go
go test
echo "Go tests completed"
cd ..
cd csharp
dotnet test -l "console;verbosity=detailed" 
echo "C# tests completed"