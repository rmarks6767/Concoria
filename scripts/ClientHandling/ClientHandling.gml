//Purpose: Handle Connecting Clients, and incoming packets.

//Grab id of event and type of event
var eventid = async_load[? "id"];
var type = async_load[? "type"];


//Check if incoming event is coming from server or from a client

//If its from the server
if (eventid == server){
	
	//If someone is connecting
	if (type == network_type_connect){
	
	//Store the socket and ip
	var sock = async_load[? "socket"];
	var ip = async_load[? "ip"];
	
	//Set up an instance asociated with the socket and store it into the connected clients map
	var inst = instance_create_layer(0,0,"Instance_Layer",oPlayer);
	ds_map_add(clients,sock,inst);
	
	//Display notification of connection
	show_message("Connection from " + ip);
	
	
	}
	
	//IF someone disconnects
	if (type == network_type_disconnect){
	
		//Store socket, ip, and instance from the clients map
		var sock = async_load[? "socket"];
		var inst = clients[? sock];
		var ip = async_load[? "ip"];
		
		//Delete the client from the clients map and destroy the client's instance
		ds_map_delete(clients,sock);
		instance_destroy(inst);
		
		//Display disconnect message
		show_message("Disconnection from " + ip);
	
	
	}

	
}
//If the message is comming from a client
else if (eventid != global.client){
	
	var sock = async_load[? "socket"];
	var inst = clients[? sock];
	var buff = async_load[? "buffer"];
	var cmd = buffer_read(buff,buffer_s16);
	
	
	switch(cmd){
		
		case CMD.KEYPRESS:
			var key = buffer_read(buff,buffer_s16);
			var updown = buffer_read(buff,buffer_bool);
			if (key == vk_left){
				inst.key[KEY.LEFT] = updown;
			}
			else if (key == vk_right){
				inst.key[KEY.RIGHT] = updown;
			}
			else if (key == vk_up){
				inst.key[KEY.UP] = updown;
			}
			else if (key == vk_down){
				inst.key[KEY.DOWN] = updown;
			}
			else if (key == vk_space){
				inst.key[KEY.SPACE] = updown;
			}
			break;
	}
	
}
