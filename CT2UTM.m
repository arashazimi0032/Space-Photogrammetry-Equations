function ENH=CT2UTM(XYZ)
%WGS84 Ellipsoid
a = 6378137; b = 6356752.3142;
e = sqrt((a ^ 2 - b ^ 2) / a ^ 2);
e1 = sqrt((a ^ 2 - b ^ 2) / b ^ 2);
%%   Convert XYZ to Phi Landa & h
Landa=atan2(XYZ(:,2),XYZ(:,1));
Chk_Minus=2*pi*(Landa<0);
Landa=Landa+Chk_Minus;
P=sqrt(XYZ(:,2).^2+XYZ(:,1).^2);
h=sqrt(XYZ(:,2).^2+XYZ(:,1).^2+XYZ(:,3).^2)-sqrt(a*b);
N=ones(size(XYZ,1),1)*a;
Phi=atan((XYZ(:,3).*(N+h))./(P.*(N*(1-e^2)+h)));
Correction=1;
Iteration=1;
while Correction>10^-8
    h_Before=h;
    Phi_Before=Phi;
    N=a./sqrt(1-e^2*(sin(Phi)).^2);
    h=(P./cos(Phi))-N;
    Phi=atan((XYZ(:,3).*(N+h))./(P.*(N*(1-e^2)+h)));
    Correction=norm(h_Before-h)+norm(Phi_Before-Phi);
    if Iteration>50
        break
    end
    Iteration=Iteration+1;
end
%%   Zone Finder
tt = floor((Landa*180)/(pi*6));
Lc = tt * 6 + 3;
zonnum = tt + 31;
Landa = Landa - (Lc * pi / 180);
%%
n = a ^ 2./ ((a * cos(Phi)).^ 2 + (b * sin(Phi)).^ 2).^ .5;
eta = e1 ^ 2 * (cos(Phi)).^ 2;
t = tan(Phi);
%% Some coefficients A0 to A8
A0 = 1 - (e ^ 2) / 4 - 3 * (e ^ 4) / 64 - 5 * (e ^ 6) / 256 - 175 * (e ^ 8) / 16384;
A2 = (3 / 8) * ((e ^ 2) + (e ^ 4) / 4 + 15 * (e ^ 6) / 128 - 455 * (e ^ 8) / 4096);
A4 = (15 / 256) * ((e ^ 4) + 3 * (e ^ 6) / 4 - 77 * (e ^ 8) / 128);
A6 = (35 / 3072) * ((e ^ 6) - (41 / 32) * (e ^ 8));
A8 = -(315 / 131072) * (e ^ 8);
%% Meridian length from 0 to phi S
S = a * (A0 * Phi - A2 * sin(2 * Phi) + A4 * sin(4 * Phi) - A6 * sin(6 * Phi) + A8 * sin(8 * Phi));
K0 = .9996;
%% Copmputing E
term1 = Landa .* cos(Phi);
term2 = ((Landa .* cos(Phi)) .^ 3) .* (1 - t .^ 2 + eta) ./ 6;
term3 = 5 - 18 * t .^ 2 + t .^ 4 + 14 * eta - 58 * t .^ 2 .* eta;
term3 = term3 + 13 * eta .^ 2 + 4 * eta .^ 3 - 64 * (eta .* t) .^ 2 - 24 * eta .^ 3 .* t .^ 2;
term3 = term3 .* (Landa .* cos(Phi)) .^ 5 / 120;
term4 = ((Landa .* cos(Phi)) .^ 7 ./ 5040) .* (61 - 479 * t .^ 2 + 179 * t .^ 4 - t .^ 6);
East = (n .* (term1 + term2 + term3 + term4)) * K0 + 500000;
%% Computing Y
trm1 = Landa .^ 2 ./ 2 .* sin(Phi) .* cos(Phi);
trm2 = Landa .^ 4 ./ 24 .* sin(Phi) .* (cos(Phi)) .^ 3 .* (5 - t .^ 2 + 9 * eta + 4 * eta .^ 2);
trm3 = (61 - 58 * t .^ 2 + t .^ 4 + 720 * eta - 330 * t .^ 2 .* eta + 445 * eta .^ 2 + 324 * eta .^ 3);
trm3 = trm3 - 680 * (eta .* t) .^ 2 + 88 * eta .^ 4 - 600 * eta .^ 3 .* t .^ 2 - 192 * eta .^ 4 .* t .^ 2;
trm3 = trm3 .* Landa .^ 6 .* sin(Phi) .* (cos(Phi)) .^ 5 / 720;
trm4 = (Landa .^ 8 .* sin(Phi) .* (cos(Phi)) .^ 7) ./ 40320 .* (1385 - 311 * t .^ 2 + 543 * t .^ 4 - t .^ 6);
North = (S + (n .* (trm1 + trm2 + trm3 .* trm4))) * K0;
%% ENH
ENH=[East North h];





