# Thoth toolbox

<img src="https://raw.githubusercontent.com/containers/toolbox/master/data/logo/toolbox-logo-landscape.svg" alt="Toolbox logo landscape" width="800"/>

This is a Thoth toolbox! It contains a few tools published by Project Thoth
ready to use on your local source code repositories or in conjunction with
your OpenShift cluster.

## Usage

### Create your toolbox container

```shell
[user@hostname ~]$ toolbox create thoth-toolbox
Created container: thoth-toolbox
Enter with: toolbox enter --container thoth-toolbox
[user@hostname ~]$
```

This will create a container called `thoth-toolbox-<version-id>`.

### Enter the toolbox

```shell
[user@hostname ~]$ toolbox enter --container thoth-toolbox
⬢[user@toolbox ~]$
```

### Tools included

#### thoth-si

thoth-s2i is a tool that can assist you to port an existing application to use Thoth or expose information about
OpenShift build configs used within a cluster. See https://github.com/thoth-station/s2i/blob/master/README.rst for more
information.

#### thamos

A CLI tool and library for communicating with Thoth backend, see https://github.com/thoth-station/thamos/blob/master/README.rst
for more information.

## Background Information

[Toolbox](https://github.com/containers/toolbox) is a tool that offers a
familiar package based environment for developing and debugging software that
runs fully unprivileged using [Podman](https://podman.io/).

The toolbox container is a fully *mutable* container; when you see
`yum install ansible` for example, that's something you can do inside your
toolbox container, without affecting the base operating system.

This is particularly useful on
[OSTree](https://ostree.readthedocs.io/en/latest/) based operating systems like
[CoreOS](https://coreos.fedoraproject.org/) and
[Silverblue](https://silverblue.fedoraproject.org/).  The intention of these
systems is to discourage installation of software on the host, and instead
install software as (or in) containers.

However, this tool doesn't *require* using an OSTree based system — it
works equally well if you're running e.g. existing Fedora Workstation or
Server, and that's a useful way to incrementally adopt containerization.

The toolbox environment is based on an [OCI](https://www.opencontainers.org/)
image. On Fedora this is the `fedora-toolbox` image. This image is used to
create a toolbox container that seamlessly integrates with the rest of the
operating system.
