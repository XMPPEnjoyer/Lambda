current_dir=$(pwd)
rm -dfr .build
mkdir .build
ls
cp -r $current_dir .build
cd .build/Lambda/
rm -dfr .git
rm -dfr .github
rm -dfr .build
rm -dfr pull.sh
rm -dfr push.sh
rm -dfr rebase.sh
rm -dfr README.md
echo clear >> lambda.sh
