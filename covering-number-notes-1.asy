if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="covering-number-notes-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(6cm);
import markers;
import geometry;

draw(unitcircle);
draw(scale(0.75)*unitcircle);
pair O = (0, 0);
pair T = (0, -1);
pair P = dir(-90 + 41.4) * 0.75;
dot(P);
draw(O--T, L=Label("$R$", align=W, position=MidPoint));
draw(O--P, L=Label("$r$", align=dir(21.4), position=MidPoint));
draw(T--P);

pair X = 3*P - 2*T;
pair Y = P + (1.3, 0);
draw(P--X, dashed);
draw(P--Y, dotted);
markangle("$\theta$", radius=13, Y, P, X);
markangle("$\theta$", radius=13, T, O, P);
perpendicular(P, NE, O-P, size=2.5mm);
