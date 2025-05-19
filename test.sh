#!/bin/bash
cd sdks
cd php 
php test.php
echo "PHP tests completed"
cd ..
cd typescript/src
npm test
echo "TypeScript tests completed"
cd ..
cd ..
cd python
python test.py
echo "Python tests completed"
cd ..
cd go
go test
echo "Go tests completed"
cd ..
cd csharp
dotnet test
echo "C# tests completed"