function app_vals = approximate_value(image1,image2,ground)

app_vals = zeros(size(ground));
warning off

AI1 = [ones(length(image1(:,1)),1) , ground(:,2) , ground(:,3) , ground(:,4) , zeros(length(image1(:,1)),4);
    zeros(length(image1(:,1)),4) , ones(length(image1(:,1)),1) , ground(:,2) , ground(:,3) , ground(:,4)];
wI1 = [image1(:,3);image1(:,2)];
CapI1 = inv(AI1'*AI1)*AI1'*wI1;
aCapI1 = CapI1(1:4);
bCapI1 = CapI1(5:8);

AI2 = [ones(length(image2(:,1)),1) , ground(:,2) , ground(:,3) , ground(:,4) , zeros(length(image2(:,1)),4);
    zeros(length(image2(:,1)),4) , ones(length(image2(:,1)),1) , ground(:,2) , ground(:,3) , ground(:,4)];
wI2 = [image2(:,3);image2(:,2)];
CapI2 = inv(AI2'*AI2)*AI2'*wI2;
aCapI2 = CapI2(1:4);
bCapI2 = CapI2(5:8);

for i =1:length(image1(:,1))
    A = [aCapI1(2) , aCapI1(3) , aCapI1(4);
         bCapI1(2) , bCapI1(3) , bCapI1(4);
         aCapI2(2) , aCapI2(3) , aCapI2(4);
         bCapI2(2) , bCapI2(3) , bCapI2(4)];
    w = [image1(i,3) - aCapI1(1);
         image1(i,2) - bCapI1(1);
         image2(i,3) - aCapI2(1);
         image2(i,2) - bCapI2(1)];
     Cap = inv(A'*A)*A'*w;
     app_vals(i,:) = [ground(i,1) , Cap(1) , Cap(2) , Cap(3)];
end

end