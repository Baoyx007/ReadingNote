# Chapter 2 sum
## 2.2 sums and recurrences
递归和求和的关系在与：许多递归可以化简为sum

a general technique that can reduce virtual any recurrence of the form
<img src="http://www.forkosh.com/mathtex.cgi? a_nT_n = n_nT_{n-1} + c_n">

让两边都乘以S_n:
<img src="http://www.forkosh.com/mathtex.cgi?s_na_nT_n =s_nb_nT_{n-1} + s_nc_n">

构造一个s_n，使得

<img src="http://www.forkosh.com/mathtex.cgi? s_{n-1}a_{n-1}=s_nb_n">

如下图所示：
![公式](img/sum-1.jpg)

**example**
quicksort comparison steps is  
<img src="http://www.forkosh.com/mathtex.cgi?C_0=0">  
<img src="http://www.forkosh.com/mathtex.cgi?C_n=n+1+\frac2n \sum_{k=0}^{n-1} C_k , for\quad n >0" >
how to calc C_n
A:p29

> harmonic number: the kth harmonic produced by a violin string is the fundamental tone produced by a string that is 1/k times as long

## 2.3 manipulation of sums
commutative law:
<img src="http://www.forkosh.com/mathtex.cgi?\displaystyle\sum_{k \in K} a_k = \displaystyle\sum_{p(k)\in K} a_{p(k)}">
like permutation:for every n should be exactly one k permute

> calculus 微积分

## 2.4 multiple sums
general distributive law:  

<img src="http://www.forkosh.com/mathtex.cgi?\displaystyle\sum_{1<=j,k<=n}a_jb_k=(\displaystyle\sum_{1<=j<=n}a_j)(\displaystyle\sum_{1<=k<=n}a_k)">

## 2.6 finite and infinite calculus
```
用积分的思想来算sum 提出了$x^{\underline2}$概念。。
```
infinite calculus based on *derivative* operator D
<img src="http://www.forkosh.com/mathtex.cgi?Df(x)=\lim_{h\to0}\frac{f(x+h)-f(x)}{h}">
finite calculus based on *difference* operator \Delta
<img src="http://www.forkosh.com/mathtex.cgi?\Delta f(x)=f(x+1)-f(x)">


D      $\to$ d       |  倒数 对  积分
$\Delta$ $\to$ $\delta$  |  差分 对应 求和
>> punchline 妙处
>> recap     概述
  redeem  赎回

**我们从积分和倒数推导出，求和和差分的关系**
definite sums: If $g(x)=\Delta f(x)$ , then  
$$
\sum_a^b g(x) \delta x = f(x)|_a^b =f(b)-f(a)
$$
$\sum_a^bg(x)\delta x$ 的含义是：
$$
\sum_a^bg(x)\delta x = \sum{a<=k<b} g(k)
$$

general law:
$$
\sum_{0<=k<n}k^\underline{m} = \left. \frac{k^\underline{m}}{m+1}\right|_0^n = \frac{n^\underline{m+1}}{m+1} , for \ integers\ m,n \geq0
$$

eg:
$\displaystyle\sum_{0\leq k <n}k$,$\displaystyle\sum_{0\leq k <n}k^2$
这些例子都可以通过上述方法求得,P51

**H_x is the discrete analog of the continuous ln_x**

## 2.7 infinite sums
