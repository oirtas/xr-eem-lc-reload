::cisco::eem::event_register_syslog pattern {Interface FourHundredGigE0/3/0/7, changed state to Administratively Down}

# APPLET:
#
# event manager applet RELOAD-LC3
# event syslog pattern "Interface FourHundredGigE0/3/0/7, changed state to Administratively Down"
# action 1 cli command "admin hw-module location 0/3 reload noprompt"
# 
# by satr.io

namespace import ::cisco::eem::*
namespace import ::cisco::lib::*

array set arr_einfo [event_reqinfo]

# Open CLI
if [catch {cli_open} result] {
    error $result $errorInfo
} else {
    array set cli1 $result
}

# Execute reload
if [catch {cli_exec $cli1(fd) "admin hw-module location 0/3 reload noprompt"} _cli_result] {
    error $_cli_result $errorInfo
}

# Close CLI
catch {cli_close $cli1(fd) $cli1(tty_id)} result