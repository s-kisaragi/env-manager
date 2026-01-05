 # AWS .env Manager

A command-line tool for managing environment variables across multiple projects using AWS Systems Manager Parameter Store.

## Features

- 🔐 Secure storage of environment variables in AWS Parameter Store
- 📦 Multi-project support
- 🔄 Easy synchronization between local `.env` files and AWS
- 📋 List all registered projects and their variables
- 🗑️ Safe deletion of project variables

## Prerequisites

- Python 3.11 or higher
- AWS CLI configured with appropriate credentials
- Required Python packages:
  - boto3 >= 1.38.3
  - click >= 8.1.8

## Installation

1. Clone this repository:
```bash
git clone https://github.com/yourusername/env-manager.git
cd env-manager
```

2. Install dependencies:
```bash
pip install -e .
```

## Usage

### Push Environment Variables to AWS

Upload your local `.env` file to AWS Parameter Store:

```bash
env-manager push <project-name>

# Specify a custom .env file path
env-manager push <project-name> --path /path/to/project/.env
env-manager push <project-name> -p ./other/.env
```

### Pull Environment Variables from AWS

Download environment variables from AWS Parameter Store to your local `.env` file:

```bash
env-manager pull <project-name>

# Specify a custom output path
env-manager pull <project-name> --path /path/to/project/.env
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

## Project Structure

- `/env/<project-name>/<variable-name>` - Parameter Store path structure
- All variables are stored as SecureString type for enhanced security

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.