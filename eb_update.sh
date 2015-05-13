# eb_update.sh
#!/bin/bash
aws elasticbeanstalk update-environment --environment-name XXX \
  --version-label latest
