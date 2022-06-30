COMMON_VERSION := "0.0.6"

common: start_common fmt lint tidy end_common all

start_common:
	@echo "** running common targets: v$(COMMON_VERSION) **"

end_common:
	@echo "** common targets are all set **\n"

fmt:
	@echo "1 - formatting code"
	@goimports -w . && gofumpt -w .

lint:
	@echo "2 - linting"

tidy:
	@echo "3 - tidying up"
	@go mod tidy

standalone:
	@echo 3
	@echo "stand alone command"
