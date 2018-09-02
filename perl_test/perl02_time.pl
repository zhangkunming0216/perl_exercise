use utf8;
#引入utf8模块 脚本内的字符串使用utf8作为编码格式
binmode(STDOUT,":encoding(gbk)");
#标准输出使用gbk作为编码格式，也可以把gbk改为gb2312
binmode(STDIN,":encoding(gbk)");
#如果涉及到输入流，例如读文件，不加这条读中文文件会出现乱码
binmode(STDERR,":encoding(gbk)");
use POSIX qw(strftime);
#this is about time 
$local_time = localtime();
print "$local_time\n";
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();

while(1){
	$datestring = strftime "%Y-%m-%d %H:%M:%S", localtime;
	printf("$datestring:\n");
}
#下一步联系函数







































