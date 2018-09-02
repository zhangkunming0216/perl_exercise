use utf8;
#引入utf8模块 脚本内的字符串使用utf8作为编码格式
binmode(STDOUT,":encoding(gbk)");
#标准输出使用gbk作为编码格式，也可以把gbk改为gb2312
binmode(STDIN,":encoding(gbk)");
#如果涉及到输入流，例如读文件，不加这条读中文文件会出现乱码
binmode(STDERR,":encoding(gbk)");

#如果异常错误中的字符串有中文，请加上STDERR，否则也会出现乱码
#this is my fist perl test
print "hello world";
print "hello world";
#add \n
print "\n";
print "hello world\n";
print "hello world\n";
print "hello world test end, the next is heardoc \n";
$a = 10; # define variable
$var = <<"EOF";  # ;不能少
这是个 Hear 文档实例 ，使用双引号。
可以在这里面加入字符串和变量。
example ： a = $a
EOF
print "$var\n";
$var = <<'EOF';
这是一个Hear 文档实例，使用单引号。
example : a = $a
EOF
print "$var\n";