# homebrew-tap

Homebrew tap for [Toshon Jennings](https://github.com/toshon-jennings)' tools.

## Install and update

Add the tap:

```sh
brew tap toshon-jennings/tap
```

Install the macOS apps:

```sh
brew install --cask fmk-toolbox oc-rig
```

Install Open Anyway and the command-line utilities:

```sh
brew install open-anyway cleanmac github-overview
```

Refresh Homebrew package information:

```sh
brew update
```

Upgrade the installed packages from this tap:

```sh
brew upgrade fmk-toolbox oc-rig open-anyway cleanmac github-overview
```

`fmk-toolbox` is the current cask name for Forget-Me-Knot ToolBox. The older
`toolbox` cask remains available for compatibility with existing installations.

## Formulae & Casks

| Package | Type | Description | Version |
| ------- | ---- | ----------- | ------- |
| `fmk-toolbox` | Cask | Lightweight local-first macOS menu bar app for managing daily tools & links | [![FMK ToolBox](https://img.shields.io/github/v/tag/toshon-jennings/forget-me-knot?label=version)](https://github.com/toshon-jennings/forget-me-knot/releases) |
| `oc-rig` | Cask | Community OpenCode fork with an integrated terminal and persistent usage dashboard | [![OpenCode Rig](https://img.shields.io/github/v/tag/toshon-jennings/opencode-rig?label=version)](https://github.com/toshon-jennings/opencode-rig/releases) |
| `toolbox` | Legacy cask | Compatibility name for older Forget-Me-Knot ToolBox installations | `v0.1.9` |
| `open-anyway` | Formula | Menu bar app that opens Gatekeeper-blocked macOS apps | [![Open Anyway](https://img.shields.io/github/v/tag/toshon-jennings/open-anyway?label=version)](https://github.com/toshon-jennings/open-anyway/releases) |
| `cleanmac` | Formula | Lightweight developer cache cleanup utility for macOS | [![Cleanmac](https://img.shields.io/github/v/tag/toshon-jennings/cleanmac?label=version)](https://github.com/toshon-jennings/cleanmac/releases) |
| `github-overview` | Formula | Local command center dashboard for monitoring multiple GitHub repositories | [![GitHub Overview](https://img.shields.io/github/v/tag/toshon-jennings/github-overview?label=version)](https://github.com/toshon-jennings/github-overview/releases) |

### fmk-toolbox

Lightweight local-first macOS menu bar app for managing daily tools, links, and active subscriptions.

```sh
brew install --cask toshon-jennings/tap/fmk-toolbox
```

```sh
xattr -cr "/Applications/Forget-Me-Knot ToolBox.app"
```

```sh
open "/Applications/Forget-Me-Knot ToolBox.app"
```

### oc-rig

Community OpenCode fork with an integrated terminal, workbench, and persistent
usage dashboard.

```sh
brew install --cask toshon-jennings/tap/oc-rig
```

### open-anyway

Menu bar app for finding and opening apps blocked by macOS Gatekeeper. Homebrew
builds it locally so the app itself does not arrive quarantined.

```sh
brew install toshon-jennings/tap/open-anyway
```

```sh
open "$(brew --prefix open-anyway)/Open Anyway.app"
```

### cleanmac

Cleans developer caches, logs, and build artifacts on macOS (uv, pip, npm, bun,
Homebrew, Xcode DerivedData, Cargo, Docker, and more).

```sh
cleanmac              # Clean developer caches (safe)
cleanmac --aggressive # Deep clean (app caches, logs, orphaned data)
cleanmac --dry-run    # Preview what would be deleted
```

See the [cleanmac README](https://github.com/toshon-jennings/cleanmac) for all
options.

### github-overview

Local web dashboard that monitors multiple GitHub repositories (activity,
trends, useful tools).

```sh
github-overview            # Serve the dashboard
github-overview --help     # All options
```

## Keeping formulae up to date

- **`github-overview`** is published automatically by
  [GoReleaser](https://goreleaser.com) on every release from the
  `toshon-jennings/github-overview` repository. Do not hand-edit the generated
  formula; change `.goreleaser.yml` in that repo instead. GoReleaser emits a
  redundant `version` line (Homebrew flags it in `brew audit`); the
  [`normalize-formula.yml`](.github/workflows/normalize-formula.yml) workflow
  strips it automatically after each release, and CI does the same before
  auditing.
- **`cleanmac`** is updated by the
  [`update-cleanmac.yml`](.github/workflows/update-cleanmac.yml) workflow when a
  new release is tagged (or manually via `workflow_dispatch` with a tag input).
- **`open-anyway`** is built locally from its tagged source release so the app
  does not inherit a download quarantine attribute.

## Development

Contributions are welcome. To add or change a formula:

1. Edit the formula under [`Formula/`](Formula).
2. Make sure it passes the checks used by CI:

   ```sh
   brew tap toshon-jennings/tap
   brew audit --strict --online cleanmac github-overview
   brew style Formula/*.rb
   brew install cleanmac && brew test cleanmac
   brew install github-overview && brew test github-overview
   ```

3. Add a test that exercises the installed binary.

## CI

[`.github/workflows/tests.yml`](.github/workflows/tests.yml) audits, installs,
and tests every formula on macOS and Linux for every push and pull request.

## License

The formulae in this tap are licensed under the
[MIT License](https://opensource.org/license/mit).
