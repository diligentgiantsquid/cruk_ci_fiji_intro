open("C:/Users/Naylor02/Desktop/4color_cells-0003.tif");
run("Median...", "radius=2");
setAutoThreshold("IsoData dark");
setOption("BlackBackground", false);
run("Convert to Mask");
run("Analyze Particles...", "size=10-Infinity include add");
roiManager("Measure");
saveAs("Results", "C:/Users/Naylor02/Desktop/Results.csv");
