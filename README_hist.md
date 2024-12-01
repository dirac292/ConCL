# Updated README
- Folow Install.md (https://github.com/dirac292/ConCL)
- Be careful when using openselfsup, and checkout branch openselfsup instead of mmselfsup
- I didn't use Apex and training works, not sure if it is required
-  data in CONCL directory has hist_data folder where data folder is symlink with histopathology data from the following path, and meta/train.txt the file names in hist_data

```
mkdir -p $OPENSELFSUP/data/hist_data

ln -s /mnt/pub1/ssl-pretraining/data/histopathology/aSMA_SmoothMuscle/Images $OPENSELFSUP/data/hist_data/data

find $OPENSELFSUP/data/hist_data/data -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.jpeg" \) > $OPENSELFSUP/data/hist_data/meta/train.txt
```