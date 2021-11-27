FROM rstudio/plumber

RUN Rscript -e "install.packages('dplyr')"

COPY exemplo_api.R /

EXPOSE 8000/tcp
CMD ["/exemplo_api.R"]
