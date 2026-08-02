# homebrew-tap

Homebrew tap for [Toshon Jennings](https://github.com/toshon-jennings)' tools.

## Install

Add the tap, then install any formula:

```sh
brew tap toshon-jennings/tap
brew install cleanmac
brew install github-overview
```

Upgrade everything from this tap:

```sh
brew upgrade cleanmac github-overview
```

## Formulae

| Formula | Description | Version |
| ------- | ----------- | ------- |
| `cleanmac` | Lightweight developer cache cleanup utility for macOS | [![Cleanmac](https://img.shields.io/github/v/tag/toshon-jennings/cleanmac?label=version)](https://github.com/toshon-jennings/cleanmac/releases) |
| `github-overview` | Local command center dashboard for monitoring multiple GitHub repositories | [![GitHub Overview](https://img.shields.io/github/v/tag/toshon-jennings/github-overview?label=version)](https://github.com/toshon-jennings/github-overview/releases) |

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
  formula; change `.goreleaser.yml` in that repo instead. Note that GoReleaser
  always emits an explicit `version` line, which Homebrew flags as redundant in
  `brew audit` — delete that one line after each release so CI stays green.
- **`cleanmac`** is updated by the
  [`update-cleanmac.yml`](.github/workflows/update-cleanmac.yml) workflow when a
  new release is tagged (or manually via `workflow_dispatch` with a tag input).

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
