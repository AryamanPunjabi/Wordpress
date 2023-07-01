<h1>WordPress Site Script</h1>

<h3><p><i><b>This command-line script allows you to manage WordPress sites using Docker-compose. You can create, start/stop, and delete WordPress sites. It utilizes a LEMP stack running inside Docker containers.</b></i></p></h3>


<h1>Prerequisites:</h1>
 <h3>1. Docker <br>
 2. Docker-compose</h3>
<h2>Create a new file named myfile.yml</h2>
<b><h3>vi myfie.yml</h3></b>
<h2>Create the necessary directories for persistent data. In the same directory</h2>
<b><h3>mkdir -p mysql nginx web Wordpress<h3></b>

<h2>Now run the docker-compose file,providing name as command-line argument</h2>
<b><h3>SITE_NAME=example.com docker-compose -f myfile.yml up -d </h3></b>

![image](https://github.com/ARYAMANPUNJABI/Wordpress/assets/76035847/988a9a67-855e-4911-8363-545f20eabc63)

<h2>After running docker-compose file check containers is running or not by using command</h2>

<b><h3>docker ps -a</h3></b>

<h2>To prompt user to open example.com create bash filename as</h2><h3>vi Lemp.sh</h3>
<h2>Now run Lemp.sh script by using command </h2>
<h3>./lemp.sh start example.com</h3>

![image](https://github.com/ARYAMANPUNJABI/Wordpress/assets/76035847/5c5cf614-4cfc-4dc5-8c11-84ab72da67b7)


<h2>To stop Website use command</h2>
<h3>./lemp.sh stop example.com</h3>

![image](https://github.com/ARYAMANPUNJABI/Wordpress/assets/76035847/87f5b163-6ea3-4f66-b872-0cc0422e9062)

<h2>To delete Website use command</h2>
<h3>./lemp.sh delete example.com</h3>

![image](https://github.com/ARYAMANPUNJABI/Wordpress/assets/76035847/77f5fc31-824c-4fa8-a551-cac75ec78b4e)



