close all

angle_rad = gradoaradianes(90); %La variable "angle_rad" realiza la operacion con la funcion creada llamada "gradoaradianes"

for t = 0:0.01:angle_rad %Ciclo para realizar rotacion animada
    
 clf   

line ([-15 15],[0 0],[0 0], 'color', [1 0 0], 'linewidth',1); %Establece el eje X Rojo 
line ([0 0],[-15 15],[0 0], 'color', [0 1 0], 'linewidth',1); %Establece el eje Y Verde 
line ([0 0],[0 0],[-15 15], 'color', [0 0 1], 'linewidth',1); %Establece el eje Y Azul 

P0 = [-12,-6,-6]; %[Punto_inicial Punto_Final]
P1 = [ 12,-6,-6]; %[Punto_inicial Punto_Final]
P2 = [ 12, 6,-6]; %[Punto_inicial Punto_Final]
P3 = [-12, 6,-6]; %[Punto_inicial Punto_Final]
P4 = [-12,-6, 6]; %[Punto_inicial Punto_Final]
P5 = [ 12,-6, 6]; %[Punto_inicial Punto_Final]
P6 = [ 12, 6, 6]; %[Punto_inicial Punto_Final]
P7 = [-12, 6, 6]; %[Punto_inicial Punto_Final]

line ([P0(1) P1(1)],[P0(2) P1(2)],[P0(3) P1(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo  
line ([P1(1) P2(1)],[P1(2) P2(2)],[P1(3) P2(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo 
line ([P2(1) P3(1)],[P2(2) P3(2)],[P2(3) P3(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo 
line ([P3(1) P0(1)],[P3(2) P0(2)],[P3(3) P0(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo
line ([P4(1) P5(1)],[P4(2) P5(2)],[P4(3) P4(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo 
line ([P5(1) P6(1)],[P5(2) P6(2)],[P5(3) P5(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo
line ([P6(1) P7(1)],[P6(2) P7(2)],[P6(3) P6(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo  
line ([P7(1) P4(1)],[P7(2) P4(2)],[P7(3) P7(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo 
line ([P0(1) P4(1)],[P0(2) P4(2)],[P0(3) P4(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo 
line ([P1(1) P5(1)],[P1(2) P5(2)],[P1(3) P5(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo 
line ([P2(1) P6(1)],[P2(2) P6(2)],[P2(3) P6(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo 
line ([P3(1) P7(1)],[P3(2) P7(2)],[P3(3) P7(3)], 'color', [1 1 0], 'linewidth',3); %Establece el eje Amarillo 

Ry = [cos(t) 0 sin(t) ; 0 1 0 ; -sin(t) 0 cos(t)]; %Matriz de rotación

P0r = Ry*P0'; %Operación para realizar la rotacion
P1r = Ry*P1'; %Operación para realizar la rotacion
P2r = Ry*P2'; %Operación para realizar la rotacion
P3r = Ry*P3'; %Operación para realizar la rotacion
P4r = Ry*P4'; %Operación para realizar la rotacion
P5r = Ry*P5'; %Operación para realizar la rotacion
P6r = Ry*P6'; %Operación para realizar la rotacion
P7r = Ry*P7'; %Operación para realizar la rotacion

line ([P0r(1) P1r(1)],[P0r(2) P1r(2)],[P0r(3) P1r(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P1r(1) P2r(1)],[P1r(2) P2r(2)],[P1r(3) P2r(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P2r(1) P3r(1)],[P2r(2) P3r(2)],[P2r(3) P3r(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa 
line ([P3r(1) P0r(1)],[P3r(2) P0r(2)],[P3r(3) P0r(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P4r(1) P5r(1)],[P4r(2) P4r(2)],[P4r(3) P5r(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P5r(1) P6r(1)],[P5r(2) P5r(2)],[P5r(3) P6r(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P6r(1) P7r(1)],[P6r(2) P6r(2)],[P6r(3) P7r(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P7r(1) P4r(1)],[P7r(2) P7r(2)],[P7r(3) P4r(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P0r(1) P4r(1)],[P0r(2) P4r(2)],[P0r(3) P4r(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P1r(1) P5r(1)],[P1r(2) P5r(2)],[P1r(3) P5r(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P2r(1) P6r(1)],[P2r(2) P6r(2)],[P2r(3) P6r(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa
line ([P3r(1) P7r(1)],[P3r(2) P7r(2)],[P3r(3) P7r(3)], 'color', [1 0 1], 'linewidth',3); %Establece el eje Rosa

%line ([xixf],[yi yf],[zi zf]);
%line ([Punto_inicial_en_X, Punto_Final_en_X],[Punto_inicial_en_Y, Punto_Final_en_Y],[Punto_inicial_en_Z, Punto_Final_en_Z]);

pause (0.01)

end