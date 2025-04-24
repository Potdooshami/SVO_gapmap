%[text] load file
% clear
load \..\od\OneDrive\matlab\RawData\Sr2VO3FeAs\StatitiscalPack(v4_3).mat
load \..\od\OneDrive\matlab\RawData\Sr2VO3FeAs\GZaff.mat
%%
sp.hd.CHAR %[output:3ab44e9b]
% sp.hd.CurrentScript
sp.hd.iH_iPI %??? WTF %[output:8676b43b]
% sp.hd.nameData
% sp.hd.nameDataWithoutField
% sp.hd.nano %%%%%
% sp.hd.rho0corrNano%?
% sp.hd.symDimUniList
% sp.dt.fullcorr;
sp.dt.fullData;
% sp.dt.multifractal.
% size(sp.dt.rho0corr)

stat(:,:,1,1) = sp.dt.fullData(:,:,2);
stat(:,:,1,2) = sp.dt.fullData(:,:,3);
stat(:,:,1,3) = sp.dt.fullData(:,:,1);
stat(:,:,2,1) = sp.dt.fullData(:,:,6);
stat(:,:,2,2) = sp.dt.fullData(:,:,7);
stat(:,:,2,3) = sp.dt.fullData(:,:,5);
%%

G(:,:,:,1) = GZaff.dt.H{1}.G;
G(:,:,:,2) = GZaff.dt.H{2}.G;
Z(:,:,1) = GZaff.dt.H{1}.Z;
Z(:,:,2) = GZaff.dt.H{2}.Z;
V = GZaff.hd.V;
nano = GZaff.hd.nano;
%%
h5cw('/G',G) %[output:3e6252d9] %[output:3c7265b3] %[output:3c3afeba]
h5cw('/stat',stat) %[output:2a7b2dc1] %[output:96463421] %[output:46f8fd55]
h5cw('/Z',Z) %[output:5d355127] %[output:481efa6e] %[output:1ea4b26a]
h5cw('/V',V) %[output:6b3def09] %[output:5e0c59ff] %[output:5b549aa2]
h5cw('/nano',nano) %[output:2176836d] %[output:850f61c0] %[output:1905e097]
%%
function h5cw(str,var)
fn = 'svo.h5';
try
    size(var)
    h5create(fn,str,size(var))
"is it?"    
end
"is it?"
h5write(fn,str,var)
end
%%
%[text] G: STS (ix,iy,iE,iH)
%[text] Z: Topography (ix,iy,iH)
%[text] stat: result of G process (ix,iy,iH,iS) iS={gap, peakH , subgapSate}
%[text] V: Bias
%[text] nano: nanometer
%[text] 

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
%[output:3ab44e9b]
%   data: {"dataType":"textualVariable","outputData":{"header":"struct with fields:","name":"ans","value":"     H: {'0T'  '7T'}\n    PI: {'\\Delta'  'H'  '\\Gamma'}\n"}}
%---
%[output:8676b43b]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":8,"type":"double","value":[["1","NaN"],["1","1"],["1","2"],["1","3"],["2","NaN"],["2","1"],["2","2"],["2","3"]]}}
%---
%[output:3e6252d9]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"ans","rows":1,"type":"double","value":[["461","461","421","2"]]}}
%---
%[output:3c7265b3]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"\"is it?\""}}
%---
%[output:3c3afeba]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"\"is it?\""}}
%---
%[output:2a7b2dc1]
%   data: {"dataType":"matrix","outputData":{"columns":4,"name":"ans","rows":1,"type":"double","value":[["461","461","2","3"]]}}
%---
%[output:96463421]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"\"is it?\""}}
%---
%[output:46f8fd55]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"\"is it?\""}}
%---
%[output:5d355127]
%   data: {"dataType":"matrix","outputData":{"columns":3,"name":"ans","rows":1,"type":"double","value":[["461","461","2"]]}}
%---
%[output:481efa6e]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"\"is it?\""}}
%---
%[output:1ea4b26a]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"\"is it?\""}}
%---
%[output:6b3def09]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":1,"type":"double","value":[["1","421"]]}}
%---
%[output:5e0c59ff]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"\"is it?\""}}
%---
%[output:5b549aa2]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"\"is it?\""}}
%---
%[output:2176836d]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"ans","rows":1,"type":"double","value":[["1","2"]]}}
%---
%[output:850f61c0]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"\"is it?\""}}
%---
%[output:1905e097]
%   data: {"dataType":"textualVariable","outputData":{"name":"ans","value":"\"is it?\""}}
%---
