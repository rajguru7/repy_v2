#!/usr/bin/bash
RED='\033[0;31m'
CYAN='\033[1;36m'
NC='\033[0m'

referencemonitor="reference_monitor_sr6895.r2py"

#for testcase in old_sr6895_*; do 
#    if grep -q "undo()" "$testcase"; then
#        echo -e "\n${RED}Testing repy: ${CYAN}$testcase${NC}"
#        echo -e "Not applicable"
#    else
#        echo -e "\n${RED}Testing repy: ${CYAN}$testcase${NC}"
#        python repy.py restrictions.default encasementlib.r2py $testcase
#    fi
#    printf '\n%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
#done

for i in {1..20}; do 
    echo -e "\n${RED}Testing my code: ${CYAN}$testcase${NC}"
    python repy.py restrictions.default encasementlib.r2py $referencemonitor sr6895_attackcase8.r2py
    printf '\n%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -
done
