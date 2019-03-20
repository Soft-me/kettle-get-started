# kettle-get-started
Kettle 使用突破性的元数据驱动方法，提供强大的提取、转换和加载(ETL)功能。

## 概述
什么是 ETL 呢，维基百科概括的很好：

>ETL
>ETL，是英文Extract-Transform-Load的缩写，用来描述将数据从来源端经过萃取（extract）、转置（transform）、加载（load）至目的端的过程。
>ETL一词较常用在数据仓库，但其对象并不限于数据仓库。

>ETL与ELT
>ETL所描述的过程，一般常见的作法包含ETL或是ELT（Extract-Load-Transform），并且混合使用。
>通常愈大量的数据、复杂的转换逻辑、目的端为较强运算能力的数据库，愈偏向使用ELT，以便运用目的端数据库的平行处理能力。

>工具
>ETL（or ELT）的流程可以用任何的编程语言去开发完成，由于ETL是极为复杂的过程，而手写程序不易管理，有愈来愈多的企业采用工具协助ETL的开发，
>并运用其内置的metadata功能来存储来源与目的的对应（mapping）以及转换规则。
>工具可以提供较强大的连接功能（connectivity）来连接来源及目的端，开发人员不用去熟悉各种相异的平台及数据的结构，亦能进行开发。
>当然，为了这些好处，付出的代价便是金钱。

通俗的说，Kettle 是一个很方便的开源数据库迁移工具。

想象一个场景，你的公司的项目需要重构，面对庞大的数据库，我们需要用自己熟悉的编程语言去开发 ETL 功能，
从而达到将旧的数据迁移到结构完全不一样的数据库，例如可能要将旧表拆分成两个关联表或是需要新增一个关联字段，
这时候如果自己去编写程序，除了容易出错，代码的管理和维护也是很费时的，这时候就需要一个解放生产力的工具了，那就是 Kettle。

Kettle 从最早2007年开始，一直维护到现在，每周有1000的下载量，算是很流行的工具了。
虽说解放生产力，但前期也还是要投入一些学习成本，本教程希望通过分享我在工作中学到的经验和技巧，让大家少走弯路，减少成本，加快投入成产~

# Getting Started
* [什么是 Kettle 及如何安装](https://blog.csdn.net/qq_41599820/article/details/88536614)
* [准备数据库](https://blog.csdn.net/qq_41599820/article/details/88668011)
* [实战 Kettle 第一讲](https://blog.csdn.net/qq_41599820/article/details/88683015)
* [实战 Kettle 第二讲](https://blog.csdn.net/qq_41599820/article/details/88685263)
* [实战 Kettle 第三讲](https://blog.csdn.net/qq_41599820/article/details/88690772)
* [收尾](https://blog.csdn.net/qq_41599820/article/details/88691406)

## 作者

**Wayne Jiang** - [CSDN博客 金华松软的我](https://blog.csdn.net/qq_41599820)

## 捐献

如果你觉得教程对你有用，可以支付宝鼓励鼓励我哈哈哈哈哈

<a href="https://github.com/debugjoker">  
    <img src="http://n.sinaimg.cn/front/320/w560h560/20190104/NUZz-hqzxptp5276515.gif" width="200px">
</a>
<a href="https://github.com/debugjoker">  
    <img src="https://github.com/Soft-me/kettle-get-started/blob/master/0190320163922.png" width="200px">
</a>
