# Ch4 javac编译原理

2015年11月15日
16:12

### java语言规范：语法和词法
java虚拟机规范
javac是将java**语言规范**转化为javavm虚拟机**语言规范**
![](img/ch4-1.jpg)
编译器：将一种语言规范转化为另一种语言规范
```
Java --javac--》 java字节码 --jvm--》机器语言
```
### 编译器
- 词法分析
- 语法分析，抽象语法树 ，
- 语义分析，将复杂的语法转化为简单的语法，形成注解后的抽象语法树
- 字节码生成器，将一种数据结构转化为另一种数据结构

### 词法分析
- scanner 用来识别token 和把token 分类，这样把文件的字节流变成token流，每个流的元素是一个token。
```
	比如说 int = a; 变成包含4个token数组 tk =[int,=,a,;]
	每个token对应一个token类别：
	- ;  -->  Token.SEMI
	- int  --> TOKEN.INT  
```
- JavacParser 用来遍历token数组，生成语法树。先解析package、import，然后把class 变成语法树。为什么class是颗树，因为{}和缩进就代表这颗树的层次结构。

### 语法分析
- 将token流转化成**结构化**的语法树
- 每个语法树的节点都是JCTree子类的一个实例,并实现了xxxTree接口。例如：可能是IfTree 或是 BinaryTree（代表二元操作符）
```
	例如：import sys.lang;
	token流是 [import,sys,.,lang,;]
	变成树为：JCImport->JCFieldAccess->JCFieldAccess->JCIdent
```
	下面这段是iFTree的源码：
```
	public interface IfTree extends StatementTree {
		ExpressionTree getCondition();
		StatementTree getThenStatement();
		/**
		 * @return null if this if statement has no else branch.
		 */
		StatementTree getElseStatement();
	}
```
- 缩进在同一层次代表是兄弟节点

### 语义分析**
分析语法树，把这个树修剪成适合代码生成的树
- 符号表？
- 检查语义的合法性和逻辑判断
	- 类型是否匹配？
	- 是否初始化？
- 数据流分析
	- 是否正确赋值
	- final 不会重复赋值
	- 。。。
- 语义分析
	- 永不真条件去除
	- 解除语法糖 : foreach --> for(;;)
	```
	assert s!= null
--->
	if (!$assertionsDisabled && !(s!=null)) throw new AssertionError();
	```
	- 自动类型转换
	- 内部类变成 新创建一个：外部类名+内部类名的类

### 代码生成**
- 生成java字节码有点像是把语法树逆向解析变成字节流。那么，首先要将java语法树转化为bytecode语法树。因为java的语言规范和bytecode语言规范并不相同，JVM的糙所都是基于栈的
```
java 中的a+b 会变成bytecode的 push a,push b push +...
```
- 把转换过的bytecode树 变成 bytecode 字节流
---
综上，最难的就是对树的修改和转换

## 设计模式 访问者
让设计者对同一套数据结构自由的设计操作集合
