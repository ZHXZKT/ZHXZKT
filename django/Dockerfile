# start from an official image
FROM python:3.8

# arbitrary location choice: you can change the directory
RUN mkdir /code
WORKDIR /code

# install our dependencies
# we use --system flag because we don't need an extra virtualenv
COPY Pipfile Pipfile.lock /code/

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
RUN pip install pipenv && pipenv install --system

# copy our project code
COPY . /code
# expose the port 8000
EXPOSE 8000

# define the default command to run when starting the container
CMD ["gunicorn", "-c", "config/gunicorn/conf.py", "--bind", ":8000", "--chdir", "example", "example.wsgi:application"]
