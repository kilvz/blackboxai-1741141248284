#!/bin/bash

# Create new directory structure
mkdir -p app/src/main/java/com/kilv/multiusermanager/{data,ui,util}
mkdir -p app/src/main/java/com/kilv/multiusermanager/data/model
mkdir -p app/src/main/java/com/kilv/multiusermanager/ui/{main,edit,credits}

# Move files to new package
mv app/src/main/java/com/example/multiusermanager/data/model/User.kt app/src/main/java/com/kilv/multiusermanager/data/model/
mv app/src/main/java/com/example/multiusermanager/data/UserManager.kt app/src/main/java/com/kilv/multiusermanager/data/
mv app/src/main/java/com/example/multiusermanager/ui/main/*.kt app/src/main/java/com/kilv/multiusermanager/ui/main/
mv app/src/main/java/com/example/multiusermanager/ui/edit/*.kt app/src/main/java/com/kilv/multiusermanager/ui/edit/
mv app/src/main/java/com/example/multiusermanager/util/*.kt app/src/main/java/com/kilv/multiusermanager/util/
mv app/src/main/java/com/example/multiusermanager/MultiUserManagerApp.kt app/src/main/java/com/kilv/multiusermanager/

# Remove old directory
rm -rf app/src/main/java/com/example/multiusermanager

# Update package names in all Kotlin files
find app/src/main/java/com/kilv/multiusermanager -name "*.kt" -type f -exec sed -i 's/com.example.multiusermanager/com.kilv.multiusermanager/g' {} +
