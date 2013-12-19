Stata to R (and vice versa) conversion
======================================

This project aims to provide simple code fragments for everyday data analysis
tasks in Stata and in R. The ultimate goal is to make conversion between the
two software packages easier.

The inspiration for this project is the [Data Analysis Examples](http://www.ats.ucla.edu/stat/dae/)
website made by the Statistical Consulting Group at UCLA. 

Structure and naming conventions
--------------------------------

The tasks are structured in the following four categories:

1. Reading/writing data
2. Data munging (recoding/cleaning)
3. Computing statistical models
4. Presenting results

There is a "standalone" and a "short" example for each task. The standalone
example contains all the necessary commands to run the example (reading 
data, loading addons, etc.). The short example is just the code for the
specific task (the standalone code without preparatory/unrelated steps).

The standalone code can be in the Rmd format. This allows for nicer
explanations of what the code does than comments in the script files.

The file naming follows the scheme:

* adding-vars.{do,md}
* adding-vars-short.do
* adding-vars.{r,Rmd}
* addings-vars-short.r

Data
----

The data on [European Representative Democracies](http://www.erdda.se/index.php/projects/erd/data-archive) that is used in all the
examples is compiled and kindly made available by Staffan Andersson, Torbjörn
Bergman and Svante Ersson. The full citation is:

**Andersson, Staffan; Bergman, Torbjörn & Ersson, Svante (2012). “The European Representative Democracy Data Archive”. Main sponsor: Riksbankens Jubileumsfond (In2007-0149:1-E). Principal investigator: Torbjörn Bergman. [www.erdda.se]**

We have made some preliminary data cleaning steps mainly annotating 
variables with their names from the codebook. The relevant scripts are
in the `data-prep` folder.

Authors
-------

Code was either written by Marco Steenbergen or by Christian Müller.
Christian Müller maintains the git repository.

* [Prof. Dr. Marco Steenbergen](http://www.ipz.uzh.ch/institut/mitarbeitende/staff/marcosteenbergen.html)
* [Christian Müller](http://www.ipz.uzh.ch/institut/mitarbeitende/staff/christianmueller.html)

Similar projects
----------------

* [Data Analysis Examples](http://www.ats.ucla.edu/stat/dae/) by the Statistical Consulting Group at UCLA
* to be extended

Licensing
---------

The data files are copyright (c) 2012-2013 by Staffan Andersson, Torbjörn
Bergman and Svante Ersson. They may only be redistributed under the terms
specified at [erdda.se](http://www.erdda.se/index.php/projects/erd/data-archive).


All code that is written for this project is licensed under the CC-BY 
licence:

<p>
  <a rel="license" href="http://creativecommons.org/licenses/by/3.0/deed.en_GB"><img alt="Creative Commons Licence" style="border-width:0" src="http://i.creativecommons.org/l/by/3.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/Text" property="dct:title" rel="dct:type">stata2r</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://www.ipz.uzh.ch/mp.html" property="cc:attributionName" rel="cc:attributionURL">Marco Steenbergen and Christian Müller </a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/deed.en_GB">Creative Commons Attribution 3.0 Unported License</a>.
</p>
