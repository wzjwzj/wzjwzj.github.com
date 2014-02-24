---
layout: post
title: git workflow
tags: git
category: GIT
toc: true
---

## GIT workflow
![alt My Git Workflow](/images/figures/git-transport.png)
<!--end_excerpt-->

[TOC]

## GIT 基本命令
 
> to be continued ......

## GIT命令详解【转】[^1]

Git 是一个很强大的分布式版本管理工具，它不但适用于管理大型开源软件的源代码（如：[linux kernel](http://git.kernel.org/)），管理私人的文档和源代码也有很多优势（如：[wsi-lgame-pro](http://code.google.com/p/wsi-lgame-pro/)）

**一、 Git 命令初识**

在正式介绍Git命令之前，先介绍一下Git的基本命令和操作，对Git命令有一个总体的认识

示例：从Git 版本库的初始化，通常有两种方式：

1）`git clone`：这是一种较为简单的初始化方式，当你已有一个远程的Git版本库，只需在本地克隆一份,

例如：`git  clone  git://github.com/someone/some_project.git  some_project` 

上面的命令就是将`git://github.com/someone/some_project.git`这个URL地址的远程版本库，完全克隆到本地some_project目录下

2）`git init` 和 `git remote`：这种方式稍微复杂一些，当你本地创建了一个工作目录，你可以进入这个目录，使用`git init`命令进行初始化；Git以后就会对该目录下的文件进行版本控制，这时候如果你需要将它放到远程服务器上，可以在远程服务器上创建一个目录，并把可访问的URL记录下来，此时你就可以利用`git remote add`命令来增加一个远程服务器端，

例如：`git  remote  add  origin git://github.com/someone/another_project.git`

上面的命令就会增加 URL 地址为`git://github.com/someone/another_project.git`，名称为 origin 的远程服务器，以后提交代码的时候只需要使用origin别名即可


**二、 Git 常用命令**

**1) 远程仓库相关命令**

克隆远程仓库：`$ git clone git://github.com/jquery/jquery.git`

查看远程仓库：`$ git remote -v`

添加远程仓库：`$ git remote add [name] [url]`

删除远程仓库：`$ git remote rm [name]`

修改远程仓库：`$ git remote set-url --push [name] [newUrl]`

拉取远程仓库：`$ git pull [remoteName] [localBranchName]`

推送远程仓库：`$ git push [remoteName] [localBranchName]`


如果想把本地的某个分支test提交到远程仓库，并作为远程仓库的master分支，或者作为另外一个名叫test的分支，如下:

`$ git push origin test:master`  #提交本地test分支作为远程的master分支

`$ git push origin test:test`     #提交本地test分支作为远程的test分支

**2）分支(branch)操作相关命令**

查看本地分支：`$ git branch`

查看远程分支：`$ git branch -r`

创建本地分支：`$ git branch [name]` # 注意新分支创建后不会自动切换为当前分支

切换分支：    `$ git checkout [name]`

创建新分支并立即切换到新分支：`$ git checkout -b [name]`

删除分支：`$ git branch -d [name]` # -d选项只能删除已经参与了合并的分支，对于未有合并的分支是无法删除的。如果想强制删除一个分支，可以使用-D选项

合并分支：`$ git merge [name]` # 将名称为[name]的分支与当前分支合并

创建远程分支(本地分支push到远程)：`$ git push origin [name]`

删除远程分支：`$ git push origin :heads/[name]` 或 `$ gitpush origin :[name]` 

*创建空的分支：(执行命令之前记得先提交你当前分支的修改，否则会被强制删干净没得后悔)*

`$ git symbolic-ref HEAD refs/heads/[name]`

`$ rm .git/index`

`$ git clean -fdx`

**3）版本(tag)操作相关命令**

查看版本：`$ git tag`

创建版本：`$ git tag [name]`

删除版本：`$ git tag -d [name]`

查看远程版本：`$ git tag -r`

创建远程版本(本地版本push到远程)：`$ git push origin [name]`

删除远程版本：`$ git push origin :refs/tags/[name]`

合并远程仓库的tag到本地：`$ git pull origin --tags`

上传本地tag到远程仓库：`$ git push origin --tags`

创建带注释的tag：`$ git tag -a [name] -m 'yourMessage'`

**4) 子模块(submodule)相关操作命令**

添加子模块：`$ git submodule add [url] [path]`

如：`$git submodule add git://github.com/soberh/ui-libs.git src/main/webapp/ui-libs`

初始化子模块：`$ git submodule init`  # 只在首次检出仓库时运行一次就行

更新子模块：`$ git submodule update` # 每次更新或切换分支后都需要运行一下

删除子模块：（分4步走哦）

1) `$ git rm --cached [path]`

2) 编辑“.gitmodules”文件，将子模块的相关配置节点删除掉

3) 编辑“ .git/config”文件，将子模块的相关配置节点删除掉

4) 手动删除子模块残留的目录

**5）忽略一些文件、文件夹不提交**

在仓库根目录下创建名称为“.gitignore”的文件，写入不需要的文件夹名或文件，每个元素占一行即可，如

target

bin

\*.db


**三、 Git 命令详解**

现在我们有了本地和远程的版本库，让我们来试着用用Git的基本命令：

**git pull：**从其他的版本库（既可以是远程的也可以是本地的）将代码更新到本地，
例如：`git pull origin master`就是将origin这个版本库的代码更新到本地的master主枝，该功能类似于SVN的**update**

**git
add：**是将当前更改或者新增的文件加入到Git的索引中，加入到Git的索引中就表示记入了版本历史中，这也是提交之前所需要执行的一步，
例如`git add app/model/user.rb`就会增加app/model/user.rb文件到Git的索引中，该功能类似于SVN的**add**

**git rm：**从当前的工作空间中和索引中删除文件，例如`git rm app/model/user.rb`，该功能类似于SVN的**rm、del**

**git commit：**提交当前工作空间的修改内容，类似于SVN的commit命令，

**git push：**将本地commit的代码更新到远程版本库中，例如`git push origin`就会将本地的代码更新到名为orgin的远程版本库中

**git log：**查看历史日志，该功能类似于SVN的**log**

**git revert：**还原一个版本的修改，必须提供一个具体的Git版本号，
例如`git revert bbaf6fb5060b4875b18ff9ff637ce118256d6f20`，Git的版本号都是生成的一个哈希值

上面的命令几乎都是每个版本控制工具所公有的，下面就开始尝试一下Git独有的一些命令：

**git branch：**对分支的增、删、查等操作，
例如
`git branch new_branch`会从当前的工作版本创建一个叫做new_branch的新分支，
`git branch -D new_branch`就会强制删除叫做new_branch的分支，
`git branch`就会列出本地所有的分支

**git checkout：**Git的checkout有两个作用，其一是在不同的branch之间进行切换，
例如`git checkout new_branch`就会切换到new_branch的分支上去；
另一个功能是还原代码的作用，
例如`git checkout app/model/user.rb`就会将user.rb文件从上一个已提交的版本中更新回来，未提交的内容全部会回滚****

**git rebase：**用下面两幅图解释会比较清楚一些，rebase命令执行后，实际上是将分支点从C移到了G，这样分支也就具有了从C到G的功能

<figure class="one">
        <img src="/images/figures/1335955913_5248.png">
        <figcaption>fig.1</figcaption>
</figure>



**git reset：**将当前的工作目录完全回滚到指定的版本号，假设如下图，我们有A-G五次提交的版本，

其中C的版本号是 bbaf6fb5060b4875b18ff9ff637ce118256d6f20，

我们执行了'git reset bbaf6fb5060b4875b18ff9ff637ce118256d6f20'那么结果就只剩下了A-C三个提交的版本

<figure class="one">
        <img src="/images/figures/1335955922_4934.png">
        <figcaption>fig.2</figcaption>
</figure>

**git stash：**将当前未提交的工作存入Git工作栈中，时机成熟的时候再应用回来，这里暂时提一下这个命令的用法，后面在技巧篇会重点讲解

**git config：**利用这个命令可以新增、更改Git的各种设置，
例如'git config branch.master.remote origin'就将master的远程版本库设置为别名叫做origin版本库，
后面在技巧篇会利用这个命令个性化设置你的Git，为你打造独一无二的 Git

**git tag：**可以将某个具体的版本打上一个标签，这样你就不需要记忆复杂的版本号哈希值了，
例如你可以使用'git tag revert_version bbaf6fb5060b4875b18ff9ff637ce118256d6f20'来标记这个被你还原的版本，
那么以后你想查看该版本时，就可以使用revert_version标签名，而不是哈希值了

Git 之所以能够提供方便的本地分支等特性，是与它的文件存储机制有关的。
Git存储版本控制信息时使用它自己定义的一套文件系统存储机制，在代码根目录下有一个.git文件夹，会有如下这样的目录结构：

<figure class="one">
        <img src="/images/figures/1335955931_2964.png">
        <figcaption>fig.3</figcaption>
</figure>

有几个比较重要的文件和目录需要解释一下：

HEAD文件存放根节点的信息，其实目录结构就表示一个树型结构，Git采用这种树形结构来存储版本信息，那么HEAD就表示根；

refs目录存储了你在当前版本控制目录下的各种不同引用（引用指的是你本地和远程所用到的各个树分支的信息），
它有heads、remotes、stash、tags四个子目录，分别存储对不同的根、远程版本库、Git栈和标签的四种引用，
你可以通过命令`git show-ref`更清晰地查看引用信息；

logs目录根据不同的引用存储了日志信息。因此，Git只需要代码根目录下的这一个.git目录就可以记录完整的版本控制信息，而不是像SVN那样根目录和子目录下都有.svn目录。那么下面就来看一下Git与SVN的区别吧

**四、 Git 与SVN 比较**

**SVN**（Subversion）是当前使用最多的版本控制工具。与它相比较，**Git **最大的优势在于两点：易于本地增加分支和分布式的特性。

下面两幅图可以形象的展示Git与SVN的不同之处：


<figure class="one">
        <img src="/images/figures/1335955948_6239.png">
        <figcaption>fig.4</figcaption>
</figure>
<figure class="one">
        <img src="/images/figures/1335955958_4495.png">
        <figcaption>fig.5</figcaption>
</figure>


1）本地增加分支

图中Git本地和服务器端结构都很灵活，所有版本都存储在一个目录中，你只需要进行分支的切换即可达到在某个分支工作的效果

而SVN则完全不同，如果你需要在本地试验一些自己的代码，只能本地维护多个不同的拷贝，每个拷贝对应一个SVN服务器地址


举一个实际的例子：

使用SVN作为版本控制工具，当正在试图增强一个模块，工作做到一半，由于会改变原模块的行为导致代码服务器上许多测试的失败，所以并没有提交代码。

这时候假如现在有一个很紧急的Bug需要处理，
必须在两个小时内完成。我只好将本地的所有修改diff，并输出成为一个patch文件，然后回滚有关当前任务的所有代码，再开始修改Bug的任务，等到修改好后，在将patch应用回来。前前后后要完成多个繁琐的步骤，这还不计中间代码发生冲突所要进行的工作量。

可是如果使用Git，
我们只需要开一个分支或者转回到主分支上，就可以随时开始Bug修改的任务，完成之后，只要切换到原来的分支就可以优雅的继续以前的任务。只要你愿意，每一个新的任务都可以开一个分支，完成后，再将它合并到主分支上，轻松而优雅。


2）分布式提交

Git 可以本地提交代码，所以在上面的图中，Git有利于将一个大任务分解，进行本地的多次提交

而SVN只能在本地进行大量的一次性更改，导致将来合并到主干上造成巨大的风险


3）日志查看

Git 的代码日志是在本地的，可以随时查看

SVN的日志在服务器上的，每次查看日志需要先从服务器上下载下来

例如：代码服务器在美国，当每次查看几年前所做的工作时，日志下载可能需要十分钟，这不能不说是一个痛苦。
但是如果迁移到Git上，利用Git日志在本地的特性，查看某个具体任务的所有代码历史，每次只需要几秒钟，大大方便了工作，提高了效率。

当然分布式并不是说用了Git就不需要一个代码中心服务器，如果你工作在一个团队里，还是需要一个服务器来保存所有的代码的。

 
**五、 总结**

上面简单介绍了Git
的基本概念、一些常用命令和原理，大家也可以尝试动手，在Google Code 或
GitHub 上创建一个自己的开源项目


Git 创建与使用示例：

在Google Code 上，我创建了Git
项目：[linux-kernel-source](http://code.google.com/p/linux-kernel-source/source/checkout)

在GitHub上，我引用的Git
项目：[hiphop-php](https://github.com/facebook/hiphop-php)

在osChina上，我分享的项目：[gcc-4.5.2](http://www.oschina.net/code/explore/gcc-4.5.2)


**参考推荐：**

[Git 命令参数及用法详解](http://hi.baidu.com/sunboy_2050/blog/item/b7ec1432be8d9c82a8018eff.html)

[Git 版本管理工具](http://blog.csdn.net/sunboy_2050/article/details/7527877)

[SVN常用命令](http://blog.csdn.net/sunboy_2050/article/details/6187464)

[SVN和Git的比较](http://scmbob.org/git_and_svn.html)


## Git 常用命令速查表【转】[^2]
 
>略......

## GIT 远程分支【转】[^3]

有时`git clone`下来会出现很多`branch`，更麻烦的是如果主分支没代码那你就只能看到`.git`目录了。如下面的这个:

`$ git clone git://gitorious.org/android-eeepc/mesa.git`

>发现本地就只有一个`.git`目录，那么这个时候就需要`checkout`了。   
>进入你的本地目录，如这个是`mesa`，利用    

`$ git branch –r`

>查看`branch`信息（当然你也可以用`git show-branch`查看，不过有时并不好用），获得如下`branch`信息：

>origin/android    
>origin/mesa-es    
>origin/mesa-es-dri    

>此时我们需要的是`android`分支的代码，那么此时就要进行`checkout`了。

`$ git checkout origin/android`

>你再看你的目录`mesa`下是不是有了代码了？其它的`branch`同理。

`git clone`默认会把远程仓库整个给`clone`下来    
但只会在本地默认创建一个`master`分支    
如果远程还有其他的分支，此时用`git branch -a`查看所有分支：   

>`$ git branch -a`   
>`* master`  
>`remotes/origin/HEAD -> origin/master`     
>`remotes/origin/master`    
>`remotes/origin/python_mail.skin`    
>`remotes/origin/udisk`    
>`remotes/origin/vip`    

能看到远程的所有的分支，如`remotes/origin/python_mail.skin`   

**可以使用`checkout`命令来把远程分支取到本地，并自动建立`tracking`**   

`$ git checkout -b python_mail.skin origin/python_mail.skin`  
`Branch python_mail.skin set up to track remote branch python_mail.skin from origin.`   
`Switched to a new branch 'python_mail.skin'`   

**或者使用`-t`参数，它默认会在本地建立一个和远程分支名字一样的分支**

`$ git checkout -t origin/python_mail.skin`

也可以使用`fetch`来做：

`$ git fetch origin python_mail.skin:python_mail.skin`

不过通过`fetch`命令来建立的本地分支不是一个`track branch`，而且成功后不会自动切换到该分支上
注意：不要在本地采用如下方法：

>`$ git branch python_mail.skin`   
>`$ git checkout python_mail.skin`   
>`$ git pull origin python_mail.skin:python_mail.skin`   

因为，这样建立的`branch`是以`master`为基础建立的，再`pull`下来的话，会和`master`的内容进行合并，有可能会发生冲突

## Git学习笔记04\-\-git checkout【转】[^4]

摘自《Git权威指南》

 

检出命令git
checkout是git最常用的命令之一，同时也是一个很危险的命令，因为这条命令会重写工作区。检出命令的用法如下：

用法一：git checkout [-q] [&lt;commit&gt;] [\-\-] &lt;paths&gt;...

用法二：git checkout [&lt;branch&gt;]

用法三：git checkout [-m] [[-b]\-\-orphan] &lt;new\_branch&gt;] [&lt;start_point&gt;]

上面列出的第一种用法和第二种用法的区别在于，第一种用法在命令中包含路径&lt;paths&gt;。为了避免路径和引用（或者提交ID）同名而发生冲突，可以在&lt;paths&gt;前用两个连续的短线（短号）作为分隔。

第一种用法的&lt;commit&gt;是可选项，如果省略则相当于从暂存区（index）进行检出。这和上一章的重置命令大不相同：重置的默认值是HEAD，而检出的默认值是暂存区。因此重置一般用于重置暂存区（除非使用\-\-hard参数，否则不会重置工作区），而检出命令主要是覆盖工作区（如果&lt;commit&gt;不省略，也会替换暂存区中相应的文件）。

第一种用法（包含了路径&lt;paths&gt;的用法）不会改变HEAD头指针，主要是用于指定版本的文件覆盖工作区中对应的文件。如果省略&lt;commit&gt;，则会用暂存区的文件覆盖工作区的文件，否则用指定提交中的文件覆盖暂存区中和工作区中对应的文件。

第二种用法（不使用路径&lt;paths&gt;的用法）则会改变HEAD头指针。之所以后面的参数会写作&lt;branch&gt;，是因为只有HEAD切换到一个分支才可以对提交进行跟踪，否则仍然会进入“分离头指针”的状态。在“分离头指针”状态下的提交不能被引用关联到，从而可能丢失。所以用法二最主要的作用就是切换到分支。如果省略&lt;branch&gt;则相当于对工作区进行状态检查。

第三种用法主要是创建和切换到新的分支（&lt;new\_branch&gt;），新的分支从&lt;start\_point&gt;指定的提交开始创建。新分支和我们熟悉的master分支没有什么实质的不同，都是在refs/heads命名空间下的引用。

下图所示的版本库模型图描述了git checkout实际完成的操作。

<figure class="one">
        <img src="/images/figures/201211042021098287.gif">
        <figcaption>&nbsp;</figcaption>
</figure>

下面通过一些示例具体看一下检出命令的不同用法。

    $ git checkout branch

检出branch分支。要完成图中的三个步骤，更新HEAD以指向branch分支，以及用branch 
指向的树更新暂存区和工作区。

    $ git checkout

汇总显示工作区、暂存区与HEAD的差异。

    $ git checkout HEAD

同上

    $ git checkout -- filename

用暂存区中filename文件来覆盖工作区中的filename文件。相当于取消自上次执行git
add filename以来（如果执行过）的本地修改。

    $ git checkout branch -- filename

维持HEAD的指向不变。用branch所指向的提交中filename替换暂存区和工作区中相  
应的文件。注意会将暂存区和工作区中的filename文件直接覆盖。

    $ git checkout -- . 或写作 git checkout .

注意git checkout
命令后的参数为一个点（“.”）。这条命令最危险！会取消所有本地的 
修改（相对于暂存区）。相当于用暂存区的所有文件直接覆盖本地文件，不给用户任何      
确认的机会！

##Git学习笔记03\-\-git reset[^5]

摘自《Git权威指南》

Git reset 是Git最常用的命令之一，也是最危险最容易误用的命令。

用法一：git reset [-q] [&lt;commit&gt;] [\-\-] &lt;paths&gt;...

用法二：git reset [\-\-soft \-\-mixed | \-\-hard | \-\-merge | \-\-keep] [-q]
[&lt;commit&gt;]

以上两种用法，&lt;commit&gt;都是可选项，可以使用下引用或提交ID，如果省略则相当于使用了HEAD的指向作为提交ID。

上面的两种用法的区别在于，第一种在命令中包含路径&lt;paths&gt;。为了避免路径和引用（或者提交ID）同名而发生冲突，可以在&lt;paths&gt;前用两个连续的短线（减号）作为做分隔。

第一种用法（包含了路径&lt;paths&gt;的用法）不会重置引用，更不会改变工作区，而是用指定提交状态(&lt;commit&gt;)下的文件(&lt;paths&gt;)替换掉暂存区中的文件。例如命令git
reset HEAD &lt;paths&gt;相当于取消之前执行的git add &lt;paths&gt;命令时改变的暂存区。

第二种用法（不使用路径&lt;paths&gt;的用法）则会重置引用。根据不同的选项，可以对暂存区或工作区进行重置。参照下面的版本库模型图，来看一看不同的参数对第二种重置语法的影响。


<figure class="one">
        <img src="/images/figures/201211042015584140.gif">
        <figcaption>&nbsp;</figcaption>
</figure>


命令格式：git reset [\-\-soft | \-\-mixed | \-\-hard] [&lt;commit&gt;]

1）使用参数\-\-hard，如git reset \-\-hard &lt;commit&gt;

会执行上图中的全部动作①、②、③，即：

①替换引用的指向。引用指向新的提交ID。

②替换暂存区。替换后，暂存区的内容和引用指向的目录树一致。

③替换工作区。替换后，工作区的内容变得和暂存区一致，也和HEAD所指向的目录树内容相同。

2）使用参数\-\-soft，如 git reset \-\-soft &lt;commit&gt;

会执行上图中的操作①。即只更改引用的指向，不改变暂存区和工作区。

3）使用参数\-\-mixed或者不使用参数（默认为\-\-mixed），如 git reset &lt;commit&gt;

会执行上图中的操作①和②。即更改引用的指向及重置暂存区，但是不改变工作区。


下面通过一些示例，看一下重置命令的不同用法。

    $ git reset

仅用HEAD指向的目录树重置暂存区，工作区不会受到影响，相当于将之前用 `git add` 命令更新到暂存区的内容撤出暂存区。
引用也未改变，因为引用重置到HEAD相当于没有重置。

    $ git reset HEAD

同上

    $ git reset -- filename

仅将文件filename 的改动撤出暂存区，暂存区中其他文件不改变。相当于命令git
add filename 的反射操作。

    $ git reset HEAD filename

同上。

    $ git reset --soft HEAD^

工作区和暂存区不改变，但是引用向前回退一次。当对最新的提交说明或者提交的更改不满意时，撤销最新的提交以便重新提交。

之前提到过修补提交命令`git commit --amend`，用于对最新的提交进行重新提交以修补错误的提交说明或者错误的提交文件。修补提交命令实际上相当于执行了下面两条命令。（注：文件.git/COMMIT\_EDITMSG保存了上次的提交日志）

    $ git reset --soft HEAD^
    $ git commit -e -F .git/COMMIT_EDITMSG



<br/>

    $ git reset HEAD^

工作不改变，但是暂存区会回退到上一次提交之前，引用也会回退一次。

    $ git reset --mixed HEAD^

同上

    $ git reset --hard HEAD^

彻底撤销最近的提交。引用回退到前一次，而且工作区和暂存区都会回退到上一次提交的状态。自上一次以来的提交全部丢失。


[^1]:[GIT命令详解](http://blog.csdn.net/ithomer/article/details/7529022)
[^2]:[Git 常用命令速查表](http://blog.csdn.net/ithomer/article/details/7529841)
[^3]:[GIT 远程分支](http://blog.csdn.net/xqs83/article/details/7382074)
[^4]:[Git学习笔记04\-\-git checkout](http://www.cnblogs.com/craftor/archive/2012/11/04/2754147.html)
[^5]:[Git学习笔记03\-\-git reset](http://www.cnblogs.com/craftor/archive/2012/11/04/2754140.html)
