# Changelog

## [1.0.1-alpha.5](https://github.com/camptocamp/devops-stack-module-dex/compare/v1.0.1-alpha.4...v1.0.1-alpha.5) (2024-10-09)


### Bug Fixes

* **dex:** updated the provider for the dex module bcs it's still used ([#15](https://github.com/camptocamp/devops-stack-module-dex/issues/15)) ([77cd0cf](https://github.com/camptocamp/devops-stack-module-dex/commit/77cd0cfd8b196f573dfb3b9316f64bfbd3bbca0d))

## [1.0.1-alpha.4](https://github.com/camptocamp/devops-stack-module-dex/compare/v1.0.0-alpha.4...v1.0.1-alpha.4) (2023-08-09)


### Bug Fixes

* readd support to deactivate auto-sync which was broken by [#11](https://github.com/camptocamp/devops-stack-module-dex/issues/11) ([#13](https://github.com/camptocamp/devops-stack-module-dex/issues/13)) ([1dd1916](https://github.com/camptocamp/devops-stack-module-dex/commit/1dd1916d4b762497557dc60787265aab81c8e27a))

## [1.0.0-alpha.3](https://github.com/camptocamp/devops-stack-module-dex/compare/v1.0.0-alpha.3...v1.0.0-alpha.4) (2023-07-11)


### ⚠ BREAKING CHANGES

* add support to oboukili/argocd v5 ([#11](https://github.com/camptocamp/devops-stack-module-dex/issues/11))

### Features

* add support to oboukili/argocd v5 ([#11](https://github.com/camptocamp/devops-stack-module-dex/issues/11)) ([e0ea203](https://github.com/camptocamp/devops-stack-module-dex/commit/e0ea203285ec2ac77d63e90e8a707254a851e284))

## [1.0.0-alpha.3](https://github.com/camptocamp/devops-stack-module-dex/compare/v1.0.0-alpha.2...v1.0.0-alpha.3) (2023-03-24)


### Documentation

* add docs structure and PR template ([#8](https://github.com/camptocamp/devops-stack-module-dex/issues/8)) ([fa25145](https://github.com/camptocamp/devops-stack-module-dex/commit/fa25145814a5ba2997ece08757896b58d76727dd))

## [1.0.0-alpha.2](https://github.com/camptocamp/devops-stack-module-dex/compare/v1.0.0-alpha.1...v1.0.0-alpha.2) (2023-02-08)


### Features

* **main:** introduce a variable to set autosync ([#6](https://github.com/camptocamp/devops-stack-module-dex/issues/6)) ([ed96f1c](https://github.com/camptocamp/devops-stack-module-dex/commit/ed96f1c95f58294c2aeaf65024b1d33706cdb2c3))

## 1.0.0-alpha.1 (2022-11-18)


### ⚠ BREAKING CHANGES

* do not create client secrets to avoid statefulness

### Features

* allow clients with empty secret ([9bf6b58](https://github.com/camptocamp/devops-stack-module-dex/commit/9bf6b588dafc5d716ba581288bb190cd9357fc9a))
* allow usage of a dex custom image ([4f3e359](https://github.com/camptocamp/devops-stack-module-dex/commit/4f3e359530ef128f98dace2db553befaa368a818))
* do not create client secrets to avoid statefulness ([48d0cd8](https://github.com/camptocamp/devops-stack-module-dex/commit/48d0cd83d2985cd00bb03e8683c08037fbda2e02))


### Bug Fixes

* trim trailing newline when getting version from version.txt file ([6c076fd](https://github.com/camptocamp/devops-stack-module-dex/commit/6c076fd05942d6c3adca9a079df4c755046a5993))


### Continuous Integration

* add central workflows including release-please ([#4](https://github.com/camptocamp/devops-stack-module-dex/issues/4)) ([b7eaee5](https://github.com/camptocamp/devops-stack-module-dex/commit/b7eaee543135c0ddc5ff8633d4e6fc579cc4ad6f))
