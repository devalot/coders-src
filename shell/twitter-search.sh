#!/bin/sh

# Search Twitter for "gaga", returning a single result in JSON
curl --verbose 'http://search.twitter.com/search.json?q=gaga&rpp=1'
