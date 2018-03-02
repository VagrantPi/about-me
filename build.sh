
inputdir='./sass'
outputdir='./css'

function read_dir() {
    for file in `ls $1`
    do
        # 遞迴資料夾內的 scss 並遞迴建立( 一樣有問題
        # if [ -d $1"/"$file ] ; then 
        #     read_dir $1"/"$file $file $2"/"$file
        # else
        #     if [ "${file##*.}"  == "scss" ] ; then 
        #         check=${file%.scss}
        #         ./node_modules/node-sass/bin/node-sass --include-path scss $1/$file $outputdir/$3"/${check##*/}.css" | sed 's/^\///' 
        #     fi
        # fi

        # bootstrap 的有問題  ORZ
        if [ "${file##*.}"  == "scss" ] ; then 
            check=${file%.scss}
            ./node_modules/node-sass/bin/node-sass --include-path scss $1/$file $outputdir/${check##*/}.css
        fi
    done
}
#測試目錄 test
read_dir $inputdir

