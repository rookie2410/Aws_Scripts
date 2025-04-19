
# AWS Scripts

A collection of Bash scripts designed to assist with AWS resource monitoring and billing analysis.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [License](#license)
- [Contributing](#contributing)

## Overview

This repository contains Bash scripts that utilize the AWS Command Line Interface (CLI) to fetch and display information about AWS resource usage and billing.
These tools are intended to help AWS users monitor their resource consumption and associated costs efficiently.

## Features

- **Resource Usage Monitoring**: Retrieve details about various AWS resources, such as EC2 instances, S3 buckets, and more.
- **Billing Analysis**: Access and display billing information to keep track of AWS expenditures.

## Prerequisites

Before using the scripts, ensure you have the following installed and configured:

- **Operating System**: Unix-like OS (e.g., Linux, macOS)
- **AWS CLI**: Installed and configured with appropriate access credentials.
- **jq**: A lightweight and flexible command-line JSON processor.

## Installation

1. **Clone the Repository**:

    ```bash
    git clone https://github.com/rookie2410/Aws_Scripts.git
    cd Aws_Scripts
    ```

2. **Make Scripts Executable**:

    ```bash
    chmod +x *.sh
    ```

## Usage

### 1. AWS Usage Script

The `aws_usage.sh` script retrieves information about your AWS resource usage.

**Example**:

```bash
./aws_usage.sh
```

This command will display details about your AWS resources.

### 2. Billing Script

The `billing.sh` script fetches and displays your AWS billing information.

**Example**:

```bash
./billing.sh
```

This command will show your current AWS billing details.

## License

This project is licensed under the [MIT License](LICENSE).

## Contributing

Contributions are welcome!
Please fork the repository and submit a pull request for any enhancements or bug fixes.

---

*Note: For detailed information about each script's functionality and options, please refer to the comments within the respective script files.*
