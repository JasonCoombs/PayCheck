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

    uint public expiration = now + 1 weeks;
    uint public value = 10 ** 18;

    function changeOwner(address _newOwner) onlyowner  {
        owner = _newOwner;
    }
    function changePay(address _newPay) onlyowner  {
        value = _newPay;
    }
    function changeStaff(address _newStaff) onlyowner  {
        staff = _newStaff;
    }

    function Redeem() onlystaff {
        if (block.timestamp > expiration) {

        msg.staff.send(value);
        expiration = now + 1 weeks;

        }
    }
}


