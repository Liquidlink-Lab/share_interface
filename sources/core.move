module share::core;

use iota::table::{Self, Table};
use iota::event;
use iota::object::{Self, UID};
use iota::transfer;
use iota::tx_context::TxContext;

public struct InviteeAdded has copy, drop {
    invitee: address,
    inviter: address,
}

public struct InviteeUpdated has copy, drop {
    invitee: address,
    inviter: address,
}

public struct State has key, store{
    id: UID,
    version: u64,
    invitees: Table<address, address>,
}

public struct AdminCap has key {
    id: UID,
}

public struct CORE has drop {}

/// ERRORS ///

#[error]
const EInviteeAlreadyExists: vector<u8> = b"The invitee already exists";

fun init(_otw: CORE, ctx: &mut TxContext){
    abort 0
}

public fun init_invitation(
    _admin: &AdminCap,
    state: &mut State,
    invitee: address,   
    inviter: address,
){  
    abort 0
}

public fun update_invitation(
    _admin: &AdminCap,
    state: &mut State,
    invitee: address,
    inviter: address,
){
    abort 0
}

/// PRIVATE ///
fun borrow_mut_invitees(state: &mut State): &mut Table<address, address>{
    abort 0
}

/// VIEW ///    
public fun borrow_invitees(state: &State): &Table<address, address>{
    abort 0
}

public fun get_inviter(state: &State, invitee: address): address {
    abort 0
}

public fun is_invitee(state: &State, invitee: address): bool{
    abort 0
}

/// TEST ONLY ///
#[test_only]
public fun init_for_testing(ctx: &mut TxContext){
    abort 0
} 