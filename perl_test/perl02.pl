use utf8;
#引入utf8模块 脚本内的字符串使用utf8作为编码格式
binmode(STDOUT,":encoding(gbk)");
#标准输出使用gbk作为编码格式，也可以把gbk改为gb2312
binmode(STDIN,":encoding(gbk)");
#如果涉及到输入流，例如读文件，不加这条读中文文件会出现乱码
binmode(STDERR,":encoding(gbk)");
#this is  a  arry
print "这是一个联系数组的脚本\n";
print "数组变量以\@开头，访问数组元素\$+变量名称\+\[索引值\]\n";
@hits = (25, 30, 31);
@names = ("google", "test", "test2");
print "@names[2]\n";
print "@创建数组\n";
@sites = qw/google taobao baidu/;
print "@sites[-1]\n";
print "@sites[1]\n";
print "数组的最大索引号\n";
$sites_size = @sites;
$sites_max_size = $#sites;
print "sites_size: $sites_size\n";
print "sites_size: $sites_max_size\n";

#this is add or delete arry content
@test_add =(baidu,google,taobao);
print "test_add: @test_add\n";
print "添加一个数\n";
push(@test_add,"tianmao");
print "test_add: @test_add\n";
print "减少一个数\n";
$a=pop(@test_add);
print "the pop is $a\n";
print "test_add: @test_add\n";

#shift 弹出第一个值
$a=shift(@test_add);
print "the shift is $a\n";
print "test_add: @test_add\n";

#unshift 添加一个到第一个位置
unshift(@test_add,"diyige");
print "test_add: @test_add\n";

#将数组转换为字符串 字符串转化为数组  http://www.runoob.com/perl/perl-arrays.html
#定义两个字符串
$var_string = "www-baidu-com";
$var_wangzhan = "google,taobao,runoob,weibo";
# 字符串转为数组  分隔符
@string = split('-', $var_string);
@wangzhan = split(',',$var_wangzhan);
print ("\@string is @string\n");
print ("\@wangzhan is @wangzhan\n");
#将数组转为字符串
$var_string = join ('-',@string);
$var_wangzhan = join (',',@wangzhan);
print "\$var_string is $var_string\n";
print "\$var_wangzhan is $var_wangzhan\n";

#数组排序  使用ASCII码来排序，要先转为小写 使用SORT
#定义一个数组
@sort_arry = qw(Taobao tianmao baidu facebook dengdeng aobao);
print "排序前: @sort_arry\n";
@sort_arry = sort(@sort_arry);
print "排序后: @sort_arry\n";
#强制转为小写
$sort_arry_string = join(',',@sort_arry);
$sort_arry_string = lc($sort_arry_string);
print "$sort_arry_string\n";
@sort_arry = join(',',);
print "变小写后: @sort_arry\n";
@sort_arry = sort(@sort_arry);
print "排序后: @sort_arry\n";

#数组合并
@arry1 = (@string,@wangzhan);
print "@arry1\n";
@arry1 = sort(@arry1);
print "@arry1\n";

@sort_num = (4545,65,9898,445,646,464,6,46464,548);
@sort_num = cmp(@sort_num);
print "@sort_num\n";

#https://www.jb51.net/article/67894.htm  留个问题













































