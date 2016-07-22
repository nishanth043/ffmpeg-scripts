SRC=/Users/viggneshk/Documents/EditedH264/Pause/
DEST=/Users/viggneshk/Documents/TrackYoga/Pause_Image/
DEST_EXT=png

for FILE in `ls $SRC`
do
#      filename=$(basename $FILE)
#       filename =echo $filename1 | rev | cut -c 10- | rev
       filename=$(basename $FILE | rev | cut -c 10- | rev )
       extension=${filename##*.}
#       filename=${filename%.*}
       ffmpeg -ss 0.01 -i $SRC/$FILE  -t 1 -s 1280x720 -f image2 $DEST/$filename.$DEST_EXT
	echo $filename
done

