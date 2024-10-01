FROM pytorch/pytorch:1.10.0-cuda11.3-cudnn8-devel

WORKDIR /

RUN  pip install timm==0.5.4

COPY /pretrain/requirements.txt /
RUN pip install --no-cache-dir -r  requirements.txt

CMD ["bash"]
