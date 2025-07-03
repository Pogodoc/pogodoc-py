module pogodoc-starter

go 1.24.4

require (
	github.com/Pogodoc/pogodoc-go v0.3.0
	github.com/joho/godotenv v1.5.1
)

replace github.com/Pogodoc/pogodoc-go => ../../sdks/go

replace github.com/Pogodoc/pogodoc-go/client => ../../sdks/go/client

require (
	github.com/Pogodoc/pogodoc-go/client v0.3.0 // indirect
	github.com/google/uuid v1.6.0 // indirect
)
