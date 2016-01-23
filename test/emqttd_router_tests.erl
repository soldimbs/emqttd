%%%-----------------------------------------------------------------------------
%%% @Copyright (C) 2012-2016, Feng Lee <feng@emqtt.io>
%%%
%%% Permission is hereby granted, free of charge, to any person obtaining a copy
%%% of this software and associated documentation files (the "Software"), to deal
%%% in the Software without restriction, including without limitation the rights
%%% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
%%% copies of the Software, and to permit persons to whom the Software is
%%% furnished to do so, subject to the following conditions:
%%%
%%% The above copyright notice and this permission notice shall be included in all
%%% copies or substantial portions of the Software.
%%%
%%% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
%%% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
%%% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
%%% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
%%% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
%%% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
%%% SOFTWARE.
%%%-----------------------------------------------------------------------------

-module(emqttd_router_tests).

-include("emqttd.hrl").

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

-define(ROUTER, emqttd_router).

route_test_() ->
    {setup,
     fun()  -> ?ROUTER:init([]) end,
     fun(_) -> ?ROUTER:destory() end,
     [?_test(t_add_routes()),
      ?_test(t_delete_routes()),
      ?_test(t_has_route()),
      ?_test(t_route())
     ]}. 

t_add_routes() ->
    Pid = self(),
    ok.
    %?ROUTER:add_routes([<<"a">>, <<"b">>], Pid),
    %?assertEqual([{<<"a">>, Pid}, {<<"b">>, Pid}], lists:sort(ets:tab2list(route))),
    %?assertEqual([{Pid, <<"a">>}, {Pid, <<"b">>}], lists:sort(ets:tab2list(reverse_route))).

t_delete_routes() ->
    ok.

t_has_route() ->
    ok.

t_route() ->
    ok.

-endif.

