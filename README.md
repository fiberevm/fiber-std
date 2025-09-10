# Fiber Standard Library

The Fiber Standard Library is a collection of Solidity smart contracts and libraries that can be used to build on the Fiber blockchain.

## Install

```bash
forge install https://github.com/fiberevm/fiber-std.git
```

Add `fiber-std=lib/fiber-std/src/` to `remappings.txt`

## Usage

## Examples

### Create a new token

```solidity
import {Token} from "fiber-std/Token.sol";

contract MyToken is Token {
    constructor() Token("MyToken", "MTK") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}
```
