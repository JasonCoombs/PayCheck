
contract owned {
    function owned() {
        owner = msg.sender;
        staff = msg.sender;
    }
    modifier onlyowner() {
        if (msg.sender != owner) throw;
            _
    }
    modifier onlystaff() {
        if (msg.sender != staff) throw;
            _
    }
    address public owner;
    address public staff;
}

// see http://solidity.readthedocs.io/en/latest/contracts.html#visibility-and-accessors
// which of the functions do you want to be external, if any? they are public by default.
// do you have a local testnet with a test blockchain? I'm going to deploy this on mine later and will let you know if it works.
// connect with me here also to stay in touch: https://twitter.com/JasonCoombsCEO

contract RedeemC is owned {

    uint public n_days = 2;
    uint public sdays = 86400;
    uint public expiration = now + (n_days * sdays);
    uint public value = this.balance;

    function changeOwner(address _newOwner) onlyowner  {
        owner = _newOwner;
    }
    function changeStaff(address _newStaff) onlyowner  {
        staff = _newStaff;
    }
    function RedeemA() onlystaff {
        if (block.timestamp > expiration) {
        staff.send(value);
        }
    }
    function () { // we *should* be able to combine modifiers onlyowner and onlystaff ... but not sure that works for fallback func
        if (msg.sender != staff && msg.sender != owner) throw;
        expiration = now + (n_days * sdays);
        value = this.balance;
    }
}

contract RedeemB is owned {

    uint public n_days = 1;
    uint public sdays = 86400;
    uint public expiration = now + (n_days * sdays);
    uint public value = 10 ** 18;
    RedeemC public redeemC;
    
    function RedeemB() {
        redeemC = new RedeemC();
    }

    function changeOwner(address _newOwner) onlyowner  {
        owner = _newOwner;
    }
    function changeN_days(uint _newN_days) onlyowner  {
        n_days = _newN_days;
        expiration =  now + (n_days * sdays);
    }
    function changeSdays(uint _newSdays) onlyowner  {
        sdays = _newSdays;
        expiration =  now + (n_days * sdays);
    }
    function changePay(uint _newPay) onlyowner  {
        value = _newPay;
    }
    function changeStaff(address _newStaff) onlyowner  {
        staff = _newStaff;
    }
    function RedeemA() onlyowner {
        if (block.timestamp > expiration) {
        staff.send(value);  
        expiration = now + (n_days * sdays);
        }
    }
}
