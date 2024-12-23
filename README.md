# Grid_of_6_Nodes_One_Phase_Dataset1
## 1	Format: 6 nodes network (1 phase) #

### 1.1	Equivalent schematics ##

 ![phase1diagram](https://github.com/user-attachments/assets/65cad4b9-5ec2-4a78-b478-547d6bda99f3)

### 1.2	Common parameters

$$V_{\mathrm{T}} = 230 \text{ ACV MV/LV transformer output voltage}$$

### 1.3	Data files format (1 phase)


Nodes6_Rw.csv
| Column name | Comment                                                                                                                                                                 |
|-------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Set data** |  |
| ID_R        | Unique line ID                                                                                                                                                           |
| Rs          | Resistance of Rs in [Ohms]                                                                                                                                                    |
| Rw1         | Resistance of Rw1 in [Ohms]                                                                                                                                                    |
| Rw2         | Resistance of Rw2 in [Ohms]                                                                                                                                                    |
| Rw3         | Resistance of Rw3 in [Ohms]                                                                                                                                                    |
| Rw4         | Resistance of Rw4 in [Ohms]                                                                                                                                                    |
| Rw5         | Resistance of Rw5 in [Ohms]                                                                                                                                                    |
| Rw6         | Resistance of Rw6 in [Ohms]                                                                                                                                                    |
| RwcA        | Resistance of RwcA in [Ohms]                                                                              

## Nodes6_Loads.csv ##
| Column name | Comment                                 |
|-------------|-----------------------------------------|
| **Set data** |  |
| ID_L        | Unique line ID                           |
| P1          | [W]                                      |
| P2          |                                         |
| P3          |                                         |
| P4          |                                         |
| P5          |                                         |
| P6          | [Var]                                     |
| Q1          |                                         |
| Q2          |                                         |
| Q3          |                                         |
| Q4          |                                         |
| Q5          |                                         |
| Q6          |                                         |
| zip1Z       | 0..100 %                                 |
| zip11       |                                         |
| zip2Z       |                                         |
| zip2I
| zip3Z
| zip3I
| zip4Z
| zip41I
| zip5Z
| zip5I
| zip6Z
| zip6I

zip(i)P=100%−zip(i)Z−zip(i)I

| Column name | Comment |
|---|---|
| **Set data** |  |
| ID_event | Unique line ID for every event (power event) |
| ID_ref_event | 0- before power event, 1 - after power event dPc |
| ID_R | Resistances vectors ID (values in file Nodes6_Rw.csv) |
| ID_Loads | Loads vector ID (values in file Nodes6_Loads.csv) |
| RT2 | Transformer and line to sum meter resistance [Ohm] |
| Pc2_set | Set consumer active power [W] |
| Pc1 | Initial (before event) consumer active power |
| dPc | dPc=Pc-Pc1 |
| Qc2_set | Set consumer reactive power [Var] |
| Qc1 | Initial (before event) consumer reactive power |
| dQc | dQc=Qc2-Qc1 |
| zipc2Z | ZIP coeff. Z of consumer load after event |
| zipc2I | ZIP coeff. I of consumer load after event |
| zipc1Z | ZIP coeff. Z of consumer load before event |
| zipc1I | ZIP coeff. I of consumer load before event |
| PcA_set | Active power anomaly close to consumer's MUT [W] (unaccounted power) |
| QcA_set | Reactive power anomaly close to consumer's MUT [Var] (unaccounted power) |
| zipcAZ | ZIP coeff. Z of anomaly close to consumer's MUT (unaccounted power) |
| zipcAI | ZIP coeff. I of anomaly close to consumer's MUT (unaccounted power) |
| **Calculated data** |  |
| Vs | Calculated Vs [V] |
| Is | Calculated Is [A] |
| Ps | Calculated active power Ps [W] |
| Qs | Calculated reactive power Qs [Var] |
| Pws | Pws=Is^2*Rs [W] |
| Vc | Calculated Vc [V] |
| Ic | Calculated Ic [A] |
| Pc | Calculated active power Pc [W] |
| Qc | Calculated reactive power Qc [Var] |
| V1 | Calculated V1 [V] |
| I1 | Calculated I1 [A] |
| Iw1 | Calculated Iw1 [A] |
| P1 | Calculated P1 [W] |
| Q1 | Calculated Q1 [Var] |
| Pw1 | Calculated Pw1=lw1^2*Rw1 |
| V2 | Calculated V2 [V] |
| I2 | Calculated I2 [A] |
| Iw2 | Calculated Iw2 [A] |
| P2 | Calculated P2 [W] |
| Q2 | Calculated Q2 [Var] |
| Pw2 | Calculated Pw2=lw2^2*Rw2 |
| V3 | Calculated V3 [V] |
| I3 | Calculated I3 [A] |
| Iw3 | Calculated Iw3 [A] |
| P3 | Calculated P3 [W] |
| Q3 | Calculated Q3 [Var] |
| Pw3 | Calculated Pw3=lw3^2*Rw3 |
| V4 | Calculated V4 [V] |
| I4 | Calculated I4 [A] |
| Iw4 | Calculated Iw4 [A] |
| P4 | Calculated P4 [W] |
| Q4 | Calculated Q4 [Var] |
| Pw4 | Calculated Pw4=lw4^2*Rw4 |
| V5 | Calculated V5 [V] |
| I5 | Calculated I5 [A] |
| Iw5 | Calculated Iw5 [A] |
| P5 | Calculated P5 [W] |
| Q5 | Calculated Q5 [Var] |
| Pw5 | Calculated Pw5=lw5^2*Rw5 |
| V6 | Calculated V6 [V] |
| I6 | Calculated I6 [A] |
| Iw6 | Calculated Iw6 [A] |
| P6 | Calculated P6 [W] |
| Q6 | Calculated Q6 [Var] |
| Pw6 | Calculated Pw6=lw6^2*Rw6 |
| VcA | Calculated VcA [V] |
| IcA | Calculated IcA [A] |
| IwcA | Calculated IwcA [A] |
| PCA | Calculated PCA [W] |
| QcA | Calculated QcA [Var] |
| PwcA | Calculated PwcA=lwcA^2*RwcA |
| PLsum | Network active loads sum Sum(Pi), i=1..6 [W] |
| QLsum | Network reactive loads Sum(Qi), i=1..6 [Var] |
| Pwsum | Wire loss sum: Sum(lw^2*Rw)+Is^2*Rs, i=1..6 [W] |

