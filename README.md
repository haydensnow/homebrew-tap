# Hayden Snow's Homebrew tap

## Surfboard

An Arc-style sidebar for Safari on macOS 14 or later. Releases contain a universal app
for Apple silicon and Intel Macs, signed with Developer ID and notarized by Apple.

```sh
brew install --cask haydensnow/tap/surfboard
```

Surfboard checks for updates in Settings ▸ Updates. To update through Homebrew instead:

```sh
brew update
brew upgrade --cask --greedy haydensnow/tap/surfboard
```

The cask downloads the app from the public
[Surfboard Releases](https://github.com/haydensnow/Surfboard-releases) repository and
verifies its SHA-256 checksum. No source build or GitHub login is needed.

Surfboard is a menu-bar app. Grant Accessibility, Screen Recording, Full Disk Access and
permission to control Safari when prompted or through Settings ▸ Permissions.

If you used an older locally signed build, install the Developer ID release manually
once (or through this cask) and re-grant its macOS permissions. Later in-app updates
continue to check the installed app's signing requirement before replacing it.

`brew uninstall --cask surfboard` keeps preferences and saved arrangements.
`brew uninstall --cask --zap surfboard` removes Surfboard's saved data too; Safari's own
bookmarks and history are never part of the cask's removal paths.
