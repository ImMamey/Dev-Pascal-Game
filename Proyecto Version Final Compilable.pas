Program ProyectoHalconMilenario;
uses
 crt;
type
  arreglo=array[1..30,1..30]of string;
 var
 Mapa:arreglo;
 ContadorDeLineas,Filas,Columnas,NumEstrellas, naveX,NaveY:integer;
 vero,finalizacion,direccion:boolean;
{=========================INTRODUCCION===============================}
Procedure Introduccion;
var
 cont:integer;
 Ass:string;
BEGIN
cont:=0; Ass:=('     Universidad Catolica Andres Bello    ');
while (cont<>6) do begin
{} Ass:=' '+Ass; Gotoxy(60,31);writeln(Ass); delay(100); cont:=cont+1;
end;
 delay(750); Clrscr;
cont:=0; Ass:=('    Practicas de Algoritmos y programacion I    ');
while (cont<>6) do begin
 {}Ass:=' '+Ass; Gotoxy(60,31);writeln(Ass); delay(100); cont:=cont+1;
end;
 Delay(750); Clrscr;

Gotoxy(60,31); Writeln('Bajo el desarrollo, y supervision de: '); Delay(1000); Clrscr;

TextColor(Red);
Gotoxy(60,31);writeln('      $$$$$$$$$$$$$$$    ');
Gotoxy(60,32);writeln('      $$$$$$$$$$$$$$$$   ');
Gotoxy(60,33);writeln('                  $$$$   ');
Gotoxy(60,34);writeln('                  $$$$   ');
Gotoxy(60,35);writeln('      $$$$$$$$$$$$$$$    ');
Gotoxy(60,36);writeln('      $$$$$$$$$$$$$$$    ');
Gotoxy(60,37);writeln('                  $$$$   ');
Gotoxy(60,38);writeln('                  $$$$   ');
Gotoxy(60,39);writeln('      $$$$$$$$$$$$$$$$   ');
Gotoxy(60,40);writeln('      $$$$$$$$$$$$$$$    ');
          Textcolor(blue);Delay(150); ClrScr;
Gotoxy(60,31);writeln('       $$$$$$$$$$$$$     ');
Gotoxy(60,32);writeln('      $$$$$$$$$$$$$$$    ');
Gotoxy(60,33);writeln('      $$        $$$$     ');
Gotoxy(60,34);writeln('               $$$$      ');
Gotoxy(60,35);writeln('             $$$$        ');
Gotoxy(60,36);writeln('            $$$$         ');
Gotoxy(60,37);writeln('         $$$$            ');
Gotoxy(60,38);writeln('       $$$$              ');
Gotoxy(60,39);writeln('      $$$$$$$$$$$$$$     ');
Gotoxy(60,40);writeln('      $$$$$$$$$$$$$$     ');
 TextColor(Green);Delay(150); ClrScr;
Gotoxy(60,31);writeln('          $$$$$$          ');
Gotoxy(60,32);writeln('         $$$$$$$          ');
Gotoxy(60,33);writeln('        $$$$$$$$          ');
Gotoxy(60,34);writeln('       $$$$ $$$$          ');
Gotoxy(60,35);writeln('            $$$$          ');
Gotoxy(60,36);writeln('            $$$$          ');
Gotoxy(60,37);writeln('            $$$$          ');
Gotoxy(60,38);writeln('            $$$$          ');
Gotoxy(60,39);writeln('            $$$$          ');
Gotoxy(60,40);writeln('            $$$$          ');
Delay(150); ClrScr;

TextColor(red);    
Gotoxy(60,21);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    ');
Gotoxy(60,22);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    ');
Gotoxy(60,23);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    ');
Gotoxy(60,24);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    ');
Gotoxy(102,25);write('$$$$$$$$$$$    ');
Gotoxy(102,26);write('$$$$$$$$$$$    ');
Gotoxy(102,27);write('$$$$$$$$$$$    ');
Gotoxy(102,28);write('$$$$$$$$$$$    ');
Gotoxy(102,29);write('$$$$$$$$$$$    ');
Gotoxy(102,30);write('$$$$$$$$$$$    ');
Gotoxy(102,31);write('$$$$$$$$$$$    ');
Gotoxy(102,32);write('$$$$$$$$$$$    ');
Gotoxy(102,33);write('$$$$$$$$$$$    ');
Gotoxy(60,34);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    ');
Gotoxy(60,35);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    ');
Gotoxy(60,36);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    ');
Gotoxy(60,37);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    ');
Gotoxy(102,38);write('$$$$$$$$$$$    ');
Gotoxy(102,39);write('$$$$$$$$$$$    ');
Gotoxy(102,40);write('$$$$$$$$$$$    ');
Gotoxy(102,41);write('$$$$$$$$$$$    ');
Gotoxy(102,42);write('$$$$$$$$$$$    ');
Gotoxy(102,43);write('$$$$$$$$$$$    ');
Gotoxy(102,44);write('$$$$$$$$$$$    ');
Gotoxy(102,45);write('$$$$$$$$$$$    ');
Gotoxy(102,46);write('$$$$$$$$$$$    ');
Gotoxy(60,47);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    ');
Gotoxy(60,48);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     ');
Gotoxy(60,49);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    ');
Gotoxy(60,50);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    ');
        TextColor(Blue);
Gotoxy(82,29);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     ');
Gotoxy(80,30);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    ');
Gotoxy(78,31);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    ');
Gotoxy(78,32);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     ');
Gotoxy(78,33);write('$$$$$$$$$$           $$$$$$$$$$       ');
Gotoxy(97,34);write('$$$$$$$$$$          ');
Gotoxy(95,35);write('$$$$$$$$$$            ');
Gotoxy(92,36);write('$$$$$$$$$$               ');
Gotoxy(90,37);write('$$$$$$$$$$                 ');
Gotoxy(88,38);write('$$$$$$$$$$                   ');
Gotoxy(85,39);write('$$$$$$$$$$                      ');
Gotoxy(83,40);write('$$$$$$$$$$                        ');
Gotoxy(81,41);write('$$$$$$$$$$$                       ');
Gotoxy(80,42);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$  ');
Gotoxy(79,43);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    ');
Gotoxy(79,44);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    ');
Gotoxy(79,45);write('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$    ');
       TextColor(green);
Gotoxy(99,32);write('$$$$$$$$$$$$    ');
Gotoxy(98,33);write('$$$$$$$$$$$$$     ');
Gotoxy(97,34);write('$$$$$$$$$$$$$$      ');
Gotoxy(96,35);write('$$$$$$$ $$$$$$$      ');
Gotoxy(95,36);write('$$$$$$$  $$$$$$$      ');
Gotoxy(104,37);write('$$$$$$$      ');
Gotoxy(104,38);write('$$$$$$$      ');
Gotoxy(104,39);write('$$$$$$$      ');
Gotoxy(104,40);write('$$$$$$$       ');
Gotoxy(104,41);write('$$$$$$$     ');
         textcolor(white);
Gotoxy(58,52);writeln(' $$$$$$$       $$$$       $$$$   $$$$  $$$$$$$$$  $$$$$$$$$ ');
Gotoxy(58,53);writeln('$$$    $$     $$$$$$      $$$ $ $ $$$  $$$        $$$       ');
Gotoxy(58,54);writeln('$$$          $$$  $$$     $$$  $  $$$  $$$ $$$$$  $$$       ');
Gotoxy(58,55);writeln('$$$  $$$$$  $$$    $$$    $$$     $$$  $$$ $$$$$  $$$$$$$$$ ');
Gotoxy(58,56);writeln('$$$   $$$  $$$$$$$$$$$$   $$$     $$$  $$$              $$$ ');
Gotoxy(58,57);writeln(' $$$$$$$  $$$       $$$$  $$$     $$$  $$$$$$$$$  $$$$$$$$$ ');
           Delay(2000);clrscr;

 Gotoxy(60,31); Writeln('Presenta: '); Delay(1000); Clrscr;

writeln('$$$$  $$$       $$$$  $$$       $$$  $$$$$$$$$   $$$$$$$       $$$$       $$$$$$$   $$$$$$$$  $$$$$$$$$  $$$$  $$$');
Writeln('$$$$$ $$$      $$$$$$  $$$     $$$   $$$        $$$    $$     $$$$$$     $$$$$$$$$  $$$$$$$$  $$$$$$$$$  $$$$$ $$$');
Writeln('$$$$$ $$$     $$$  $$$  $$$   $$$    $$$ $$$$$  $$$          $$$  $$$    $$$           $$     $$     $$  $$$$$ $$$');
Writeln('$$ $$$$$$    $$$    $$$  $$$ $$$     $$$ $$$$$  $$$  $$$$$  $$$    $$$   $$$           $$     $$     $$  $$ $$$$$$');
Writeln('$$  $$$$$   $$$$$$$$$$$$  $$$$$      $$$        $$$   $$$  $$$$$$$$$$$$  $$$$$$$$$  $$$$$$$$  $$$$$$$$$  $$  $$$$$');
Writeln('$$   $$$$  $$$        $$$  $$$       $$$$$$$$$   $$$$$$$  $$$        $$$  $$$$$$$   $$$$$$$$  $$$$$$$$$  $$   $$$$');
Writeln;
WRITEln;
writeln;
Writeln('         $$$$$$$$$  $$$$$$$$$  $$$$$$$$$$ $$$$$$$$$  $$$            $$$$      $$$$$$$$$   ');
Writeln('         $$$        $$$         $$$$$$$$  $$$        $$$           $$$$$$     $$$    $$$  ');
Writeln('         $$$ $$$$$  $$$            $$     $$$ $$$$$  $$$          $$$  $$$    $$$    $$$  ');
Writeln('         $$$ $$$$$  $$$$$$$$$      $$     $$$ $$$$$  $$$         $$$    $$$   $$$$$$$$$   ');
Writeln('         $$$              $$$      $$     $$$        $$$$$$$$$  $$$$$$$$$$$$  $$$   $$$   ');
Writeln('         $$$$$$$$$  $$$$$$$$$      $$     $$$$$$$$$  $$$$$$$$$ $$$        $$$ $$$    $$$  ');


Delay(2500);

end;
{===========================================================JUEGO===============================================================================}
Procedure MovimientoDiagInfDerecha  (Mapa:arreglo; Filas,Columnas:integer;var direccion:boolean;var naveX,naveY:integer);
var
 i,j,auxX,auxY:integer;
BEGIN
For i:=1 to filas do begin
{}For j:=1 to columnas do begin
{} {} if (Mapa[i,j]='H') then begin NaveX:=i; NaveY:=j; end;
{}end;
end;
auxY:=NaveY; auxX:=NaveX;
while (AuxX<=filas) and (auxY<=columnas) do begin
{} if(Mapa[AuxX,AuxY]='E')then direccion:=true;
{}  AuxX:=AuxX+1; AuxY:=AuxY+1;
end;
END;
{-----------------------------------------------------------------------------------------------------------------}
Procedure MovimientoDiagInfIzquierda (Mapa:arreglo; Filas,Columnas:integer;var direccion:boolean;var naveX,naveY:integer);
var
 i,j,auxX,auxY:integer;
BEGIN
For i:=1 to filas do begin
{}For j:=1 to columnas do begin
{} {} if (Mapa[i,j]='H') then begin NaveX:=i; NaveY:=j; end;
{}end;
end;
auxY:=NaveY; auxX:=NaveX;
while (AuxX<=filas) and (auxY>0) do begin
{} if(Mapa[AuxX,AuxY]='E')then direccion:=true;
{}  AuxX:=AuxX+1; AuxY:=AuxY-1;
end;
END;
{-----------------------------------------------------------------------------------------------------------------}
Procedure MovimientoDiagSupIzquierda (Mapa:arreglo; Filas,Columnas:integer;var direccion:boolean;var naveX,naveY:integer);
var
 i,j,auxX, auxY:integer;
BEGIN
For i:=1 to filas do begin
{}For j:=1 to columnas do begin
{} {} if (Mapa[i,j]='H') then begin NaveX:=i; NaveY:=j; end;
{}end;
end;
auxY:=NaveY; auxX:=NaveX;
while (AuxX>0) and (auxY>0) do begin
{} if(Mapa[AuxX,AuxY]='E')then direccion:=true;
{}  AuxX:=AuxX-1; AuxY:=AuxY-1;
end;
END;
{---------------------------------------------------------------------------------------------------------------}
Procedure MovimientoDiagSupDerecha (Mapa:arreglo; Filas,Columnas:integer;var direccion:boolean;var naveX,naveY:integer);
var
 i,j,auxY,auxX: integer;
BEGIN
For i:=1 to filas do begin
{}For j:=1 to columnas do begin
{} {} if (Mapa[i,j]='H') then begin NaveX:=i; NaveY:=j; end;
{}end;
end;
auxY:=NaveY; auxX:=NaveX;
while (AuxX>0) and (AuxY<=columnas) do begin
 {} if(Mapa[AuxX,AuxY]='E')then direccion:=true;
 {}  AuxX:=AuxX-1; AuxY:=AuxY+1;
end;
END;
{---------------------------------------------------------------------------------------------------------------}
Procedure MovimientoDerecha (Mapa:arreglo; Filas,Columnas:integer;var direccion:boolean;var naveX,naveY:integer);
var
 i,j,aux: integer;
BEGIN
For i:=1 to filas do begin
{}For j:=1 to columnas do begin
{} {} if (Mapa[i,j]='H') then begin NaveX:=i; NaveY:=j; end;
{}end;
end;
aux:=NaveY;
direccion:=false;
while (Aux<=columnas) do begin
 {} if (Mapa[NaveX,aux]='E') then direccion:=true;
 {} aux:=aux+1;
end;
END;
{----------------------------------------------------------------------------------------------------------------}
Procedure MovimientoIzquierda(Mapa:arreglo; Filas,Columnas:integer;var direccion:boolean;var naveX,naveY:integer);
 var
 i,j,aux: integer;
BEGIN
For i:=1 to filas do begin
{}For j:=1 to columnas do begin
{} {} if (Mapa[i,j]='H') then begin NaveX:=i; NaveY:=j; end;
{}end;
end;
 aux:=NaveY;
 direccion:=false;
while (Aux>0) do begin
 {} if (Mapa[NaveX,aux]='E') then direccion:=true;
 {} aux:=aux-1;
 end;
END;
{-----------------------------------------------------------------------------------------------------------------}
Procedure MovimientoInferior(Mapa:arreglo; Filas,Columnas:integer;var direccion:boolean;var naveX,naveY:integer);
 var
 i,j,aux: integer;
BEGIN
For i:=1 to filas do begin
{}For j:=1 to columnas do begin
{} {} if (Mapa[i,j]='H') then begin NaveX:=i; NaveY:=j; end;
{}end;
end;
  aux:=Navex;
  direccion:=false;
while (aux<=Filas) do begin
 {} if (Mapa[aux,NaveY]='E') then direccion:=true;
 {} aux:=aux+1;
 end;
END;
{------------------------------------------------------------------------------------------------------------------}
Procedure MovimientoSuperior(Mapa:arreglo; Filas,Columnas:integer;var direccion:boolean;var naveX,naveY:integer);
  var
  i,j,aux:integer;
BEGIN
For i:=1 to filas do begin
{}For j:=1 to columnas do begin
{} {} if (Mapa[i,j]='H') then begin NaveX:=i; NaveY:=j; end;
{}end;
end;
    aux:=Navex;
  direccion:=false;
 While (aux>0) do begin
 {} if (Mapa[aux,NaveY]='E') then direccion:=true;
 {} aux:=aux-1;
 end;
END;
{---------------------------------------------------------------------------------------------------------------------}
Procedure MostrarMatriz (Mapa:arreglo; Filas,Columnas:integer);
var
 i,j,ia,auxfilas:integer;
begin
auxfilas:=columnas;
 For i:=1 to filas do begin   write('  ');
 {} For ia:=1 to auxfilas do begin write('-- '); end;
 {} writeln;
 {} For j:=1 to columnas do begin
 {} write(' |'); Write(Mapa[i,j]);
 {} end;
 {} write(' |');
 {}writeln;
 end;
 write('  ');
 For ia:=1 to auxfilas do begin write('-- '); end;
end;
{-----------------------------------------------------------------------------------------------------------------------}
Procedure Juego(var Mapa:arreglo; var Finalizacion:boolean);
var
 Movimiento:integer;
 Antiguo:string;
Begin
Finalizacion:=true;
While (finalizacion <>false) do begin
{}MostrarMatriz(mapa,Filas,Columnas);
{}TextColor(Red);
{}writeln;
{}Writeln('                       Movimiento de H:                                  ');
{}writeln('=========================================================================       =============');
{}Writeln('??    |8|: Arriba.             ??   |7| : Diagonal arriba-izquierda   ??        | 7 | 8 | 9 |');
{}Writeln('??     |2|; Abajo.             ??    |1|: Diagonal abajo-izquierda    ??        =============');
{}Writeln('??   |4|; Izquierda.           ??    |9|: Diagonal arriba-derecha     ??        | 4 |   | 6 |');
{}Writeln('??    |6|; Derecha.            ??     |3|: Diagonal abajo-derecha     ??        =============');
{}Writeln('=========================================================================       | 1 | 2 | 3 |');
{}writeln('                Presionar 5 o 0 para culminar el juego.                         =============');
{}readln(Movimiento);
{} Case movimiento of
{}  {} 1:begin
{}  {}   {} MovimientoDiagInfIzquierda(Mapa,Filas,Columnas,direccion,NaveX,NaveY);
{}  {}   {} If (direccion=false) then begin writeln('No hay estrella en esa direccion, solo puede dirigirse a una estrella... Presione cualquier tecla para continuar'); readkey; end
{}  {}   {} else begin Antiguo:=Mapa[NaveX+1,NaveY-1]; Mapa[NaveX,NaveY]:='#'; Mapa[NaveX+1,NaveY-1]:='H';end;
{}  {}   end;
{}  {} 2:begin
{}  {}   {}MovimientoInferior(Mapa,Filas,Columnas,direccion,NaveX,NaveY);
{}  {}   {} if (direccion=false) then begin writeln('No hay estrella en esa direccion, solo puede dirigirse a una estrella... Presione cualquier tecla para continuar'); readkey; end
{}  {}   {} else begin Antiguo:=Mapa[NaveX+1,NaveY]; Mapa[NaveX,NaveY]:='#'; Mapa[NaveX+1,NaveY]:='H'; end;
{}  {}  end;
{}  {} 3:begin
{}  {}   {} MovimientoDiagInfDerecha(Mapa,Filas,Columnas,direccion,NaveX,NaveY);
{}  {}   {} if (direccion=false) then begin writeln('No hay estrella en esa direccion, solo puede dirigirse a una estrella... Presione cualquier tecla para continuar'); readkey; end
{}  {}   {} else begin Antiguo:=Mapa[NaveX+1,NaveY+1]; Mapa[NaveX,NaveY]:='#'; Mapa[NaveX+1,NaveY+1]:='H'; end;
{}  {}  end;
{}  {} 4:begin
{}  {}   {}MovimientoIzquierda(Mapa,Filas,Columnas,direccion,NaveX,NaveY);
{}  {}   {}If (direccion=false) then begin writeln('No hay estrella en esa direccion, solo puede dirigirse a una estrella... Presione cualquier tecla para continuar'); readkey; end
{}  {}   {}else begin Antiguo:=Mapa[NaveX,NaveY-1]; Mapa[NaveX,NaveY]:='#'; Mapa[NaveX,NaveY-1]:='H'; end;
{}  {}   end;
{}  {} 6:begin
{}  {}   {}MovimientoDerecha(Mapa,Filas,Columnas,direccion,NaveX,NaveY);
{}  {}   {}If (direccion=false) then begin writeln('No hay estrella en esa direccion, solo puede dirigirse a una estrella... Presione cualquier tecla para continuar'); readkey; end
{}  {}   {}else begin Antiguo:=Mapa[NaveX,NaveY+1]; Mapa[NaveX,NaveY]:='#'; Mapa[NaveX,NaveY+1]:='H'; end;
{}  {}   end;
{}  {} 7:begin
{}  {}   {}MovimientoDiagSupIzquierda(Mapa,Filas,Columnas,direccion,NaveX,NaveY);
{}  {}   {}If (direccion=false) then begin writeln('No hay estrella en esa direccion, solo puede dirigirse a una estrella... Presione cualquier tecla para continuar'); readkey; end
{}  {}   {}else begin Antiguo:=Mapa[NaveX-1,NaveY-1]; Mapa[NaveX,NaveY]:='#'; Mapa[NaveX-1,NaveY-1]:='H'; end;
{}  {}  end;
{}  {} 8:begin
{}  {}   {}MovimientoSuperior(Mapa,Filas,Columnas,direccion,NaveX,NaveY);
{}  {}   {} if (direccion=false) then begin writeln('No hay ninguna estrella en esa direccion, solo puede dirigirse a una estrella... Presione culaquier tecla para continuar'); readkey; end
{}  {}   {} else begin Antiguo:=Mapa[NaveX-1,NaveY]; Mapa[NaveX,NaveY]:='#'; Mapa[NaveX-1,NaveY]:='H'; end;
{}  {}  end;
{}  {} 9:begin
{}  {}   {}MovimientoDiagSupDerecha(Mapa,Filas,Columnas,direccion,NaveX,NaveY);
{}  {}   {}if (direccion=false) then begin writeln('No hay ninguna estrella en esa direccion, solo puede dirigirse a una estrella... Presione culaquier tecla para continuar'); readkey; end
{}  {}   {}else begin Antiguo:=Mapa[NaveX-1,NaveY+1];  Mapa[NaveX,NaveY]:='#'; Mapa[NaveX-1,NaveY+1]:='H'; end;
{}  {}   end;
{}  {} 5,0:begin
{}  {}     {} Finalizacion:=false;
{}  {}     {} Gotoxy(60,31); Writeln('Regresando al menu principal...'); delay(1000);
{}  {}     end;
{} end;
{} if (Antiguo='D') then begin Finalizacion:=false; writeln('Te ha capturado un destructor! Perdiste!'); readkey; end;
{} if (Antiguo='E') then begin Finalizacion:=false; writeln('Haz pasado muy cerca de una estrella! Tu pobre nave quedo hecha trizas por el intenso calor Perdiste!'); readkey; end;
{} if (Antiguo='T') then begin Finalizacion:=false; writeln('Hugo el implacable ha llegado al planeta T! Ganaste!. Presione Cualquier tecla para continuar al menu principal.'); readkey; end;
{} TextColor(White);
{}ClrScr;
end;
END;
{======================================SECCION DE MONTAR EL ARCHIVO POR PRIMERA VEZ=============================================================}

Procedure GenerarMatriz (var Mapa:arreglo; Filas,Columnas:integer);  {Genera una matriz tipo string completamente vacia, preparada para llenarse}
var
 i,j:integer;
BEGIN
 For i:=1 to Filas do begin
 {} For j:=1 to Columnas do begin
 {} {} Mapa[i,j]:=' ';
 {} end;
 end;
END;
{-----------------------------------------------}
Procedure escribir(A:string; var ContadorDeLineas,Filas,Columnas,NumEstrellas:integer; var vero:boolean);
  {Procedure encargado de revisar la linea String, pasarla a dato tipo integer y corroborar que los datos especificos cumplan las condiciones minimas}
var
 aux,Numero1,Numero2:string;
 i,cont,error,x,y,suma,SumaAux,NumDestructores:integer;
Begin
  ContadorDeLineas:=ContadorDeLineas+1; {Cada vez que se llame el proceso escribir el contador de lines aumenta en 1}
  A:=A+' '; aux:=''; cont:=0;

  For i:=1 to Length(A) do begin          {Esta seccion lee toda la linea y guarda 2 datos}
  {} if (a[i]<>' ')then aux:=aux+a[i]
  {} else begin                            {Cada vez que encuentre un espacio, agarra y guarda un dato distinto}
  {} {}cont:=cont+1;
  {} {}if (cont=1) then begin numero1:=aux; aux:=''; end;
  {} {}if (cont=2)then  begin numero2:=aux; aux:=''; end;
  {} end;
  end;

 val(Numero1,x,error);   val(Numero2,y,error); {Se guardan los valores strings anteriores en su valor numerico integer}


 {Toda esta seccion se encarga de guardar y crear la matriz y su respectivo relleno,consta de 7 partes}
 {''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''}

{1}{MATRIZ}
{}{----La primera linea del archivo leera el tama?o de la matriz, tambien se verificara que sea mayor a 1x1 y menor a 30x30}
{}
{}   If (ContadorDeLineas=1) then begin
{}   {} Filas:=x; Columnas:=y;
{}   {} if (x>30) or (x<1) or (y>30) or (y<1) then begin
{}   {} {} vero:=false; writeln('La matriz debe ser mayor a [1x1] y menor o igual a [30x30]');
{}   {} {} writeln('El programa finalizara, modifique el .txt');  {Si no cumple con los requisitos, se lanzara un mensaje de error, y un valor booleano negara la entrada de mas datos}
{}   {} end
{}   {} else begin GenerarMatriz(Mapa,Filas,Columnas); writeln('Filas: ',Filas,'. Columnas: ',Columnas); writeln; end;
{}   end;
{---}

{2}{NAVE}
{}{----La segunda linea del archivo leera la posicion de la nave, verificara que la posicion de la nave este dentro del tama?o de la matriz.}
{}
{}  If (contadorDeLineas=2) and (vero=true) then begin
{}   {} if (x>filas) or (x<1) or (y>columnas) or (y<1) then begin
{}   {} {} vero:=false; writeln('La posicion de la nave debe ser mayor [1x1] y menor al tama?o de la matriz');
{}   {} {} writeln('El programa finalizar?, modifique el .txt');
{}   {} end
{}   {} else begin Mapa[x,y]:='H'; writeln('Posicion de la nave: X: ',x,'. Y: ',y); end;
{}  end;
{}
{---}

{3}{PLANETA}
{} {----La Tercera linea del archivo leera la posicion del planeta, verificara que la posicion del planeta este Dentro del tama?o del archivo.}
{}
{} If (ContadorDeLineas=3) and (vero=true) then begin
{}  {} if (x>filas) or (x<1) or (y>filas) or (y<1) then begin
{}  {} {} vero:=false; writeln('La posicion del planeta debe ser mayor [1x1] y menor al tama?o de la matriz');
{}  {} {} writeln('El programa finalizar?, modifique el .txt');
{}  {} end
{}  {} else begin Mapa[x,y]:='T'; writeln('Posicion del planeta: X: ',x,'. Y: ',y); writeln; end;
{}  end;
{---}

{4-5+} {ESTRELLAS}
{} {--------La cuarta linea del archivo leera la cantidad de estrellas, solo se usara la X de esta linea, sin importar si hay o no un valor y}
{} {}
{} {} If (ContadorDeLineas=4) and (vero=true) then begin
{} {}  {}  if (x>(filas*columnas)) or (x<0) then begin
{} {}  {} {} vero:=false; writeln('La cantidad de estrellas debe ser y menor al tamano de la matriz,y mayor o igual a 0');
{} {}  {} {} writeln('El programa finalizara, modifique el .txt');
{} {}  {} end
{} {}  {} else begin NumEstrellas:=x; suma:=4+x+1; writeln('Cantidad de estrellas: ',NumEstrellas);  end;
{} {}  end;
{} {---}
{}
{} {-----La quinta linea en adelante leera la posicion de cada estrella}
{}
{} If (ContadorDelineas<suma)and (ContadorDelineas>4) and (vero=true) then begin
{}  {} if (x>filas) or (x<1) or (y>columnas) or (y<1) then begin
{}  {} {} vero:=false; writeln('La posicion de la estrella en el .txt (Ubicado en la fila: ',ContadorDeLineas,') debe de estar entre [1x1] y menor al tama?o de la matriz');
{}  {} {} writeln('El programa finalizar?, modifique el .txt');
{}  {} end
{}  {} else begin Mapa[x,y]:='E'; writeln('Posicion de estrella: ',x,' ',y);end;
{}  end;
{---}

{6+,7+}{DESTRUCTORES}
{} {-------La 6ta parte leera la linea con la cantidad de destructores}
{} {}
{} {}If (ContadorDeLineas=suma)and (vero=true) then begin {Numero De Destructores}
{} {} {}  if (x>(filas*columnas)) or (x<0) then begin
{} {} {} {} vero:=false; writeln('La cantidad de destructores debe ser y menor al tama?o de la matriz,y mayor o igual a 0');
{} {} {} {} writeln('El programa finalizar?, modifique el .txt');
{} {} {} end
{} {} {} else begin NumDestructores:=x; sumaAux:=suma+x+1; writeln; writeln('Destructores: ',Numdestructores); end;
{} {} end;
{} {---}
{}
{} {La septima y ultima parte evaluara la posicion de cada destructor}
{}
{} If (ContadorDelineas<sumaAux) and (ContadorDeLineas>suma)and (vero=true) then begin
{}  {} if (x>filas) or (x<1) or (y>columnas) or (y<1) then begin
{}  {} {} vero:=false; writeln('La posicion del  destructor en el .txt (Ubicado en la fila: ',ContadorDeLineas,') debe de estar entre [1x1] y menor al tama?o de la matriz');
{}  {} {} writeln('El programa finalizar?, modifique el .txt');
{}  {} end
{}  {} else begin Mapa[x,y]:='D'; writeln('Posicion del destructor x:',x,' y: ',y); end;
{}  end;
{---}
end;
{----------------------------------------------------------------------}
Procedure LeerFichero(var ContadorDeLineas:integer);
Var
 Fichero:text;
 A,linea:string;
BEGIN
{}   assign(fichero,'C:\est.txt');
{}   reset(fichero);
{}   while not eof(fichero) do begin     {Mientras no termine el archivo leer cada linea}
{}    {}readln(fichero,linea);
{}    {}A:=linea; Escribir(A,ContadorDeLineas,Filas,columnas,NumEstrellas,vero); {La linea se guarda en una variable A, y se llama al proceso Escribir}
{}    end;
{}     close(fichero);readkey;
END;
{=========================PREPARACION================================}
Procedure Creditos;
BEGIN
Gotoxy(60,31); writeln('Desarrollado completamente por 321Games Entreteniment.'); delay(2500); cLrscr;
Gotoxy(60,31); writeln('Staff de 321Games: '); delay(1500); cLrscr;
Gotoxy(60,31); writeln('Equipo de Colores: Victor Vasquez.'); delay(1500); cLrscr;
Gotoxy(60,31); writeln('Direccion de sonido: Victor Vasquez.');  delay(1500); cLrscr;
Gotoxy(60,31); writeln('Equipo de animaciones: Victor Vasquez & Victor Vasquez.'); delay(2000); cLrscr;
Gotoxy(60,31); writeln('Servicio tecnico: Victor Vasquez.'); delay(1500); cLrscr;
Gotoxy(60,31); writeln('Animaciones tridimencionales: Victor Vasquez.'); delay(2000); cLrscr;
Gotoxy(60,31); writeln('Desarrollo de contenido: Victor Vasquez.'); delay(1500); cLrscr;
Gotoxy(60,31); writeln('Direccion Artistica: Victor Vasquez.');   delay(1500); cLrscr;
Gotoxy(60,31); writeln('Directos musical: Victor Vasquez.');    delay(1500); cLrscr;
Gotoxy(60,31); writeln('Desarrolladores de web inexistente: Victor Vasquez.'); delay(2500); cLrscr;
Gotoxy(60,31); writeln('Errores ortograficos: Victor Vasquez.');    delay(1500); cLrscr;
Gotoxy(60,31); writeln('En caso de errores de compilacion culpar a: Victor Vasquez.');  delay(2500); cLrscr;
Gotoxy(60,31); writeln('Director General: Victor Vasquez.');  delay(1500); cLrscr;
Gotoxy(60,31); writeln('Presione cualquier tecla para continuar.'); readkey; clrscr;

END;
{-----------------------------------------------------------}
Procedure Instrucciones;
BEGIN
writeln;
writeln;
Writeln('La nave rebelde, Halcon Milenario, del mercenario Hugo el Implacable ha sufrido graves danos' +
' en el ultimo encuentro con los destructores imperiales.'); delay(2000); writeln;
Writeln('Para ser reparada debe llegar al planeta ?T? evitando nuevos enfrentamientos con los destructores.'); delay(2000); writeln;
writeln('Sin embargo, una averia en los sistemas de navegacion de la nave hace que solo pueda orientarse' +
' navegando siempre en linea recta hacia una estrella.');delay(2000);
writeln(' ');
writeln;
Writeln('Presione Cualquier Tecla para continuar.'); readkey; Clrscr;
writeln;
writeln;
{-----------}
writeln('En un archivo tipo .txt deberan estar inscritos los datos de la siguiente forma: ');
writeln;
writeln('La primera linea contendra la cantidad de filas y columnas de la matriz (minimo 1x1 maximo 30x30) '); delay(1500);
writeln;
Writeln('La segunda linea contendra la posicion ?X? e ?Y? de la nave H'); delay(1500);
writeln;
writeln('En la tercera linea estara la ubicacion del planeta T en con posicion X e Y'); delay(1500);
writeln;
writeln('En la cuarta linea estaran el numero de estrellas en el mapa ?E?. ');  delay(1500);
writeln;
writeln('A continuacion aparecera una linea por cada estrella dando su ubicacion en el tablero.'); delay(1500);
writeln;
writeln('Seguidamente un linea con la cantidad de Destructores ?D?');  delay(1500);
writeln;
writeln('Y por ultimo las lineas con la posicion de cada uno de los destructores.'); delay(1500);
writeln;
Writeln('Presione Cualquier Tecla para continuar.'); readkey; Clrscr;
writeln;
writeln('Todas las posiciones estaran escritos del siguiente formato: xx yy, es decir numeros enteros separados por un espacio.');  delay(1500);
writeln;
writeln('El archivo solo puede contener Numeros enteros, no puede contener caracteres especiales u tipo strings.');
{------------}
Writeln('Presione Cualquier Tecla para continuar.'); readkey; Clrscr;
writeln;
writeln;
Writeln('Antes de poder empezar a jugar es necesario que Verifique el archivo .txt con el paso numero |2| del menu.');  delay(1000);  writeln; writeln;
Writeln('Presione cualquier telca para continuar.'); readkey; ClrScr;
writeln;
writeln;
writeln('Este paso de verificacion, leera el archivo corroborando que los datos introducidos en el .txt mantengan logica y coherencia.');delay(250);  writeln;
writeln('Es decir, que si el tablero de juego es 20 x 12, y la posicion del halcon esta en la posicion x:21 y:15 segun el archivo. txt, este paso le advertira de este error y la razon del mismo.'); delay(250);  writeln;
writeln('Esto evitara crasheos innecesarios y evitables a la hora de jugar.');delay(1000); writeln;
writeln('?Verificar? NO verificara si el tipo de dato del .txt contiene strings o caracteres especiales, a si mismo tampoco' +
' evaluara si el tablero cargado posee solucion o no. Esto estara bajo la responsabilidad del usuario.');
Writeln('Presione cualquier telca para continuar al menu.');readkey; ClrScr;
END;
{--------------------------------------------------------------------}
Procedure PreparacionAuxiliar;
var
 verificacion:boolean;
 N:integer;
begin
N:=9;   verificacion:=false;
while (n<>0) do begin
{} TextColor(red);
{} writeln('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$');
{} writeln('$$$$$$$$$$$$$$$$$$$                           $$$$$$$$$$$$$$$$$$$');
{} writeln('$$$$$$$$$$$$$$$          MENU DEL JUEGO           $$$$$$$$$$$$$$');
{} Writeln('$$$$$$$$$$$$$$$$$$$                           $$$$$$$$$$$$$$$$$$');
{} writeln('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'); TextColor(white);
{}writeln('===============================================================      _');
{}writeln('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$        |     ');
{}writeln('$$$$$$$$$$$                            $$$$$$$$$$$$$$$$$$$$$$         |     ');
{}writeln('$$$$$$$$$  Opcion|1|:Instrucciones   $$$$$$$$$$$$$$$$$$$$$$$          |     ');
{}writeln('$$$$$$$$$$$                            $$$$$$$$$$$$$$$$$$$$$          |     ');
{}TextColor(red);
{}writeln('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$           |     ');
{}TextColor(white);
{}writeln('$$$$$$$$$                            $$$$$$$$$$$$$$$$$$$$$            |     ');
{}writeln('$$$$$$  Opcion|2|:Verificar archivo.txt   $$$$$$$$$$$$$$$             |     ');
{}writeln('$$$$$$$                            $$$$$$$$$$$$$$$$$$$$$              |     ');
{}TextColor(red);
{}writeln('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$               |     ');
{}TextColor(white);
{}writeln('$$$$$$$$$                          $$$$$$$$$$$$$$$$$$$$               |     ');
{}writeln('$$$$$$      Opcion|3|:Jugar!     $$$$$$$$$$$$$$$$$$$$$                |     ');
{}writeln('$$$$$$$$$                          $$$$$$$$$$$$$$$$$$$$               |     ');
{}TextColor(red);{}
{}writeln('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$               |     ');
{} TextColor(white);
{}writeln('$$$$$$$                            $$$$$$$$$$$$$$$$$$$$$              |     ');
{}writeln('$$$$$$     Opcion|4|:Creditos             $$$$$$$$$$$$$$$             |     ');
{}writeln('$$$$$$$$$                            $$$$$$$$$$$$$$$$$$$$$            |     ');
{}TextColor(red);
{}writeln('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$           |     ');
{}TextColor(white);
{}writeln('$$$$$$$$$$$                            $$$$$$$$$$$$$$$$$$$$$          |     ');
{}writeln('$$$$$$$$$  Opcion|0|:Cerrar el juego  $$$$$$$$$$$$$$$$$$$$$$          |     ');
{}writeln('$$$$$$$$$$$                            $$$$$$$$$$$$$$$$$$$$$$         |     ');
{}TextColor(red);
{}writeln('$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$        |     ');
{}TextColor(white);
{}writeln('==============================================================        -     ');
{} readln(n);
{} Case n of
{}  {}    1:Begin
{}  {}      {} Clrscr; Instrucciones;
{}  {}      end;
{}  {}    2:Begin
{}  {}      {} if verificacion=false then begin
{}  {}      {}  {}Clrscr; verificacion:=true; writeln('Verificacion en curso.'); delay(1000); writeln; writeln('Porfavor espere...'); delay(3000);  Clrscr;
{}  {}      {}  {}LeerFichero(ContadorDeLineas); ClrScr;  {Todos estos procesos seran SOLO y Exlusivamente para cargar el .txt en el juego, y verificar el mismo}
{}  {}      {}  end
{}  {}      {} else begin writeln('Ya se verifico anteriormente, si desea recargar la verificacion reinicie el juego.'); writeln; writeln('Presione cualquier tecla para continuar'); readkey; clrscr; end;
{}  {}      end;
{}  {}    3:Begin
{}  {}       {} If (verificacion=false) then begin
{}  {}       {}   {} writeln('Debe verificar el juego con la opcion |2| del menu antes de poder empezar a jugar.');
{}  {}       {}   {} writeln('Presione cualquier tecla para continuar.'); readkey; Clrscr;
{}  {}       {}  end
{}  {}       {}  else begin
{}  {}       {}     {} if vero=false then begin
{}  {}       {}     {} {}writeln('El archivo.txt no paso la verificacion, porfavor cerrar el juego y arreglar el archivo.');
{}  {}       {}     {} {}writeln('Presione cualquier tecla para continuar.'); readkey; Clrscr;
{}  {}       {}     {} end
{}  {}       {}     {} else begin
{}  {}       {}     {}      {} Gotoxy(60,31); Writeln('Preparado!'); delay(1000);Clrscr;
{}  {}       {}     {}      {} Gotoxy(60,31); writeln('Iniciando en: 3'); delay(1000); Clrscr;
{}  {}       {}     {}      {} Gotoxy(60,31); writeln('Iniciando en: 2'); delay(1000); Clrscr;
{}  {}       {}     {}      {} Gotoxy(60,31); writeln('Iniciando en: 1'); delay(1000); Clrscr;
{}  {}       {}     {}      {} Juego(Mapa,Finalizacion);
{}  {}       {}     {}      end;
{}  {}       {}     end;
{}  {}      end;
{}  {}    4:Begin Clrscr; Creditos; end;
{}  end;
{} if (n<>1) and (n<>2) and (n<>3) and (n<>4)and (n<>0) then begin writeln('Opcion No valida'); delay(1000); ClrScr; end;
end;
end;
{================================================================================}
Begin
vero:=true;
ContadorDelineas:=0;  {Contador con el que se guardara la cantidad de lineas del <<.txt>>, servira para tener un control a la hora de hacer la matriz}
Introduccion; Clrscr;
PreparacionAuxiliar;
Clrscr; Gotoxy(60,31); Writeln('Hasta Luego!'); delay(1500);
END.
