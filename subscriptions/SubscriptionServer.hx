package subscriptions;

typedef ServerOptions = {
    ?rootValue: Any,

    // TODO (DK)
    ?schema: Dynamic,
    ?execute: Dynamic,
    ?subscribe: Dynamic,
}

// TODO (DK)
typedef SocketOptions = {
    server: Dynamic,
    path: String,
}

@:jsRequire('subscriptions-transport-ws', 'SubscriptionServer')
extern class SubscriptionServer {
    public function new( options: ServerOptions, socketOptions: SocketOptions );
}
