use cardano/address.{Credential}
use cardano/assets.{PolicyId}
use cardano/certificate.{Certificate}
use cardano/governance.{ProposalProcedure, Voter}
use cardano/transaction.{OutputReference, Transaction}

validator placeholder {
  mint(_redeemer: Data, _policy_id: PolicyId, _self: Transaction) {
    // todo @"mint logic goes here"
    True
  }

  spend(
    _datum: Option<Data>,
    _redeemer: Data,
    _utxo: OutputReference,
    _self: Transaction,
  ) {
    // todo @"spend logic goes here"
    True
  }

  withdraw(_redeemer: Data, _account: Credential, _self: Transaction) {
    // todo @"withdraw logic goes here"
    True
  }

  publish(_redeemer: Data, _certificate: Certificate, _self: Transaction) {
    // todo @"publish logic goes here"
    True
  }

  vote(_redeemer: Data, _voter: Voter, _self: Transaction) {
    // todo @"vote logic goes here"
    True
  }

  propose(_redeemer: Data, _proposal: ProposalProcedure, _self: Transaction) {
    // todo @"propose logic goes here"
    True
  }

  // // If needs be, remove any of unneeded handlers above, and use:
  //
  // else(_ctx: ScriptContext) {
  //   todo @"fallback logic if none of the other purposes match"
  // }
  //
  // // You will also need an additional import:
  // //
  // // use cardano/script_context.{ScriptContext}
}
