# CITestApp

A new iOS application built with SwiftUI

## Badges

![iOS](https://img.shields.io/badge/iOS-18.0%2B-blue)
![Swift](https://img.shields.io/badge/Swift-5.10-orange)
![Xcode](https://img.shields.io/badge/Xcode-15.0%2B-blue)
![License](https://img.shields.io/badge/license-MIT-green)

## Requirements

- iOS 18.0+
- Xcode 15.0+
- Swift 5.10

## Quick Start

### Prerequisites

Make sure you have [Homebrew](https://brew.sh) installed, then run:

```bash
./scripts/setup.sh
```

This will:
- Install all required dependencies (SwiftLint, SwiftFormat, XcodeGen, etc.)
- Generate the Xcode project from `project.yml`
- Set up git pre-commit hooks

### Building

```bash
# Build for simulator
./scripts/build.sh

# Build for device
./scripts/build.sh --device
```

### Testing

```bash
# Run unit tests
./scripts/test.sh

# Run UI tests
./scripts/test.sh --ui

# Run all tests
./scripts/test.sh --all
```

### Code Quality

```bash
# Check and fix formatting
./scripts/format.sh --fix

# Check and fix linting issues
./scripts/lint.sh --fix

# Run full preflight check (format, lint, test)
./scripts/preflight.sh
```

## Project Structure

```
CITestApp/
├── Models/           # Data models and Core Data entities
├── Views/            # SwiftUI views and UIKit view controllers
├── ViewModels/       # Business logic and view state management
├── Services/         # Network, persistence, and business services
├── Extensions/       # Swift extensions and utilities
└── Helpers/          # Helper functions and utilities
```

## Development Scripts

This project includes several helper scripts in the `scripts/` directory:

| Script | Purpose |
|--------|---------|
| `setup.sh` | One-time project setup and dependency installation |
| `build.sh` | Build the app for simulator or device |
| `test.sh` | Run unit tests, UI tests, or both |
| `lint.sh` | Run SwiftLint and optionally fix issues |
| `format.sh` | Run SwiftFormat and optionally fix issues |
| `simulator.sh` | Manage iOS simulators for testing |
| `preflight.sh` | Complete local CI check before committing |
| `ci.sh` | CI-specific build and test commands |

Run any script with `--help` to see available options.

## Configuration

### XcodeGen

This project uses [XcodeGen](https://github.com/yonaskolb/XcodeGen) to generate the Xcode project file from `project.yml`.

To regenerate the project file:
```bash
xcodegen
```

### Simulators

Simulator configuration is managed in `simulator.yml`. To update simulator settings:

```bash
# Configure test simulators
./scripts/simulator.sh --config-tests "iPhone 16 Pro Max"

# Configure UI test simulators
./scripts/simulator.sh --config-ui-tests "iPad Air 11-inch"
```

### Code Style

- **SwiftLint**: Configuration in `.swiftlint.yml`
- **SwiftFormat**: Configuration in `.swiftformat`
- **Line Length**: 120 characters (warnings), 150 characters (errors)
- **Indentation**: 2 spaces

## Contributing\n\nContributions are welcome! Please feel free to submit a Pull Request.

## License\n\nThis project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

If you encounter any issues or have questions, please [open an issue](https://github.com/yourusername/citestapp/issues) on GitHub.