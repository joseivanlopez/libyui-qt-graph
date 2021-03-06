# Use the libyui-devel image as the base
FROM registry.opensuse.org/devel/libraries/libyui/containers/libyui-devel:latest

RUN zypper --non-interactive in --no-recommends \
  graphviz-devel \
  && zypper clean -a

COPY . /usr/src/app
