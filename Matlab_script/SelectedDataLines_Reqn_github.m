% SelectedDataLines_Reqn_github.m
% 6 nodes data reading, visualization 
%
% Z.Nakutis 2024-09-27
% M.Saunoris 2024-10-03

function  [dPL_nuost_vect, dPw_nuost_vect, PL_vect, dPc_vect,Pc_vect,ZIP_vect]=SelectedDataLines_Reqn_github(data_table,ID_R,RT,dpC_Set,Pc1_min,Pc1_max,ID_Loads_Set); 


rows = (data_table.ID_R == ID_R) &...
    (data_table.RT == RT) &...
    (data_table.Pc1 >=Pc1_min & data_table.Pc1<=Pc1_max) &...
     ismember(data_table.ID_Loads,ID_Loads_Set) &...
     ismember(data_table.dPc,dpC_Set) &...
     (data_table.Qc2_set == 0.0)& (data_table.PcA_set == 0.0);


data_table_1 = data_table(rows, :);

Pc1_set=unique(data_table_1.ID_R);  % unique data
length(Pc1_set);

% Meter error
ePproc=0; % in percentage
eIproc=0; % in percentage
eUproc=0; % in percentage

for i=1:length(Pc1_set)
 
 table1=data_table_1(data_table_1.ID_R==Pc1_set(i),:); 
 

Pc2(:,i)=table1.Pc; 

m=1;
for k=1:length(Pc2(:,i))
    if (table1.ID_ref_event(k)==0)
        Pc_before=table1.Pc(k); 
        Pwsum_before=table1.Pwsum(k);
        PLsum_before=table1.PLsum(k);
        Ps_before=table1.Ps(k);
        Is_before=table1.Is(k);  
        Ic_before=table1.Ic(k);   
        Pc_before=Pc_before*(1+ePproc/100);
        Ic_before=Ic_before*(1+eIproc/100);
        
        Uc_before=table1.Vc(k);
        Uc_before=Uc_before*(1+eUproc/100);
        Us_before=table1.Vs(k);

%----
    else
       % 
     Pcvalue=table1.Pc(k);
     Pcvalue=Pcvalue*(1+ePproc/100);
     Icvalue=table1.Ic(k);
     Icvalue=Icvalue*(1+eIproc/100);


     Ucvalue=table1.Vc(k);
     Ucvalue=Ucvalue*(1+eUproc/100);

     Usvalue=table1.Vs(k);
     Psvalue=table1.Ps(k);


PL(m,i)=table1.PLsum(k);

dPL_nuost(m,i)=(table1.PLsum(k)-PLsum_before);
dPw_nuost(m,i)=(table1.Pwsum(k)-Pwsum_before);

dPc(m,i)=(Pcvalue-Pc_before);
Pc(m,i)=Pc_before+dPc(m,i);
ZIP(m,i)=table1.zip1Z(k);

     m=m+1;
    end

    
    
end % for k=1:length(Pc2(:,i))
end % for i=1:length(Pc1_set)

% Output

dPc_vect=reshape(dPc,[],1);

Pc_vect=reshape(Pc,[],1);

ZIP_vect=reshape(ZIP,[],1);

dPL_nuost_vect=reshape(dPL_nuost,[],1);
dPw_nuost_vect=reshape(dPw_nuost,[],1);

PL_vect=reshape(PL,[],1);



