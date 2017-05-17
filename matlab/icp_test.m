icp;
ref = [8.1472, 0.9754, 1.5761;
       9.0579, 2.7850, 9.7059;
       1.2699, 5.4688, 9.5717;
       9.1338, 9.5751, 4.8538;
       6.3236, 9.6489, 8.0028];

src = [-10.7360,   1.1373,  -6.2434;
       -23.9008,   2.6802,   4.0082;
       -13.6096,  -0.6760,  16.4309;
       -19.2731, -13.2004,   1.7711;
       -19.7536, -10.6983,   9.8199];

m = localize(ref, src);

assert(all(all(abs([ref ones(5,1)]' - m*[src ones(5,1)]') < 1e-3)));
