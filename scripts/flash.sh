#!/bin/sh

transset-df -a -m 0
sleep .1
transset-df -a -x 1
sleep .1
transset-df -a -m 0
sleep .1
transset-df -a -x 1
