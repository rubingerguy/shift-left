FROM redis:latest
RUN mkdir -p /DJ_Khaled_anotherone
RUN adduser demo --disabled-password

#USER demo
CMD ["sh"]
