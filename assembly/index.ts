import { Console } from "as-wasi/assembly"

export function _start(): void {
  Console.log("Hello");
}