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
    // init defaults to change later
    uint public n_days = 1;
    uint public sdays = 86400;
    uint public expiration = now + (n_days * sdays);
    uint public value = 10 ** 18;

    function expire() {
        if (msg.sender != owner || msg.sender != staff ) throw;
        expiration =  now + (n_days * sdays);
    }
    function changeOwner(address _newOwner) onlyowner  {
        owner = _newOwner;
    }
    function changeN_days(uint _newN_days) onlyowner  {
        n_days = _newN_days;
    }
    function changeSdays(uint _newSdays) onlyowner  {
        sdays = _newSdays;
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
        expire();
        }
    }
    function Fire() onlyowner { 
        suicide(owner); 
    }
}
