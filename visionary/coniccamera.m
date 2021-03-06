function pconic = coniccamera(p);
% CONICCAMERA(P) from 3x4 camera matrix to linear "conic camera" 6x10
p11=p(1,1);p12=p(1,2);p13=p(1,3);p14=p(1,4);
p21=p(2,1);p22=p(2,2);p23=p(2,3);p24=p(2,4);
p31=p(3,1);p32=p(3,2);p33=p(3,3);p34=p(3,4);

pconic = ones(6,10);

pconic(1,1) = p11*p11;
pconic(1,2) = 2.0*p11*p12;
pconic(1,3) = p12*p12;
pconic(1,4) = 2.0*p11*p13;
pconic(1,5) = 2.0*p12*p13;
pconic(1,6) = p13*p13;
pconic(1,7) = 2.0*p11*p14;
pconic(1,8) = 2.0*p12*p14;
pconic(1,9) = 2.0*p13*p14;
pconic(1,10) = p14*p14;
pconic(2,1) = p21*p11;
pconic(2,2) = p21*p12+p22*p11;
pconic(2,3) = p22*p12;
pconic(2,4) = p21*p13+p23*p11;
pconic(2,5) = p22*p13+p23*p12;
pconic(2,6) = p23*p13;
pconic(2,7) = p21*p14+p24*p11;
pconic(2,8) = p22*p14+p24*p12;
pconic(2,9) = p23*p14+p24*p13;
pconic(2,10) = p24*p14;
pconic(3,1) = p21*p21;
pconic(3,2) = 2.0*p21*p22;
pconic(3,3) = p22*p22;
pconic(3,4) = 2.0*p21*p23;
pconic(3,5) = 2.0*p22*p23;
pconic(3,6) = p23*p23;
pconic(3,7) = 2.0*p21*p24;
pconic(3,8) = 2.0*p22*p24;
pconic(3,9) = 2.0*p23*p24;
pconic(3,10) = p24*p24;
pconic(4,1) = p31*p11;
pconic(4,2) = p31*p12+p32*p11;
pconic(4,3) = p32*p12;
pconic(4,4) = p31*p13+p33*p11;
pconic(4,5) = p32*p13+p33*p12;
pconic(4,6) = p33*p13;
pconic(4,7) = p31*p14+p34*p11;
pconic(4,8) = p32*p14+p34*p12;
pconic(4,9) = p33*p14+p34*p13;
pconic(4,10) = p34*p14;
pconic(5,1) = p31*p21;
pconic(5,2) = p31*p22+p32*p21;
pconic(5,3) = p32*p22;
pconic(5,4) = p31*p23+p33*p21;
pconic(5,5) = p32*p23+p33*p22;
pconic(5,6) = p33*p23;
pconic(5,7) = p31*p24+p34*p21;
pconic(5,8) = p32*p24+p34*p22;
pconic(5,9) = p33*p24+p34*p23;
pconic(5,10) = p34*p24;
pconic(6,1) = p31*p31;
pconic(6,2) = 2.0*p31*p32;
pconic(6,3) = p32*p32;
pconic(6,4) = 2.0*p31*p33;
pconic(6,5) = 2.0*p32*p33;
pconic(6,6) = p33*p33;
pconic(6,7) = 2.0*p31*p34;
pconic(6,8) = 2.0*p32*p34;
pconic(6,9) = 2.0*p33*p34;
pconic(6,10) = p34*p34;
