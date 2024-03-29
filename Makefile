help: ## Displays help
	@awk -F ':|##' \
		'/^[^\t].+?:.*?##/ {\
			printf "\033[36m%-30s\033[0m %s\n", $$1, $$NF \
}' $(MAKEFILE_LIST) | sort

go-to-first: ## Goes to the first commit
	git rev-list --max-parents=0 HEAD | xargs git checkout

go-to-last: ## Goes to the last commit
	git rev-list --topo-order --max-count=1 HEAD | xargs git checkout

go-to-next: ## Goes to the next commit
	echo "The next commit is the first one listed..."
	# git rev-list --reverse --max-count=2 --children $(git rev-parse HEAD) | xargs -n 1

go-to-previous: ## Goes to the previous commit
	git checkout HEAD~1
