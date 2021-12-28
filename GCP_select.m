function [gcp,icp]=GCP_select(g)
ID = g(:,1);
s=size(g);
figure('Name','gcpselect')
plot(g(:,2),g(:,3),'rs')
for i=1:s(1,1)
    text(g(i,2)+0.001,g(i,3)+0.001,['\fontsize{8}\color{red}',num2str(ID(i,1))])
    hold on
end
title(['\fontsize{12}\color{blue}number of GCPs : ',num2str(0)])
g1=[ID(:,1),g(:,2),g(:,3)];
i=1;
gcp=[];

while 1
    
    [x,y,b]=ginput(1);
    
    if (isempty(b)) | (b==2)
        close gcpselect
        break
    end
    if b==1
        
        hold off
        
        for j=1:s(1,1)
            d(j,:)=[sqrt((x-g(j,2))^2+(y-g(j,3))^2),ID(j,1)];
        end
        d=sortrows(d);
        t=[];
        t=find(gcp==d(1,2));
        if isempty(t)
            if i<1
                i=1;
            end
            gcp(i,1)=d(1,2);
            
            g1=[ID(:,1),g(:,2),g(:,3)];
            
            n(i)=find(g1(:,1)==gcp(i,1));
            
            g1(n,:)=[];
            plot(g1(:,2),g1(:,3),'rs')
            for k=1:size(g1,1)
                text(g1(k,2)+0.001,g1(k,3)+0.001,['\fontsize{8}\color{red}',num2str(g1(k,1))])
                hold on
            end
            m(i)=find(ID(:,1)==gcp(i,1));
            plot(g(m,2),g(m,3),'b^')
            for t=1:length(m)
                text(g(m(t),2)+0.001,g(m(t),3)+0.001,['\fontsize{8}\color{blue}',num2str(ID(m(t),1))])
                hold on
            end
            title(['\fontsize{12}\color{blue}number of GCPs : ',num2str(i)])
            hold on
            i=i+1;
            
        end
    elseif b==3
        
        hold off
        
        
        if ~isempty(gcp)
            
            for jj=1:s(1,1)
                dd(jj,:)=[sqrt((x-g(jj,2))^2+(y-g(jj,3))^2),ID(jj,1)];
            end
            dd=sortrows(dd);
            tt=[];
            tt=find(gcp==dd(1,2));
            if ~isempty(tt)
                
                i=i-1;
                gcp(tt)=[];
                n(tt)=[];
                m(tt)=[];
                
                if ~isempty(gcp)
                    for q=1:length(gcp)
                        nn=[];
                        nn=find(ID(:,1)==gcp(q));
                        plot(g(nn,2),g(nn,3),'b^')
                        hold on
                        text(g(nn,2)+0.001,g(nn,3)+0.001,['\fontsize{8}\color{blue}',num2str(ID(nn,1))])
                    end
                end
                
                
                g3=g;
                mm=ismember(ID(:,1),gcp);
                g2=[g3(~mm,:),ID(~mm,1)];
                plot(g2(:,2),g2(:,3),'rs')
                for zz=1:length(g2(:,1))
                    text(g2(zz,2)+0.001,g2(zz,3)+0.001,['\fontsize{8}\color{red}',num2str(g2(zz,1))])
                    hold on
                end
                
                title(['\fontsize{12}\color{blue}number of GCPs : ',num2str(length(gcp))])
                
            end
            
        end
    end
end

icp = ID(~ismember(ID,gcp));
end