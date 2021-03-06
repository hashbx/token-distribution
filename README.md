![HashBX](images/logo.png)

# HashBX Token

## Overview


### Etherscan.io
```
https://etherscan.io/token/0x6fe355c62c6faf6946ce888ffaba9fd12355ae27
```

### Token Address 
```
0x6fe355c62c6faf6946ce888ffaba9fd12355ae27
```

### HashBX Token

The HBX token `HBXToken.sol` is ERC-20 standard compatible and has the following additional characteristics:

1. An initial amount of 1,000,000,000 HBX tokens supply.
2. An ability to burn tokens by users to reduce total number of token supply.

At the completion of token sale, HashBX plans to do the following:

- Burn all unallocated tokens to proportionally increase each token holder’s percentage in the overall token amount.

#### Implementation

We use [OpenZeppelin](https://openzeppelin.org) code for `SafeMath`, `Ownable`, `Burnable` and `StandardToken` logic.

* `SafeMath` provides arithmetic functions that throw exceptions when integer overflow occurs.
* `Ownable` keeps track of a contract owner and permits the transfer of ownership by the current owner.
* `Burnable` provides a burn function that decrements the balance of the burner and the total supply.
* `StandardToken` provides an implementation of the ERC-20 standard.

The token contract includes the following constants:

```javascript
    name             = "HashBX";
    symbol           = "HBX";
    decimals         = 18;
    INITIAL_SUPPLY   = 1,000 million HBX;
    Mintable         = False
```

The above constants indicate a maximum supply of 1,000 million tokens.

Copyright © 2017-2018 - HashBX Global Company Limited. All Rights Reserved.
