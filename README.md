# Class-D Amplifier Simulator with any Matlab Toolbox

## 1. Introduction
A class-D Amplifier or a switching amplifier is an electronicamplifier in which the amplifying devices operate as electronic switches, and not as linear gain devices as in other amplifiers. They operate by rapidly switching back and forth between the supply rails, being fed by a modulator using pulse width to encode the audio input into a pulse train. The audio escapes through a simple low-pass filter into the loudspeaker. The high-frequency pulses are blocked. Since the pairs of output transistors are never conducting at the same time, there is no other path for current flow apart from the low-pass filter/loudspeaker. For this reason, efficiency can exceed 90%.

Class-D amplifiers work by generating a train of rectangular pulses of fixed amplitude but varying width and separation, or varying number per unit time, representing the amplitude variations of the analog audio input signal.  The output of the modulator is then used to gate the output transistors on and off alternately. Great care is taken to ensure that the pair of transistors are never allowed to conduct together, as this would cause a short circuit between the supply rails through the transistors. A simple low-pass filter consisting of an inductor and a capacitor provides a path for the low frequencies of the audio signal, leaving the high-frequency pulses behind. The circuit then relies on the inductance of the loudspeaker to keep the HF component from heating up the voice coil.




## References
[1] J. S. Chang, Meng-Tong Tan, Zhihong Cheng and Yit-Chow Tong, "Analysis and design of power efficient class D amplifier output stages," in IEEE Transactions on Circuits and Systems I: Fundamental Theory and Applications, vol. 47, no. 6, pp. 897-902, June 2000, doi: 10.1109/81.852942.
