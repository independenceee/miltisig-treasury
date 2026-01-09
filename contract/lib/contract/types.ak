use cardano/address.{Address}

pub type Datum {
    receiver: Address,
    owners: List<Address>,
    signers: List<Address> 
}

pub type Redeemer {
    Deposit
    Execute
    Signature
}