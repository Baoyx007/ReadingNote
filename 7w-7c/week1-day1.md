并发程序是多个逻辑上**独立**执行块

### 并行架构
- bit-level：    8bit -> 16bit
- 指令集并行 ：   流水线，乱序执行，猜测执行
- 数据并行 ：    SIMD，GPU，eg：对图片增加亮度的指令需要对图片的每个像素增加亮度
- 任务级并行
  + 共享内存
  + 分布式内存

---


### W1 线程与锁

### D1 互斥和内存模型
- JAVA中*线程*之间通过**共享内存**进行通信
- 竞态条件：代码的行为取决于个操作的时序
- 代码乱序执行的原因：
  + 编译器的静态优化
  + JVM 的动态优化
  + 硬件（流水线）的乱序执行

### D1 自习
#### [java内存模型](http://www.cs.umd.edu/~pugh/java/memoryModel/)
- Read/Write atomicity

- 什么是memory model:
  The Java Memory Model describes what behaviors are legal in multithreaded code, and how threads may interact through memory. It describes the relationship between **variables** in a program and the low-level details of storing and retrieving them to and from memory or registers in a real computer system. It does this in a way that can be implemented correctly using a wide variety of **hardware** and a wide variety of **compiler** optimizations.

针对不同硬件和编译器优化问题，给出了一些机制（volatile）使多线程运行正确
例如:

 ```
final class SetCheck {
  private int  a = 0;
  private long b = 0;

  void set() {
    a =  1;
    b = -1;
  }

  boolean check() {
    return ((b ==  0) ||
            (b == -1 && a == 1)); 
  }
}
 ```

- The compiler may rearrange the order of the statements, so b may be assigned before a. If the method is inlined, the compiler may further rearrange the orders with respect to yet other statements.
- The processor may rearrange the execution order of machine instructions corresponding to the statements, or even execute them at the same time.
- The **memory system** (as governed by cache control units) may rearrange the order in which writes are committed to memory cells corresponding to the variables. These writes may overlap with other computations and memory actions.
- The compiler, processor, and/or memory system may interleave the machine-level effects of the two statements. For example on a 32-bit machine, the high-order word of b may be written first, followed by the write to a, followed by the write to the low-order word of b.
- The compiler, processor, and/or memory system may cause the memory cells representing the variables not to be updated until sometime after (if ever) a subsequent check is called, but instead to maintain the corresponding values (for example in CPU registers) in such a way that the code still has the intended effect.

JMM 提供了一些机制包括：
The rules address three intertwined issues:

- Atomicity
  Which instructions must have indivisible effects. For purposes of the model, these rules need to be stated only for simple reads and writes of memory cells representing fields - instance and static variables, also including array elements, but not including local variables inside methods.
- Visibility
  Under what conditions the effects of one thread are visible to another. The effects of interest here are writes to fields, as seen via reads of those fields.
- Ordering
  Under what conditions the effects of operations can appear out of order to any given thread. The main ordering issues surround reads and writes associated with sequences of assignment statements.

more to see [this](http://gee.cs.oswego.edu/dl/cpj/jmm.html)

#### JSR 133 (Java Memory Model) [FAQ](http://www.cs.umd.edu/~pugh/java/memoryModel/jsr-133-faq.html)

Java includes several language constructs, including **volatile, final, and synchronized**, which are intended to help the programmer describe a program's concurrency requirements to the **compiler**. The Java Memory Model defines the behavior of volatile and synchronized, and, more importantly, ensures that a correctly synchronized Java program runs correctly on all processor architectures.  
- What is the Java volatile keyword?

Essentially, volatile is used to indicate that a variable's value will be modified by different threads.

Declaring a volatile Java variable means:

The value of this variable will never be cached thread-locally: all reads and writes will go straight to "main memory";
Access to the variable acts as though it is enclosed in a synchronized block, synchronized on itself.

-  Why can an Object member variable not be both final and volatile in Java

   volatile only has relevance to modifications of the variable itself, not the object it refers to. It makes no sense to have a final volatile field because final fields cannot be modified. Just declare the field final and it should be fine.


- the goal of JSR 133 was to create a set of formal semantics that provides an intuitive framework for how volatile, synchronized, and final work.

- reordering is for optimization, contain in compiler and processor


### JMM如何保证对象初始化时线程安全的？
fuck

### what is double-checked locking, and why it called anti pattern?
In software engineering, double-checked locking (also known as "double-checked locking optimization"[1]) is a software design pattern used to reduce the overhead of acquiring a lock by first testing the locking criterion (the "lock hint") without actually acquiring the lock. Only if the locking criterion check indicates that locking is required does the actual locking logic proceed.  [show in wikipedia](https://en.wikipedia.org/wiki/Double-checked_locking)

Unfortunately, that code just does not work in the presence of either optimizing compilers or shared memory multiprocessors.

anti-pattern:
- A commonly used process, structure or pattern of action that despite initially appearing to be an appropriate and effective response to a problem, typically has more bad consequences than good ones
- Another solution exists that is documented, repeatable and proven to be effective.

double-checked不能解决线程安全问题，而且存在更优的解法：
```java
// Works with acquire/release semantics for volatile
// Broken under current semantics for volatile
  class Foo {
        private volatile Helper helper = null;
        public Helper getHelper() {
            if (helper == null) {
                synchronized(this) {
                    if (helper == null)
                        helper = new Helper();
                }
            }
            return helper;
        }
    }
```

see [more](http://www.cs.umd.edu/~pugh/java/memoryModel/DoubleCheckedLocking.html)

