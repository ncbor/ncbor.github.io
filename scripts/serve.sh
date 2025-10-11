#!/bin/bash

# Add gem path to PATH
export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"

# Run Jekyll server
echo "Starting Jekyll server..."
echo "Your site will be available at: http://localhost:4000"
echo "Press Ctrl+C to stop the server"
echo ""

# Change to project root directory
cd "$(dirname "$0")/.."

bundle exec jekyll serve --host 0.0.0.0 --port 4000
