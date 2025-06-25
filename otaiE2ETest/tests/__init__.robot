*** Settings ***
Suite Setup    Run Environment Setup
Library        OperatingSystem
Library        Process

*** Keywords ***
Run Environment Setup
    Run Process    python    otaiE2ETest/env.py
