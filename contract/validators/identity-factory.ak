use cardano/address.{Address}
use cardano/transaction.{Transaction}
use cardano/assets.{AssetName, PolicyId}
use contract/types.{Mint, Init, End}
use validation/find.{output_by_addr}

validator identity_factory (treasury: Address, token_name: AssetName) {
    mint(redeemer: Mint, policy_id: PolicyId, transaction: Transaction) {
        let Transaction {outputs, mint, ..} = transaction
        let output = output_by_addr(outputs, treasury)
        when output is {

        }
        when redeemer is {
            Init -> True
            End -> True
        }
    }
}