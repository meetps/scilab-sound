exec('get_continuous_sinusoid.sci');


// You can use the function 'get_continuous_sinusoid' to obtain an array of values of the continuous time sinusoid
// The inputs to the function will be the signal amplitude 'a'(from 0 to1), fundamental frequency 'F0'(100 to 4000 Hz), phase 'phi'(in radians) and duration 'T'(in ms) 
// The outputs will be the values 'y' of the sinusoid & their time indices 't'
// You could call this function multiple times and add the different sinusoids. Finally you can plot, play the resulting signal.


// For example:
a = 0.7;        
phi = %pi/4;    //(Radians)    

time_list = [200, 200, 400, 400, 400, 400, 600, 200, 400, 200, 200, 400, 400, 400, 400, 600, 200, 400, 200, 200, 400, 400, 400, 400, 800, 400, 400, 400, 400, 400, 200, 400, 800]; 
freq_list = [185, 196, 220, 220, 247, 247, 220, 196, 185, 185, 196, 220, 220, 247, 247, 220, 196, 185, 185, 196, 220, 220, 247, 277, 294, 294, 330, 277, 277, 247, 277, 247, 220];


//[y,t] = get_continuous_sinusoid(a,freq_list(1),phi,time_list(1));

for sound_index = 1:length(freq_list)  
 [y,t] = get_continuous_sinusoid(a,freq_list(sound_index),phi,time_list(sound_index));
 sound(y,10000);
end 

 





// Plot the continuous time curve
//clf();
//plot(t,y,'b');  
// Axis properties
//a = gca();
//a.x_location = "origin";
//a.y_location = "origin";



// Play the sinusoid
//sound(y,100000);
