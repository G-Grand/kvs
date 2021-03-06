-module(kvs_feed).
-copyright('Synrc Research Center, s.r.o.').
-compile(export_all).
-include("config.hrl").
-include("entry.hrl").
-include("comment.hrl").
-include("feed.hrl").
-include("metainfo.hrl").
-include("state.hrl").
-include("kvs.hrl").

metainfo() ->
    #schema{name=kvs,tables=[
        #table{name=entry,container=true,fields=record_info(fields,entry)},
        #table{name=log,container=true,fields=record_info(fields,log)},
        #table{name=operation,container=log,fields=record_info(fields,operation)},
        #table{name=comment,container=true,fields=record_info(fields,comment)},
        #table{name=feed,container=true,fields=record_info(fields,feed)}
    ]}.
