## 3.1a. Scientific Visualization for mesh based data with Visit
Amit Chourasia, Senior Visualization Scientist, SDSC

This tutorial will provide a high-level overview of scientific visualization techniques and their applicability for structured mesh-based data (such as rectilinear grids). Attendees will follow along exercises in a hands-on manner to employ different types of techniques using VisIt software and also perform remote visualization on Expanse cluster.


## Setup

* Computer, a mouse with scroll wheel is strongly recommended.

* [Download](https://visit-dav.github.io/visit-website/releases-as-tables/) and install VisIt version 3.1.4 (not the latest). Please do not compile from source unless you are adventurous and ready to troubleshoot for multiple days.

* Test run VisIt application on your laptop to make sure it works. On Mac If asked grant VisIt application permission to accept incoming/outgoing connections when prompted, if not granted VisIt won't be able to perform remote visualization on HPC clusters.   

* [Download: visit_data_files.zip](http://users.sdsc.edu/~amit/scivis-tutorial/visit_data_files.zip) sample data. Unzip this file and move it to your Home directory.

* [Download: visit3.1.x-expanse-host-profile.zip](http://users.sdsc.edu/~amit/scivis-tutorial/visit3.1.x-expanse-host-profile.zip) VisIt host profile for Expanse.
   Unzip it, then move the xml files (not the unzipped folder) to following location. These locations are not created unless VisIt is started once.

   Linux and Mac: ~/.visit/hosts/ 

   Windows: C:/users/username/Documents/visit/hosts/

* Restart visit to the load the newly added host profiles.

## Agenda
The tutorial comprises of four closely related sessions as follows:

* Visualization fundamentals: Lecture - Assay of standard techniques and their utility (45 min)

* Introduction to VisIt software - Perform basic tasks in VisIt (Hands-on, 40mins)

* Perform sophisticated tasks with VisIt (Hands-on, 40 mins)

* Remote visualization with VisIt on Expanse cluster at SDSC (Hands-on, 20 mins, Training accounts will be provided)
