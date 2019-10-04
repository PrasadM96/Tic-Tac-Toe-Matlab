m = [3 4 5; 6 7 8;9 10 11];
k1=zeros(3);
k2=zeros(3);
state=0;

for i=1:3
for j=1:3
    pinMode(a,m(i,j),'OUTPUT');
end
end


disp('>>>>>>>>>>>>>>>>>>Tic Tac Toe<<<<<<<<<<<<<<<<<<<<<');
disp('--------------------------------------------------');
val=0;
while val<9
   
    %player1
        pause(0.5);
        disp('Player1');
        [r1,c1]=testingpushb(a);
        k1(r1,c1) = 1;
        disp(k1);
        val=val+1;
        
        if k1 == [1 1 1;0 0 0;0 0 0]
            state=1; 
        elseif k1 == [0 0 0;1 1 1;0 0 0]
            state=1;
        elseif k1 == [0 0 0;0 0 0;1 1 1]
            state=1;
        elseif k1 == [1 0 0;0 1 0;0 0 1]
            state=1;
        elseif k1 == [0 0 1;0 1 0;1 0 0]
            state=1;
        elseif k1 == [1 0 0;1 0 0;1 0 0]
            state=1;
        elseif k1 == [0 1 0;0 1 0;0 1 0]
            state=1;
        elseif k1 == [0 0 1;0 1 0;0 0 1]
            state=1;
        end
        
        if state==1
            disp('Player1 is the winner!!!!!');
            val=10;
        end
     
        
  
    %player2
    if val<9
        pause(0.5);
        disp('Player2');
        [r2,c2]=testingpushb(a);
        k2(r2,c2) = 1;
        disp(k2);
        val=val+1;
        
        if k2 == [1 1 1;0 0 0;0 0 0]
            state=1; 
        elseif k2 == [0 0 0;1 1 1;0 0 0]
            state=1;
        elseif k2 == [0 0 0;0 0 0;1 1 1]
            state=1;
        elseif k2 == [1 0 0;0 1 0;0 0 1]
            state=1;
        elseif k2 == [0 0 1;0 1 0;1 0 0]
            state=1;
        elseif k2 == [1 0 0;1 0 0;1 0 0]
            state=1;
        elseif k2 == [0 1 0;0 1 0;0 1 0]
            state=1;
        elseif k2 == [0 0 1;0 1 0;0 0 1]
            state=1;
        end
        
        if state==1
            disp('Player2 is the winner!!!!!');
            val=10;
        end
    end 
    if val==9
        disp('Game is Draw');
        
    end
        
end

pause(1);
 for n=1:3
        for i=1:3
        for j=1:3
             digitalWrite(a,m(i,j),1);
        end
        end
       
        pause(0.2);
        
        for i=1:3
        for j=1:3
             digitalWrite(a,m(i,j),0);
        end
        end
       
        pause(0.2);
 end
 
 r1=0;
 r2=0;
 c1=0;
 c2=0;
 state=0;
 k1=zeros(3);
 k2=zeros(3);
 grade=0;
 val=0;

        
