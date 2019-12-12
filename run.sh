year=2014
rm annotations/COCO_train${year}.json

#Filter the classes you need
python filter.py --year $year
#Remove picture you do not need
python remove.py --year $year
#Write VOC xml format
python write_train.py --year $year
python write_val.py --year $year
rm tmp.xml
