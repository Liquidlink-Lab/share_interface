module share_interface::events;

public struct InviteeAdded has copy, drop {
    invitee: address,
    inviter: address,
}

public struct InviteeUpdated has copy, drop {
    invitee: address,
    inviter: address,
} 