# termpilot

Termpilot is a cli tool that mimics the AI mode in the Warp terminal. So it will turn a less
RAM-hungry terminal emulator into a janky Warp-like terminal. It is written in Ruby and uses
the OpenAI API to generate responses from ChatGPT 3.5 by default.

## Installation

Clone the repo, `cd` into it's directory, and run `./bin/install.sh`. You will also need a 
OpenAI API key, which you can get by signing up for the OpenAI API. Place this key in your 
`.zshrc` or `.bashrc` file as `OPENAI_API_KEY`.

## Usage

Simply type `termpilot` followed by a space and your terminal command question. The more 
concise and simple you are, the better. Termpilot should return a response from ChatGPT with
just the terminal command. This command is then automatically copied to your clipboard.

You can pass a `-e` flag (for 'empty context') to remove termpilot's default context and
get a standard, more verbose chatGPT response.

### License

whatever.
