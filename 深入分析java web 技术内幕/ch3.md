Ch3 中文编码

2015年11月15日
15:35

# 计算机储存都是用byte表示。8bit

	- Ascii 0-31 控制字符，32-126打印字符
	- Utf16 2byte 定长编码 ，Java以utf6作为内存的字符储存格式
	- Utf8 变长编码 1-6字节，汉字3字节

# Java IO 中
Reader读字符（utf，gbk，ascii），InputStream 读字节byte
因此，读io是从InputStream到reader，写io是从Writer到OutputStream。中间都不用到StreamDecoder or StreamEncoder

# Java 内存中
String 以utf16保存
char 在java中是2个字节

也就是你拿到一串bytes（4920616d20541b5c71…），先用decoder指明这是什么编码，再用encoder变成其他编码

# web中编码
数据经过网络传输以字节为单位
post，url，header，body。。。fuck
