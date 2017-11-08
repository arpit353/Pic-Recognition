%******** The program for Picture recognition ********
%******** This program using LAM neural for the STD of the picture *************
clear;
clc;
close all;

k=menu('Picture recognition','Add picture','Search for picture','Remove picture','Empty text file','Close the windows','Exit');
while (k~=7)
    if (k==1)
        clear;
        vw = csvread('data.txt',0,0);
        [row,col] = size(vw);
        z=0;
        for i=1:row
            for j=1:col
                z=z+vw(i,j);
            end
        end
        if (z==0)
            row=0;
        end

%******** The analysis of picture into data *********
        [c1,c2]=uigetfile('C:\MATLAB7\work\*.jpg','picture',100,100);
        if c1~=0
                I = imread(c1); 
                figure; 
                imshow(I); title('Natural Picture');
                H = fspecial('unsharp');
                sharpened = imfilter(I,H);
                pic1(:,:)=sharpened(:,:,1);
                pic2(:,:)=sharpened(:,:,2);
                pic3(:,:)=sharpened(:,:,3);

                    
                    BW=imresize(pic2,[100 100]);
                    B1=BW([1:10],[1:10]);   B2=BW([1:10],[11:20]);
                    B3=BW([1:10],[21:30]);  B4=BW([1:10],[31:40]);
                    B5=BW([1:10],[41:50]);  B6=BW([1:10],[51:60]);
                    B7=BW([1:10],[61:70]);  B8=BW([1:10],[71:80]);
                    B9=BW([1:10],[81:90]);  B10=BW([1:10],[91:100]);
                    B11=BW([11:20],[1:10]); B12=BW([11:20],[11:20]);
                    B13=BW([11:20],[21:30]); B14=BW([11:20],[31:40]);
                    B15=BW([11:20],[41:50]); B16=BW([11:20],[51:60]);
                    B17=BW([11:20],[61:70]); B18=BW([11:20],[71:80]);
                    B19=BW([11:20],[81:90]); B20=BW([11:20],[91:100]);
                    B21=BW([21:30],[1:10]);  B22=BW([21:30],[11:20]);
                    B23=BW([21:30],[21:30]); B24=BW([21:30],[31:40]);
                    B25=BW([21:30],[41:50]); B26=BW([21:30],[51:60]);
                    B27=BW([21:30],[61:70]); B28=BW([21:30],[71:80]);
                    B29=BW([21:30],[81:90]); B30=BW([21:30],[91:100]);
                    B31=BW([31:40],[1:10]);  B32=BW([31:40],[11:20]);
                    B33=BW([31:40],[21:30]); B34=BW([31:40],[31:40]);
                    B35=BW([31:40],[41:50]); B36=BW([31:40],[51:60]);
                    B37=BW([31:40],[61:70]); B38=BW([31:40],[71:80]);
                    B39=BW([31:40],[81:90]); B40=BW([31:40],[91:100]);
                    B41=BW([41:50],[1:10]);  B42=BW([41:50],[11:20]);
                    B43=BW([41:50],[21:30]); B44=BW([41:50],[31:40]);
                    B45=BW([41:50],[41:50]); B46=BW([41:50],[51:60]);
                    B47=BW([41:50],[61:70]); B48=BW([41:50],[71:80]);
                    B49=BW([41:50],[81:90]); B50=BW([41:50],[91:100]);
                    B51=BW([51:60],[1:10]);  B52=BW([51:60],[11:20]);
                    B53=BW([51:60],[21:30]); B54=BW([51:60],[31:40]);
                    B55=BW([51:60],[41:50]); B56=BW([51:60],[51:60]);
                    B57=BW([51:60],[61:70]); B58=BW([51:60],[71:80]);
                    B59=BW([51:60],[81:90]); B60=BW([51:60],[91:100]);
                    B61=BW([61:70],[1:10]);  B62=BW([61:70],[11:20]);
                    B63=BW([61:70],[21:30]); B64=BW([61:70],[31:40]);
                    B65=BW([61:70],[41:50]); B66=BW([61:70],[51:60]);
                    B67=BW([61:70],[61:70]); B68=BW([61:70],[71:80]);
                    B69=BW([61:70],[81:90]); B70=BW([61:70],[91:100]);
                    B71=BW([71:80],[1:10]);  B72=BW([71:80],[11:20]);
                    B73=BW([71:80],[21:30]); B74=BW([71:80],[31:40]);
                    B75=BW([71:80],[41:50]); B76=BW([71:80],[51:60]);
                    B77=BW([71:80],[61:70]); B78=BW([71:80],[71:80]);
                    B79=BW([71:80],[81:90]); B80=BW([71:80],[91:100]);
                    B81=BW([81:90],[1:10]);  B82=BW([81:90],[11:20]);
                    B83=BW([81:90],[21:30]); B84=BW([81:90],[31:40]);
                    B85=BW([81:90],[41:50]); B86=BW([81:90],[51:60]);
                    B87=BW([81:90],[61:70]); B88=BW([81:90],[71:80]);
                    B89=BW([81:90],[81:90]); B90=BW([81:90],[91:100]);
                    B91=BW([91:100],[1:10]); B92=BW([91:100],[11:20]);
                    B93=BW([91:100],[21:30]); B94=BW([91:100],[31:40]);
                    B95=BW([91:100],[41:50]); B96=BW([91:100],[51:60]);
                    B97=BW([91:100],[61:70]); B98=BW([91:100],[71:80]);
                    B99=BW([91:100],[81:90]); B100=BW([91:100],[91:100]);
                    
                    x(1,1)=STD2(B1); x(1,2)=STD2(B2);
                    x(1,3)=STD2(B3); x(1,4)=STD2(B4); 
                    x(1,5)=STD2(B5); x(1,6)=STD2(B6); 
                    x(1,7)=STD2(B7); x(1,8)=STD2(B8); 
                    x(1,9)=STD2(B9); x(1,10)=STD2(B10); 
                    x(2,1)=STD2(B11); x(2,2)=STD2(B12); 
                    x(2,3)=STD2(B13); x(2,4)=STD2(B14); 
                    x(2,5)=STD2(B15); x(2,6)=STD2(B16); 
                    x(2,7)=STD2(B17); x(2,8)=STD2(B18); 
                    x(2,9)=STD2(B19); x(2,10)=STD2(B20); 
                    x(3,1)=STD2(B21); x(3,2)=STD2(B22); 
                    x(3,3)=STD2(B23); x(3,4)=STD2(B24); 
                    x(3,5)=STD2(B25); x(3,6)=STD2(B26); 
                    x(3,7)=STD2(B27); x(3,8)=STD2(B28); 
                    x(3,9)=STD2(B29); x(3,10)=STD2(B30); 
                    x(4,1)=STD2(B31); x(4,2)=STD2(B32); 
                    x(4,3)=STD2(B33); x(4,4)=STD2(B34); 
                    x(4,5)=STD2(B35); x(4,6)=STD2(B36); 
                    x(4,7)=STD2(B37); x(4,8)=STD2(B38); 
                    x(4,9)=STD2(B39); x(4,10)=STD2(B40); 
                    x(5,1)=STD2(B41); x(5,2)=STD2(B42); 
                    x(5,3)=STD2(B43); x(5,4)=STD2(B44); 
                    x(5,5)=STD2(B45); x(5,6)=STD2(B46); 
                    x(5,7)=STD2(B47); x(5,8)=STD2(B48); 
                    x(5,9)=STD2(B49); x(5,10)=STD2(B50); 
                    x(6,1)=STD2(B51); x(6,2)=STD2(B52); 
                    x(6,3)=STD2(B53); x(6,4)=STD2(B54); 
                    x(6,5)=STD2(B55); x(6,6)=STD2(B56); 
                    x(6,7)=STD2(B57); x(6,8)=STD2(B58); 
                    x(6,9)=STD2(B59); x(6,10)=STD2(B60); 
                    x(7,1)=STD2(B61); x(7,2)=STD2(B62); 
                    x(7,3)=STD2(B63); x(7,4)=STD2(B64); 
                    x(7,5)=STD2(B65); x(7,6)=STD2(B66); 
                    x(7,7)=STD2(B67); x(7,8)=STD2(B68); 
                    x(7,9)=STD2(B69); x(7,10)=STD2(B70); 
                    x(8,1)=STD2(B71); x(8,2)=STD2(B72); 
                    x(8,3)=STD2(B73); x(8,4)=STD2(B74); 
                    x(8,5)=STD2(B75); x(8,6)=STD2(B76); 
                    x(8,7)=STD2(B77); x(8,8)=STD2(B78); 
                    x(8,9)=STD2(B79); x(8,10)=STD2(B80); 
                    x(9,1)=STD2(B81); x(9,2)=STD2(B82); 
                    x(9,3)=STD2(B83); x(9,4)=STD2(B84); 
                    x(9,5)=STD2(B85); x(9,6)=STD2(B86); 
                    x(9,7)=STD2(B87); x(9,8)=STD2(B88); 
                    x(9,9)=STD2(B89); x(9,10)=STD2(B90); 
                    x(10,1)=STD2(B91); x(10,2)=STD2(B92); 
                    x(10,3)=STD2(B93); x(10,4)=STD2(B94); 
                    x(10,5)=STD2(B95); x(10,6)=STD2(B96); 
                    x(10,7)=STD2(B97); x(10,8)=STD2(B98); 
                    x(10,9)=STD2(B99); x(10,10)=STD2(B100);

                    i0=1;
                    for i=1:10
                        for j=1:10
                            x1(i0)=x(i,j);
                            i0=i0+1;
                        end
                    end
                    AA=0;
                    for i=1:100
                        AA=AA+x1(i)*x1(i);
                    end
                    x1=x1./AA;
                    w=x1;
                    y_in=w*x1';
                    y=y_in;
                    row=row+1;
                    vw(row,1)=row;
                    for j=2:101
                        vw(row,j)=x1(j-1);
                    end
                    vw(row,102)=y;
                    csvwrite('data.txt',vw,0,0);
                    msgbox('Picture is added','Add picture','help');
                    y00=wavread('c:\windows\media\CHIMES.wav');
                    %wavplay(y00);
                
                k=menu('Picture recognition','Add picture','Search for picture','Remove picture','Empty text file','Close the windows','Exit');
        else
            k=menu('Picture recognition','Add picture','Search for picture','Remove picture','Empty text file','Close the windows','Exit');
        end
    end

%******** Search for picture *********
    if(k==2)
        clear;
        [c1,c2]=uigetfile('C:\MATLAB7\work\*.jpg','picture',100,100);
        if c1~=0
                I = imread(c1); 
                figure; 
                imshow(I); title('Natural Picture');
                H = fspecial('unsharp');
                sharpened = imfilter(I,H);
                pic1(:,:)=sharpened(:,:,1);
                pic2(:,:)=sharpened(:,:,2);
                pic3(:,:)=sharpened(:,:,3);

                    BW=imresize(pic2,[100 100]);
                    B1=BW([1:10],[1:10]);   B2=BW([1:10],[11:20]);
                    B3=BW([1:10],[21:30]);  B4=BW([1:10],[31:40]);
                    B5=BW([1:10],[41:50]);  B6=BW([1:10],[51:60]);
                    B7=BW([1:10],[61:70]);  B8=BW([1:10],[71:80]);
                    B9=BW([1:10],[81:90]);  B10=BW([1:10],[91:100]);
                    B11=BW([11:20],[1:10]); B12=BW([11:20],[11:20]);
                    B13=BW([11:20],[21:30]); B14=BW([11:20],[31:40]);
                    B15=BW([11:20],[41:50]); B16=BW([11:20],[51:60]);
                    B17=BW([11:20],[61:70]); B18=BW([11:20],[71:80]);
                    B19=BW([11:20],[81:90]); B20=BW([11:20],[91:100]);
                    B21=BW([21:30],[1:10]);  B22=BW([21:30],[11:20]);
                    B23=BW([21:30],[21:30]); B24=BW([21:30],[31:40]);
                    B25=BW([21:30],[41:50]); B26=BW([21:30],[51:60]);
                    B27=BW([21:30],[61:70]); B28=BW([21:30],[71:80]);
                    B29=BW([21:30],[81:90]); B30=BW([21:30],[91:100]);
                    B31=BW([31:40],[1:10]);  B32=BW([31:40],[11:20]);
                    B33=BW([31:40],[21:30]); B34=BW([31:40],[31:40]);
                    B35=BW([31:40],[41:50]); B36=BW([31:40],[51:60]);
                    B37=BW([31:40],[61:70]); B38=BW([31:40],[71:80]);
                    B39=BW([31:40],[81:90]); B40=BW([31:40],[91:100]);
                    B41=BW([41:50],[1:10]);  B42=BW([41:50],[11:20]);
                    B43=BW([41:50],[21:30]); B44=BW([41:50],[31:40]);
                    B45=BW([41:50],[41:50]); B46=BW([41:50],[51:60]);
                    B47=BW([41:50],[61:70]); B48=BW([41:50],[71:80]);
                    B49=BW([41:50],[81:90]); B50=BW([41:50],[91:100]);
                    B51=BW([51:60],[1:10]);  B52=BW([51:60],[11:20]);
                    B53=BW([51:60],[21:30]); B54=BW([51:60],[31:40]);
                    B55=BW([51:60],[41:50]); B56=BW([51:60],[51:60]);
                    B57=BW([51:60],[61:70]); B58=BW([51:60],[71:80]);
                    B59=BW([51:60],[81:90]); B60=BW([51:60],[91:100]);
                    B61=BW([61:70],[1:10]);  B62=BW([61:70],[11:20]);
                    B63=BW([61:70],[21:30]); B64=BW([61:70],[31:40]);
                    B65=BW([61:70],[41:50]); B66=BW([61:70],[51:60]);
                    B67=BW([61:70],[61:70]); B68=BW([61:70],[71:80]);
                    B69=BW([61:70],[81:90]); B70=BW([61:70],[91:100]);
                    B71=BW([71:80],[1:10]);  B72=BW([71:80],[11:20]);
                    B73=BW([71:80],[21:30]); B74=BW([71:80],[31:40]);
                    B75=BW([71:80],[41:50]); B76=BW([71:80],[51:60]);
                    B77=BW([71:80],[61:70]); B78=BW([71:80],[71:80]);
                    B79=BW([71:80],[81:90]); B80=BW([71:80],[91:100]);
                    B81=BW([81:90],[1:10]);  B82=BW([81:90],[11:20]);
                    B83=BW([81:90],[21:30]); B84=BW([81:90],[31:40]);
                    B85=BW([81:90],[41:50]); B86=BW([81:90],[51:60]);
                    B87=BW([81:90],[61:70]); B88=BW([81:90],[71:80]);
                    B89=BW([81:90],[81:90]); B90=BW([81:90],[91:100]);
                    B91=BW([91:100],[1:10]); B92=BW([91:100],[11:20]);
                    B93=BW([91:100],[21:30]); B94=BW([91:100],[31:40]);
                    B95=BW([91:100],[41:50]); B96=BW([91:100],[51:60]);
                    B97=BW([91:100],[61:70]); B98=BW([91:100],[71:80]);
                    B99=BW([91:100],[81:90]); B100=BW([91:100],[91:100]);
                    
                    x(1,1)=STD2(B1); x(1,2)=STD2(B2);
                    x(1,3)=STD2(B3); x(1,4)=STD2(B4); 
                    x(1,5)=STD2(B5); x(1,6)=STD2(B6); 
                    x(1,7)=STD2(B7); x(1,8)=STD2(B8); 
                    x(1,9)=STD2(B9); x(1,10)=STD2(B10); 
                    x(2,1)=STD2(B11); x(2,2)=STD2(B12); 
                    x(2,3)=STD2(B13); x(2,4)=STD2(B14); 
                    x(2,5)=STD2(B15); x(2,6)=STD2(B16); 
                    x(2,7)=STD2(B17); x(2,8)=STD2(B18); 
                    x(2,9)=STD2(B19); x(2,10)=STD2(B20); 
                    x(3,1)=STD2(B21); x(3,2)=STD2(B22); 
                    x(3,3)=STD2(B23); x(3,4)=STD2(B24); 
                    x(3,5)=STD2(B25); x(3,6)=STD2(B26); 
                    x(3,7)=STD2(B27); x(3,8)=STD2(B28); 
                    x(3,9)=STD2(B29); x(3,10)=STD2(B30); 
                    x(4,1)=STD2(B31); x(4,2)=STD2(B32); 
                    x(4,3)=STD2(B33); x(4,4)=STD2(B34); 
                    x(4,5)=STD2(B35); x(4,6)=STD2(B36); 
                    x(4,7)=STD2(B37); x(4,8)=STD2(B38); 
                    x(4,9)=STD2(B39); x(4,10)=STD2(B40); 
                    x(5,1)=STD2(B41); x(5,2)=STD2(B42); 
                    x(5,3)=STD2(B43); x(5,4)=STD2(B44); 
                    x(5,5)=STD2(B45); x(5,6)=STD2(B46); 
                    x(5,7)=STD2(B47); x(5,8)=STD2(B48); 
                    x(5,9)=STD2(B49); x(5,10)=STD2(B50); 
                    x(6,1)=STD2(B51); x(6,2)=STD2(B52); 
                    x(6,3)=STD2(B53); x(6,4)=STD2(B54); 
                    x(6,5)=STD2(B55); x(6,6)=STD2(B56); 
                    x(6,7)=STD2(B57); x(6,8)=STD2(B58); 
                    x(6,9)=STD2(B59); x(6,10)=STD2(B60); 
                    x(7,1)=STD2(B61); x(7,2)=STD2(B62); 
                    x(7,3)=STD2(B63); x(7,4)=STD2(B64); 
                    x(7,5)=STD2(B65); x(7,6)=STD2(B66); 
                    x(7,7)=STD2(B67); x(7,8)=STD2(B68); 
                    x(7,9)=STD2(B69); x(7,10)=STD2(B70); 
                    x(8,1)=STD2(B71); x(8,2)=STD2(B72); 
                    x(8,3)=STD2(B73); x(8,4)=STD2(B74); 
                    x(8,5)=STD2(B75); x(8,6)=STD2(B76); 
                    x(8,7)=STD2(B77); x(8,8)=STD2(B78); 
                    x(8,9)=STD2(B79); x(8,10)=STD2(B80); 
                    x(9,1)=STD2(B81); x(9,2)=STD2(B82); 
                    x(9,3)=STD2(B83); x(9,4)=STD2(B84); 
                    x(9,5)=STD2(B85); x(9,6)=STD2(B86); 
                    x(9,7)=STD2(B87); x(9,8)=STD2(B88); 
                    x(9,9)=STD2(B89); x(9,10)=STD2(B90); 
                    x(10,1)=STD2(B91); x(10,2)=STD2(B92); 
                    x(10,3)=STD2(B93); x(10,4)=STD2(B94); 
                    x(10,5)=STD2(B95); x(10,6)=STD2(B96); 
                    x(10,7)=STD2(B97); x(10,8)=STD2(B98); 
                    x(10,9)=STD2(B99); x(10,10)=STD2(B100);                    

                    i0=1;
                    for i=1:10
                        for j=1:10
                            x1(i0)=x(i,j);
                            i0=i0+1;
                        end
                    end
                    AA=0;
                    for i=1:100
                        AA=AA+x1(i)*x1(i);
                    end
                    x1=x1./AA;

                    test=0;
                    vw = csvread('data.txt',0,0);
                    [row,col] = size(vw);
                    z=0;
                    for i=1:row
                        for j=1:col
                            z=z+vw(i,j);
                        end
                    end
                    if (z==0)
                        msgbox('There is no data','Search to Picture','help');
                        y00=wavread('c:\windows\media\TADA.wav');
                        %wavplay(y00);
                        test=1 ;
                    end
                    f=0;
                    if (test==0) 
                        for o=1:row
                            if (f==0)
                                ro=vw(o,1);
                                for j=2:101
                                    w(j-1)=vw(o,j);
                                end
                                ye=vw(o,102);
                                y_in=w*x1';
                                y=y_in;
                                
                                error=abs(ye-y)
                                if (error<=1e-09)
                                    disp(ro);
                                    msgbox('Picture is found','Search to Picture','help'); f=1;
                                    y00=wavread('c:\windows\media\CHIMES.wav');
                                    %wavplay(y00);
                                end
                            end
                        end
                        if (f==0)
                            msgbox('Picture is not found','Search to Picture','help');        
                            y00=wavread('c:\windows\media\chord.wav');
                            %wavplay(y00);
                        end
                    end
                
                k=menu('Picture recognition','Add picture','Search for picture','Remove picture','Empty text file','Close the windows','Exit');
        else
            k=menu('Picture recognition','Add picture','Search for picture','Remove picture','Empty text file','Close the windows','Exit');
        end
    end

%******** Remove picture *********
    if (k==3)
        clear;
        [c1,c2]=uigetfile('C:\MATLAB7\work\*.jpg','picture',100,100);
        if c1~=0
                I = imread(c1); 
                figure; 
                imshow(I); title('Natural Picture');
                H = fspecial('unsharp');
                sharpened = imfilter(I,H);
                pic1(:,:)=sharpened(:,:,1);
                pic2(:,:)=sharpened(:,:,2);
                pic3(:,:)=sharpened(:,:,3);
                    
                    BW=imresize(pic2,[100 100]);
                    B1=BW([1:10],[1:10]);   B2=BW([1:10],[11:20]);
                    B3=BW([1:10],[21:30]);  B4=BW([1:10],[31:40]);
                    B5=BW([1:10],[41:50]);  B6=BW([1:10],[51:60]);
                    B7=BW([1:10],[61:70]);  B8=BW([1:10],[71:80]);
                    B9=BW([1:10],[81:90]);  B10=BW([1:10],[91:100]);
                    B11=BW([11:20],[1:10]); B12=BW([11:20],[11:20]);
                    B13=BW([11:20],[21:30]); B14=BW([11:20],[31:40]);
                    B15=BW([11:20],[41:50]); B16=BW([11:20],[51:60]);
                    B17=BW([11:20],[61:70]); B18=BW([11:20],[71:80]);
                    B19=BW([11:20],[81:90]); B20=BW([11:20],[91:100]);
                    B21=BW([21:30],[1:10]);  B22=BW([21:30],[11:20]);
                    B23=BW([21:30],[21:30]); B24=BW([21:30],[31:40]);
                    B25=BW([21:30],[41:50]); B26=BW([21:30],[51:60]);
                    B27=BW([21:30],[61:70]); B28=BW([21:30],[71:80]);
                    B29=BW([21:30],[81:90]); B30=BW([21:30],[91:100]);
                    B31=BW([31:40],[1:10]);  B32=BW([31:40],[11:20]);
                    B33=BW([31:40],[21:30]); B34=BW([31:40],[31:40]);
                    B35=BW([31:40],[41:50]); B36=BW([31:40],[51:60]);
                    B37=BW([31:40],[61:70]); B38=BW([31:40],[71:80]);
                    B39=BW([31:40],[81:90]); B40=BW([31:40],[91:100]);
                    B41=BW([41:50],[1:10]);  B42=BW([41:50],[11:20]);
                    B43=BW([41:50],[21:30]); B44=BW([41:50],[31:40]);
                    B45=BW([41:50],[41:50]); B46=BW([41:50],[51:60]);
                    B47=BW([41:50],[61:70]); B48=BW([41:50],[71:80]);
                    B49=BW([41:50],[81:90]); B50=BW([41:50],[91:100]);
                    B51=BW([51:60],[1:10]);  B52=BW([51:60],[11:20]);
                    B53=BW([51:60],[21:30]); B54=BW([51:60],[31:40]);
                    B55=BW([51:60],[41:50]); B56=BW([51:60],[51:60]);
                    B57=BW([51:60],[61:70]); B58=BW([51:60],[71:80]);
                    B59=BW([51:60],[81:90]); B60=BW([51:60],[91:100]);
                    B61=BW([61:70],[1:10]);  B62=BW([61:70],[11:20]);
                    B63=BW([61:70],[21:30]); B64=BW([61:70],[31:40]);
                    B65=BW([61:70],[41:50]); B66=BW([61:70],[51:60]);
                    B67=BW([61:70],[61:70]); B68=BW([61:70],[71:80]);
                    B69=BW([61:70],[81:90]); B70=BW([61:70],[91:100]);
                    B71=BW([71:80],[1:10]);  B72=BW([71:80],[11:20]);
                    B73=BW([71:80],[21:30]); B74=BW([71:80],[31:40]);
                    B75=BW([71:80],[41:50]); B76=BW([71:80],[51:60]);
                    B77=BW([71:80],[61:70]); B78=BW([71:80],[71:80]);
                    B79=BW([71:80],[81:90]); B80=BW([71:80],[91:100]);
                    B81=BW([81:90],[1:10]);  B82=BW([81:90],[11:20]);
                    B83=BW([81:90],[21:30]); B84=BW([81:90],[31:40]);
                    B85=BW([81:90],[41:50]); B86=BW([81:90],[51:60]);
                    B87=BW([81:90],[61:70]); B88=BW([81:90],[71:80]);
                    B89=BW([81:90],[81:90]); B90=BW([81:90],[91:100]);
                    B91=BW([91:100],[1:10]); B92=BW([91:100],[11:20]);
                    B93=BW([91:100],[21:30]); B94=BW([91:100],[31:40]);
                    B95=BW([91:100],[41:50]); B96=BW([91:100],[51:60]);
                    B97=BW([91:100],[61:70]); B98=BW([91:100],[71:80]);
                    B99=BW([91:100],[81:90]); B100=BW([91:100],[91:100]);
                    
                    x(1,1)=STD2(B1); x(1,2)=STD2(B2);
                    x(1,3)=STD2(B3); x(1,4)=STD2(B4); 
                    x(1,5)=STD2(B5); x(1,6)=STD2(B6); 
                    x(1,7)=STD2(B7); x(1,8)=STD2(B8); 
                    x(1,9)=STD2(B9); x(1,10)=STD2(B10); 
                    x(2,1)=STD2(B11); x(2,2)=STD2(B12); 
                    x(2,3)=STD2(B13); x(2,4)=STD2(B14); 
                    x(2,5)=STD2(B15); x(2,6)=STD2(B16); 
                    x(2,7)=STD2(B17); x(2,8)=STD2(B18); 
                    x(2,9)=STD2(B19); x(2,10)=STD2(B20); 
                    x(3,1)=STD2(B21); x(3,2)=STD2(B22); 
                    x(3,3)=STD2(B23); x(3,4)=STD2(B24); 
                    x(3,5)=STD2(B25); x(3,6)=STD2(B26); 
                    x(3,7)=STD2(B27); x(3,8)=STD2(B28); 
                    x(3,9)=STD2(B29); x(3,10)=STD2(B30); 
                    x(4,1)=STD2(B31); x(4,2)=STD2(B32); 
                    x(4,3)=STD2(B33); x(4,4)=STD2(B34); 
                    x(4,5)=STD2(B35); x(4,6)=STD2(B36); 
                    x(4,7)=STD2(B37); x(4,8)=STD2(B38); 
                    x(4,9)=STD2(B39); x(4,10)=STD2(B40); 
                    x(5,1)=STD2(B41); x(5,2)=STD2(B42); 
                    x(5,3)=STD2(B43); x(5,4)=STD2(B44); 
                    x(5,5)=STD2(B45); x(5,6)=STD2(B46); 
                    x(5,7)=STD2(B47); x(5,8)=STD2(B48); 
                    x(5,9)=STD2(B49); x(5,10)=STD2(B50); 
                    x(6,1)=STD2(B51); x(6,2)=STD2(B52); 
                    x(6,3)=STD2(B53); x(6,4)=STD2(B54); 
                    x(6,5)=STD2(B55); x(6,6)=STD2(B56); 
                    x(6,7)=STD2(B57); x(6,8)=STD2(B58); 
                    x(6,9)=STD2(B59); x(6,10)=STD2(B60); 
                    x(7,1)=STD2(B61); x(7,2)=STD2(B62); 
                    x(7,3)=STD2(B63); x(7,4)=STD2(B64); 
                    x(7,5)=STD2(B65); x(7,6)=STD2(B66); 
                    x(7,7)=STD2(B67); x(7,8)=STD2(B68); 
                    x(7,9)=STD2(B69); x(7,10)=STD2(B70); 
                    x(8,1)=STD2(B71); x(8,2)=STD2(B72); 
                    x(8,3)=STD2(B73); x(8,4)=STD2(B74); 
                    x(8,5)=STD2(B75); x(8,6)=STD2(B76); 
                    x(8,7)=STD2(B77); x(8,8)=STD2(B78); 
                    x(8,9)=STD2(B79); x(8,10)=STD2(B80); 
                    x(9,1)=STD2(B81); x(9,2)=STD2(B82); 
                    x(9,3)=STD2(B83); x(9,4)=STD2(B84); 
                    x(9,5)=STD2(B85); x(9,6)=STD2(B86); 
                    x(9,7)=STD2(B87); x(9,8)=STD2(B88); 
                    x(9,9)=STD2(B89); x(9,10)=STD2(B90); 
                    x(10,1)=STD2(B91); x(10,2)=STD2(B92); 
                    x(10,3)=STD2(B93); x(10,4)=STD2(B94); 
                    x(10,5)=STD2(B95); x(10,6)=STD2(B96); 
                    x(10,7)=STD2(B97); x(10,8)=STD2(B98); 
                    x(10,9)=STD2(B99); x(10,10)=STD2(B100);                    

                    i0=1;
                    for i=1:10
                        for j=1:10
                            x1(i0)=x(i,j);
                            i0=i0+1;
                        end
                    end
                    AA=0;
                    for i=1:100
                        AA=AA+x1(i)*x1(i);
                    end
                    x1=x1./AA;

                    test=0; 
                    vw = csvread('data.txt',0,0);
                    [row,col] = size(vw);
                    z=0;
                    for i=1:row
                        for j=1:col
                            z=z+vw(i,j);
                        end
                    end
                    if (z==0)
                        msgbox('There is no data','Search to Picture','help');
                        y00=wavread('c:\windows\media\TADA.wav');
                        %wavplay(y00);
                        test=1 ;
                    end
                    f=0; row0=0;
                    if (test==0) 
                        for o=1:row
                            if (f==0)
                                ro=vw(o,1);
                                for j=2:101
                                    w(j-1)=vw(o,j);
                                end
                                ye=vw(o,102);
                                y_in=w*x1';
                                y=y_in;

                                error=abs(ye-y)
                                if (error<=1e-09)
                                    disp(ro);
                                    msgbox('Picture is found','Search to Picture','help'); f=1; row0=o;
                                    y00=wavread('c:\windows\media\CHIMES.wav');
                                    %wavplay(y00);
                                end
                            end
                        end
                        if (f==0)
                            msgbox('Picture is not found','Search to Picture','help');        
                            y00=wavread('c:\windows\media\chord.wav');
                            %wavplay(y00);
                        end
                    end
                    if (f==1)
                        if (row==1)
                            for i=1:102    vw0(1,i)=0;     end;     csvwrite('data.txt',vw0,0,0); msgbox('Empty file done','Empty text file','help');
                            y00=wavread('c:\windows\media\TADA.wav');
                            %wavplay(y00);
                        else
                            for i=1:row-1
                                for j=1:102
                                    if (i<row0)
                                        vw0(i,j)=vw(i,j); 
                                    else
                                        vw0(i,j)=vw(i+1,j); 
                                    end
                                end
                            end
                        end
                    else
                        for i=1:row
                            for j=1:102
                                vw0(i,j)=vw(i,j);
                            end
                        end
                    end
                    csvwrite('data.txt',vw0,0,0); 
                
                k=menu('Picture recognition','Add picture','Search for picture','Remove picture','Empty text file','Close the windows','Exit');
        else
            k=menu('Picture recognition','Add picture','Search for picture','Remove picture','Empty text file','Close the windows','Exit');
        end
    end

%******** Format the text file *********
    if (k==4)
        clear vw; close all;
        for i=1:102    vw(1,i)=0;     end;     
        csvwrite('data.txt',vw,0,0); 
        y00=wavread('c:\windows\media\TADA.wav');
        %%wavplay(y00);
        msgbox('Empty file done','Empty text file','help');
        k=menu('Picture recognition','Add picture','Search for picture','Remove picture','Empty text file','Close the windows','Exit');
    end

%******** Close the windows *********
    if (k==5)
        close all;
        y00=wavread('c:\windows\media\TADA.wav');
        %%wavplay(y00);
        k=menu('Picture recognition','Add picture','Search for picture','Remove picture','Empty text file','Close the windows','Exit');
    end
    
%******** Exit the program *********
    if (k==6)
        close all;
        break;
    end
end