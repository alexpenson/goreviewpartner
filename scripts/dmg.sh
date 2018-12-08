#!/bin/bash
dmgbuild -s scripts/dmg_settings.py \
    -D app=dist/GoReviewPartner.app \
    "GoReviewPartner" \
    GoReviewPartner.dmg
