# packer-ubuntu20.04
Packer template to build Ubuntu 20.04 image  for virtualbox (Vagrant). 

Packer template to build Ubuntu 20.04 image  for virtualbox (Vagrant). Ubuntu is discontinuing support for the Debian-installer based classic server installer from 20.04 LTS (Focal Fossa) making the way for subiquity server installer. This template use subiquity with cloud-init template to build the image.


## Requirements

- Install Packer to build the image:  https://www.packer.io/docs/install
- Get a Digital Ocean API token: https://cloud.digitalocean.com/account/api/tokens

## How to build the image

1. Set an environment variable to the the API token
```
export DIGITALOCEAN_API_TOKEN=4059d45e5a75de0f24fe8f2ec678062e5cf8d66db885cdf4826befb30557d2gh
```
Change the value for your API token.

2. Buid the image:

```
$ packer build  ubuntu2004-jupyter-digitalocean.json
```


## How to use it with Digital Ocean

After the build ends, you can locate the image as snapshot in Digital Ocean. You can create a droplet form it. JupyterHub UI will be available at the Public IP from the new created droplet.