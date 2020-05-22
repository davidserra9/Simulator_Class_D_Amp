function [pulse] = pulseTrain(Th1,fPulse, A)

Fs          = 4410000;          %Sampling Frequency
duration    = 1e-02;            %Duration of the signal
t           = 0:1/Fs:duration;  %Time vector

%AUXILIAR PARAMETERS

Nsamples    = duration*Fs;      %Number of total samples
nt          = duration*fPulse;  %Number of periods;
NsamplesP = fix(Nsamples/nt);   %Number of samples in every period
NsamplesH = fix(Th1*NsamplesP);
NsamplesL = NsamplesP - NsamplesH;

T = 0;
const = 0; 

pulse = zeros(1, length(t));

for i = 1:(2*nt+1)
    if (mod(T,2) == 0)
        for j = 1:NsamplesL
            pulse(j+const) = 0;
            if((const+j) == Nsamples+1)
                break;
            end
        end
           
        const = const + NsamplesL;
        T = T + 1;
    else
        for j = 1:NsamplesH
            pulse(j+const) = 1;
            if((const+j) == Nsamples+1)
                break;
            end
        end
        
        const = const + NsamplesH;
        T = T + 1;
    end
end
