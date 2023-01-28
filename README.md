# Database1-Project

<h2 id="table-of-contents"> :book: Table of Contents</h2>
<details open="open">
  <summary>Table of Contents</summary>
  <ul>
    <li><a href="#about-the-project"> ➤ About The Project</a></li>
    <li><a href="#project-files-description"> ➤ Project Files Description</a></li>
    <li><a href="#getting-started"> ➤ Getting Started</a></li>
    <li><a href="#final-results"> ➤ Final Results</a></li>
  </ul>
</details>
    
![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/water.png)


<h2 id="about-the-project"> :pencil: About The Project</h2>

<p align="justify"> The project is a simple bank database which has 2 parts: In the first part you are asked to create a view that checks all the National Ids in the database and specifies whether it is valid or invalid. In the second part the information of one transaction in the bank is given to you and you have to find the first source and the last destination of the amount of transferred money in the given transaction, among all of the transactions in the bank database. you can find out the details in <a href="https://github.com/golnoushnb/Database1-Project/blob/main/DB1PROJIUT2022.pdf">DB1PROJIUT2022.pdf.</a></p>
    
![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/water.png)


<h2 id="project-files-description"> :floppy_disk: Project Files Description</h2>

<ul>
  <li><b>DB1PROJIUT2022.pdf</b> - Project's details.</li>
  <li><b>Bank-DDL.sql</b> - Where all insertions and table creations reside.</li>
  <li><b>Bank-Q1.sql</b> - Related to the first part of the project which is a view that examines the validity of National Id.</li>
  <li><b>Bank-Q2.sql</b> - Related to the second part of the project which finds the first source and the last destination of the given amount of money.</li>
  <li><b>Bank-UI-Q1.py</b> - A simple customized table for the first part of the project.</li>
  <li><b>Bank-UI-Q2.py</b> - A simple customized table for the second part of the project.</li>
</ul>
    
![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/water.png)


<h2 id="getting-started"> 🏁 Getting Started</h2>
<ol>
  <li><b> Running SQL files</b> </li>
    <ul> 
       <li>Run <a href="https://github.com/golnoushnb/Database1-Project/blob/main/Bank-DDL.sql">Bank-DDL.sql</a> to create all the tables and add related data to the database.</li>
       <li>Run <a href="https://github.com/golnoushnb/Database1-Project/blob/main/Bank-Q1.sql">Bank-Q1.sql</a> to create the view.</li>
       <li>Run <a href="https://github.com/golnoushnb/Database1-Project/blob/main/Bank-Q2.sql">Bank-Q2.sql</a> to create 2 included recursive funcitons.</li>
    </ul>
  <li><b> Running python files </b></li>
     <ul>
       <li>To execute these files you first need to install matplotlib library, to do so enter the below command in your terminal:
         <pre><code>$python -m pip install -U matplotlib</code></pre>
       </li>
       <li>Next you need to install psycopg2 library, to do so enter the below command in your terminal:
         <pre><code>$pip install psycopg2-binary</code></pre>
       </li>
       <li>Now you're ready to run the files and see the customized tables! In order to do that enter the following commands for the first file and the                second file respectively:
           <pre><code>$python Bank-UI-Q1.py</code></pre>
           <pre><code>$python Bank-UI-Q2.py</code></pre>
       </li>
     </ul>
</ol>
    
![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/water.png)
<!-- Final Results -->
<h2 id="final-results"> :framed_picture: Final Results</h2>
<img
  src="https://github.com/golnoushnb/Database1-Project/blob/main/images/Q1.png"
  alt="Alt text"
  title="Q1"
  style="display: inline-block; margin-left: 30px; width: 800px">
  <img
  src="https://github.com/golnoushnb/Database1-Project/blob/main/images/Q2.png"
  alt="Alt text"
  title="Q1"
  style="display: inline-block; margin-left: 30; width: 800px">
  
    
  
         
         
