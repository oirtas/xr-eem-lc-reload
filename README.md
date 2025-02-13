# Overview

<br> #After succeeding need to remove "event manager policy xr-eem-lc-reload.tcl username event_manager_user persist-time 3600" when the LC is reloaded to prevent infinite loop.

This code is tested in the below environment:
<br> Cisco ASR9006
<br> XR 7.11.2
<br> The goal is to trigger self-reload for LC when a particular log is prompted.
<br> After succeeding need to remove "event manager policy xr-eem-lc-reload.tcl username event_manager_user persist-time 3600" when the LC is reloaded to prevent infinite loop.
