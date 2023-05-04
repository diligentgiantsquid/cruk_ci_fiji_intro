#@ File (style="open") inputFile
#@ File (style="directory") outputFolder

open(inputFile);
title = getTitle();
run("Duplicate...", "title=" + title + "_mask.jpg");
run("8-bit");
run("Subtract Background...", "rolling=150");
setAutoThreshold("MaxEntropy dark");
setOption("BlackBackground", true);
run("Convert to Mask");
saveAs("Jpeg", outputFolder + File.separator + title + "_mask.jpg");

run("Analyze Particles...", "  show=Nothing include summarize add");
selectWindow(title);
roiManager("Measure");

saveAs("Results", outputFolder + File.separator + title + "_Results.csv");