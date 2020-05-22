# Class-D Amplifier Simulator with any Matlab Toolbox

## 1. Introduction
The objective of this repository is to make and show a system that simulates a Class-D amplifier in a program without a Matlab Toolbox.

A class-D Amplifier or a switching amplifier is an electronic amplifier in which the amplifying devices operate as electronic switches, and not as linear gain devices as in other amplifiers. They operate by rapidly switching back and forth between the supply rails, being fed by a modulator using pulse width to encode the audio input into a pulse train. The audio escapes through a simple low-pass filter into the loudspeaker. The high-frequency pulses are blocked. Since the pairs of output transistors are never conducting at the same time, there is no other path for current flow apart from the low-pass filter/loudspeaker. For this reason, efficiency can exceed 90%.

Class-D amplifiers work by generating a train of rectangular pulses of fixed amplitude but varying width and separation, or varying number per unit time, representing the amplitude variations of the analog audio input signal.  The output of the modulator is then used to gate the output transistors on and off alternately. Great care is taken to ensure that the pair of transistors are never allowed to conduct together, as this would cause a short circuit between the supply rails through the transistors. A simple low-pass filter consisting of an inductor and a capacitor provides a path for the low frequencies of the audio signal, leaving the high-frequency pulses behind. The circuit then relies on the inductance of the loudspeaker to keep the HF component from heating up the voice coil.

So, we will divide the program into the following blocks or sections:

  <img src="img/BlockDiagram.png" width="800" align="center">
  
## 2. Code

### 2.1. Triangular Signal Generator (triangular.m)
As I have said before, one important point of this project is to do not use Matlab Toolboxes. We could use the sawtooth function, but is included in the Signal Procesing Toolbox. So, consequently, I will use the convolution method (The convolution of two train pulses is a periodic triangular signal, as shown in the following figure). It is important to note that the frequency of the signal is choosen by the user.

  <img src="img/conv.jfif" width="500" align="center">
  
### 2.2. Pulse Train Generator (pulseTrain.m)
A program that creates a pulse train with the timeHigh/timeLow, amplitude and frequency chosen by the user. The timeHigh parameter is the percentage of the time of one period in which the signal stays at the high level.
Besides having the possibility of the Pulse Train as the input signal, the user may have other posibilities such as the Triangular Signal or a Sinusoid Wave.

  <img src="img/inputSignal.JPG" width="157" align="center">
 
An example of the plot of the Triangular Signal and the Input:

  <img src="img/example1.JPG" width="622" align="center">

### 2.3. Pulse Width Modulation (pwm.m)
This program makes the comparison between the Triangular Siganl and the Pulse Train obtaining the maximum value.

  <img src="img/example2.JPG" width="677" align="center">

### 2.4. Amplification and Low-Pass Filter (Simulator.code)
The amplification made by the transistors is simulated by a simple constant. After that, the program calculates the Discrete Fourier Transform (fft, Fast Fourier Transform, to be faster) to show and know the frecuencial components of the signal and to cut the undesiderable parts:

  <img src="img/example3.JPG" width="485" align="center">
  
Then, the program applies the Low-Pass Filter. Using the Z-Transform on the Transfer Function of the filter with the values of RLC (Resistance, Inductance and Capacitance) desired by the user. An example of a plot with the Filter Response and the transformed PWM:

  <img src="img/example4.JPG" width="643" align="center">
  
And the Filtered PWM:

  <img src="img/example5.JPG" width="504" align="center">
  
And the output result:

  <img src="img/example6.JPG" width="656" align="center">
  
## 3. Results and Conclusions
The result is pretty good and it could be a good tool for the user to try some parameters before doing an actual and real Class-D Amplifier. It also calculates the cut-off frequency of the filter to facilitate the measurement of the user.

  <img src="img/completo.JPG" width="1920" align="center">


## 4. References
[1] J. S. Chang, Meng-Tong Tan, Zhihong Cheng and Yit-Chow Tong, "Analysis and design of power efficient class D amplifier output stages," in IEEE Transactions on Circuits and Systems I: Fundamental Theory and Applications, vol. 47, no. 6, pp. 897-902, June 2000, doi: 10.1109/81.852942.

[2] K. P. Sozanski, R. Strzelecki and Z. Fedyczak, "Digital control circuit for class-D audio power amplifier," 2001 IEEE 32nd Annual Power Electronics Specialists Conference (IEEE Cat. No.01CH37230), Vancouver, BC, 2001, pp. 1245-1250 vol.2, doi: 10.1109/PESC.2001.954289.

[3] T. Ge, H. He, J. Zhou, Y. Kang and J. S. Chang, "An investigation of THD of a BTL Class D amplifier," 2016 IEEE International Symposium on Circuits and Systems (ISCAS), Montreal, QC, 2016, pp. 470-473, doi: 10.1109/ISCAS.2016.7527279.
