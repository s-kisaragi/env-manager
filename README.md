# AWS .env Manager

A command-line tool for managing environment variables across multiple projects using AWS Systems Manager Parameter Store.

## Features

- 🔐 Secure storage of environment variables in AWS Parameter Store (SecureString)
- 📦 Multi-project support
- 🔄 Easy synchronization between local `.env` files and AWS
- 📋 List all registered projects and their variables
- 🗑️ Safe deletion of project variables with confirmation prompt

## Prerequisites

- Python 3.10 or higher
- AWS CLI configured with appropriate credentials (`aws configure`)

## Installation

```bash
git clone https://github.com/s-kisaragi/env-manager.git
cd env-manager
```

### Using uv (recommended)

```bash
uv sync
```

### Using pip

```bash
pip install -e .
```

## Usage

### Push Environment Variables to AWS

Upload your local `.env` file to AWS Parameter Store:

```bash
env-manager push <project-name>

# Specify a custom .env file path
env-manager push <project-name> --path /path/to/.env
env-manager push <project-name> -p ./other/.env
```

### Pull Environment Variables from AWS

Download environment variables from AWS Parameter Store to your local `.env` file:

```bash
env-manager pull <project-name>

# Specify a custom output path
env-manager pull <project-name> --path /path/to/.env
env-manager pull <project-name> -p ./other/.env
```

### List Registered Projects

View all projects and their variable counts:

```bash
env-manager list
```

### Delete Project Variables

Remove all environment variables for a specific project:

```bash
env-manager delete <project-name>
```

## Parameter Store Structure

All variables are stored under the following path structure:

```
/env/<project-name>/<variable-name>
```

All values are stored as `SecureString` type for enhanced security.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
