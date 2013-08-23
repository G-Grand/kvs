-ifndef(KVS_HRL).
-define(KVS_HRL, true).

-define(USR_FEED, users).
-define(PRD_FEED, products).
-define(GRP_FEED, groups).
-define(FEED(Type), case Type of user -> ?USR_FEED; product -> ?PRD_FEED; group -> ?GRP_FEED; _-> undefined end).

-define(CONTAINER, id, top, entries_count=0).
-define(ITERATOR(Container), id, container=Container, feed_id, prev, next, feeds=[]).

-record(container, {?CONTAINER}).
-record(iterator,  {?ITERATOR(undefined)}).

-endif.

