#Discussion  
***  

Bash is the most popular Unix Shell written by Brian Fox for the GNU Project as a replacement for the Bourne Shell. It is the default shell for the Linux and OS X(Mac). People sometimes refers Bash as a synonym for Unix Shell. The beauty of Bash is programmers can directly access to file directories and manage them through couple of Command Lines. Often, for non-programmers those command-lines are hard to read and understand. Nonetheless, many programmers rely on the Bash because of its simplicity of command line and utilities. As previously explained, Bash allows us to work directly with the file system. Interacting with file system is the basic step to construct the reproducible work. Managing and separating data files, output files, and even image files is a starting point to reproduce the work.  
	
Some basic Bash commands are described below:  

> - ls : lists files in working directory 	
> - mv : moves a file / Example : mv file.txt abc : move file.txt to abc directory  
> - cp : copies a file / Example : cp 1.txt 2.txt : copy 1.txt to 2.txt  
> - rm : removes a file / Example : rm 1.txt : remove 1.txt  
> - mkdir : make a new directory / Example : mkdir dirname : make a new directory named dirname  
> - cd : change directory /	 Example : cd dirname : change directory to dirname directory   

	
Our next tool is Markdown.  

![Markdown logo](../images/markdown-logo.png)  
	
As explained earlier in the introduction. Markdown is a tool that converts text to HTML(XHTML) output. Markdown files are denoted by .md and most of the time they are written on text editors. The huge advantage of Markdown is that programmer don’t need to write down the whole HTML format. It uses a very simple formatting syntax to accomplish the same thing. Furthermore, users don’t need to learn new feature to understand and utilize the markdown. Instead, Markdown uses punctuations and characters to get the desired outputs. For example, if a programmer wants to create italics with a bold sentence, all he has to do is just put two-asterisks and under-bar on each ends of the sentence where he tries to make those changes.  

> `**_words in both italics and bold_**` becomes **_words in both italics and bold_**  
  
And if he wants to make a link for a certain website (here it is google)  

> `[google](www.google.com)` becomes [google](www.google.com)    

The role of Markdown in reproducibility research is concerned with the result, namely output file; however, Markdown itself only creates the HTML format. This is not as powerful as we expected. One might argue that what if researchers want to create output file in the pdf or other file formats. Then Markdown becomes meaningless. This is the point when Pandoc comes out.  

It is obvious that Markdown itself does not produce output files in different formats other than HTML. With the help of Pandoc, this issue can be easily solved. 

![Pandoc Logo](../images/pandoc-logo.png)  

Pandoc is one of the most powerful and widely used tools for researchers and programmers converting one file format into other file formats. In contrast to Markdown which limited to md and html files, Pandoc can also convert Markdown to other formats. Those who are familiar with the R will also know R-markdown. As one can infer from its name, it is based on the markdown tool, but also it is based on the Pandoc. The main developer, Yihui Xie, mentioned that there will be no updated version of Rmarkdown unless there is more powerful program than Pandoc. With Pandoc and Markdown, researcher can reproduce the output file in various data formats. Instead of writing different file types each time, just couple of lines or one click will reproduce the output file they want.  

Here are commands that widely used for pandoc to convert md files into html files and pdf files.  
  
> - from markdown to html  
> pandoc -s document.md -o document.html  

> - from markdown to pdf  
> pandoc document.md --latex-engine=xelatex -o document.pdf  
> pandoc document.md --latex-engine=pdflatex -o document.pdf  

The core tools for reproducibility in statistical data science are Git and Github. First, let’s take a look at Git.   
	
![Git-logo](../images/git-logo.png)  

Git is a VCS(Version Control System) developed by Linus Torvalds and the most widely used vcs software in the world today. Version Control System allows users to keep track of the changes to a file or set of files over time. For examples, suppose a programmer made changes on his source code. Instead of saving this file as a new version, Git allows us to take a snapshot of changes and store those changes and identify them as log numbers. By doing so, Programmer don’t be bothered to save source file over and over again when he makes new changes to his course code. If something went wrong, users can restart with the previous versions of source code. This property makes Git very useful in a reproducibility process that requires a lots of modifications.   

![Github-logo](../images/github-logo.png)  
  
Github provides does exactly the same thing as Git does, but it is based on the web.  Github provides distributed remote repository that researchers can collaborate or work independently. Unlike centralized repository, users do not need to communicate with a central server. It is much more faster and no network access required. Thus, it allows multiple users to collaborate at the same time.  

Here are some basic Git commands 

> - git init : initialize git on a project  
> - git add : add content to a staging area  
> - git commit : store a staging area in repository  
> - git remote add [alias][url] : add a git URL as an alias  
> - git push [alias] [url] : transmit local branch commits to the remote repository branch  

Lastly, Make and text editors. GNU make, commonly known as make, is a “tool which controls the generation of executables and other non-source files of a program from the program’s source files.” Make mainly consists of two objects: target (output file), and dependencies (input files). It produces target using dependencies. Sometimes target itself can be dependent files of the other targets. When there are lots of input files and related output files, Make not only summarize their relationships, but also produces the results based on the relationships. Moreover, it automatically figures out what files have to be updated and does not recompile all of your program. If the output file is up to date, Make will not execute the command related to that output file. In terms of reproducibility, such characteristics contributes to saving times and efforts when recompiling is needed.  

The basic syntax of Make is down below  

> - declaring phony target  
> .PHONY: all -> here .
> * PHONY means a fake target that programmer wants to execute. (here it is ‘all’)  
> all: output.html  
> - from markdown to html  
>	output.html: input.md  
>	pandoc input.md -s -o output.html  

Text editors can be used in a various ways in reproducing process. It does not directly contribute to the reproducibility; however, Makefile and md.files are written on text editors. Text editors can be chosen depending on the user’s preference. Notepad in Windows does the exactly same thing as TextEdit in Mac. Personally, I prefer to use Notepad++, which gives more utilities than built in text editors.  


