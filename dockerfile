#Pull python image 
FROM tiangolo/meinheld-gunicorn-flask:python3.9



#Add requirements 
COPY ./requirements.txt ./app/requirements.txt

RUN pip install mysqlclient
# switch working directory

#Install requirements.txt
RUN pip install --no-cache-dir --upgrade -r ./app/requirements.txt
RUN pip install greenlet==0.4.17
# copy every content from the local file to the image
COPY . ./app



