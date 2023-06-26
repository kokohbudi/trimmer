# trimmer

This script is designed for Linux users and enables automatic SSD trimming at regular intervals. SSD trimming helps maintain the performance and longevity of SSDs by freeing up unused blocks and optimizing write operations.

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)

## Features

- Automates SSD trimming to improve performance and lifespan.
- Scheduled to run every two weeks by default.
- Easily customizable for different intervals.
- Lightweight and simple to set up.
- Compatible with most Linux distributions.

## Prerequisites

To use this script, you should have the following prerequisites:

- A Linux-based operating system (e.g., Ubuntu, Fedora, Debian).
- Administrative (root) access to your system.
- An SSD (Solid State Drive) installed.

## Installation

1. Clone or download this repository to your local machine:

   ```bash
   git clone https://github.com/your-username/ssd-trim-script.git
   ```
2. Make the script executable:
   ```bash
   chmod +x ssd-trim.sh
   ```
3. Optionally, review the script configuration:
    Open ssd-trim.sh in a text editor to modify the script parameters if needed. By default, the script is scheduled to run       every two weeks, but you can change this interval based on your requirements.
4. Add the script to your system's startup applications:

Depending on your Linux distribution, the steps to add a startup application may vary. Generally, you can follow these steps:

- Open the Startup Applications or Session and Startup settings.
- Click on Add or + to create a new startup application.
- Provide a name (e.g., SSD Trim) and the path to the ssd-trim.sh script.
- Save the changes.

Reboot your system or manually start the script:

5. After adding the script to the startup applications, the SSD trimming script will automatically run during system startup. Alternatively, you can manually execute the script by running:
```bash
./ssd-trim.sh
```

## Usage
The script will automatically run during system startup or at the specified interval. It will initiate the SSD trimming process, optimizing your SSD's performance. You don't need to manually invoke the script unless you want to run it outside of the scheduled intervals.

## Contributing
Contributions to this project are welcome! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request.
