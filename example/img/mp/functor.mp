z0=(0,0);
z1=(gu,0);
z2=(.5gu,-.75gu);
z3=z0 shifted (2gu,0);
z4=z3 shifted (0,-.75gu);

drawblock(z0,(xpart z1,ypart z2),"\mathcal{C}");
drawblock(z3,z4,"\mathcal{D}=\mathbf{F}(\mathcal{C})");

drawEdge(z0,z0,"id_A");
drawEdge(z1,z1,"id_B");
drawEdge(z2,z2,"id_C");
drawarrow edgeAngle(z0,z1,35);
drawarrow edgeAngle(z1,z0,35);
drawarrow edgeFull(z1,z2,-90,180);
drawarrow edgeFull(z0,z2,-90,0);

drawEdge(z3,z3,"id_X");
drawEdge(z4,z4,"id_Y");
drawarrow edgeFull(z3,z4,-35,35+180);

drawoptions(withcolor yellow withpen pencircle scaled 1);
drawState(z0,"A");
drawState(z1,"B");
drawState(z3,"X");
drawoptions(withcolor yellow withpen pencircle scaled 1 dashed evenly);
drawarrow edgeAngle(z0,z3,45);
drawarrow edge(z1,z3);

drawoptions(withcolor red withpen pencircle scaled 1);
drawState(z2,"C");
drawState(z4,"Y");
drawoptions(withcolor red withpen pencircle scaled 1 dashed evenly);
drawarrow edge(z2,z4);
