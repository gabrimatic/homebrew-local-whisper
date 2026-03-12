# Homebrew Tap for Local Whisper

Local voice transcription with grammar correction for macOS. All processing runs locally on Apple Silicon.

## Install

```bash
brew tap gabrimatic/local-whisper
brew install local-whisper
```

## Setup

```bash
wh doctor --fix       # Downloads models (~2GB), checks permissions
brew services start local-whisper
```

## Usage

Double-tap **Right Option** to record, tap to stop. Transcribed text is copied to your clipboard.

```bash
wh                    # Status and help
wh whisper "hello"    # Text-to-speech
wh listen             # Record and transcribe
wh config             # Edit settings
```

## Requirements

- macOS on Apple Silicon (M1/M2/M3/M4)
- ~3GB disk space (code + models)

## More

See the [main repository](https://github.com/gabrimatic/local-whisper) for full documentation.
