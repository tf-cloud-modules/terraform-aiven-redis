# Changelog

All notable changes to this module will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.0.1] - 2026-11-26

### Deprecated
- **Final release:** mark the Redis module as deprecated and cap Aiven provider support at `>= 4.55.2, < 4.56.0`, where the Redis resources are removed.
- Document that Redis-to-Valkey migration is not provided and requires a separate migration plan.

## [2.0.0] - 2023-03-28

### Changed
- **Breaking:** add support for Aiven provider v4.

## [1.0.4] - 2023-03-28

### Fixed
- Lock the Aiven provider version.

## [1.0.3] - 2022-10-03

### Changed
- Update the complete example to use one variable for the project.

## [1.0.2] - 2022-08-18

### Fixed
- Fix the Redis tag section.

## [1.0.1] - 2022-08-10

### Fixed
- Fix a Redis user typo.

## [1.0.0] - 2022-08-08

### Added
- Add Redis service tags.

## [0.4.0] - 2022-08-08

### Added
- Add private link access and service integrations.

## [0.3.0] - 2022-08-08

### Added
- Add private access configuration.

## [0.2.2] - 2022-08-08

### Added
- Add the complete Redis and Redis user example.

## [0.2.0] - 2022-08-07

### Added
- Add the Redis user submodule.

## [0.1.0] - 2022-08-06

### Added
- Initial release of the Aiven Redis Terraform module.

[Unreleased]: https://github.com/tf-cloud-modules/terraform-aiven-redis/compare/2.0.1...HEAD
[2.0.1]: https://github.com/tf-cloud-modules/terraform-aiven-redis/compare/2.0.0...2.0.1
[2.0.0]: https://github.com/tf-cloud-modules/terraform-aiven-redis/compare/1.0.4...2.0.0
[1.0.4]: https://github.com/tf-cloud-modules/terraform-aiven-redis/compare/1.0.3...1.0.4
[1.0.3]: https://github.com/tf-cloud-modules/terraform-aiven-redis/compare/1.0.2...1.0.3
[1.0.2]: https://github.com/tf-cloud-modules/terraform-aiven-redis/compare/1.0.1...1.0.2
[1.0.1]: https://github.com/tf-cloud-modules/terraform-aiven-redis/compare/1.0.0...1.0.1
[1.0.0]: https://github.com/tf-cloud-modules/terraform-aiven-redis/compare/0.4.0...1.0.0
[0.4.0]: https://github.com/tf-cloud-modules/terraform-aiven-redis/compare/0.3.0...0.4.0
[0.3.0]: https://github.com/tf-cloud-modules/terraform-aiven-redis/compare/0.2.2...0.3.0
[0.2.2]: https://github.com/tf-cloud-modules/terraform-aiven-redis/compare/0.2.1...0.2.2
[0.2.0]: https://github.com/tf-cloud-modules/terraform-aiven-redis/compare/0.1.0...0.2.0
[0.1.0]: https://github.com/tf-cloud-modules/terraform-aiven-redis/releases/tag/0.1.0
