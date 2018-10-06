///@ description Connect the client to a server
ip = argument0; //String
port = argument1; //Int


client = network_create_socket(network_socket_tcp);
test = network_connect(client,ip,port);

//Check if connection happened
if (test < 0){
	
	show_message("Connection failed");
}else{

	show_message("Connected! to " + ip + ":" + port);
	
}
