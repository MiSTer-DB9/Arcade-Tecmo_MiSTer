FROM theypsilon/quartus-lite-c5:19.1.docker0
LABEL maintainer="theypsilon@gmail.com"
WORKDIR /project
ADD . /project
RUN /opt/intelFPGA_lite/quartus/bin/quartus_sh --flow compile tecmo.qpf
CMD cat /project/output_files/tecmo.rbf
