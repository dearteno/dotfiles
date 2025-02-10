#!/bin/bash

function got {
    echo "Running: go test with cover"
    go test -cover ./... -coverprofile=cover.out -covermode=count
    go tool cover -html=cover.out -o=cover.html
}

function gol {
    echo "Running: golangci-lint run"
    golangci-lint run
}

function gff {
    echo "Running: grep find Printing"
    rg "fmt\.P" || true
    rg "log\.P" || true
}

function gfe {
    echo "Running: grep find errors.New"
    rg "errors\.New" || true
}

function gov() {
    echo "Running: vulnerability checker"
    govulncheck ./... || true
}

function csp {
    echo "Running: codespell ."
    codespell .
}

function gpp {
    echo "Running: Goalng Pre Push"
    got && echo "\n" &&
        gol && echo "\n" &&
        gff && echo "\n" &&
        gfe && echo "\n" &&
        gov && echo "\n" &&
        csp
}

function gmk {
    mockery --dir ./internal/core/ports --output ./internal/core/ports/mocks/ --all
}
