# Features
gh label create "feature" --color "0E8A16" --description "New feature" --force
gh label create "enhancement" --color "A2EEEF" --description "Improvement to existing functionality" --force
 
# Bugs
gh label create "bug" --color "D73A4A" --description "Something isn't working" --force
gh label create "fix" --color "FBCA04" --description "Bug fix" --force
 
# Performance
gh label create "perf" --color "5319E7" --description "Performance improvement" --force
gh label create "performance" --color "5319E7" --description "Performance improvement" --force
 
# Maintenance
gh label create "refactor" --color "C5DEF5" --description "Code refactoring" --force
gh label create "chore" --color "FEF2C0" --description "Maintenance tasks" --force
gh label create "build" --color "BFD4F2" --description "Build system changes" --force
 
# Docs (documentation already exists via labeler)
gh label create "docs" --color "0075CA" --description "Documentation changes" --force
 
# Tests (tests already exists via labeler)
gh label create "test" --color "1D76DB" --description "Test-related changes" --force
 
# Security & Breaking
gh label create "security" --color "D93F0B" --description "Security-related changes" --force
gh label create "breaking-change" --color "B60205" --description "Breaking change requiring migration" --force
 
# Skip changelog
gh label create "skip-changelog" --color "EEEEEE" --description "Exclude from release notes" --force
