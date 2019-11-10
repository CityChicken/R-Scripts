function (s,t) 
{
	sumcount = 0
	for(k in 1:t){
	Min = c(1)
	S = runif(s)
	S = sort(S, decreasing = FALSE)
	Min[1] = abs(S[2]-S[1])
	Min[s] = abs(S[s]-S[s-1])
	for(i in 2:(s-1)){
		if(abs(S[i] - S[i-1]) < abs(S[i+1] - S[i])){
			Min[i] = abs(S[i]-S[i-1])
		}
		else if(abs(S[i]-S[i-1]) > abs(S[i+1]-S[i])){
			Min[i] = abs(S[i+1]-S[i])
		}
	}
	count = 0
	for (j in 1:(s-1)){
		if (Min[j] == Min[j+1]){
			count = count + 2
		}
	}
	sumcount = sumcount+(count/s)
	}
	print(sumcount/t)
}
