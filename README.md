# GMAO-SI-Team Packages

This repository is a Homebrew tap for GMAO-SI-Team packages.

## Installing formulae

You can install a formula directly from this tap:

```sh
brew install gmao-si-team/packages/<formula>
```

For example:

```sh
brew install gmao-si-team/packages/mepo
```

Alternatively, you can tap the repository first:

```sh
brew tap gmao-si-team/packages
brew install <formula>
```

For example:

```sh
brew tap gmao-si-team/packages
brew install mepo
```

In a `Brewfile`:

```ruby
tap "gmao-si-team/packages"
brew "mepo"
```

## Homebrew tap trust

Homebrew is adding stricter trust checks for non-official taps. If tap trust checks are enabled, Homebrew may ignore formulae, casks, or commands from this tap until you explicitly trust what you want to use.

Prefer trusting only the specific formula you need. For example, to trust only `mepo`:

```sh
brew trust --formula gmao-si-team/packages/mepo
```

To trust all formulae, casks, and commands from this tap:

```sh
brew trust gmao-si-team/packages
```

Only use the tap-wide trust command if you are comfortable trusting all current and future formulae, casks, and commands maintained in this repository.

To stop using this tap:

```sh
brew untap gmao-si-team/packages
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
