#!/bin/sh

# Fetch the region this machines is running, in case it's not given
if [ "$AWS_DEFAULT_REGION" = "" ]; then
	export AWS_DEFAULT_REGION="`curl -sL http://169.254.169.254/2014-11-05/meta-data/placement/availability-zone | rev | cut -c 2- | rev`"
fi

exec aws $@
