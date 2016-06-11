(How do you create a pull request for a wiki fork??)

Testing results are here:

https://github.com/JasonCoombs/PayCheck/wiki

# PayCheck

For thoughs of us that have holes in our pockets!

Pays 10ETH once a week once funded with Redeem() call.

Owner can be changed at anytime with changeOwner() call.

Operational, however use at your own risk.

[ { "constant": true, "inputs": [], "name": "value", "outputs": [ { "name": "", "type": "uint256", "value": "" } ], "type": "function" }, { "constant": true, "inputs": [], "name": "expiration", "outputs": [ { "name": "", "type": "uint256", "value": "" } ], "type": "function" }, { "constant": true, "inputs": [], "name": "owner", "outputs": [ { "name": "", "type": "address", "value": "" } ], "type": "function" }, { "constant": false, "inputs": [ { "name": "_newOwner", "type": "address" } ], "name": "changeOwner", "outputs": [], "type": "function" }, { "constant": false, "inputs": [], "name": "Redeem", "outputs": [], "type": "function" } ]


# BossMan

bossman.sol

allows ower to manage an employees wages

[ { "constant": true, "inputs": [], "name": "sdays", "outputs": [ { "name": "", "type": "uint256", "value": "86400" } ], "type": "function" }, { "constant": true, "inputs": [], "name": "value", "outputs": [ { "name": "", "type": "uint256", "value": "1000000000000000000" } ], "type": "function" }, { "constant": true, "inputs": [], "name": "expiration", "outputs": [ { "name": "", "type": "uint256", "value": "1465757595" } ], "type": "function" }, { "constant": false, "inputs": [], "name": "RedeemA", "outputs": [], "type": "function" }, { "constant": true, "inputs": [], "name": "owner", "outputs": [ { "name": "", "type": "address", "value": "0xbc7aea1529924e74a538d4511eae0417b42461cb" } ], "type": "function" }, { "constant": false, "inputs": [ { "name": "_newN_days", "type": "uint256" } ], "name": "changeN_days", "outputs": [], "type": "function" }, { "constant": false, "inputs": [ { "name": "_newPay", "type": "uint256" } ], "name": "changePay", "outputs": [], "type": "function" }, { "constant": false, "inputs": [ { "name": "_newOwner", "type": "address" } ], "name": "changeOwner", "outputs": [], "type": "function" }, { "constant": true, "inputs": [], "name": "n_days", "outputs": [ { "name": "", "type": "uint256", "value": "1" } ], "type": "function" }, { "constant": true, "inputs": [], "name": "staff", "outputs": [ { "name": "", "type": "address", "value": "0xbc7aea1529924e74a538d4511eae0417b42461cb" } ], "type": "function" }, { "constant": true, "inputs": [], "name": "redeemC", "outputs": [ { "name": "", "type": "address", "value": "0xeeb7505c31b3f3712b2c8e78d7f3d7e7d45e50c4" } ], "type": "function" }, { "constant": false, "inputs": [ { "name": "_newStaff", "type": "address" } ], "name": "changeStaff", "outputs": [], "type": "function" }, { "constant": false, "inputs": [ { "name": "_newSdays", "type": "uint256" } ], "name": "changeSdays", "outputs": [], "type": "function" }, { "inputs": [], "type": "constructor" } ]
