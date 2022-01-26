FROM python
WORKDIR /tests_project/
COPY requirements.txt .
RUN pip3 install -r requirements.txt
ENV ENV=dev
CMD python3 -m pytest --alluredir=test_results/  /tests_projects/tests
