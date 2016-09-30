Project1 Essay

Stat159, Fall 2016

Phil Hoon Oh

Abstract
========

------------------------------------------------------------------------

![Stat159 logo](../images/stat159-logo.png)

This essay is about computational tools with regards to reproducible and
collaborative statistical data science: Bash, Markdown, Pandoc, Git
,Github, Make, and a text editor. The roles of these programs in
reproducibility and how they interact with each other will be
discussed.\
In introduction, we will mainly focus on the needs of reproducibility in
statistical data science. The problems caused by non-reproducibility,
and the works that have been made to remove those problems with the help
of these programs.

Discussion session will help readers understand those computational
tools and introduce some examples how to use those programs. How each
tools is defined and when we have to use them to maintain
reproducibility.

Finally, it will conclude that the reproducibility and collaborative
works in data science plays a pivotal role in not only in research
areas, but also in decision making processes on many different subjects
and how it will impact our daily lives. Also, commenting on the given
aspects: What resources I used to get the job done, what were the easy
part, what were the challenging part, what things stuck with, what was
the most consuming part, Did I work with and/or get help from someone
else?, How much time did it take?

Introduction
============

------------------------------------------------------------------------

Many researchers came out with papers along with data sets to support
their claim. Sometimes, however, one cannot sure about how these
supporting data are gained or filtered. In other words, the question of
reproducibility arises - If we apply the same method that researchers
used, to the original data or other data, can we get the same result? If
the answer is Yes, it is now safe to conclude that the paper is based on
firm data sets. If the answer is No, we would better dig deeper what is
going wrong.

Then the next problem is how people reproduce the result. There were
certainly technical difficulties hindering researchers to attain the
reproducibility for many years. However, with the help of many
computational tools, we are now live in the age of reproducibility.

Bash, as a Unix Shell, allows us to easily get access to directories and
files. So, we can manage our file systems more easily. Markdown is a
tool that converts text to HTML(XHTML). Unlike common WYSIWYG tools,
Markdown does not need to write full HTML context. Instead, it uses
simple formats which save tons of time and efforts. Moreover, with the
Pandoc, we can converts HTML to pdf file. Pandoc not only converts files
from markup format into pdf, but also into different file output such as
HTML formats, Word Processor formats, TeX formats and etc. It is one of
the most powerful tools that translates formats into other formats. Git
& Github are VCS(Version Control System)s that manage workflow of the
project and the place where researchers can collaborate. Make GNU
automatically builds output files or executable programs from source
code in Makefile to derive the target output. Text editor is primary
source for markdown and Makefile. Most of the code and the content will
be written on text editor depending on the preference of the users.
There is not much difference using notepad, built in text editors, but
notepad++ is widely used for window users because of its convenience.

Discussion
==========

------------------------------------------------------------------------

Bash is the most popular Unix Shell written by Brian Fox for the GNU
Project as a replacement for the Bourne Shell. It is the default shell
for the Linux and OS X(Mac). People sometimes refers Bash as a synonym
for Unix Shell. The beauty of Bash is programmers can directly access to
file directories and manage them through couple of Command Lines. Often,
for non-programmers those command-lines are hard to read and understand.
Nonetheless, many programmers rely on the Bash because of its simplicity
of command line and utilities. As previously explained, Bash allows us
to work directly with the file system. Interacting with file system is
the basic step to construct the reproducible work. Managing and
separating data files, output files, and even image files is a starting
point to reproduce the work.

Some basic Bash commands are described below:

> -   ls : lists files in working directory\
> -   mv : moves a file / Example : mv file.txt abc : move file.txt to
>     abc directory\
> -   cp : copies a file / Example : cp 1.txt 2.txt : copy 1.txt to
>     2.txt\
> -   rm : removes a file / Example : rm 1.txt : remove 1.txt\
> -   mkdir : make a new directory / Example : mkdir dirname : make a
>     new directory named dirname\
> -   cd : change directory / Example : cd dirname : change directory to
>     dirname directory

Our next tool is Markdown.

![Markdown logo](../images/markdown-logo.png)

As explained earlier in the introduction. Markdown is a tool that
converts text to HTML(XHTML) output. Markdown files are denoted by .md
and most of the time they are written on text editors. The huge
advantage of Markdown is that programmer don’t need to write down the
whole HTML format. It uses a very simple formatting syntax to accomplish
the same thing. Furthermore, users don’t need to learn new feature to
understand and utilize the markdown. Instead, Markdown uses punctuations
and characters to get the desired outputs. For example, if a programmer
wants to create italics with a bold sentence, all he has to do is just
put two-asterisks and under-bar on each ends of the sentence where he
tries to make those changes.

> `**_words in both italics and bold_**` becomes ***words in both
> italics and bold***

And if he wants to make a link for a certain website (here it is google)

> `[google](www.google.com)` becomes [google](www.google.com)

The role of Markdown in reproducibility research is concerned with the
result, namely output file; however, Markdown itself only creates the
HTML format. This is not as powerful as we expected. One might argue
that what if researchers want to create output file in the pdf or other
file formats. Then Markdown becomes meaningless. This is the point when
Pandoc comes out.

It is obvious that Markdown itself does not produce output files in
different formats other than HTML. With the help of Pandoc, this issue
can be easily solved.

![Pandoc Logo](../images/pandoc-logo.png)

Pandoc is one of the most powerful and widely used tools for researchers
and programmers converting one file format into other file formats. In
contrast to Markdown which limited to md and html files, Pandoc can also
convert Markdown to other formats. Those who are familiar with the R
will also know R-markdown. As one can infer from its name, it is based
on the markdown tool, but also it is based on the Pandoc. The main
developer, Yihui Xie, mentioned that there will be no updated version of
Rmarkdown unless there is more powerful program than Pandoc. With Pandoc
and Markdown, researcher can reproduce the output file in various data
formats. Instead of writing different file types each time, just couple
of lines or one click will reproduce the output file they want.

Here are commands that widely used for pandoc to convert md files into
html files and pdf files.

> -   from markdown to html\
>     pandoc -s document.md -o document.html

> -   from markdown to pdf\
>     pandoc document.md --latex-engine=xelatex -o document.pdf\
>     pandoc document.md --latex-engine=pdflatex -o document.pdf

The core tools for reproducibility in statistical data science are Git
and Github. First, let’s take a look at Git.

![Git-logo](../images/git-logo.png)

Git is a VCS(Version Control System) developed by Linus Torvalds and the
most widely used vcs software in the world today. Version Control System
allows users to keep track of the changes to a file or set of files over
time. For examples, suppose a programmer made changes on his source
code. Instead of saving this file as a new version, Git allows us to
take a snapshot of changes and store those changes and identify them as
log numbers. By doing so, Programmer don’t be bothered to save source
file over and over again when he makes new changes to his course code.
If something went wrong, users can restart with the previous versions of
source code. This property makes Git very useful in a reproducibility
process that requires a lots of modifications.

![Github-logo](../images/github-logo.png)

Github provides does exactly the same thing as Git does, but it is based
on the web. Github provides distributed remote repository that
researchers can collaborate or work independently. Unlike centralized
repository, users do not need to communicate with a central server. It
is much more faster and no network access required. Thus, it allows
multiple users to collaborate at the same time.

Here are some basic Git commands

> -   git init : initialize git on a project\
> -   git add : add content to a staging area\
> -   git commit : store a staging area in repository\
> -   git remote add \[alias\]\[url\] : add a git URL as an alias\
> -   git push \[alias\] \[url\] : transmit local branch commits to the
>     remote repository branch

Lastly, Make and text editors. GNU make, commonly known as make, is a
“tool which controls the generation of executables and other non-source
files of a program from the program’s source files.” Make mainly
consists of two objects: target (output file), and dependencies (input
files). It produces target using dependencies. Sometimes target itself
can be dependent files of the other targets. When there are lots of
input files and related output files, Make not only summarize their
relationships, but also produces the results based on the relationships.
Moreover, it automatically figures out what files have to be updated and
does not recompile all of your program. If the output file is up to
date, Make will not execute the command related to that output file. In
terms of reproducibility, such characteristics contributes to saving
times and efforts when recompiling is needed.

The basic syntax of Make is down below

> -   declaring phony target\
>     .PHONY: all -&gt; here .
> -   PHONY means a fake target that programmer wants to execute. (here
>     it is ‘all’)\
>     all: output.html\
> -   from markdown to html\
>     output.html: input.md\
>     pandoc input.md -s -o output.html

Text editors can be used in a various ways in reproducing process. It
does not directly contribute to the reproducibility; however, Makefile
and md.files are written on text editors. Text editors can be chosen
depending on the user’s preference. Notepad in Windows does the exactly
same thing as TextEdit in Mac. Personally, I prefer to use Notepad++,
which gives more utilities than built in text editors.

Conclusions
===========

------------------------------------------------------------------------

"Growth in a Time of Debt" by Reinhart and Rogoff at Harvard has been
one of the most cited stats during the Great Recession and it impacted
the government economic policy as well. It turns out that they
selectively chose the data, used the inappropriate weighting system, and
made coding errors in favor of their results. Guess how these mistakes
are found. Graduate student, Thomas Herndon, at the University of
Massachusetts Amherst tries to reproduce the result in this paper as a
class assignment. No matter how hard he tried, he was not able to
retrieve the same result. Finally, he contacted the Reinhart and Rogoff,
got the spreadsheet they worked on and figured out the errors they had
made.

Potti Scandal, which is the most notorious scandals in clinical medicine
history, not only reveals the researcher might manipulate the data but
also takes away lives of people. Data were fabricated and people
desperately seeking for cure for tumor were easily deceived. Potti
insisted that he was not aware that false or improper information had
been included in the research.

Both of cases put importance on the reproducibility in data analysis and
research. What if other researchers or at statisticians pointed out that
data were modified before commencing clinical trial? Then those who
passed away because of clinical medicine might live today. What if other
professors looked over the paper before Rogoff and Reinhart published
it? Then people would make better decision on economic policies.
Reproducible and collaborative statistical data science is not a just
statistical concept. It is a tool that convinces researchers properly
use the data so that people can benefit from their findings.

Commenting on the given aspects:

-   What resources I used to get the job done?

> <https://en.wikipedia.org/wiki/Bash_(Unix_shell)>\
> <http://kirkstrobeck.github.io/whatismarkdown.com/>\
> <http://pandoc.org/>\
> <https://www.atlassian.com/git/tutorials/what-is-git/>\
> <http://www.howtogeek.com/180167/htg-explains-what-is-github-and-what-do-geeks-use-it-for/>\
> <https://www.gnu.org/software/make/>\
> <https://github.com/unix-tools/tutorial-makefiles>\
> <http://gastonsanchez.com/stat159/lectures/05-crisis1-git-basics/>\
> <http://gastonsanchez.com/stat159/lectures/06-crisis2-github-basics/>

-   What were the easy part?

The easiest part is explaining the relationship among computational
tools and how they interact with each other. It was a process of
explaining to these concepts to myself and the most insteresting part.

-   What were the challenging part?

The most challenging part is get used to markdown syntax. Everytime I
wrote down the markdown syntax, the result did not appear as I expected.
It was the most time consuming part but it helped me a lot to get used
to markdown syntax.

-   What things stuck with?

Working on local directory using git was fun, but synchronizing my local
directory to my github account was a little bit ambiguous to me. The
problem was I had no idea how Github works behind the scenes. This
projects helped me a lot to grasp the concpet of Github.

-   What was the most consuming part?

As I mentioned on the previous question, the markdown syntax was the
most time consuming part because I needed some time to get used to it.

-   Did I work with and/or get help from someone else?

No. I workd on it by myself for the whole time. Maybe a little bit of
help from professor.

-   How much time did it take?

It took approximately 8 hours to complete the essay and get the output
as I wanted.
