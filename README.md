# Homebrew Tap for Local Whisper

On-device voice transcription with grammar correction for macOS. Runs locally on Apple Silicon.

## Install

```bash
brew install gabrimatic/local-whisper/local-whisper
```

## Setup

```bash
wh setup
```

`wh setup` downloads the default local model, checks Microphone and Accessibility permission, and starts the background service.

## Usage

Double-tap **Right Option** to record, tap to stop. Transcribed text goes to the clipboard.

```bash
wh                    # Status and help
wh setup             # Run first-time setup again
wh whisper "hello"    # Text-to-speech
wh listen             # Record and transcribe
wh config             # Edit settings
```

## Requirements

- macOS on Apple Silicon (M1/M2/M3/M4)
- ~3GB disk space (code + models)

## More

See the [main repository](https://github.com/gabrimatic/local-whisper) for full documentation.
