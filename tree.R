options(java.parameters = "-Xmx4g" )
require(XLConnect)
readline(prompt="Choose a file:(Press Enter)")
file=loadWorkbook(file.choose(),create=FALSE)

f1=readWorksheet(file,sheet=1)
level_no=rep(0,nrow(f1))
f1=f1[1:nrow(f1),]
master=data.frame(f1[,1],f1[,6],level_no)

rows=nrow(f1)

curr_list=rep(0,nrow(f1))
parent_list=rep(0,nrow(f1))
level=0
count=0
k=0
while(count<=rows){
	k=0
	for(i in seq(1,rows,1)){
		if(present(master[i,2],parent_list) || (chk_null(parent_list) && master[i,2]=" "){
			curr_list[k]=master[i,2]
			count=count+1
			k=k+1
			master[i,3]=level
		}
	}
	level=level+1
	parent_list=curr_list
	curr_list=rep(0,rows)
}

	

