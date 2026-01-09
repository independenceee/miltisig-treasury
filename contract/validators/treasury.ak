use cardano/transaction.{OutputReference, Transaction}
use contract/types.{Datum, Deposit, Execute, Redeemer, Signature}

validator treasury(threshold: Int) {
  spend(
    datum_option: Option<Datum>,
    redeemer: Redeemer,
    output_reference: OutputReference,
    transaction: Transaction,
  ) {
    expect Some(datum) = datum_option
    when redeemer is {
      Deposit -> True
      Execute -> True
      Signature -> True
    }
  }

  else(_) {
    fail
  }
}
