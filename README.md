# Fiber Standard Library

The Fiber Standard Library is a collection of Solidity smart contracts and libraries that can be used to build on the Fiber blockchain.

## Install

```bash
forge install https://github.com/fiberevm/fiber-std.git
```

Add `fiber-std=lib/fiber-std/src/` to `remappings.txt`

## Usage

## Examples

### ERC20

```solidity
import {ERC20} from "fiber-std/ERC20.sol";

contract MyToken is ERC20 {
    constructor() ERC20("MyToken", "MTK") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}
```
