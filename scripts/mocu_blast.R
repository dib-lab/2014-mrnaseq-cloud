library(VennDiagram)
plot.new()
venn.plot <- draw.quad.venn(
  area1= 13725,
  area2= 13683,
  area3= 13770,
  area4= 13786,
  n12 = 13663,
  n13 = 13698,
  n14 = 13711,
  n23 = 13653,
  n24 = 13666,
  n34 = 13769,
  n123 = 13642,
  n124 = 13654,
  n134 = 13697,
  n234 = 13652,
  n1234 = 13641,
  category = c("Diginorm Oases", "Oases", "Diginorm Trinity", "Trinity"),
  fill = c("orange", "red", "green", "blue"),
  cex = 2,
  cat.cex = 2,
  cat.pos = c(-20, 0,0,0),
  margin = 0.075
);
