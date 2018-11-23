## https://developer.apple.com/library/archive/documentation/Porting/Conceptual/PortingUnix/distributing/distibuting.html
# Create an initial disk image (32 megs)
hdiutil create -size 32m -fs HFS+ -volname "GoReviewPartner"  GoReviewPartner_init.dmg
 
# Mount the disk image
hdiutil attach GoReviewPartner_init.dmg

# Add app to disk image
cp -r dist/GoReviewPartner.app /Volumes/GoReviewPartner

# Unmount the disk image
hdiutil detach /Volumes/GoReviewPartner
 
# Convert the disk image to read-only
hdiutil convert GoReviewPartner_init.dmg -format UDZO -o GoReviewPartner.dmg
