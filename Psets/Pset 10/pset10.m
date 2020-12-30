r1 = 1e3;
r2 = 10e3;
c1 = 1e-6;
c2 = 0.1e-6;

j = sqrt(-1);

VR1 = -1/(j*w*c1*r1);
VR2 = -r2/(r1*(1+j*w*c2*r2));
VR3 = -j*w*c1*r1;
VR4 = -1/(r1+1/j*w*c1)/(1/r2+j*w*c2);
VR5 = 1/(1+j*w*c1*r1);
VR6 = -1*(j*w*c2*r2)/r1/(j*w*c2*r2+1)/(1/r