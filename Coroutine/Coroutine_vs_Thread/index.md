---
title: (2条消息) 协程与线程的区别_心向暖的博客-CSDN博客
category: default
tags: 
  - blog.csdn.net
created_at: 2020-11-03 10:18:01
original_url: https://blog.csdn.net/fadbgfnbxb/article/details/88787361
---

# 协程与线程的区别

![](assets/1604369881-426136e8363e68fc321f3d3551b0d579.png)

[心向暖](https://me.csdn.net/fadbgfnbxb) 2019-03-25 10:39:44 ![](assets/1604369881-11d4e66b47a786d7307438a15382d44a.png) 15160 ![](assets/1604369881-50c7c045de1e4400c6f27a33ed55cf7c.png) 收藏  35 

分类专栏： [C++学习](https://blog.csdn.net/fadbgfnbxb/category_8772703.html)

版权

## 概念

　　1、进程

进程是具有一定独立功能的程序关于某个数据集合上的一次运行活动,进程是系统进行资源分配和调度的一个独立单位。每个进程都有自己的独立内存空间，不同进程通过进程间通信来通信。由于进程比较重量，占据独立的内存，所以上下文进程间的切换开销（栈、寄存器、虚拟内存、文件句柄等）比较大，但相对比较稳定安全。

　　2、线程

线程是指进程内的一个执行单元,也是进程内的可调度实体。线程是进程的一个实体,是CPU调度和分派的基本单位,它是比进程更小的能独立运行的基本单位。线程自己基本上不拥有系统资源,只拥有一点在运行中必不可少的资源(如程序计数器,一组寄存器和栈)，但是它可与同属一个进程的其他的线程共享进程所拥有的全部资源。线程间通信主要通过共享内存，上下文切换很快，资源开销较少，但相比进程不够稳定容易丢失数据。

　　3、协程

**协程是一种用户态的轻量级线程，**协程的调度完全由用户控制。从技术的角度来说，“协程就是你可以暂停执行的函数”。协程拥有自己的寄存器上下文和栈。协程调度切换时，将寄存器上下文和栈保存到其他地方，在切回来的时候，恢复先前保存的寄存器上下文和栈，直接操作栈则基本没有内核切换的开销，可以不加锁的访问全局变量，所以上下文的切换非常快。

## 线程与进程的区别:

  
1) 地址空间:线程是进程内的一个执行单元，进程内至少有一个线程，它们共享进程的地址空间，而进程有自己独立的地址空间  
2) 资源拥有:进程是资源分配和拥有的单位,同一个进程内的线程共享进程的资源  
3) 线程是处理器调度的基本单位,但进程不是  
4) 二者均可并发执行

5) 每个独立的线程有一个程序运行的入口、顺序执行序列和程序的出口，但是线程不能够独立执行，必须依存在应用程序中，由应用程序提供多个线程执行控制

## 协程与线程的区别:

1) 一个线程可以多个协程，一个进程也可以单独拥有多个协程。

2) 线程进程都是同步机制，而协程则是异步。

3) 协程能保留上一次调用时的状态，每次过程重入时，就相当于进入上一次调用的状态。

4）线程是抢占式，而协程是非抢占式的，所以需要用户自己释放使用权来切换到其他协程，因此同一时间其实只有一个协程拥有运行权，相当于单线程的能力。

5）协程并不是取代线程, 而且抽象于线程之上, 线程是被分割的CPU资源, 协程是组织好的代码流程, 协程需要线程来承载运行, 线程是协程的资源, 但协程不会直接使用线程, 协程直接利用的是执行器(Interceptor), 执行器可以关联任意线程或线程池, 可以使当前线程, UI线程, 或新建新程.。

6）线程是协程的资源。协程通过Interceptor来间接使用线程这个资源。

---------------------------------------------------


原网址: [访问](https://blog.csdn.net/fadbgfnbxb/article/details/88787361)

创建于: 2020-11-03 10:18:01

目录: default

标签: `blog.csdn.net`

