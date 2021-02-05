x = [0 0 0; 0 0 1; 0 1 0; 0 1 1; 1 0 0; 1 0 1; 1 1 0; 1 1 1];
x=x';
y = [1 0 0 1 0 1 1 0];
network = newff(minmax(x),[4,1], {'logsig','logsig','logsig'});
network = train(network,x,y);
network.b %to find Bias
network.IW  %to get weights of first layer
network.LW %to get weights of second layer 
network([0;0;0])
network([0;0;1])
network([0;1;0])
network([0;1;1])
network([1;0;0])
network([1;0;1])
network([1;1;0])
network([1;1;1])