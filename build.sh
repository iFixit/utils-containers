#!/bin/zsh
build() {
	docker build -t "$1" "$1"
}

if [[ -n "$1" ]]
then
	build "$@"
else
	build sd
	build rector
fi
