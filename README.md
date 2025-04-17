# sdcli-ps - Subbdom CLI for PowerShell

## Quickstart
```
git clone https://github.com/ndr-repo/sdcli-ps.git
powershell -noexit -ExecutionPolicy Bypass -File <path-to-sdcli.ps1>
powershell -noexit -ExecutionPolicy Bypass -File <path-to-sdcli-stdout.ps1>
```
- Add the sdcli folder to environment variables/PATH
- Add your API key to sdcli/key.txt
- Set the execution policy to allow running sdcli & sdcli-stdout


## Usage Syntax
```
sdcli <target-domain> <result-filename.extension>
```

- I've included a seperate script for calling results to stdout. Eventually, I'd like to combine these, but wanted to include for you to be able to use with existing scripts.
