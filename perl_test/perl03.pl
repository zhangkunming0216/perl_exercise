#this is hash perl
# -key => value 
# read key and value
#%data ={-google => google.com , -baidu => baidu.com , -facebook => facebook.com};
%data = ('google'=>'google.com', 'runoob'=>'runoob.com', 'taobao'=>'taobao.com');
@names = keys %data;
print "$names[0]\n";
print "$names[1]\n";
print "$names[2]\n";

#values hash  print "\$data{'google'} = $data{'google'}\n";

if(exists($data{'facebook'})){
	print "facebook的网址为$data{'facebook'}\n";
}
else{
	print "facebook key don't exist\n";
}

#添加 facebook if
$data{'facebook'} = 'facebook.com';
delete $data{'taobao'};
if(exists($data{'facebook'})){
	print "facebook website is $data{'facebook'}\n";
}
elsif(exists($data{'facebook'})){
	print "facebook的网址为$data{'taobao'}\n";
}
else{
	print "facebook key don't exist\n";
}

# for loop 

for($i=0; $i<9; $i = $i + 1 ){
	@b[$i] = $i * $i;
	print "@b[$i]\n";
}
 
while(){

}



















