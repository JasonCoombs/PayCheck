
contract owned {
    function owned() {
        owner = msg.sender;
        owner = msg.sender;
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
        if (msg.sender != redeemC) throw;
        if (block.timestamp > expiration) {
        staff.send(value)
        }
    }
    function () {
        if (msg.sender != redeemC) throw;
        expiration = now + (n_days * sdays);
        value = this.balance;
        }
    }
}

contract RedeemB is owned {

    uint public n_days = 1;
    uint public sdays = 86400;
    uint public expiration = now + (n_days * sdays);
    uint public value = 10 ** 18;
    uint public redeemC = new RedeemC(); 

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
