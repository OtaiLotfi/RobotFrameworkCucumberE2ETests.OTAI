*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     SeleniumLibrary
Library     Collections
Library     BuiltIn
Variables   ../../resources/env.py
Library    elementFinder.py
Resource    ../pages/navigationPage.robot
Resource    ../pages/basePage.robot
Resource    ../stepDefinitions/navigationStepDefinitions.robot
Resource    ../pages/medicalDashboardPage.robot
Resource    ../stepDefinitions/medicalDashboardStepDefinitions.robot