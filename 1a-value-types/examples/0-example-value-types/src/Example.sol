// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/console.sol";
// import "/Users/gavinbriggs/Desktop/Projects/Blockchain/learn-solidity-presentations/1a-value-types/examples/0-example-value-types/lib/forge-std/src/console.sol";
contract Example {
    uint8 a = 255; // 0 -> 255
    uint256 b = 0; // alias: uint

    // constructor() {
    //     unchecked {
    //         for(int i = 0; i <= 300; i++) {
    //             a += 1;
    //             console.log(a);
    //         }
    //     }
    // }


    int8 c = 127; // -128 -> 127
    int256 d = -55; // alias: int256

    bool myCondition = true;

    enum Choice {
        Up,
        Down,
        Left,
        Right
    }

    //Choice choi = Choice.Right;

    constructor() {
        bool x1;
        bool x2;
        assembly {
            x1 := sload(0x0)
            x2 := sload(0x1)
        }
        console.log(x1);
        console.log(x2);
    }

    Choice choice = Choice.Up;
}
