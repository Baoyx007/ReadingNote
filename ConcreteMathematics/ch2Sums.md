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
<img src="http://www.forkosh.com/mathtex.cgi? C_0=0">  
<img src="http://www.forkosh.com/mathtex.cgi? C_n=n+1+\frac 2n \sum_{k=0}^{n-1} C_k , for n >0" >
how to calc <img src="http://www.forkosh.com/mathtex.cgi?C_n">?
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
