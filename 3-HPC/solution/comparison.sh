mkdir "images-comparison" && cd $_

# ------ #
# DOCKER #
# ------ #

# We pull the image ...
docker pull tensorflow/tensorflow
# ... write it as a tar ...
docker save -o tensorflow-docker.tar tensorflow/tensorflow
# ... and expand it
mkdir tensorflow-docker \
	&& tar xvf tensorflow-docker.tar --directory tensorflow-docker \
	&& rm tensorflow-docker.tar

# ------ #
# ENROOT #
# ------ #

# We import the tensorflow Docker image as a squash filesystem
enroot import docker://tensorflow/tensorflow
# ... expand the squash file ...
unsquashfs tensorflow+tensorflow.sqsh \
	&& mv squashfs-root tensorflow-enroot \
	&& rm tensorflow+tensorflow.sqsh

# ------------ #
# CHARLIECLOUD #
# ------------ #

# We reate a charliecloud image in the current directory...
ch-image pull tensorflow/tensorflow
ch-convert tensorflow/tensorflow tensorflow%tensorflow.tar.gz
# ... and expand it
mkdir tensorflow-charlie \
	&& tar xvf tensorflow%tensorflow.tar.gz --directory tensorflow-charlie \
	&& rm tensorflow%tensorflow.tar.gz

# ---------- #
# COMPARISON #
# ---------- #

# Sizes
du -sh *
#1.4G	tensorflow-charlie
#1.3G	tensorflow-docker
#1.4G	tensorflow-enroot

# Tree structure
tree -L 2

# Using the diff tool
diff tensorflow-docker tensorflow-charlie
