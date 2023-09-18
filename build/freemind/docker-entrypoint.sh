#!/usr/bin/env bash
#

if [[ "${0}" == *freemind ]]; then
 if ! [ -f ${HOME}/.freemind/auto.properties ]; then
  mkdir -p ${HOME}/.freemind
  touch ${HOME}/.freemind/auto.properties
 fi
fi

exec $@
