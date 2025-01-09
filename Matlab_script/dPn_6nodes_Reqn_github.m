% dPn_6nodes_Reqn_github.m 
% 6 nodes data reading, visualization 
% Data must be in directory  "Data\Nodes6_data_v3_out.csv" 
% Need files dPn_6nodes_Reqn_github.m and 
% SelectedDataLines_Reqn_github.m in one directory 
% Run dPn_6nodes_Reqn_github.m
%
% Z.Nakutis 2024-09-27 
% M.Saunoris 2024-10-01

clear all
dir="Data\";

data_filename='Nodes6_data_v3_out.csv';


data_table=readtable(strcat(dir,data_filename),'Delimiter',',');



ID_R=1; % Grid line resistances scenario
RT=0.03;  
dpC_Set=[0;300;500;700;1000;1500]; % The change in power consumption


ID_Loads_Set=[1; 2; 3; 4; 5; 6; 7; 8; 17; 18; 19; 20; 21; 22; 23; 24; 33; 34; 35; 36; 37; 38; 39; 40; 49; 50; 51; 52; 53; 54; 55; 56; 65; 66; 67; 68; 69; 70; 71; 72];   % 'Nodes6_data_v3_out.csv' 

Pc1_min=0; % Power consumption before the power step 
Pc1_max=1500;  % Power consumption before the power step 
[dPL_nuost_vect, dPw_nuost_vect, PL_vect, dPc_vect,Pc_vect,ZIP_vect]=SelectedDataLines_Reqn_github(data_table,ID_R,RT,dpC_Set,Pc1_min,Pc1_max,ID_Loads_Set); 



figure(102)

 subplot(511)  
 plot(dPc_vect/1000,'.')
 %xlabel("Load configuration case");
 ylabel("dP_c, kW");
 hold on
 grid

 subplot(512)  
 plot(Pc_vect/1000,'.')
 %xlabel("Load configuration case");
 ylabel("P_c, kW");
 hold on
 grid

 subplot(513)  
 plot(PL_vect/1000,'.')
 %xlabel("Load configuration case");
 ylabel("P_e_q_n, kW");
 hold on
 grid

 subplot(514)  
 plot(ZIP_vect,'.')
 %xlabel("Load configuration case");
 ylabel("Z_z, %");
 hold on
 grid


 subplot(515)  
 plot(dPw_nuost_vect+dPL_nuost_vect,'.')
 xlabel("Load configuration case");
 ylabel("dP_n, W");
 hold on
 grid

