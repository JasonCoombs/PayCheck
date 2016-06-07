contract owned {
    function owned() {
        owner = msg.sender;
    }
    modifier onlyowner() {
        if (msg.sender != owner) throw;
            _
    }
    address public owner;
}

contract PayCheck is owned {

    uint public expiration = now + 1 weeks;
    uint public value = 10 ** 18;

    function changeOwner(address _newOwner) onlyowner  {
        owner = _newOwner;
    }

    function Redeem() onlyowner {
        if (block.timestamp > expiration) {
        if (!(msg.sender.send(value))) throw;  
        expiration = now + 1 weeks;

        }
    }
}
