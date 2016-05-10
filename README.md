## Drupal-R
R[REST API] Code used in drupal.

## Synopsis

R is a free software environment for statistical computing and graphics.
Drupal is content management software.

In this project,we are writing statistical computing code in R programing & use in drupal.


## Installation

Install Drupal 7 & R.

1.  Steps to install Drupal 7

      1.1 Visit drupal.org & download drupal 7

      1.2 Follow instruction written in README.txt file.

2.  Steps to install R.

    2.1 Open terminal or console.

    2.2 Put R[capital letter] and hit enter.

    2.3 if R already install on local machine then > will be shown on your terminal.

    2.4 if not install this will shown on your terminal.
    
      The program 'R' is currently not installed. You can install it by typing:
      sudo apt-get install r-base-core
      use "sudo apt-get install r-base-core" command to install R.

3.  Install package in R [Using Command Line]
    3.1 install.packages("package name")
      3.1.1 Here my package name is plumber so commmand will be install.packages("plumber")
    3.2 while installing package this will also ask to select HTTPS CRAN mirror
      you can select any one you want. after some time package will be installed on your local system.
      this will also create R directory in your local system. you can easily find you package in this 
      directory after 2-3 click.

4.  Download and extract file of this project. you can find two folder are there namely drupal_r &
    R script.

    drupal_r is a custom module of drupal 7. so treat this folder as custom module and place in
    YOUR_DRUPAL_ROOT_DIRECTORY/sites/all/module/custom. after that enable this module.

    R script folder that contain a file named as myfile.R. you can place this folder any where you want to your local system.
      
5.  Run your r script file with port number 8787[you can change this port number].
    5.1 open terminal/console and go to R script directory.
    5.2 R[capital] press ENTER
    5.3 library(plumber)
    5.4 r <- plumb("myfile.R")
    5.5 r$run(port=8787)
      5.5.1 after this if every thing goes right this will running on port number 8787.
      5.5.2 stop running server press Ctrl+c
      5.5.3 exit form R console write q() & press enter this will show three option [y/n/c] if you
      press y what you have done will be save in R console next time you can use it. if press n 
      without saving your working of R console will be close & if you press c you ate not able close
      R console.

    [NOTE]:- If want to use this instance with drupal & browser do not close this running server.

6.  Now we can use url [localhost:8787/mean] on address bar of the browser see the outpt in array because
    R return value in array.

7.  if you think about why we put[/mean] after 8787 because we difine /mean in the myfile.R. you
    can easily implement some other redirect url like /sum, /facto ...etc.

8.  To view in drupal use localhost/DRUPAL-ROOT-DIRECTORY-NAME/drupal_r/form in browser address bar.
    8.1 now you can see a drupal form put value in textfield click on sumit. here you can see
    result and execution of time of drupal[php] return value and R return value on the top of the body. 



