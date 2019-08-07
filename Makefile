help: ## Displays help
	@awk -F ':|##' \
		'/^[^\t].+?:.*?##/ {\
			printf "\033[36m%-30s\033[0m %s\n", $$1, $$NF \
}' $(MAKEFILE_LIST) | sort

go-to-first: ## Goes to the first commit
	echo "bar"

go-to-last: ## Goes to the last commit
	echo "bar"

go-to-next: ## Goes to the next commit
	echo "foo"

go-to-previous: ## Goes to the previous commit
	echo "foo"
