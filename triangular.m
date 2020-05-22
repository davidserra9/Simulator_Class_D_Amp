function [tri] = triangular(fTri, duration)
  
Th1 = 0.5;
fPulse = fTri;
A = 1;

Fs          = 4410000;           %Sampling Frequency         
t           = 0:1/Fs:(duration);  
Th = Th1/fPulse; 
Tl = 1-Th; 

%AUXILIAR PARAMETERS

Nsamples    = duration*Fs;       %Number of total samples
nt          = duration*fPulse;   %Number of periods;
NsamplesP = fix(Nsamples/nt);    %Samples in a period
NsamplesH = fix(Th1*NsamplesP);
NsamplesL = NsamplesP-NsamplesH;
T = 0;
const = 0; 

pulse = zeros(1, Nsamples);
pulse_conv = zeros (1, (NsamplesH + NsamplesL));

for i = 1:(2*nt+1)
    if (mod(T,2) == 0)
       for j = 1:NsamplesH
            if(i == 1)
                pulse_conv(j+const) = 1;
            end
            pulse(j+const) = 1;
            if((const+j) == Nsamples+1)
                break;
            end
        end
        
        const = const + NsamplesH;
        T = T + 1; 
    else      
        for j = 1:NsamplesL
            if(i == 1)
                pulse_conv(j+const) = 0;
            end
            pulse(j+const) = 0;
            if((const+j) == Nsamples+1)
                break;
            end
        end
           
        const = const + NsamplesL;
        T = T + 1;
        
    end
end

tri = conv (pulse, pulse_conv);

for i=1:(length(tri)-length(t))
    tri(length(tri)-i) = [];
end
tri = (tri/max(tri)-0.5)*2;

end