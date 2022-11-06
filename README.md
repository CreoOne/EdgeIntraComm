# EdgeIntraComm

This is [AssemblyScript](https://github.com/AssemblyScript/assemblyscript) boilerplate that works in [Docker+Wasm](https://docs.docker.com/desktop/wasm/).

## Advantages

1. Compiles straight into wasm.
2. Doesn't require any runtime inside docker.
3. Generated docker image weights 3.33kB.

## Running

1. Clone repo.
2. Run/look into [run.ps1](./run.ps1).

## Dependencies

- [Docker+Wasm](https://docs.docker.com/desktop/wasm/) (at the moment of making this repo just released as beta).
- [optional] [PowerShell](https://learn.microsoft.com/en-us/powershell/) for execution of run script.

## What next?

I'd like to introduce HTTP server inside, so that this boilerplate is a microservice ready to be filled with domain logic, but there are [some issues](https://github.com/AssemblyScript/wasi-shim#considerations) with [WASI](https://wasi.dev/) direction in AS. Whatever i support any side of the conflict, doesn't matter, in the current state of the WASI in AS it's too much hustle to implement HTTP server so i'm waiting until situation is resolved or alternatives are implemented.