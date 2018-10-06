//Purpose:Set up a server for clients to connect to

//Display Starting Server Message
show_message("Starting server");

//Create Default port
defaultPort = 6510;

//Declare server var
server = 0;

//Find an available port to use
do
{
		
	defaultPort ++;
	server = network_create_server(network_socket_tcp, defaultPort, 4);
	
}until(server > 0);

//Display that we have started a socket to connect to
show_message("Socket Initialized: " + string(server) + " " + string(defaultPort

//Create a map to hold connected client in
clients = ds_map_create()
