# ============================================================================
# Multiple panels by groups: Mariana Trench depths/angles by tectonic plate (R).
# This produced Figures 7-9 in the peer-reviewed article:
#   Lemenkova, P. (2019). Statistical Analysis of the Mariana Trench
#   Geomorphology Using R Programming Language.
#   Geodesy and Cartography, 45(2), 57-84.
#   DOI: https://doi.org/10.3846/gac.2019.3785
# Author: Polina Lemenkova | ORCID: 0000-0002-5759-1089
# ============================================================================

# ЧАСТЬ-1. готовим датафрейм. 
	# шаг-1.
MDepths <- read.csv("DepthTect.csv", header=TRUE, sep = ",")
MDFl <- na.omit(MDepths) 
row.has.na <- apply(MDFl, 1, function(x){any(is.na(x))}) # проверяем, удалил ли все NA
sum(row.has.na) # суммируем все NA, должно получиться: [1] 0
head(MDFl) # смотрим очищенный датафрейм. теперь с ним работаем. 
	
	# шаг-2. сшиваем группы категорий по классам (здесь: тектоника, глубины, углы)
DFDT = melt(setDT(MDFl), measure = patterns("^profile", "^tectonics", "^tg"), value.name = c("depth", "tectonics", "trench_angle"))
head(DFDT)

	# шаг-3. Multiple panels by groups: y ~ x | group строим мульти-график 
p<- xyplot(depth ~ variable | tectonics, 
		group = tectonics, data = DFDT,
		type = c("p", "smooth"),
		scales = "free",
#		scales=list(cex=.5, col="red"),
		main="Multiple ScatterPlot: Depths Distribution by Tectonic Plates",
		xlab="Profiles, Nr")
p
    
