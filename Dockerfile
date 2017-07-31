FROM ansibleplaybookbundle/apb-base
MAINTAINER Ansible Playbook Bundle Community

LABEL "com.redhat.apb.version"="0.1.0"
LABEL "com.redhat.apb.spec"=\
"aWQ6IGE4ZTY1MmMxLTExZTAtNDIwMi1iNmRmLTA5NTE3Zjc1ZWY5YQpuYW1lOiByaHNjbC1tYXJp\
YWRiLWFwYgppbWFnZTogYW5zaWJsZXBsYXlib29rYnVuZGxlL3Joc2NsLW1hcmlhZGItYXBiCmRl\
c2NyaXB0aW9uOiBNYXJpYWRiIGFwYiBpbXBsZW1lbnRhdGlvbgpiaW5kYWJsZTogVHJ1ZQphc3lu\
Yzogb3B0aW9uYWwKbWV0YWRhdGE6IAogIGRvY3VtZW50YXRpb25Vcmw6IGh0dHBzOi8vbWFyaWFk\
Yi5jb20va2IvZW4vbWFyaWFkYi9kb2N1bWVudGF0aW9uLwogIGxvbmdEZXNjcmlwdGlvbjogRGVw\
bG95cyBhIGJpbmRhYmxlIG1hcmlhZGIgaW5zdGFuY2UKICBkZXBlbmRlbmNpZXM6IFsncmhzY2wv\
bWFyaWFkYi0xMC1yaGVsNyddCiAgZGlzcGxheU5hbWU6IFJIU0NMIE1hcmlhREIgKEFQQikKICBj\
b25zb2xlLm9wZW5zaGlmdC5pby9pY29uQ2xhc3M6IGljb24tbWFyaWFkYgpwbGFuczoKICAtIG5h\
bWU6IGRlZmF1bHQKICAgIGRlc2NyaXB0aW9uOiBUaGlzIHBsYW4gZGVwbG95cyBhIHNpbmdsZSBN\
YXJpYURCIGluc3RhbmNlCiAgICBmcmVlOiBUcnVlCiAgICBtZXRhZGF0YToKICAgICAgZGlzcGxh\
eU5hbWU6IERlZmF1bHQKICAgICAgY29zdDogJDAuMDAKICAgIHBhcmFtZXRlcnM6CiAgICAgIC0g\
bmFtZTogbXlzcWxfZGF0YWJhc2UKICAgICAgICBkZWZhdWx0OiBhZG1pbgogICAgICAgIHR5cGU6\
IHN0cmluZwogICAgICAgIGRlc2NyaXB0aW9uOiBNYXJpYURCIGRlZmF1bHQgZGF0YWJhc2UgbmFt\
ZQogICAgICAgIHRpdGxlOiBNYXJpYURCIERhdGFiYXNlIG5hbWUKICAgICAgICByZXF1aXJlZDog\
VHJ1ZQogICAgICAtIG5hbWU6IG15c3FsX3Jvb3RfcGFzc3dvcmQKICAgICAgICBkZWZhdWx0OiBh\
ZG1pbgogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAgIGRlc2NyaXB0aW9uOiBBIHJhbmRvbSBh\
bHBoYW51bWVyaWMgc3RyaW5nIGlmIGxlZnQgYmxhbmsKICAgICAgLSBuYW1lOiBteXNxbF91c2Vy\
CiAgICAgICAgZGVmYXVsdDogYWRtaW4KICAgICAgICB0eXBlOiBzdHJpbmcKICAgICAgICBkZXNj\
cmlwdGlvbjogTWFyaWFEQiBVc2VyCiAgICAgICAgcmVxdWlyZWQ6IFRydWUKICAgICAgLSBuYW1l\
OiBteXNxbF9wYXNzd29yZAogICAgICAgIGRlZmF1bHQ6IGFkbWluCiAgICAgICAgdHlwZTogc3Ry\
aW5nCiAgICAgICAgZGVzY3JpcHRpb246IEEgcmFuZG9tIGFscGhhbnVtZXJpYyBzdHJpbmcgaWYg\
bGVmdCBibGFuawogICAgICAtIG5hbWU6IG1hcmlhZGJfdmVyc2lvbgogICAgICAgIGRlZmF1bHQ6\
ICIxMC4wIgogICAgICAgIGVudW06IFsnMTAuMCcsICcxMC4xJ10KICAgICAgICB0eXBlOiBlbnVt\
CiAgICAgICAgdGl0bGU6IE1hcmlhREIgVmVyc2lvbgogICAgICAgIHJlcXVpcmVkOiBUcnVlCnJl\
cXVpcmVkOiAKICAtIG1hcmlhZGJfdmVyc2lvbgogIC0gbXlzcWxfZGF0YWJhc2UKICAtIG15c3Fs\
X3VzZXIKICAK"

COPY roles /opt/ansible/roles
COPY playbooks /opt/apb/actions
RUN chmod -R g=u /opt/{ansible,apb}

USER apb
