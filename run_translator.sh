#!/bin/bash
/usr/local/bin/python $TRANSLATE_HELPER_DIRECTORY/clipboard_extractor.py > $TRANSLATE_HELPER_DIRECTORY/extraced_text ; cat $TRANSLATE_HELPER_DIRECTORY/test | $TRANSLATE_HELPER_DIRECTORY/goslate.py -t utf-8 -o utf-8 >> $TRANSLATE_HELPER_DIRECTORY/final_text

exit
