#Building a docker image with the latest version of the ubuntu and basic python install


#latest version of ubuntu
FROM ubuntu:latest

#add the bash script
ADD install.sh /

#change rights for the script
RUN chmod u+x /install.sh

#run the bash script
RUN /install.sh

#prepend the new path
ENV PATH /root/miniconda3/bin:$PATH

#execute IPython when the container runs
CMD ["ipython"]
