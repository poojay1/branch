options(java.parameters = "-Xmx4g" )
require(XLConnect)
readline(prompt="Choose a file:(Press Enter)")
file=loadWorkbook(file.choose(),create=FALSE)
f1=readWorksheet(file,sheet=1)
level_no=rep(0,nrow(f1))
f1=f1[1:nrow(f1),]
master=data.frame(f1,level_no)





























present <- function(a,listp){
	for (i in seq(1,rows,1){
		if (a == listp[i]){
			return(1)
		}
	}
	return(0)
}
chk_null(list1){
	for (i in seq(1,rows,1){
		if (list1[i] != "0"){
			return(0)
		}
	}
	return(1)
}
	


	

