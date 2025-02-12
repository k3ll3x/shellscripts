#!/bin/bash
$mail=$1
ssh-keygen -t ed25519 -C "$mail"

