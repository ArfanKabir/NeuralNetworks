function weight = hebbLearning(weight,P,t)
%P is the matrix that represents the gates
%T is the target vector we are hoping to get
%This function returns the weights of 
%the gates that we are going to need
    for i = 1:length(weight)
        for j=1:length(P(i,:))
            %This does the math for the weights
            weight(i) = weight(i)+(1/P(i,j))*t(j);
        end
        %Math for the weights continued
        weight(i)=weight(i)./length(P(:,1));
    end
end
%The weights are returned
