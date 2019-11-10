function (s,b,t,case) 
{
	C=case
	if (C == 1) {
	S = rnorm(s)
	}
	else if(C == 2){
	S = rpois(s,7)
	}
	else if(C == 3){
	S = rchisq(s,2)
	}
	else if(C == 4){
	S = rbeta(s,2,3)
	}
	else{
		print("Case incorrect")
		end
	}
	Var = c(1)
	for(k in 0:t-1)
	{
		X = sample(S,b,replace = T)
		Var[k] = var(X)	
	}
	hist(Var)
}