# Template Setup Guide

This template helps you create a Python project following open-source best practices.


## 🚀 Option 1: Using Copier (Recommended)

[Copier](https://copier.readthedocs.io/) is a project templating tool that automatically replaces all placeholders and sets up your project.

### Step 1: Install Copier

```bash
# Using pipx (recommended)
pipx install copier

# Or using pip
pip install copier

# Or using uv
uv tool install copier
```

> [!TIP]
> uv is a modern and robust Python package manager, we use it to manage dependencies.
> ```bash
> curl -LsSf https://astral.sh/uv/install.sh | sh
> ```

### Step 2: Generate Your Project

```bash
# From GitHub (replace with actual repo URL)
copier copy --trust gh:issac1441/python-project-template my-awesome-project

# Or from a local template directory
copier copy --trust /path/to/python-project-template my-awesome-project
```

### Step 3: Answer the Prompts

Copier will ask you a series of questions:

```
🎤 What is your project name?
   my-awesome-project

🎤 Short description of the project
   A tool for doing awesome things.

🎤 Your given name (first name)
   John

🎤 Your family name (last name)
   Doe

🎤 Contact email for security/license issues
   john.doe@example.com

🎤 URL of the git repository
   https://github.com/johndoe/my-awesome-project

🎤 Name of the copyright holder
   John Doe

🎤 Copyright year
   2025

🎤 Initial version
   0.1.0

🎤 Choose a license
   MIT
```

### Step 4: Start Developing

```bash
cd my-awesome-project

# Initialize git
git init
git branch -M main

# Set your git config
git config --local user.name "John Doe"
git config --local user.email "john.doe@example.com"

# Install dependencies
uv sync --all-groups

# Activate virtual environment
source .venv/bin/activate

# Install pre-commit hooks
pre-commit install

# You're ready to code!
```
### Step 5: Push to the remote
1. Create a new repository on GitHub **WITHOUT** any files (e.g. `.gitignore`, `README.md`).
2. Add the remote  
   ```bash
   # add the remote
   git remote add origin git@github.com:johndoe/my-awesome-project.git

   # push to the remote
   git push -u origin main
   ```


## 📝 Option 2: Manual Setup (GitHub Template)

If you prefer not to use Copier, you can use this as a GitHub template.

### Step 1: Create Repository from Template

1. Click **"Use this template"** button on GitHub
2. Choose a name for your new repository
3. Clone your new repository locally

### Step 2: Replace Placeholders

Search and replace these placeholders throughout the project:

| Placeholder | Description | Example |
|-------------|-------------|---------|
| `<PROJECT_NAME>` | Your project name | `my-awesome-project` |
| `<PACKAGE_NAME>` | Python package name (snake_case) | `my_awesome_project` |
| `<PROJECT_DESCRIPTION>` | Short description | `A tool for awesome things` |
| `<AUTHOR_GIVEN_NAME>` | First name | `John` |
| `<AUTHOR_FAMILY_NAME>` | Last name | `Doe` |
| `<COPYRIGHT_HOLDER>` | Copyright owner | `John Doe` |
| `<YEAR>` | Copyright year | `2025` |
| `<REPOSITORY_URL>` | Git repo URL | `https://github.com/johndoe/my-project` |
| `<VERSION>` | Initial version | `0.1.0` |
| `<LICENSE_NAME>` | License name | `MIT` |
| `<LICENSE_SPDX_ID>` | SPDX identifier | `MIT` |
| `<RELEASE_DATE>` | Release date | `2025-02-17` |
| `<CONTACT_EMAIL>` | Contact email | `john@example.com` |

**Quick replacement using sed (macOS/Linux):**

```bash
# Example: Replace <PROJECT_NAME> with "my-project"
find . -type f -not -path './.git/*' -exec sed -i '' 's/<PROJECT_NAME>/my-project/g' {} +
```

### Step 3: Rename the Package Directory

```bash
mv project/ my_package_name/
```

### Step 4: Choose a License

1. Browse the `.license/` directory for available licenses
2. Copy your chosen license to `LICENSE`:
   ```bash
   cp .license/MIT.txt LICENSE
   ```
3. Replace placeholders in the LICENSE file

### Step 5: Clean Up

```bash
# Remove the license templates
rm -rf .license/

# Remove the copier configuration (if not using copier)
rm copier.yml
rm -rf scripts/
```

### Step 6: Initialize Your Project

```bash
# Install uv (if not already installed)
curl -LsSf https://astral.sh/uv/install.sh | sh

# Install dependencies
uv sync --all-groups

# Activate virtual environment
source .venv/bin/activate

# Install pre-commit hooks
pre-commit install

# Initialize git (if needed)
git init
git add .
git commit -m "Initial commit from template"
```



## 📁 Project Structure

```
your-project/
├── your_package/            # Main Python package
│   ├── __init__.py
│   └── main.py
├── tests/                   # Test files
│   ├── __init__.py
│   └── test_example.py
├── docs/                    # Sphinx documentation
│   ├── conf.py
│   ├── index.rst
│   └── Makefile
├── .github/                 # GitHub configuration
│   ├── workflows/ci.yml     # CI pipeline
│   ├── ISSUE_TEMPLATE/      # Issue templates
│   └── PULL_REQUEST_TEMPLATE.md
├── .vscode/                 # VS Code settings
├── pyproject.toml           # Project & tool configuration
├── Dockerfile               # Docker configuration
├── LICENSE
├── README.md
├── CONTRIBUTING.md
├── CODE_OF_CONDUCT.md
├── SECURITY.md
├── CITATION.cff
├── NOTICE
└── CHANGELOG.md
```


## ✅ Post-Setup Checklist

- [ ] All `<PLACEHOLDER>` values replaced
- [ ] Package directory renamed from `project/` to your package name
- [ ] License file configured
- [ ] `README.md` updated with your project details
- [ ] Dependencies added to `pyproject.toml`
- [ ] `uv sync` completed successfully
- [ ] `pre-commit install` completed
- [ ] First commit made


## ❓ Need Help?

- **Copier Documentation**: https://copier.readthedocs.io/
- **uv Documentation**: https://docs.astral.sh/uv/
- **Ruff Documentation**: https://docs.astral.sh/ruff/
