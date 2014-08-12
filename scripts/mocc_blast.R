library(VennDiagram)
plot.new()
venn.plot <- draw.quad.venn(
  area1= 13722,
  area2= 13728,
  area3= 13761,
  area4= 13769,
  n12 = 13686,
  n13 = 13654,
  n14 = 13662,
  n23 = 13659,
  n24 = 13666,
  n34 = 13755,
  n123 = 13622,
  n124 = 13628,
  n134 = 13650,
  n234 = 13655,
  n1234 = 13618,
  category = c("Diginorm Oases", "Oases", "Diginorm Trinity", "Trinity"),
  fill = c("orange", "red", "green", "blue"),
  cex = 2,
  cat.cex = 2,
  cat.pos = c(-20, 0,0,0),
  margin = 0.075
);
