#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

check_tool () {
    TOOL_NAME=$1
    COMMAND=$2

    echo -e "${BLUE}Checking ${TOOL_NAME}...${NC}"

    if eval "$COMMAND" >/dev/null 2>&1
    then
        echo -e "${GREEN}✓ ${TOOL_NAME} Installed${NC}"
    else
        echo -e "${RED}✗ ${TOOL_NAME} NOT Installed${NC}"
    fi

    echo
}

echo "========================================="
echo " CloudOps Enterprise Workstation Check"
echo "========================================="
echo

check_tool "Git" "git --version"
check_tool "Python" "python3 --version"
check_tool "pip" "pip3 --version"
check_tool "Docker" "docker --version"
check_tool "Docker Compose" "docker compose version"
check_tool "Terraform" "terraform version"
check_tool "AWS CLI" "aws --version"
check_tool "Azure CLI" "az version"

echo "Workstation verification completed."
