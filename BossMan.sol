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

contract PayCheck is owned {

    uint public n_days = 1;
    uint public sdays = 86400;
    uint public expiration = now + (n_days * sdays);
    uint public value = 10 ** 18;

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
    function Redeem() onlystaff {
        if (block.timestamp > expiration) {
        staff.send(value);  
        expiration = now + (n_days * sdays);
        }
    }
    function Kill() onlyowner { 
        if (msg.sender != owner) throw;
        suicide(owner); 
    }
}
