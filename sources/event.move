module share::events;

public struct InviteeAdded has copy, drop {
    invitee: address,
    inviter: address,
}

public struct InviteeUpdated has copy, drop {
    invitee: address,
    inviter: address,
} 