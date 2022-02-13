var msg = argument0;
var messageType = argument1;
var showAlways = argument2;

show_debug_message(msg);

if !instance_exists(obj_playfab_terminal) exit;
if !(showAlways or obj_playfab_terminal.showTerminalMessage[messageType]) exit;


var t = obj_playfab_terminal;
t.terminalOutput =
(
t.terminalTitle[messageType]+ ":#"
+ msg + "#---------------------------------------------------------------------------------------#"
+ obj_playfab_terminal.terminalOutput
);
