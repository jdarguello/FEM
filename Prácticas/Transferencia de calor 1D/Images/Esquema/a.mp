prologues:=3;
outputformat:="mps";
outputtemplate:="%j.mps";
input format;

verbatimtex
%&latex
\documentclass{article}
\begin{document}
\thispagestyle{empty}
etex


fontscale:=1;
penscale:=1;
figwidth:=4in;
picture xtick[],ytick[],ztick[];
color stcyan,gray,dkgreen,stmagenta,olive,meshcolor;
stcyan:=(0,0.75,0.75);
gray:=(0.25,0.25,0.25);
dkgreen:=(0,0.5,0);
stmagenta:=(0.75,0,0.75);
olive:=(0.75,0.75,0);
meshcolor:=black;

xtick[0]:=format("%3g","-1") scaled fontscale;
xtick[1]:=format("%3g","-0.5") scaled fontscale;
xtick[2]:=format("%3g","0") scaled fontscale;
xtick[3]:=format("%3g","0.5") scaled fontscale;
xtick[4]:=format("%3g","1") scaled fontscale;
ytick[0]:=format("%3g","-1") scaled fontscale;
ytick[1]:=format("%3g","-0.5") scaled fontscale;
ytick[2]:=format("%3g","0") scaled fontscale;
ytick[3]:=format("%3g","0.5") scaled fontscale;
ytick[4]:=format("%3g","1") scaled fontscale;
ztick[0]:=format("%3g","-1") scaled fontscale;
ztick[1]:=format("%3g","-0.5") scaled fontscale;
ztick[2]:=format("%3g","0") scaled fontscale;
ztick[3]:=format("%3g","0.5") scaled fontscale;
ztick[4]:=format("%3g","1") scaled fontscale;

picture xlabel,ylabel,zlabel;
xlabel:=btex {$x$-axis} etex scaled fontscale;
ylabel:=btex {$y$-axis} etex scaled fontscale;
zlabel:=btex {$z$-axis} etex scaled fontscale rotated 90;

beginfig(0);
	pickup pencircle scaled (0.5bp*penscale);
	path p;
	fill (5.330377,-153.693450)--(152.642023,-99.663707)--(-5.330377,-49.280157)--(-152.642023,-103.309899)--cycle withcolor white;
	fill (152.642023,-99.663707)--(-5.330377,-49.280157)--(-5.330377,153.693450)--(152.642023,103.309899)--cycle withcolor white;
	fill (-152.642023,-103.309899)--(-5.330377,-49.280157)--(-5.330377,153.693450)--(-152.642023,99.663707)--cycle withcolor white;

	draw (42.158288,-140.186014)--(-115.814111,-89.802464) dashed evenly;
	draw (-115.814111,-89.802464)--(-115.814111,113.171142) dashed evenly;
	draw (78.986200,-126.678578)--(-78.986200,-76.295028) dashed evenly;
	draw (-78.986200,-76.295028)--(-78.986200,126.678578) dashed evenly;
	draw (115.814111,-113.171142)--(-42.158288,-62.787592) dashed evenly;
	draw (-42.158288,-62.787592)--(-42.158288,140.186014) dashed evenly;
	draw (152.642023,-99.663707)--(-5.330377,-49.280157) dashed evenly;
	draw (152.642023,103.309899)--(-5.330377,153.693450) dashed evenly;
	draw (-34.162723,-141.097562)--(113.148923,-87.067819) dashed evenly;
	draw (113.148923,-87.067819)--(113.148923,115.905787) dashed evenly;
	draw (-73.655823,-128.501674)--(73.655823,-74.471932) dashed evenly;
	draw (73.655823,-74.471932)--(73.655823,128.501674) dashed evenly;
	draw (-113.148923,-115.905787)--(34.162723,-61.876044) dashed evenly;
	draw (34.162723,-61.876044)--(34.162723,141.097562) dashed evenly;
	draw (-152.642023,-103.309899)--(-5.330377,-49.280157) dashed evenly;
	draw (-152.642023,99.663707)--(-5.330377,153.693450) dashed evenly;
	draw (-152.642023,-52.566498)--(-5.330377,1.463245) dashed evenly;
	draw (152.642023,-48.920305)--(-5.330377,1.463245) dashed evenly;
	draw (-152.642023,-1.823096)--(-5.330377,52.206646) dashed evenly;
	draw (152.642023,1.823096)--(-5.330377,52.206646) dashed evenly;
	draw (-152.642023,48.920305)--(-5.330377,102.950048) dashed evenly;
	draw (152.642023,52.566498)--(-5.330377,102.950048) dashed evenly;
	draw (-5.330377,-49.280157)--(-5.330377,153.693450) dashed evenly;
	draw (152.642023,-99.663707)--(152.642023,103.309899) dashed evenly;
	draw (5.330377,-153.693450)--(-152.642023,-103.309899);
	draw (5.330377,-153.693450)--(152.642023,-99.663707);
	draw (-152.642023,-103.309899)--(-152.642023,99.663707);
	pair ztickmin;
	ztickmin:=origin;
	ticklength:=8bp;
	path thextick,theytick,theztick,labelbbox;
	picture ticklabel;
	pair xtickmid,ytickmid,ztickmid;
	pair xtickdir,ytickdir,ztickdir,tickend;
	xtickmid:=((5.330377,-153.693450)+(152.642023,-99.663707))/2;
	ytickmid:=((5.330377,-153.693450)+(-152.642023,-103.309899))/2;
	thextick:=origin--(157.972400,-50.383550);
	if((point 1 of thextick)=origin): thextick:=origin--(0,-1); fi;
	thextick:=thextick scaled (ticklength/(arclength thextick));
	xtickdir:= unitvector direction 0 of thextick;
	theytick:=origin--(-147.311646,-54.029743);
	if((point 1 of theytick)=origin): theytick:=origin--(0,-1); fi;
	theytick:=theytick scaled (ticklength/(arclength theytick));
	ytickdir:= unitvector direction 0 of theytick;
	xlabelangle:=180+angle ytickdir;
	ylabelangle:=angle xtickdir;
	theztick:=origin--(-157.972400,50.383550);
	ztickmin:=(-152.642023,-103.309899);
	ztickmid:=ztickmin+(0.000000,202.973606)/2;
	theztick:=theztick scaled (ticklength/(arclength theztick));
	ztickdir:=unitvector direction 0 of theztick;
	maxlabelshift:=0;
	tickend:=(5.330377,-153.693450);
	draw thextick shifted tickend;
	ticklabel:=thelabel(xtick[0],origin);
	labelbbox:=bbox ticklabel;
	labelshift:=arclength((origin--(-xtickdir*arclength((llcorner labelbbox)--(urcorner labelbbox)))) cutafter labelbbox);
	draw ticklabel shifted tickend shifted ((ticklength+labelshift+bboxmargin)*xtickdir);
	maxlabelshift:=max(maxlabelshift,2*labelshift+3*fontsize defaultfont);
	tickend:=(42.158288,-140.186014);
	draw thextick shifted tickend;
	ticklabel:=thelabel(xtick[1],origin);
	labelbbox:=bbox ticklabel;
	labelshift:=arclength((origin--(-xtickdir*arclength((llcorner labelbbox)--(urcorner labelbbox)))) cutafter labelbbox);
	draw ticklabel shifted tickend shifted ((ticklength+labelshift+bboxmargin)*xtickdir);
	maxlabelshift:=max(maxlabelshift,2*labelshift+3*fontsize defaultfont);
	tickend:=(78.986200,-126.678578);
	draw thextick shifted tickend;
	ticklabel:=thelabel(xtick[2],origin);
	labelbbox:=bbox ticklabel;
	labelshift:=arclength((origin--(-xtickdir*arclength((llcorner labelbbox)--(urcorner labelbbox)))) cutafter labelbbox);
	draw ticklabel shifted tickend shifted ((ticklength+labelshift+bboxmargin)*xtickdir);
	maxlabelshift:=max(maxlabelshift,2*labelshift+3*fontsize defaultfont);
	tickend:=(115.814111,-113.171142);
	draw thextick shifted tickend;
	ticklabel:=thelabel(xtick[3],origin);
	labelbbox:=bbox ticklabel;
	labelshift:=arclength((origin--(-xtickdir*arclength((llcorner labelbbox)--(urcorner labelbbox)))) cutafter labelbbox);
	draw ticklabel shifted tickend shifted ((ticklength+labelshift+bboxmargin)*xtickdir);
	maxlabelshift:=max(maxlabelshift,2*labelshift+3*fontsize defaultfont);
	tickend:=(152.642023,-99.663707);
	draw thextick shifted tickend;
	ticklabel:=thelabel(xtick[4],origin);
	labelbbox:=bbox ticklabel;
	labelshift:=arclength((origin--(-xtickdir*arclength((llcorner labelbbox)--(urcorner labelbbox)))) cutafter labelbbox);
	draw ticklabel shifted tickend shifted ((ticklength+labelshift+bboxmargin)*xtickdir);
	maxlabelshift:=max(maxlabelshift,2*labelshift+3*fontsize defaultfont);
	label(xlabel rotated xlabelangle,xtickmid+(maxlabelshift+ticklength+bboxmargin)*xtickdir);
	maxlabelshift:=0;
	tickend:=(5.330377,-153.693450);
	draw theytick shifted tickend;
	ticklabel:=thelabel(ytick[0],origin);
	labelbbox:=bbox ticklabel;
	labelshift:=arclength((origin--(-ytickdir*arclength((llcorner labelbbox)--(urcorner labelbbox)))) cutafter labelbbox);
	draw ticklabel shifted tickend shifted ((ticklength+labelshift+bboxmargin)*ytickdir);
	maxlabelshift:=max(maxlabelshift,2*labelshift+3*fontsize defaultfont);
	tickend:=(-34.162723,-141.097562);
	draw theytick shifted tickend;
	ticklabel:=thelabel(ytick[1],origin);
	labelbbox:=bbox ticklabel;
	labelshift:=arclength((origin--(-ytickdir*arclength((llcorner labelbbox)--(urcorner labelbbox)))) cutafter labelbbox);
	draw ticklabel shifted tickend shifted ((ticklength+labelshift+bboxmargin)*ytickdir);
	maxlabelshift:=max(maxlabelshift,2*labelshift+3*fontsize defaultfont);
	tickend:=(-73.655823,-128.501674);
	draw theytick shifted tickend;
	ticklabel:=thelabel(ytick[2],origin);
	labelbbox:=bbox ticklabel;
	labelshift:=arclength((origin--(-ytickdir*arclength((llcorner labelbbox)--(urcorner labelbbox)))) cutafter labelbbox);
	draw ticklabel shifted tickend shifted ((ticklength+labelshift+bboxmargin)*ytickdir);
	maxlabelshift:=max(maxlabelshift,2*labelshift+3*fontsize defaultfont);
	tickend:=(-113.148923,-115.905787);
	draw theytick shifted tickend;
	ticklabel:=thelabel(ytick[3],origin);
	labelbbox:=bbox ticklabel;
	labelshift:=arclength((origin--(-ytickdir*arclength((llcorner labelbbox)--(urcorner labelbbox)))) cutafter labelbbox);
	draw ticklabel shifted tickend shifted ((ticklength+labelshift+bboxmargin)*ytickdir);
	maxlabelshift:=max(maxlabelshift,2*labelshift+3*fontsize defaultfont);
	tickend:=(-152.642023,-103.309899);
	draw theytick shifted tickend;
	ticklabel:=thelabel(ytick[4],origin);
	labelbbox:=bbox ticklabel;
	labelshift:=arclength((origin--(-ytickdir*arclength((llcorner labelbbox)--(urcorner labelbbox)))) cutafter labelbbox);
	draw ticklabel shifted tickend shifted ((ticklength+labelshift+bboxmargin)*ytickdir);
	maxlabelshift:=max(maxlabelshift,2*labelshift+3*fontsize defaultfont);
	label(ylabel rotated ylabelangle,ytickmid+(maxlabelshift+ticklength+bboxmargin)*ytickdir);
	maxlabelshift:=0;
	tickend:=ztickmin+(0.000000,0.000000);
	draw theztick shifted tickend;
	ticklabel:=thelabel(ztick[0],origin);
	labelbbox:=bbox ticklabel;
	labelshift:=arclength((origin--(-ztickdir*arclength((llcorner labelbbox)--(urcorner labelbbox)))) cutafter labelbbox);
	draw ticklabel shifted tickend shifted ((ticklength+labelshift+bboxmargin)*ztickdir);
	maxlabelshift:=max(maxlabelshift,2*labelshift+3*fontsize defaultfont);
	tickend:=ztickmin+(0.000000,50.743402);
	draw theztick shifted tickend;
	ticklabel:=thelabel(ztick[1],origin);
	labelbbox:=bbox ticklabel;
	labelshift:=arclength((origin--(-ztickdir*arclength((llcorner labelbbox)--(urcorner labelbbox)))) cutafter labelbbox);
	draw ticklabel shifted tickend shifted ((ticklength+labelshift+bboxmargin)*ztickdir);
	maxlabelshift:=max(maxlabelshift,2*labelshift+3*fontsize defaultfont);
	tickend:=ztickmin+(0.000000,101.486803);
	draw theztick shifted tickend;
	ticklabel:=thelabel(ztick[2],origin);
	labelbbox:=bbox ticklabel;
	labelshift:=arclength((origin--(-ztickdir*arclength((llcorner labelbbox)--(urcorner labelbbox)))) cutafter labelbbox);
	draw ticklabel shifted tickend shifted ((ticklength+labelshift+bboxmargin)*ztickdir);
	maxlabelshift:=max(maxlabelshift,2*labelshift+3*fontsize defaultfont);
	tickend:=ztickmin+(0.000000,152.230205);
	draw theztick shifted tickend;
	ticklabel:=thelabel(ztick[3],origin);
	labelbbox:=bbox ticklabel;
	labelshift:=arclength((origin--(-ztickdir*arclength((llcorner labelbbox)--(urcorner labelbbox)))) cutafter labelbbox);
	draw ticklabel shifted tickend shifted ((ticklength+labelshift+bboxmargin)*ztickdir);
	maxlabelshift:=max(maxlabelshift,2*labelshift+3*fontsize defaultfont);
	tickend:=ztickmin+(0.000000,202.973606);
	draw theztick shifted tickend;
	ticklabel:=thelabel(ztick[4],origin);
	labelbbox:=bbox ticklabel;
	labelshift:=arclength((origin--(-ztickdir*arclength((llcorner labelbbox)--(urcorner labelbbox)))) cutafter labelbbox);
	draw ticklabel shifted tickend shifted ((ticklength+labelshift+bboxmargin)*ztickdir);
	maxlabelshift:=max(maxlabelshift,2*labelshift+3*fontsize defaultfont);
	label.lft(zlabel,ztickmid+(maxlabelshift+ticklength)*ztickdir);

	path p;
	p:=(9.563392,-4.868005)--(-3.482237,-4.731683)--(-3.569118,2.334700)--(9.801997,2.194976)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(9.801997,2.194976)--(-3.569118,2.334700)--(-3.640715,9.391085)--(9.998628,9.248559)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(9.283836,-11.910141)--(-3.380444,-11.777804)--(-3.482237,-4.731683)--(9.563392,-4.868005)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.482237,-4.731683)--(-16.468283,-5.178917)--(-16.879163,1.876307)--(-3.569118,2.334700)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(9.998628,9.248559)--(-3.640715,9.391085)--(-3.696723,16.407256)--(10.152443,16.262537)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.569118,2.334700)--(-16.879163,1.876307)--(-17.217764,8.923497)--(-3.640715,9.391085)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.380444,-11.777804)--(-15.986883,-12.211965)--(-16.468283,-5.178917)--(-3.482237,-4.731683)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(8.964525,-18.901276)--(-3.264176,-18.773490)--(-3.380444,-11.777804)--(9.283836,-11.910141)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(22.445389,-5.585552)--(9.563392,-4.868005)--(9.801997,2.194976)--(23.005397,1.459527)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.640715,9.391085)--(-17.217764,8.923497)--(-17.482636,15.932475)--(-3.696723,16.407256)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.264176,-18.773490)--(-15.437025,-19.192719)--(-15.986883,-12.211965)--(-3.380444,-11.777804)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(23.005397,1.459527)--(9.801997,2.194976)--(9.998628,9.248559)--(23.466892,8.498356)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(21.789267,-12.606713)--(9.283836,-11.910141)--(9.563392,-4.868005)--(22.445389,-5.585552)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(10.152443,16.262537)--(-3.696723,16.407256)--(-3.736900,23.353169)--(10.262784,23.206877)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(8.606826,-25.811473)--(-3.133930,-25.688786)--(-3.264176,-18.773490)--(8.964525,-18.901276)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(23.466892,8.498356)--(9.998628,9.248559)--(10.152443,16.262537)--(23.827898,15.500794)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(21.039839,-19.573889)--(8.964525,-18.901276)--(9.283836,-11.910141)--(21.789267,-12.606713)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.696723,16.407256)--(-17.482636,15.932475)--(-17.672645,22.873227)--(-3.736900,23.353169)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-16.468283,-5.178917)--(-29.172553,-6.202056)--(-29.900402,0.827641)--(-16.879163,1.876307)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.133930,-25.688786)--(-14.821063,-26.091286)--(-15.437025,-19.192719)--(-3.264176,-18.773490)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-15.986883,-12.211965)--(-28.319783,-13.205195)--(-29.172553,-6.202056)--(-16.468283,-5.178917)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-16.879163,1.876307)--(-29.900402,0.827641)--(-30.500213,7.853794)--(-17.217764,8.923497)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(10.262784,23.206877)--(-3.736900,23.353169)--(-3.761076,30.199080)--(10.329178,30.051842)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(23.827898,15.500794)--(10.152443,16.262537)--(10.262784,23.206877)--(24.086869,22.436855)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(20.200316,-26.457248)--(8.606826,-25.811473)--(8.964525,-18.901276)--(21.039839,-19.573889)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(8.212271,-32.611141)--(-2.990264,-32.494078)--(-3.133930,-25.688786)--(8.606826,-25.811473)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-15.437025,-19.192719)--(-27.345743,-20.151788)--(-28.319783,-13.205195)--(-15.986883,-12.211965)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.217764,8.923497)--(-30.500213,7.853794)--(-30.969417,14.846316)--(-17.482636,15.932475)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.736900,23.353169)--(-17.672645,22.873227)--(-17.786976,29.716033)--(-3.761076,30.199080)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.990264,-32.494078)--(-14.141635,-32.878127)--(-14.821063,-26.091286)--(-3.133930,-25.688786)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(34.943339,-6.872046)--(22.445389,-5.585552)--(23.005397,1.459527)--(35.815167,0.140936)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(33.921877,-13.855600)--(21.789267,-12.606713)--(22.445389,-5.585552)--(34.943339,-6.872046)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(35.815167,0.140936)--(23.005397,1.459527)--(23.466892,8.498356)--(36.533630,7.153313)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.821063,-26.091286)--(-26.254604,-27.012087)--(-27.345743,-20.151788)--(-15.437025,-19.192719)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(24.086869,22.436855)--(10.262784,23.206877)--(10.329178,30.051842)--(24.242697,29.276837)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.482636,15.932475)--(-30.969417,14.846316)--(-31.306006,21.775264)--(-17.672645,22.873227)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(10.329178,30.051842)--(-3.761076,30.199080)--(-3.769146,36.915674)--(10.351341,36.768119)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(19.274292,-33.227312)--(8.212271,-32.611141)--(8.606826,-25.811473)--(20.200316,-26.457248)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(32.755157,-20.779822)--(21.039839,-19.573889)--(21.789267,-12.606713)--(33.921877,-13.855600)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(36.533630,7.153313)--(23.466892,8.498356)--(23.827898,15.500794)--(37.095650,14.135059)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(7.782550,-39.271163)--(-2.833794,-39.160226)--(-2.990264,-32.494078)--(8.212271,-32.611141)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.761076,30.199080)--(-17.786976,29.716033)--(-17.825141,36.431591)--(-3.769146,36.915674)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.833794,-39.160226)--(-13.401651,-39.524179)--(-14.141635,-32.878127)--(-2.990264,-32.494078)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(31.448174,-27.615062)--(20.200316,-26.457248)--(21.039839,-19.573889)--(32.755157,-20.779822)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.141635,-32.878127)--(-25.051039,-33.756717)--(-26.254604,-27.012087)--(-14.821063,-26.091286)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-29.172553,-6.202056)--(-41.377673,-7.783594)--(-42.410037,-0.793355)--(-29.900402,0.827641)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.672645,22.873227)--(-31.306006,21.775264)--(-31.508537,28.610967)--(-17.786976,29.716033)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-28.319783,-13.205195)--(-40.168123,-14.740501)--(-41.377673,-7.783594)--(-29.172553,-6.202056)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(37.095650,14.135059)--(23.827898,15.500794)--(24.086869,22.436855)--(37.498821,21.056277)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(24.242697,29.276837)--(10.329178,30.051842)--(10.351341,36.768119)--(24.294714,35.991452)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-29.900402,0.827641)--(-42.410037,-0.793355)--(-43.260795,6.200280)--(-30.500213,7.853794)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(18.265733,-39.855092)--(7.782550,-39.271163)--(8.212271,-32.611141)--(19.274292,-33.227312)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-27.345743,-20.151788)--(-38.786567,-21.634288)--(-40.168123,-14.740501)--(-28.319783,-13.205195)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(10.351341,36.768119)--(-3.769146,36.915674)--(-3.761076,43.474189)--(10.329178,43.326951)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(30.006525,-34.332049)--(19.274292,-33.227312)--(20.200316,-26.457248)--(31.448174,-27.615062)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-30.500213,7.853794)--(-43.260795,6.200280)--(-43.926303,13.167365)--(-30.969417,14.846316)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(7.319504,-45.763020)--(-2.665188,-45.658683)--(-2.833794,-39.160226)--(7.782550,-39.271163)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.769146,36.915674)--(-17.825141,36.431591)--(-17.786976,42.991142)--(-3.761076,43.474189)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.401651,-39.524179)--(-23.740202,-40.356795)--(-25.051039,-33.756717)--(-14.141635,-32.878127)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-26.254604,-27.012087)--(-37.238922,-28.435433)--(-38.786567,-21.634288)--(-27.345743,-20.151788)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(37.498821,21.056277)--(24.086869,22.436855)--(24.242697,29.276837)--(37.741417,27.887328)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.786976,29.716033)--(-31.508537,28.610967)--(-31.576144,35.324153)--(-17.825141,36.431591)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.665188,-45.658683)--(-12.604278,-46.000982)--(-13.401651,-39.524179)--(-2.833794,-39.160226)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(46.843398,-8.705474)--(34.943339,-6.872046)--(35.815167,0.140936)--(48.012131,-1.738236)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(45.474075,-15.635433)--(33.921877,-13.855600)--(34.943339,-6.872046)--(46.843398,-8.705474)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-30.969417,14.846316)--(-43.926303,13.167365)--(-44.403712,20.078065)--(-31.306006,21.775264)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(24.294714,35.991452)--(10.351341,36.768119)--(10.329178,43.326951)--(24.242697,42.551946)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(48.012131,-1.738236)--(35.815167,0.140936)--(36.533630,7.153313)--(48.975268,5.236444)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(43.910024,-22.498439)--(32.755157,-20.779822)--(33.921877,-13.855600)--(45.474075,-15.635433)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(17.178957,-46.312207)--(7.319504,-45.763020)--(7.782550,-39.271163)--(18.265733,-39.855092)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(28.436384,-40.902022)--(18.265733,-39.855092)--(19.274292,-33.227312)--(30.006525,-34.332049)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-25.051039,-33.756717)--(-35.531813,-35.114814)--(-37.238922,-28.435433)--(-26.254604,-27.012087)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(10.329178,43.326951)--(-3.761076,43.474189)--(-3.736900,49.846541)--(10.262784,49.700249)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(48.975268,5.236444)--(36.533630,7.153313)--(37.095650,14.135059)--(49.728686,12.188702)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(37.741417,27.887328)--(24.242697,29.276837)--(24.294714,35.991452)--(37.822397,34.598962)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(42.157945,-29.265103)--(31.448174,-27.615062)--(32.755157,-20.779822)--(43.910024,-22.498439)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-12.604278,-46.000982)--(-22.327706,-46.784059)--(-23.740202,-40.356795)--(-13.401651,-39.524179)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.306006,21.775264)--(-44.403712,20.078065)--(-44.690978,26.902788)--(-31.508537,28.610967)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.825141,36.431591)--(-31.576144,35.324153)--(-31.508537,41.886076)--(-17.786976,42.991142)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.761076,43.474189)--(-17.786976,42.991142)--(-17.672645,49.366599)--(-3.736900,49.846541)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(6.825114,-52.058913)--(-2.485170,-51.961623)--(-2.665188,-45.658683)--(7.319504,-45.763020)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-23.740202,-40.356795)--(-33.672552,-41.643827)--(-35.531813,-35.114814)--(-25.051039,-33.756717)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.485170,-51.961623)--(-11.752932,-52.280802)--(-12.604278,-46.000982)--(-2.665188,-45.658683)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(49.728686,12.188702)--(37.095650,14.135059)--(37.498821,21.056277)--(50.269158,19.088766)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(40.225338,-35.906450)--(30.006525,-34.332049)--(31.448174,-27.615062)--(42.157945,-29.265103)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-40.168123,-14.740501)--(-51.329175,-16.791613)--(-52.874809,-9.896469)--(-41.377673,-7.783594)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-41.377673,-7.783594)--(-52.874809,-9.896469)--(-54.194024,-2.958947)--(-42.410037,-0.793355)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(26.744474,-47.296846)--(17.178957,-46.312207)--(18.265733,-39.855092)--(28.436384,-40.902022)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(24.242697,42.551946)--(10.329178,43.326951)--(10.262784,49.700249)--(24.086869,48.930227)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-38.786567,-21.634288)--(-49.563743,-23.614853)--(-51.329175,-16.791613)--(-40.168123,-14.740501)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(16.018618,-52.571005)--(6.825114,-52.058913)--(7.319504,-45.763020)--(17.178957,-46.312207)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-42.410037,-0.793355)--(-54.194024,-2.958947)--(-55.281172,3.991247)--(-43.260795,6.200280)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(37.822397,34.598962)--(24.294714,35.991452)--(24.242697,42.551946)--(37.741417,41.162437)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.508537,28.610967)--(-44.690978,26.902788)--(-44.786870,33.612309)--(-31.576144,35.324153)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-37.238922,-28.435433)--(-47.586071,-30.336971)--(-49.563743,-23.614853)--(-38.786567,-21.634288)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(10.262784,49.700249)--(-3.736900,49.846541)--(-3.696723,56.005443)--(10.152443,55.860723)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(50.269158,19.088766)--(37.498821,21.056277)--(37.741417,27.887328)--(50.594370,25.907089)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-11.752932,-52.280802)--(-20.819598,-53.010986)--(-22.327706,-46.784059)--(-12.604278,-46.000982)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(38.120480,-42.394040)--(28.436384,-40.902022)--(30.006525,-34.332049)--(40.225338,-35.906450)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-43.260795,6.200280)--(-55.281172,3.991247)--(-56.131598,10.924348)--(-43.926303,13.167365)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-22.327706,-46.784059)--(-31.669100,-47.994515)--(-33.672552,-41.643827)--(-23.740202,-40.356795)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.786976,42.991142)--(-31.508537,41.886076)--(-31.306006,48.268636)--(-17.672645,49.366599)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.736900,49.846541)--(-17.672645,49.366599)--(-17.482636,55.530661)--(-3.696723,56.005443)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(6.301497,-58.131881)--(-2.294510,-58.042056)--(-2.485170,-51.961623)--(6.825114,-52.058913)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-35.531813,-35.114814)--(-45.404628,-36.929181)--(-47.586071,-30.336971)--(-37.238922,-28.435433)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(24.938039,-53.489138)--(16.018618,-52.571005)--(17.178957,-46.312207)--(26.744474,-47.296846)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(56.248198,-17.915760)--(45.474075,-15.635433)--(46.843398,-8.705474)--(57.941954,-11.054467)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.294510,-58.042056)--(-10.851259,-58.336747)--(-11.752932,-52.280802)--(-2.485170,-51.961623)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-43.926303,13.167365)--(-56.131598,10.924348)--(-56.741659,17.810671)--(-44.403712,20.078065)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(57.941954,-11.054467)--(46.843398,-8.705474)--(48.012131,-1.738236)--(59.387594,-4.145836)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(54.313579,-24.700336)--(43.910024,-22.498439)--(45.474075,-15.635433)--(56.248198,-17.915760)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(24.086869,48.930227)--(10.262784,49.700249)--(10.152443,55.860723)--(23.827898,55.098980)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.576144,35.324153)--(-44.786870,33.612309)--(-44.690978,40.177897)--(-31.508537,41.886076)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(50.594370,25.907089)--(37.741417,27.887328)--(37.822397,34.598962)--(50.702929,32.614473)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(14.789685,-58.604686)--(6.301497,-58.131881)--(6.825114,-52.058913)--(16.018618,-52.571005)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(35.852385,-48.700092)--(26.744474,-47.296846)--(28.436384,-40.902022)--(38.120480,-42.394040)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(37.741417,41.162437)--(24.242697,42.551946)--(24.086869,48.930227)--(37.498821,47.549649)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(59.387594,-4.145836)--(48.012131,-1.738236)--(48.975268,5.236444)--(60.578926,2.780548)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(52.146381,-31.379141)--(42.157945,-29.265103)--(43.910024,-22.498439)--(54.313579,-24.700336)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-33.672552,-41.643827)--(-43.028755,-43.363254)--(-45.404628,-36.929181)--(-35.531813,-35.114814)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-20.819598,-53.010986)--(-29.530035,-54.139683)--(-31.669100,-47.994515)--(-22.327706,-46.784059)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.851259,-58.336747)--(-19.222339,-59.010912)--(-20.819598,-53.010986)--(-11.752932,-52.280802)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-44.403712,20.078065)--(-56.741659,17.810671)--(-57.108744,24.620725)--(-44.690978,26.902788)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(60.578926,2.780548)--(48.975268,5.236444)--(49.728686,12.188702)--(61.510850,9.695025)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(49.755884,-37.923576)--(40.225338,-35.906450)--(42.157945,-29.265103)--(52.146381,-31.379141)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(10.152443,55.860723)--(-3.696723,56.005443)--(-3.640715,61.924520)--(9.998628,61.781994)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.672645,49.366599)--(-31.306006,48.268636)--(-30.969417,54.444502)--(-17.482636,55.530661)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(23.024817,-59.452381)--(14.789685,-58.604686)--(16.018618,-52.571005)--(24.938039,-53.489138)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.696723,56.005443)--(-17.482636,55.530661)--(-17.217764,61.456932)--(-3.640715,61.924520)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(50.702929,32.614473)--(37.822397,34.598962)--(37.741417,41.162437)--(50.594370,39.182198)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.669100,-47.994515)--(-40.468627,-49.611640)--(-43.028755,-43.363254)--(-33.672552,-41.643827)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(33.430764,-54.797602)--(24.938039,-53.489138)--(26.744474,-47.296846)--(35.852385,-48.700092)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(5.750897,-63.955920)--(-2.094025,-63.873943)--(-2.294510,-58.042056)--(6.301497,-58.131881)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.508537,41.886076)--(-44.690978,40.177897)--(-44.403712,46.571437)--(-31.306006,48.268636)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(61.510850,9.695025)--(49.728686,12.188702)--(50.269158,19.088766)--(62.179376,16.567986)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-51.329175,-16.791613)--(-61.611971,-19.323436)--(-63.467242,-12.504530)--(-52.874809,-9.896469)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(47.152325,-44.305616)--(38.120480,-42.394040)--(40.225338,-35.906450)--(49.755884,-37.923576)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.094025,-63.873943)--(-9.903118,-64.142885)--(-10.851259,-58.336747)--(-2.294510,-58.042056)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-49.563743,-23.614853)--(-59.492869,-26.059595)--(-61.611971,-19.323436)--(-51.329175,-16.791613)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-44.690978,26.902788)--(-57.108744,24.620725)--(-57.231281,31.325349)--(-44.786870,33.612309)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-52.874809,-9.896469)--(-63.467242,-12.504530)--(-65.050736,-5.632078)--(-54.194024,-2.958947)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(37.498821,47.549649)--(24.086869,48.930227)--(23.827898,55.098980)--(37.095650,53.733245)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(23.827898,55.098980)--(10.152443,55.860723)--(9.998628,61.781994)--(23.466892,61.031791)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(13.497420,-64.387413)--(5.750897,-63.955920)--(6.301497,-58.131881)--(14.789685,-58.604686)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-47.586071,-30.336971)--(-57.119009,-32.684164)--(-59.492869,-26.059595)--(-49.563743,-23.614853)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-19.222339,-59.010912)--(-27.264519,-60.053017)--(-29.530035,-54.139683)--(-20.819598,-53.010986)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-54.194024,-2.958947)--(-65.050736,-5.632078)--(-66.355673,1.264491)--(-55.281172,3.991247)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(62.179376,16.567986)--(50.269158,19.088766)--(50.594370,25.907089)--(62.581640,23.370001)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.903118,-64.142885)--(-17.542766,-64.758145)--(-19.222339,-59.010912)--(-10.851259,-58.336747)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-45.404628,-36.929181)--(-54.500556,-39.168774)--(-57.119009,-32.684164)--(-47.586071,-30.336971)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(44.346852,-50.497933)--(35.852385,-48.700092)--(38.120480,-42.394040)--(47.152325,-44.305616)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-29.530035,-54.139683)--(-37.735205,-55.647580)--(-40.468627,-49.611640)--(-31.669100,-47.994515)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.482636,55.530661)--(-30.969417,54.444502)--(-30.500213,60.387229)--(-17.217764,61.456932)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(50.594370,39.182198)--(37.741417,41.162437)--(37.498821,47.549649)--(50.269158,45.582138)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-55.281172,3.991247)--(-66.355673,1.264491)--(-67.376465,8.155645)--(-56.131598,10.924348)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(30.865987,-60.660461)--(23.024817,-59.452381)--(24.938039,-53.489138)--(33.430764,-54.797602)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(9.998628,61.781994)--(-3.640715,61.924520)--(-3.569118,67.578427)--(9.801997,67.438704)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(21.012998,-65.161040)--(13.497420,-64.387413)--(14.789685,-58.604686)--(23.024817,-59.452381)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-44.786870,33.612309)--(-57.231281,31.325349)--(-57.108744,37.895834)--(-44.690978,40.177897)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.306006,48.268636)--(-44.403712,46.571437)--(-43.926303,52.765551)--(-30.969417,54.444502)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-43.028755,-43.363254)--(-51.648724,-45.485657)--(-54.500556,-39.168774)--(-45.404628,-36.929181)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.640715,61.924520)--(-17.217764,61.456932)--(-16.879163,67.120035)--(-3.569118,67.578427)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(63.787814,-27.347837)--(54.313579,-24.700336)--(56.248198,-17.915760)--(66.059900,-20.657563)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(66.059900,-20.657563)--(56.248198,-17.915760)--(57.941954,-11.054467)--(68.049107,-13.878831)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(62.581640,23.370001)--(50.594370,25.907089)--(50.702929,32.614473)--(62.715919,30.071942)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(5.175671,-69.506090)--(-1.884573,-69.432313)--(-2.094025,-63.873943)--(5.750897,-63.955920)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-56.131598,10.924348)--(-67.376465,8.155645)--(-68.108740,15.011876)--(-56.741659,17.810671)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(37.095650,53.733245)--(23.827898,55.098980)--(23.466892,61.031791)--(36.533630,59.686748)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(41.351479,-56.474009)--(33.430764,-54.797602)--(35.852385,-48.700092)--(44.346852,-50.497933)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(61.242578,-33.921002)--(52.146381,-31.379141)--(54.313579,-24.700336)--(63.787814,-27.347837)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(68.049107,-13.878831)--(57.941954,-11.054467)--(59.387594,-4.145836)--(69.746918,-7.040668)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-1.884573,-69.432313)--(-8.912571,-69.674354)--(-9.903118,-64.142885)--(-2.094025,-63.873943)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.542766,-64.758145)--(-24.882252,-65.709194)--(-27.264519,-60.053017)--(-19.222339,-59.010912)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(23.466892,61.031791)--(9.998628,61.781994)--(9.801997,67.438704)--(23.005397,66.703254)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-27.264519,-60.053017)--(-34.840196,-61.445230)--(-37.735205,-55.647580)--(-29.530035,-54.139683)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-40.468627,-49.611640)--(-48.575724,-51.607763)--(-51.648724,-45.485657)--(-43.028755,-43.363254)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(12.147357,-69.894423)--(5.175671,-69.506090)--(5.750897,-63.955920)--(13.497420,-64.387413)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(58.435093,-40.348913)--(49.755884,-37.923576)--(52.146381,-31.379141)--(61.242578,-33.921002)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(69.746918,-7.040668)--(59.387594,-4.145836)--(60.578926,2.780548)--(71.146062,-0.172356)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(50.269158,45.582138)--(37.498821,47.549649)--(37.095650,53.733245)--(49.728686,51.786888)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-56.741659,17.810671)--(-68.108740,15.011876)--(-68.549363,21.803824)--(-57.108744,24.620725)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-8.912571,-69.674354)--(-15.788072,-70.228073)--(-17.542766,-64.758145)--(-9.903118,-64.142885)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-44.690978,40.177897)--(-57.108744,37.895834)--(-56.741659,44.304043)--(-44.403712,46.571437)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(28.169038,-66.263562)--(21.012998,-65.161040)--(23.024817,-59.452381)--(30.865987,-60.660461)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(55.377380,-46.604043)--(47.152325,-44.305616)--(49.755884,-37.923576)--(58.435093,-40.348913)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(62.715919,30.071942)--(50.702929,32.614473)--(50.594370,39.182198)--(62.581640,36.645110)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.217764,61.456932)--(-30.500213,60.387229)--(-29.900402,66.071368)--(-16.879163,67.120035)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(71.146062,-0.172356)--(60.578926,2.780548)--(61.510850,9.695025)--(72.240547,6.696695)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-30.969417,54.444502)--(-43.926303,52.765551)--(-43.260795,58.733715)--(-30.500213,60.387229)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(38.179033,-62.208256)--(30.865987,-60.660461)--(33.430764,-54.797602)--(41.351479,-56.474009)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(18.911199,-70.590669)--(12.147357,-69.894423)--(13.497420,-64.387413)--(21.012998,-65.161040)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-37.735205,-55.647580)--(-45.294715,-57.508877)--(-48.575724,-51.607763)--(-40.468627,-49.611640)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(9.801997,67.438704)--(-3.569118,67.578427)--(-3.482237,72.942954)--(9.563392,72.806631)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(52.082532,-52.659608)--(44.346852,-50.497933)--(47.152325,-44.305616)--(55.377380,-46.604043)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-24.882252,-65.709194)--(-31.795996,-66.979761)--(-34.840196,-61.445230)--(-27.264519,-60.053017)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-59.492869,-26.059595)--(-68.404056,-28.926684)--(-70.840570,-22.292649)--(-61.611971,-19.323436)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(72.240547,6.696695)--(61.510850,9.695025)--(62.179376,16.567986)--(73.025687,13.537069)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.569118,67.578427)--(-16.879163,67.120035)--(-16.468283,72.495719)--(-3.482237,72.942954)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-57.108744,24.620725)--(-68.549363,21.803824)--(-68.696448,28.502404)--(-57.231281,31.325349)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-15.788072,-70.228073)--(-22.393435,-71.083995)--(-24.882252,-65.709194)--(-17.542766,-64.758145)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(36.533630,59.686748)--(23.466892,61.031791)--(23.005397,66.703254)--(35.815167,65.384663)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-61.611971,-19.323436)--(-70.840570,-22.292649)--(-72.973733,-15.563153)--(-63.467242,-12.504530)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-57.119009,-32.684164)--(-65.674625,-35.436851)--(-68.404056,-28.926684)--(-59.492869,-26.059595)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(4.578281,-74.758624)--(-1.667050,-74.693362)--(-1.884573,-69.432313)--(5.175671,-69.506090)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-63.467242,-12.504530)--(-72.973733,-15.563153)--(-74.794412,-8.767013)--(-65.050736,-5.632078)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-1.667050,-74.693362)--(-7.883858,-74.907467)--(-8.912571,-69.674354)--(-1.884573,-69.432313)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-54.500556,-39.168774)--(-62.663965,-41.795272)--(-65.674625,-35.436851)--(-57.119009,-32.684164)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(23.005397,66.703254)--(9.801997,67.438704)--(9.563392,72.806631)--(22.445389,72.089084)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-44.403712,46.571437)--(-56.741659,44.304043)--(-56.131598,50.522535)--(-43.926303,52.765551)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(62.581640,36.645110)--(50.594370,39.182198)--(50.269158,45.582138)--(62.179376,43.061358)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(49.728686,51.786888)--(37.095650,53.733245)--(36.533630,59.686748)--(48.975268,57.769879)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-34.840196,-61.445230)--(-41.819748,-63.163730)--(-45.294715,-57.508877)--(-37.735205,-55.647580)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(10.745277,-75.102135)--(4.578281,-74.758624)--(5.175671,-69.506090)--(12.147357,-69.894423)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(25.351464,-71.582913)--(18.911199,-70.590669)--(21.012998,-65.161040)--(28.169038,-66.263562)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(48.564659,-58.489676)--(41.351479,-56.474009)--(44.346852,-50.497933)--(52.082532,-52.659608)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(34.843098,-67.676117)--(28.169038,-66.263562)--(30.865987,-60.660461)--(38.179033,-62.208256)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(73.025687,13.537069)--(62.179376,16.567986)--(62.581640,23.370001)--(73.498120,20.319476)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-65.050736,-5.632078)--(-74.794412,-8.767013)--(-76.294810,-1.933331)--(-66.355673,1.264491)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-51.648724,-45.485657)--(-59.384969,-47.974720)--(-62.663965,-41.795272)--(-54.500556,-39.168774)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-7.883858,-74.907467)--(-13.965771,-75.397274)--(-15.788072,-70.228073)--(-8.912571,-69.674354)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-57.231281,31.325349)--(-68.696448,28.502404)--(-68.549363,35.078933)--(-57.108744,37.895834)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-30.500213,60.387229)--(-43.260795,58.733715)--(-42.410037,64.450372)--(-29.900402,66.071368)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-16.879163,67.120035)--(-29.900402,66.071368)--(-29.172553,71.472580)--(-16.468283,72.495719)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(16.728419,-75.718018)--(10.745277,-75.102135)--(12.147357,-69.894423)--(18.911199,-70.590669)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-66.355673,1.264491)--(-76.294810,-1.933331)--(-77.468502,4.908629)--(-67.376465,8.155645)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-48.575724,-51.607763)--(-55.851677,-53.948732)--(-59.384969,-47.974720)--(-51.648724,-45.485657)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-22.393435,-71.083995)--(-28.615640,-72.227475)--(-31.795996,-66.979761)--(-24.882252,-65.709194)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(44.838824,-64.069282)--(38.179033,-62.208256)--(41.351479,-56.474009)--(48.564659,-58.489676)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(9.563392,72.806631)--(-3.482237,72.942954)--(-3.380444,77.995127)--(9.283836,77.862789)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(72.170621,-30.395642)--(63.787814,-27.347837)--(66.059900,-20.657563)--(74.741298,-23.813930)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(73.498120,20.319476)--(62.581640,23.370001)--(62.715919,30.071942)--(73.655823,27.014871)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.795996,-66.979761)--(-38.165702,-68.548105)--(-41.819748,-63.163730)--(-34.840196,-61.445230)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(69.290898,-36.847195)--(61.242578,-33.921002)--(63.787814,-27.347837)--(72.170621,-30.395642)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.965771,-75.397274)--(-19.808726,-76.154403)--(-22.393435,-71.083995)--(-15.788072,-70.228073)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(62.179376,43.061358)--(50.269158,45.582138)--(49.728686,51.786888)--(61.510850,49.293211)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(74.741298,-23.813930)--(66.059900,-20.657563)--(68.049107,-13.878831)--(76.991921,-17.130243)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(66.114462,-43.140963)--(58.435093,-40.348913)--(61.242578,-33.921002)--(69.290898,-36.847195)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(35.815167,65.384663)--(23.005397,66.703254)--(22.445389,72.089084)--(34.943339,70.802591)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-43.926303,52.765551)--(-56.131598,50.522535)--(-55.281172,56.524681)--(-43.260795,58.733715)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-67.376465,8.155645)--(-77.468502,4.908629)--(-78.310462,11.729570)--(-68.108740,15.011876)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.482237,72.942954)--(-16.468283,72.495719)--(-15.986883,77.560966)--(-3.380444,77.995127)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-45.294715,-57.508877)--(-52.079220,-59.691727)--(-55.851677,-53.948732)--(-48.575724,-51.607763)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(31.357960,-72.854179)--(25.351464,-71.582913)--(28.169038,-66.263562)--(34.843098,-67.676117)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(76.991921,-17.130243)--(68.049107,-13.878831)--(69.746918,-7.040668)--(78.912853,-10.373202)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(48.975268,57.769879)--(36.533630,59.686748)--(35.815167,65.384663)--(48.012131,63.505491)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(62.654912,-49.249995)--(55.377380,-46.604043)--(58.435093,-40.348913)--(66.114462,-43.140963)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-57.108744,37.895834)--(-68.549363,35.078933)--(-68.108740,41.505248)--(-56.741659,44.304043)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(3.961287,-79.691030)--(-1.442390,-79.634563)--(-1.667050,-74.693362)--(4.578281,-74.758624)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(22.425332,-76.595735)--(16.728419,-75.718018)--(18.911199,-70.590669)--(25.351464,-71.582913)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-1.442390,-79.634563)--(-6.821386,-79.819814)--(-7.883858,-74.907467)--(-1.667050,-74.693362)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(22.445389,72.089084)--(9.563392,72.806631)--(9.283836,77.862789)--(21.789267,77.166218)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(9.297184,-79.988248)--(3.961287,-79.691030)--(4.578281,-74.758624)--(10.745277,-75.102135)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(40.920983,-69.374534)--(34.843098,-67.676117)--(38.179033,-62.208256)--(44.838824,-64.069282)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(78.912853,-10.373202)--(69.746918,-7.040668)--(71.146062,-0.172356)--(80.495868,-3.571741)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(58.927065,-55.148131)--(52.082532,-52.659608)--(55.377380,-46.604043)--(62.654912,-49.249995)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(73.655823,27.014871)--(62.715919,30.071942)--(62.581640,36.645110)--(73.498120,33.594585)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-68.108740,15.011876)--(-78.310462,11.729570)--(-78.817084,18.500283)--(-68.549363,21.803824)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-41.819748,-63.163730)--(-48.083752,-65.179113)--(-52.079220,-59.691727)--(-45.294715,-57.508877)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.821386,-79.819814)--(-12.083667,-80.243612)--(-13.965771,-75.397274)--(-7.883858,-74.907467)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-19.808726,-76.154403)--(-25.312748,-77.165900)--(-28.615640,-72.227475)--(-22.393435,-71.083995)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-29.900402,66.071368)--(-42.410037,64.450372)--(-41.377673,69.891043)--(-29.172553,71.472580)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-28.615640,-72.227475)--(-34.348224,-73.638947)--(-38.165702,-68.548105)--(-31.795996,-66.979761)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-16.468283,72.495719)--(-29.172553,71.472580)--(-28.319783,76.567735)--(-15.986883,77.560966)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(80.495868,-3.571741)--(71.146062,-0.172356)--(72.240547,6.696695)--(81.734188,3.245015)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(14.474005,-80.521131)--(9.297184,-79.988248)--(10.745277,-75.102135)--(16.728419,-75.718018)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(54.946884,-60.810113)--(48.564659,-58.489676)--(52.082532,-52.659608)--(58.927065,-55.148131)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(61.510850,49.293211)--(49.728686,51.786888)--(48.975268,57.769879)--(60.578926,55.313983)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(27.738542,-77.720267)--(22.425332,-76.595735)--(25.351464,-71.582913)--(31.357960,-72.854179)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-43.260795,58.733715)--(-55.281172,56.524681)--(-54.194024,62.284781)--(-42.410037,64.450372)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-56.741659,44.304043)--(-68.108740,41.505248)--(-67.376465,47.753832)--(-56.131598,50.522535)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-65.674625,-35.436851)--(-73.106530,-38.547934)--(-76.144830,-32.167063)--(-68.404056,-28.926684)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-12.083667,-80.243612)--(-17.139193,-80.898706)--(-19.808726,-76.154403)--(-13.965771,-75.397274)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-62.663965,-41.795272)--(-69.755177,-44.763737)--(-73.106530,-38.547934)--(-65.674625,-35.436851)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-68.549363,21.803824)--(-78.817084,18.500283)--(-78.986200,25.191775)--(-68.696448,28.502404)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-68.404056,-28.926684)--(-76.144830,-32.167063)--(-78.857066,-25.648448)--(-70.840570,-22.292649)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-38.165702,-68.548105)--(-43.882381,-70.387392)--(-48.083752,-65.179113)--(-41.819748,-63.163730)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(36.827911,-74.382714)--(31.357960,-72.854179)--(34.843098,-67.676117)--(40.920983,-69.374534)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(9.283836,77.862789)--(-3.380444,77.995127)--(-3.264176,82.713313)--(8.964525,82.585527)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(34.943339,70.802591)--(22.445389,72.089084)--(21.789267,77.166218)--(33.921877,75.917331)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(81.734188,3.245015)--(72.240547,6.696695)--(73.025687,13.537069)--(82.622509,10.047875)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(73.498120,33.594585)--(62.581640,36.645110)--(62.179376,43.061358)--(73.025687,40.030441)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-59.384969,-47.974720)--(-66.105121,-50.787854)--(-69.755177,-44.763737)--(-62.663965,-41.795272)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(48.012131,63.505491)--(35.815167,65.384663)--(34.943339,70.802591)--(46.843398,68.969162)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(50.731411,-66.211698)--(44.838824,-64.069282)--(48.564659,-58.489676)--(54.946884,-60.810113)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-70.840570,-22.292649)--(-78.857066,-25.648448)--(-81.231624,-19.020003)--(-72.973733,-15.563153)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(19.403171,-81.280562)--(14.474005,-80.521131)--(16.728419,-75.718018)--(22.425332,-76.595735)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.380444,77.995127)--(-15.986883,77.560966)--(-15.437025,82.294085)--(-3.264176,82.713313)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-55.851677,-53.948732)--(-62.171993,-56.594490)--(-66.105121,-50.787854)--(-59.384969,-47.974720)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-25.312748,-77.165900)--(-30.383662,-78.414456)--(-34.348224,-73.638947)--(-28.615640,-72.227475)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-72.973733,-15.563153)--(-81.231624,-19.020003)--(-83.258335,-12.310110)--(-74.794412,-8.767013)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(3.327330,-84.282187)--(-1.211552,-84.234757)--(-1.442390,-79.634563)--(3.961287,-79.691030)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(21.789267,77.166218)--(9.283836,77.862789)--(8.964525,82.585527)--(21.039839,81.912914)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-1.211552,-84.234757)--(-5.729704,-84.390361)--(-6.821386,-79.819814)--(-1.442390,-79.634563)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.139193,-80.898706)--(-21.901463,-81.773888)--(-25.312748,-77.165900)--(-19.808726,-76.154403)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(82.622509,10.047875)--(73.025687,13.537069)--(73.498120,20.319476)--(83.157027,16.807709)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(7.809280,-84.531838)--(3.327330,-84.282187)--(3.961287,-79.691030)--(9.297184,-79.988248)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-68.696448,28.502404)--(-78.986200,25.191775)--(-78.817084,31.775392)--(-68.549363,35.078933)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-52.079220,-59.691727)--(-57.972635,-62.158780)--(-62.171993,-56.594490)--(-55.851677,-53.948732)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-34.348224,-73.638947)--(-39.493100,-75.294262)--(-43.882381,-70.387392)--(-38.165702,-68.548105)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(46.298698,-71.329754)--(40.920983,-69.374534)--(44.838824,-64.069282)--(50.731411,-66.211698)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-29.172553,71.472580)--(-41.377673,69.891043)--(-40.168123,75.032429)--(-28.319783,76.567735)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-74.794412,-8.767013)--(-83.258335,-12.310110)--(-84.928522,-5.547504)--(-76.294810,-1.933331)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(60.578926,55.313983)--(48.975268,57.769879)--(48.012131,63.505491)--(59.387594,61.097892)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-5.729704,-84.390361)--(-10.149819,-84.746335)--(-12.083667,-80.243612)--(-6.821386,-79.819814)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-56.131598,50.522535)--(-67.376465,47.753832)--(-66.355673,53.797926)--(-55.281172,56.524681)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(32.577137,-79.072375)--(27.738542,-77.720267)--(31.357960,-72.854179)--(36.827911,-74.382714)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(24.000343,-82.253546)--(19.403171,-81.280562)--(22.425332,-76.595735)--(27.738542,-77.720267)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(73.025687,40.030441)--(62.179376,43.061358)--(61.510850,49.293211)--(72.240547,46.294881)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-15.986883,77.560966)--(-28.319783,76.567735)--(-27.345743,81.335015)--(-15.437025,82.294085)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(12.157611,-84.979440)--(7.809280,-84.531838)--(9.297184,-79.988248)--(14.474005,-80.521131)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-42.410037,64.450372)--(-54.194024,62.284781)--(-52.874809,67.778167)--(-41.377673,69.891043)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-48.083752,-65.179113)--(-53.525030,-67.456896)--(-57.972635,-62.158780)--(-52.079220,-59.691727)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(72.662593,-46.251954)--(66.114462,-43.140963)--(69.290898,-36.847195)--(76.153632,-40.107652)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(76.153632,-40.107652)--(69.290898,-36.847195)--(72.170621,-30.395642)--(79.318569,-33.791603)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-76.294810,-1.933331)--(-84.928522,-5.547504)--(-86.235032,1.238857)--(-77.468502,4.908629)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(68.860402,-52.198198)--(62.654912,-49.249995)--(66.114462,-43.140963)--(72.662593,-46.251954)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.149819,-84.746335)--(-14.396268,-85.296589)--(-17.139193,-80.898706)--(-12.083667,-80.243612)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(79.318569,-33.791603)--(72.170621,-30.395642)--(74.741298,-23.813930)--(82.143852,-27.330853)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(83.157027,16.807709)--(73.498120,20.319476)--(73.655823,27.014871)--(83.335455,23.495569)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(41.667728,-76.142365)--(36.827911,-74.382714)--(40.920983,-69.374534)--(46.298698,-71.329754)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(64.763340,-57.920921)--(58.927065,-55.148131)--(62.654912,-49.249995)--(68.860402,-52.198198)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-21.901463,-81.773888)--(-26.288992,-82.854182)--(-30.383662,-78.414456)--(-25.312748,-77.165900)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(46.843398,68.969162)--(34.943339,70.802591)--(33.921877,75.917331)--(45.474075,74.137497)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(33.921877,75.917331)--(21.789267,77.166218)--(21.039839,81.912914)--(32.755157,80.706981)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(82.143852,-27.330853)--(74.741298,-23.813930)--(76.991921,-17.130243)--(84.617382,-20.753068)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-68.549363,35.078933)--(-78.817084,31.775392)--(-78.310462,38.222942)--(-68.108740,41.505248)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(16.297922,-85.617333)--(12.157611,-84.979440)--(14.474005,-80.521131)--(19.403171,-81.280562)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-30.383662,-78.414456)--(-34.934703,-79.878710)--(-39.493100,-75.294262)--(-34.348224,-73.638947)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(8.964525,82.585527)--(-3.264176,82.713313)--(-3.133930,87.077308)--(8.606826,86.954621)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-43.882381,-70.387392)--(-48.848222,-72.466151)--(-53.525030,-67.456896)--(-48.083752,-65.179113)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-77.468502,4.908629)--(-86.235032,1.238857)--(-87.172270,8.019913)--(-78.310462,11.729570)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(60.388952,-63.395618)--(54.946884,-60.810113)--(58.927065,-55.148131)--(64.763340,-57.920921)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(84.617382,-20.753068)--(76.991921,-17.130243)--(78.912853,-10.373202)--(86.728568,-14.086416)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.264176,82.713313)--(-15.437025,82.294085)--(-14.821063,86.674807)--(-3.133930,87.077308)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.396268,-85.296589)--(-18.396392,-86.031708)--(-21.901463,-81.773888)--(-17.139193,-80.898706)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(28.186863,-83.423436)--(24.000343,-82.253546)--(27.738542,-77.720267)--(32.577137,-79.072375)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-55.281172,56.524681)--(-66.355673,53.797926)--(-65.050736,59.611649)--(-54.194024,62.284781)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(59.387594,61.097892)--(48.012131,63.505491)--(46.843398,68.969162)--(57.941954,66.620170)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(72.240547,46.294881)--(61.510850,49.293211)--(60.578926,55.313983)--(71.146062,52.361079)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(55.755969,-68.598845)--(50.731411,-66.211698)--(54.946884,-60.810113)--(60.388952,-63.395618)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(83.335455,23.495569)--(73.655823,27.014871)--(73.498120,33.594585)--(83.157027,30.082818)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(2.679124,-88.512435)--(-0.975527,-88.474245)--(-1.211552,-84.234757)--(3.327330,-84.282187)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(21.039839,81.912914)--(8.964525,82.585527)--(8.606826,86.954621)--(20.200316,86.308846)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(36.858329,-80.628923)--(32.577137,-79.072375)--(36.827911,-74.382714)--(41.667728,-76.142365)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.975527,-88.474245)--(-4.613486,-88.599535)--(-5.729704,-84.390361)--(-1.211552,-84.234757)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(20.159372,-86.434603)--(16.297922,-85.617333)--(19.403171,-81.280562)--(24.000343,-82.253546)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(86.728568,-14.086416)--(78.912853,-10.373202)--(80.495868,-3.571741)--(88.468368,-7.359443)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-28.319783,76.567735)--(-40.168123,75.032429)--(-38.786567,79.852515)--(-27.345743,81.335015)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-39.493100,-75.294262)--(-43.962238,-77.165096)--(-48.848222,-72.466151)--(-43.882381,-70.387392)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(6.287935,-88.713451)--(2.679124,-88.512435)--(3.327330,-84.282187)--(7.809280,-84.531838)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-78.310462,11.729570)--(-87.172270,8.019913)--(-87.736223,14.766627)--(-78.817084,18.500283)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-41.377673,69.891043)--(-52.874809,67.778167)--(-51.329175,72.981317)--(-40.168123,75.032429)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-4.613486,-88.599535)--(-8.172507,-88.886161)--(-10.149819,-84.746335)--(-5.729704,-84.390361)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-68.108740,41.505248)--(-78.310462,38.222942)--(-77.468502,44.506815)--(-67.376465,47.753832)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-26.288992,-82.854182)--(-30.226710,-84.121105)--(-34.934703,-79.878710)--(-30.383662,-78.414456)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(50.884230,-73.508322)--(46.298698,-71.329754)--(50.731411,-66.211698)--(55.755969,-68.598845)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(9.789157,-89.073854)--(6.287935,-88.713451)--(7.809280,-84.531838)--(12.157611,-84.979440)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-66.105121,-50.787854)--(-71.694196,-53.876927)--(-75.652858,-48.023375)--(-69.755177,-44.763737)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-15.437025,82.294085)--(-27.345743,81.335015)--(-26.254604,85.754007)--(-14.821063,86.674807)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-18.396392,-86.031708)--(-22.081749,-86.939114)--(-26.288992,-82.854182)--(-21.901463,-81.773888)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-69.755177,-44.763737)--(-75.652858,-48.023375)--(-79.287562,-41.964181)--(-73.106530,-38.547934)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(88.468368,-7.359443)--(80.495868,-3.571741)--(81.734188,3.245015)--(89.829334,-0.600956)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-62.171993,-56.594490)--(-67.428529,-59.499769)--(-71.694196,-53.876927)--(-66.105121,-50.787854)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-73.106530,-38.547934)--(-79.287562,-41.964181)--(-82.582745,-35.725289)--(-76.144830,-32.167063)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-8.172507,-88.886161)--(-11.591695,-89.329218)--(-14.396268,-85.296589)--(-10.149819,-84.746335)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-34.934703,-79.878710)--(-38.888001,-81.533607)--(-43.962238,-77.165096)--(-39.493100,-75.294262)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-57.972635,-62.158780)--(-62.874122,-64.867824)--(-67.428529,-59.499769)--(-62.171993,-56.594490)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(83.157027,30.082818)--(73.498120,33.594585)--(73.025687,40.030441)--(82.622509,36.541247)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(45.474075,74.137497)--(33.921877,75.917331)--(32.755157,80.706981)--(43.910024,78.988364)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-76.144830,-32.167063)--(-82.582745,-35.725289)--(-85.524296,-29.333416)--(-78.857066,-25.648448)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-78.817084,18.500283)--(-87.736223,14.766627)--(-87.924476,21.450108)--(-78.986200,25.191775)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(45.794597,-78.103024)--(41.667728,-76.142365)--(46.298698,-71.329754)--(50.884230,-73.508322)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(13.122884,-89.587477)--(9.789157,-89.073854)--(12.157611,-84.979440)--(16.297922,-85.617333)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(23.675888,-87.417266)--(20.159372,-86.434603)--(24.000343,-82.253546)--(28.186863,-83.423436)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(31.891098,-84.770215)--(28.186863,-83.423436)--(32.577137,-79.072375)--(36.858329,-80.628923)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(32.755157,80.706981)--(21.039839,81.912914)--(20.200316,86.308846)--(31.448174,85.151032)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(71.146062,52.361079)--(60.578926,55.313983)--(59.387594,61.097892)--(69.746918,58.203059)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-53.525030,-67.456896)--(-58.050479,-69.958105)--(-62.874122,-64.867824)--(-57.972635,-62.158780)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-54.194024,62.284781)--(-65.050736,59.611649)--(-63.467242,65.170106)--(-52.874809,67.778167)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-78.857066,-25.648448)--(-85.524296,-29.333416)--(-88.099619,-22.815932)--(-81.231624,-19.020003)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(89.829334,-0.600956)--(81.734188,3.245015)--(82.622509,10.047875)--(90.805636,6.160104)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-11.591695,-89.329218)--(-14.812545,-89.921127)--(-18.396392,-86.031708)--(-14.396268,-85.296589)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(57.941954,66.620170)--(46.843398,68.969162)--(45.474075,74.137497)--(56.248198,71.857170)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(8.606826,86.954621)--(-3.133930,87.077308)--(-2.990264,91.068424)--(8.212271,90.951362)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-67.376465,47.753832)--(-77.468502,44.506815)--(-76.294810,50.600104)--(-66.355673,53.797926)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-22.081749,-86.939114)--(-25.389282,-88.003281)--(-30.226710,-84.121105)--(-26.288992,-82.854182)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-48.848222,-72.466151)--(-52.978255,-74.748814)--(-58.050479,-69.958105)--(-53.525030,-67.456896)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(16.232074,-90.245533)--(13.122884,-89.587477)--(16.297922,-85.617333)--(20.159372,-86.434603)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-81.231624,-19.020003)--(-88.099619,-22.815932)--(-90.297685,-16.200748)--(-83.258335,-12.310110)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.133930,87.077308)--(-14.821063,86.674807)--(-14.141635,90.684375)--(-2.990264,91.068424)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(40.508865,-82.363278)--(36.858329,-80.628923)--(41.667728,-76.142365)--(45.794597,-78.103024)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-30.226710,-84.121105)--(-33.647240,-85.552979)--(-38.888001,-81.533607)--(-34.934703,-79.878710)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-78.986200,25.191775)--(-87.924476,21.450108)--(-87.736223,28.041736)--(-78.817084,31.775392)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-27.345743,81.335015)--(-38.786567,79.852515)--(-37.238922,84.330660)--(-26.254604,85.754007)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(82.622509,36.541247)--(73.025687,40.030441)--(72.240547,46.294881)--(81.734188,42.843201)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(90.805636,6.160104)--(82.622509,10.047875)--(83.157027,16.807709)--(91.393095,12.894786)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-40.168123,75.032429)--(-51.329175,72.981317)--(-49.563743,77.871950)--(-38.786567,79.852515)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(20.200316,86.308846)--(8.606826,86.954621)--(8.212271,90.951362)--(19.274292,90.335190)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.812545,-89.921127)--(-17.779949,-90.651759)--(-22.081749,-86.939114)--(-18.396392,-86.031708)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(2.019447,-92.363658)--(-0.735324,-92.334872)--(-0.975527,-88.474245)--(2.679124,-88.512435)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(69.491497,-60.930537)--(64.763340,-57.920921)--(68.860402,-52.198198)--(73.887672,-55.398208)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(73.887672,-55.398208)--(68.860402,-52.198198)--(72.662593,-46.251954)--(77.967448,-49.628655)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-43.962238,-77.165096)--(-47.679170,-79.219438)--(-52.978255,-74.748814)--(-48.848222,-72.466151)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.735324,-92.334872)--(-3.477513,-92.429312)--(-4.613486,-88.599535)--(-0.975527,-88.474245)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(26.787304,-88.548508)--(23.675888,-87.417266)--(28.186863,-83.423436)--(31.891098,-84.770215)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-83.258335,-12.310110)--(-90.297685,-16.200748)--(-92.109083,-9.516189)--(-84.928522,-5.547504)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(64.797749,-66.201952)--(60.388952,-63.395618)--(64.763340,-57.920921)--(69.491497,-60.930537)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(4.739664,-92.515179)--(2.019447,-92.363658)--(2.679124,-88.512435)--(6.287935,-88.713451)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(77.967448,-49.628655)--(72.662593,-46.251954)--(76.153632,-40.107652)--(81.713356,-43.646586)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.477513,-92.429312)--(-6.160200,-92.645362)--(-8.172507,-88.886161)--(-4.613486,-88.599535)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(59.826527,-71.189879)--(55.755969,-68.598845)--(60.388952,-63.395618)--(64.797749,-66.201952)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(81.713356,-43.646586)--(76.153632,-40.107652)--(79.318569,-33.791603)--(85.109354,-37.477614)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(19.063530,-91.036761)--(16.232074,-90.245533)--(20.159372,-86.434603)--(23.675888,-87.417266)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(7.378784,-92.786840)--(4.739664,-92.515179)--(6.287935,-88.713451)--(9.789157,-89.073854)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(35.049667,-86.270839)--(31.891098,-84.770215)--(36.858329,-80.628923)--(40.508865,-82.363278)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.821063,86.674807)--(-26.254604,85.754007)--(-25.051039,89.805786)--(-14.141635,90.684375)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(69.746918,58.203059)--(59.387594,61.097892)--(57.941954,66.620170)--(68.049107,63.795805)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.160200,-92.645362)--(-8.737485,-92.979326)--(-11.591695,-89.329218)--(-8.172507,-88.886161)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-38.888001,-81.533607)--(-42.175915,-83.350832)--(-47.679170,-79.219438)--(-43.962238,-77.165096)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(54.599119,-75.872961)--(50.884230,-73.508322)--(55.755969,-68.598845)--(59.826527,-71.189879)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(85.109354,-37.477614)--(79.318569,-33.791603)--(82.143852,-27.330853)--(88.140902,-31.148158)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(43.910024,78.988364)--(32.755157,80.706981)--(31.448174,85.151032)--(42.157945,83.500990)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-84.928522,-5.547504)--(-92.109083,-9.516189)--(-93.526056,-2.790881)--(-86.235032,1.238857)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-25.389282,-88.003281)--(-28.262397,-89.206000)--(-33.647240,-85.552979)--(-30.226710,-84.121105)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-52.874809,67.778167)--(-63.467242,65.170106)--(-61.611971,70.449495)--(-51.329175,72.981317)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(91.393095,12.894786)--(83.157027,16.807709)--(83.335455,23.495569)--(91.589194,19.574251)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(9.891651,-93.173995)--(7.378784,-92.786840)--(9.789157,-89.073854)--(13.122884,-89.587477)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-66.355673,53.797926)--(-76.294810,50.600104)--(-74.794412,56.476715)--(-65.050736,59.611649)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-78.817084,31.775392)--(-87.736223,28.041736)--(-87.172270,34.513285)--(-78.310462,38.222942)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.779949,-90.651759)--(-20.443133,-91.508613)--(-25.389282,-88.003281)--(-22.081749,-86.939114)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(56.248198,71.857170)--(45.474075,74.137497)--(43.910024,78.988364)--(54.313579,76.786467)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(49.137909,-80.231144)--(45.794597,-78.103024)--(50.884230,-73.508322)--(54.599119,-75.872961)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-8.737485,-92.979326)--(-11.165269,-93.425490)--(-14.812545,-89.921127)--(-11.591695,-89.329218)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(88.140902,-31.148158)--(82.143852,-27.330853)--(84.617382,-20.753068)--(90.795016,-24.685321)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(31.448174,85.151032)--(20.200316,86.308846)--(19.274292,90.335190)--(30.006525,89.230453)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(81.734188,42.843201)--(72.240547,46.294881)--(71.146062,52.361079)--(80.495868,48.961694)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(21.568803,-91.947623)--(19.063530,-91.036761)--(23.675888,-87.417266)--(26.787304,-88.548508)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-33.647240,-85.552979)--(-36.492057,-87.125305)--(-42.175915,-83.350832)--(-38.888001,-81.533607)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(12.235269,-93.670018)--(9.891651,-93.173995)--(13.122884,-89.587477)--(16.232074,-90.245533)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(29.440382,-89.808975)--(26.787304,-88.548508)--(31.891098,-84.770215)--(35.049667,-86.270839)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-86.235032,1.238857)--(-93.526056,-2.790881)--(-94.542536,3.946379)--(-87.172270,8.019913)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(43.466282,-84.245764)--(40.508865,-82.363278)--(45.794597,-78.103024)--(49.137909,-80.231144)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(90.795016,-24.685321)--(84.617382,-20.753068)--(86.728568,-14.086416)--(93.060332,-18.116777)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(8.212271,90.951362)--(-2.990264,91.068424)--(-2.833794,94.669572)--(7.782550,94.558635)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-11.165269,-93.425490)--(-13.402012,-93.976219)--(-17.779949,-90.651759)--(-14.812545,-89.921127)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(91.589194,19.574251)--(83.335455,23.495569)--(83.157027,30.082818)--(91.393095,26.169895)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-62.874122,-64.867824)--(-66.699816,-67.772507)--(-71.531344,-62.614858)--(-67.428529,-59.499769)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-67.428529,-59.499769)--(-71.531344,-62.614858)--(-76.056563,-57.189083)--(-71.694196,-53.876927)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-38.786567,79.852515)--(-49.563743,77.871950)--(-47.586071,82.429123)--(-37.238922,84.330660)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-58.050479,-69.958105)--(-61.582669,-72.639943)--(-66.699816,-67.772507)--(-62.874122,-64.867824)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-20.443133,-91.508613)--(-22.756529,-92.477028)--(-28.262397,-89.206000)--(-25.389282,-88.003281)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.990264,91.068424)--(-14.141635,90.684375)--(-13.401651,94.305619)--(-2.833794,94.669572)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-26.254604,85.754007)--(-37.238922,84.330660)--(-35.531813,88.447689)--(-25.051039,89.805786)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(14.369538,-94.266423)--(12.235269,-93.670018)--(16.232074,-90.245533)--(19.063530,-91.036761)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-71.694196,-53.876927)--(-76.056563,-57.189083)--(-80.256097,-51.518415)--(-75.652858,-48.023375)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-78.310462,38.222942)--(-87.172270,34.513285)--(-86.235032,40.837043)--(-77.468502,44.506815)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-52.978255,-74.748814)--(-56.201816,-77.196324)--(-61.582669,-72.639943)--(-58.050479,-69.958105)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-28.262397,-89.206000)--(-30.651934,-90.526694)--(-36.492057,-87.125305)--(-33.647240,-85.552979)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(37.608527,-87.899631)--(35.049667,-86.270839)--(40.508865,-82.363278)--(43.466282,-84.245764)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(68.049107,63.795805)--(57.941954,66.620170)--(56.248198,71.857170)--(66.059900,69.115367)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(93.060332,-18.116777)--(86.728568,-14.086416)--(88.468368,-7.359443)--(94.927150,-11.470654)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-75.652858,-48.023375)--(-80.256097,-51.518415)--(-84.111962,-45.627138)--(-79.287562,-41.964181)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(19.274292,90.335190)--(8.212271,90.951362)--(7.782550,94.558635)--(18.265733,93.974706)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-87.172270,8.019913)--(-94.542536,3.946379)--(-95.154171,10.666739)--(-87.736223,14.766627)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-65.050736,59.611649)--(-74.794412,56.476715)--(-72.973733,62.111484)--(-63.467242,65.170106)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(1.351121,-95.819367)--(-0.491972,-95.800107)--(-0.735324,-92.334872)--(2.019447,-92.363658)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-47.679170,-79.219438)--(-50.580298,-81.422139)--(-56.201816,-77.196324)--(-52.978255,-74.748814)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.402012,-93.976219)--(-15.409443,-94.622091)--(-20.443133,-91.508613)--(-17.779949,-90.651759)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.491972,-95.800107)--(-2.326648,-95.863293)--(-3.477513,-92.429312)--(-0.735324,-92.334872)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(23.705028,-92.962535)--(21.568803,-91.947623)--(26.787304,-88.548508)--(29.440382,-89.808975)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(3.171096,-95.920742)--(1.351121,-95.819367)--(2.019447,-92.363658)--(4.739664,-92.515179)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-51.329175,72.981317)--(-61.611971,70.449495)--(-59.492869,75.427208)--(-49.563743,77.871950)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.326648,-95.863293)--(-4.121514,-96.007842)--(-6.160200,-92.645362)--(-3.477513,-92.429312)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(80.495868,48.961694)--(71.146062,52.361079)--(69.746918,58.203059)--(78.912853,54.870526)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-79.287562,-41.964181)--(-84.111962,-45.627138)--(-87.607646,-39.540478)--(-82.582745,-35.725289)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(4.936813,-96.102499)--(3.171096,-95.920742)--(4.739664,-92.515179)--(7.378784,-92.786840)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-42.175915,-83.350832)--(-44.742188,-85.299291)--(-50.580298,-81.422139)--(-47.679170,-79.219438)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(16.257941,-94.953004)--(14.369538,-94.266423)--(19.063530,-91.036761)--(21.568803,-91.947623)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-4.121514,-96.007842)--(-5.845860,-96.231283)--(-8.737485,-92.979326)--(-6.160200,-92.645362)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.141635,90.684375)--(-25.051039,89.805786)--(-23.740202,93.473003)--(-13.401651,94.305619)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(42.157945,83.500990)--(31.448174,85.151032)--(30.006525,89.230453)--(40.225338,87.656052)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(31.589726,-91.177098)--(29.440382,-89.808975)--(35.049667,-86.270839)--(37.608527,-87.899631)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(91.393095,26.169895)--(83.157027,30.082818)--(82.622509,36.541247)--(90.805636,32.653476)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(94.927150,-11.470654)--(88.468368,-7.359443)--(89.829334,-0.600956)--(96.387475,-4.775413)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(6.618060,-96.361526)--(4.936813,-96.102499)--(7.378784,-92.786840)--(9.891651,-93.173995)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-82.582745,-35.725289)--(-87.607646,-39.540478)--(-90.728181,-33.284500)--(-85.524296,-29.333416)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(54.313579,76.786467)--(43.910024,78.988364)--(42.157945,83.500990)--(52.146381,81.386953)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-22.756529,-92.477028)--(-24.680555,-93.540434)--(-30.651934,-90.526694)--(-28.262397,-89.206000)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-5.845860,-96.231283)--(-7.470181,-96.529791)--(-11.165269,-93.425490)--(-8.737485,-92.979326)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-36.492057,-87.125305)--(-38.712484,-88.811179)--(-44.742188,-85.299291)--(-42.175915,-83.350832)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-15.409443,-94.622091)--(-17.153214,-95.352054)--(-22.756529,-92.477028)--(-20.443133,-91.508613)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-87.736223,14.766627)--(-95.154171,10.666739)--(-95.358340,17.341423)--(-87.924476,21.450108)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(8.186070,-96.693393)--(6.618060,-96.361526)--(9.891651,-93.173995)--(12.235269,-93.670018)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-77.468502,44.506815)--(-86.235032,40.837043)--(-84.928522,46.985930)--(-76.294810,50.600104)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(62.873437,-73.940467)--(59.826527,-71.189879)--(64.797749,-66.201952)--(68.097838,-69.181096)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(57.379801,-78.383214)--(54.599119,-75.872961)--(59.826527,-71.189879)--(62.873437,-73.940467)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(30.006525,89.230453)--(19.274292,90.335190)--(18.265733,93.974706)--(28.436384,92.927776)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(68.097838,-69.181096)--(64.797749,-66.201952)--(69.491497,-60.930537)--(73.030634,-64.125482)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-85.524296,-29.333416)--(-90.728181,-33.284500)--(-93.460205,-26.885992)--(-88.099619,-22.815932)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-7.470181,-96.529791)--(-8.966686,-96.898259)--(-13.402012,-93.976219)--(-11.165269,-93.425490)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(51.640457,-82.490311)--(49.137909,-80.231144)--(54.599119,-75.872961)--(57.379801,-78.383214)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(17.868165,-95.718016)--(16.257941,-94.953004)--(21.568803,-91.947623)--(23.705028,-92.962535)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(73.030634,-64.125482)--(69.491497,-60.930537)--(73.887672,-55.398208)--(77.650702,-58.795272)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(25.435653,-94.064131)--(23.705028,-92.962535)--(29.440382,-89.808975)--(31.589726,-91.177098)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(96.387475,-4.775413)--(89.829334,-0.600956)--(90.805636,6.160104)--(97.435054,1.940278)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-30.651934,-90.526694)--(-32.517008,-91.942764)--(-38.712484,-88.811179)--(-36.492057,-87.125305)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(9.614014,-97.092421)--(8.186070,-96.693393)--(12.235269,-93.670018)--(14.369538,-94.266423)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(45.679980,-86.244172)--(43.466282,-84.245764)--(49.137909,-80.231144)--(51.640457,-82.490311)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(77.650702,-58.795272)--(73.887672,-55.398208)--(77.967448,-49.628655)--(81.938258,-53.213291)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(66.059900,69.115367)--(56.248198,71.857170)--(54.313579,76.786467)--(63.787814,74.138966)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-37.238922,84.330660)--(-47.586071,82.429123)--(-45.404628,86.633322)--(-35.531813,88.447689)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-63.467242,65.170106)--(-72.973733,62.111484)--(-70.840570,67.480282)--(-61.611971,70.449495)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-8.966686,-96.898259)--(-10.309768,-97.330383)--(-15.409443,-94.622091)--(-13.402012,-93.976219)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(90.805636,32.653476)--(82.622509,36.541247)--(81.734188,42.843201)--(89.829334,38.997230)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-88.099619,-22.815932)--(-93.460205,-26.885992)--(-95.792017,-20.372355)--(-90.297685,-16.200748)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.153214,-95.352054)--(-18.603489,-96.153619)--(-24.680555,-93.540434)--(-22.756529,-92.477028)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(78.912853,54.870526)--(69.746918,58.203059)--(68.049107,63.795805)--(76.991921,60.544393)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(39.523895,-89.628723)--(37.608527,-87.899631)--(43.466282,-84.245764)--(45.679980,-86.244172)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(7.782550,94.558635)--(-2.833794,94.669572)--(-2.665188,97.865330)--(7.319504,97.760993)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(81.938258,-53.213291)--(77.967448,-49.628655)--(81.713356,-43.646586)--(85.874941,-47.403443)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-87.924476,21.450108)--(-95.358340,17.341423)--(-95.154171,23.941848)--(-87.736223,28.041736)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-25.051039,89.805786)--(-35.531813,88.447689)--(-33.672552,92.185971)--(-23.740202,93.473003)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(10.877460,-97.551782)--(9.614014,-97.092421)--(14.369538,-94.266423)--(16.257941,-94.953004)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-24.680555,-93.540434)--(-26.182289,-94.680635)--(-32.517008,-91.942764)--(-30.651934,-90.526694)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.833794,94.669572)--(-13.401651,94.305619)--(-12.604278,97.523031)--(-2.665188,97.865330)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-49.563743,77.871950)--(-59.492869,75.427208)--(-57.119009,80.081930)--(-47.586071,82.429123)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(33.198562,-92.629469)--(31.589726,-91.177098)--(37.608527,-87.899631)--(39.523895,-89.628723)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(19.172661,-96.548367)--(17.868165,-95.718016)--(23.705028,-92.962535)--(25.435653,-94.064131)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(97.435054,1.940278)--(90.805636,6.160104)--(91.393095,12.894786)--(98.065401,8.647660)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.309768,-97.330383)--(-11.476447,-97.818768)--(-17.153214,-95.352054)--(-15.409443,-94.622091)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(85.874941,-47.403443)--(81.713356,-43.646586)--(85.109354,-37.477614)--(89.443895,-41.390607)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-76.294810,50.600104)--(-84.928522,46.985930)--(-83.258335,52.933617)--(-74.794412,56.476715)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-90.297685,-16.200748)--(-95.792017,-20.372355)--(-97.713633,-13.771480)--(-92.109083,-9.516189)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(18.265733,93.974706)--(7.782550,94.558635)--(7.319504,97.760993)--(17.178957,97.211807)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(11.954789,-98.063617)--(10.877460,-97.551782)--(16.257941,-94.953004)--(17.868165,-95.718016)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(0.677010,-98.864762)--(-0.246514,-98.855111)--(-0.491972,-95.800107)--(1.351121,-95.819367)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.246514,-98.855111)--(-1.165820,-98.886772)--(-2.326648,-95.863293)--(-0.491972,-95.800107)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-50.580298,-81.422139)--(-52.615983,-83.735509)--(-58.463748,-79.766803)--(-56.201816,-77.196324)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(26.731067,-95.233562)--(25.435653,-94.064131)--(31.589726,-91.177098)--(33.198562,-92.629469)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(1.588950,-98.915558)--(0.677010,-98.864762)--(1.351121,-95.819367)--(3.171096,-95.920742)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-44.742188,-85.299291)--(-46.542909,-87.345646)--(-52.615983,-83.735509)--(-50.580298,-81.422139)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-1.165820,-98.886772)--(-2.065179,-98.959202)--(-4.121514,-96.007842)--(-2.326648,-95.863293)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-56.201816,-77.196324)--(-58.463748,-79.766803)--(-64.061163,-75.456524)--(-61.582669,-72.639943)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-18.603489,-96.153619)--(-19.735453,-97.013070)--(-26.182289,-94.680635)--(-24.680555,-93.540434)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(2.473703,-99.006632)--(1.588950,-98.915558)--(3.171096,-95.920742)--(4.936813,-96.102499)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(52.146381,81.386953)--(42.157945,83.500990)--(40.225338,87.656052)--(49.755884,85.638927)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(40.225338,87.656052)--(30.006525,89.230453)--(28.436384,92.927776)--(38.120480,91.435758)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(89.443895,-41.390607)--(85.109354,-37.477614)--(88.140902,-31.148158)--(92.629836,-35.200529)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.065179,-98.959202)--(-2.929201,-99.071162)--(-5.845860,-96.231283)--(-4.121514,-96.007842)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-38.712484,-88.811179)--(-40.270530,-90.581756)--(-46.542909,-87.345646)--(-44.742188,-85.299291)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-11.476447,-97.818768)--(-12.446761,-98.355059)--(-18.603489,-96.153619)--(-17.153214,-95.352054)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-61.582669,-72.639943)--(-64.061163,-75.456524)--(-69.384257,-70.823128)--(-66.699816,-67.772507)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(3.316130,-99.136423)--(2.473703,-99.006632)--(4.936813,-96.102499)--(6.618060,-96.361526)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.401651,94.305619)--(-23.740202,93.473003)--(-22.327706,96.739955)--(-12.604278,97.523031)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.929201,-99.071162)--(-3.743105,-99.220736)--(-7.470181,-96.529791)--(-5.845860,-96.231283)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-87.736223,28.041736)--(-95.154171,23.941848)--(-94.542536,30.439751)--(-87.172270,34.513285)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(89.829334,38.997230)--(81.734188,42.843201)--(80.495868,48.961694)--(88.468368,45.173992)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-32.517008,-91.942764)--(-33.825707,-93.429981)--(-40.270530,-90.581756)--(-38.712484,-88.811179)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(4.101817,-99.302713)--(3.316130,-99.136423)--(6.618060,-96.361526)--(8.186070,-96.693393)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-66.699816,-67.772507)--(-69.384257,-70.823128)--(-74.410237,-65.886457)--(-71.531344,-62.614858)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(12.827568,-98.619168)--(11.954789,-98.063617)--(17.868165,-95.718016)--(19.172661,-96.548367)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(98.065401,8.647660)--(91.393095,12.894786)--(91.589194,19.574251)--(98.275817,15.318012)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-92.109083,-9.516189)--(-97.713633,-13.771480)--(-99.216824,-7.111633)--(-93.526056,-2.790881)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(20.149107,-97.429850)--(19.172661,-96.548367)--(25.435653,-94.064131)--(26.731067,-95.233562)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.743105,-99.220736)--(-4.492963,-99.405366)--(-8.966686,-96.898259)--(-7.470181,-96.529791)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(4.817321,-99.502655)--(4.101817,-99.302713)--(8.186070,-96.693393)--(9.614014,-97.092421)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-26.182289,-94.680635)--(-27.236037,-95.878124)--(-33.825707,-93.429981)--(-32.517008,-91.942764)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(76.991921,60.544393)--(68.049107,63.795805)--(66.059900,69.115367)--(74.741298,65.959001)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(92.629836,-35.200529)--(88.140902,-31.148158)--(90.795016,-24.685321)--(95.419122,-28.859717)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-71.531344,-62.614858)--(-74.410237,-65.886457)--(-79.117582,-60.667650)--(-76.056563,-57.189083)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-61.611971,70.449495)--(-70.840570,67.480282)--(-68.404056,72.560119)--(-59.492869,75.427208)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-4.492963,-99.405366)--(-5.165945,-99.621891)--(-10.309768,-97.330383)--(-8.966686,-96.898259)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-12.446761,-98.355059)--(-13.204107,-98.930080)--(-19.735453,-97.013070)--(-18.603489,-96.153619)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(63.787814,74.138966)--(54.313579,76.786467)--(52.146381,81.386953)--(61.242578,78.845091)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(28.436384,92.927776)--(18.265733,93.974706)--(17.178957,97.211807)--(26.744474,96.227167)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(5.450400,-99.732828)--(4.817321,-99.502655)--(9.614014,-97.092421)--(10.877460,-97.551782)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-5.165945,-99.621891)--(-5.750536,-99.866608)--(-11.476447,-97.818768)--(-10.309768,-97.330383)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-19.735453,-97.013070)--(-20.529738,-97.915702)--(-27.236037,-95.878124)--(-26.182289,-94.680635)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-76.056563,-57.189083)--(-79.117582,-60.667650)--(-83.486133,-55.189055)--(-80.256097,-51.518415)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(40.762997,-91.428529)--(39.523895,-89.628723)--(45.679980,-86.244172)--(47.112080,-88.324309)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(13.480864,-99.208929)--(12.827568,-98.619168)--(19.172661,-96.548367)--(20.149107,-97.429850)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(5.990220,-99.989295)--(5.450400,-99.732828)--(10.877460,-97.551782)--(11.954789,-98.063617)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(47.112080,-88.324309)--(45.679980,-86.244172)--(51.640457,-82.490311)--(53.259422,-84.841871)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(34.239361,-94.141237)--(33.198562,-92.629469)--(39.523895,-89.628723)--(40.762997,-91.428529)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-35.531813,88.447689)--(-45.404628,86.633322)--(-43.028755,90.466544)--(-33.672552,92.185971)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-74.794412,56.476715)--(-83.258335,52.933617)--(-81.231624,58.654634)--(-72.973733,62.111484)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-93.526056,-2.790881)--(-99.216824,-7.111633)--(-100.295154,-0.421334)--(-94.542536,3.946379)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(53.259422,-84.841871)--(51.640457,-82.490311)--(57.379801,-78.383214)--(59.178700,-80.996127)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(27.569106,-96.450819)--(26.731067,-95.233562)--(33.198562,-92.629469)--(34.239361,-94.141237)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-5.750536,-99.866608)--(-6.236734,-100.135329)--(-12.446761,-98.355059)--(-11.476447,-97.818768)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(95.419122,-28.859717)--(90.795016,-24.685321)--(93.060332,-18.116777)--(97.799809,-22.395324)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-47.586071,82.429123)--(-57.119009,80.081930)--(-54.500556,84.393729)--(-45.404628,86.633322)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(6.427546,-100.267666)--(5.990220,-99.989295)--(11.954789,-98.063617)--(12.827568,-98.619168)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.204107,-98.930080)--(-13.735528,-99.533990)--(-20.529738,-97.915702)--(-19.735453,-97.013070)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(98.275817,15.318012)--(91.589194,19.574251)--(91.393095,26.169895)--(98.065401,21.922769)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-87.172270,34.513285)--(-94.542536,30.439751)--(-93.526056,36.807305)--(-86.235032,40.837043)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-80.256097,-51.518415)--(-83.486133,-55.189055)--(-87.497183,-49.474132)--(-84.111962,-45.627138)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(59.178700,-80.996127)--(57.379801,-78.383214)--(62.873437,-73.940467)--(64.844564,-76.803545)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(20.780796,-98.347383)--(20.149107,-97.429850)--(26.731067,-95.233562)--(27.569106,-96.450819)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.236734,-100.135329)--(-6.616220,-100.423456)--(-13.204107,-98.930080)--(-12.446761,-98.355059)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-23.740202,93.473003)--(-33.672552,92.185971)--(-31.669100,95.529498)--(-22.327706,96.739955)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(88.468368,45.173992)--(80.495868,48.961694)--(78.912853,54.870526)--(86.728568,51.157312)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(7.319504,97.760993)--(-2.665188,97.865330)--(-2.485170,100.642013)--(6.825114,100.544724)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(64.844564,-76.803545)--(62.873437,-73.940467)--(68.097838,-69.181096)--(70.232755,-72.282079)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(13.903499,-99.822809)--(13.480864,-99.208929)--(20.149107,-97.429850)--(20.780796,-98.347383)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(6.754895,-100.563179)--(6.427546,-100.267666)--(12.827568,-98.619168)--(13.480864,-99.208929)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.616220,-100.423456)--(-6.882500,-100.726059)--(-13.735528,-99.533990)--(-13.204107,-98.930080)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-84.111962,-45.627138)--(-87.497183,-49.474132)--(-91.133557,-43.547353)--(-87.607646,-39.540478)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.665188,97.865330)--(-12.604278,97.523031)--(-11.752932,100.322835)--(-2.485170,100.642013)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(97.799809,-22.395324)--(93.060332,-18.116777)--(94.927150,-11.470654)--(99.761702,-15.835030)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-20.529738,-97.915702)--(-20.972754,-98.846071)--(-27.823769,-97.112410)--(-27.236037,-95.878124)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-27.236037,-95.878124)--(-27.823769,-97.112410)--(-34.555639,-94.962898)--(-33.825707,-93.429981)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(70.232755,-72.282079)--(68.097838,-69.181096)--(73.030634,-64.125482)--(75.320198,-67.451090)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(6.966666,-100.870778)--(6.754895,-100.563179)--(13.480864,-99.208929)--(13.903499,-99.822809)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.735528,-99.533990)--(-14.031930,-100.156459)--(-20.972754,-98.846071)--(-20.529738,-97.915702)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-94.542536,3.946379)--(-100.295154,-0.421334)--(-100.944004,6.270770)--(-95.154171,10.666739)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-33.825707,-93.429981)--(-34.555639,-94.962898)--(-41.139536,-92.406740)--(-40.270530,-90.581756)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(49.755884,85.638927)--(40.225338,87.656052)--(38.120480,91.435758)--(47.152325,89.524182)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.882500,-100.726059)--(-7.031019,-101.037961)--(-14.031930,-100.156459)--(-13.735528,-99.533990)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(74.741298,65.959001)--(66.059900,69.115367)--(63.787814,74.138966)--(72.170621,71.091161)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-40.270530,-90.581756)--(-41.139536,-92.406740)--(-47.547268,-89.454883)--(-46.542909,-87.345646)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(17.178957,97.211807)--(7.319504,97.760993)--(6.825114,100.544724)--(16.018618,100.032632)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(38.120480,91.435758)--(28.436384,92.927776)--(26.744474,96.227167)--(35.852385,94.823922)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(7.059235,-101.185199)--(6.966666,-100.870778)--(13.903499,-99.822809)--(14.088241,-100.450305)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-59.492869,75.427208)--(-68.404056,72.560119)--(-65.674625,77.329242)--(-57.119009,80.081930)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(75.320198,-67.451090)--(73.030634,-64.125482)--(77.650702,-58.795272)--(80.085108,-62.331264)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(5.450400,-99.732828)--(5.990220,-99.989295)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(4.817321,-99.502655)--(5.450400,-99.732828)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(4.101817,-99.302713)--(4.817321,-99.502655)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(3.316130,-99.136423)--(4.101817,-99.302713)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(2.473703,-99.006632)--(3.316130,-99.136423)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(1.588950,-98.915558)--(2.473703,-99.006632)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(0.677010,-98.864762)--(1.588950,-98.915558)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(-0.000000,-101.486803)--(-0.246514,-98.855111)--(0.677010,-98.864762)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-1.165820,-98.886772)--(-0.246514,-98.855111)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-2.065179,-98.959202)--(-1.165820,-98.886772)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-2.929201,-99.071162)--(-2.065179,-98.959202)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-3.743105,-99.220736)--(-2.929201,-99.071162)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-4.492963,-99.405366)--(-3.743105,-99.220736)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-5.165945,-99.621891)--(-4.492963,-99.405366)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-5.750536,-99.866608)--(-5.165945,-99.621891)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(6.966666,-100.870778)--(7.059235,-101.185199)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(6.754895,-100.563179)--(6.966666,-100.870778)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(6.427546,-100.267666)--(6.754895,-100.563179)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(5.990220,-99.989295)--(6.427546,-100.267666)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-6.236734,-100.135329)--(-5.750536,-99.866608)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-6.616220,-100.423456)--(-6.236734,-100.135329)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-6.882500,-100.726059)--(-6.616220,-100.423456)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-7.031019,-101.037961)--(-6.882500,-100.726059)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(14.088241,-100.450305)--(13.903499,-99.822809)--(20.780796,-98.347383)--(21.056920,-99.285267)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(98.065401,21.922769)--(91.393095,26.169895)--(90.805636,32.653476)--(97.435054,28.433650)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-46.542909,-87.345646)--(-47.547268,-89.454883)--(-53.751395,-86.119966)--(-52.615983,-83.735509)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-87.607646,-39.540478)--(-91.133557,-43.547353)--(-94.379683,-37.434097)--(-90.728181,-33.284500)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-7.059235,-101.353825)--(-7.031019,-101.037961)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(21.056920,-99.285267)--(20.780796,-98.347383)--(27.569106,-96.450819)--(27.935429,-97.695074)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-72.973733,62.111484)--(-81.231624,58.654634)--(-78.857066,64.124482)--(-70.840570,67.480282)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-86.235032,40.837043)--(-93.526056,36.807305)--(-92.109083,43.017246)--(-84.928522,46.985930)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(61.242578,78.845091)--(52.146381,81.386953)--(49.755884,85.638927)--(58.435093,83.213590)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(99.761702,-15.835030)--(94.927150,-11.470654)--(96.387475,-4.775413)--(101.296400,-9.206929)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(7.059235,-101.185199)--(7.031019,-101.501063)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-12.604278,97.523031)--(-22.327706,96.739955)--(-20.819598,99.592651)--(-11.752932,100.322835)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-7.031019,-101.037961)--(-7.059235,-101.353825)--(-14.088241,-100.786834)--(-14.031930,-100.156459)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-52.615983,-83.735509)--(-53.751395,-86.119966)--(-59.725350,-82.416270)--(-58.463748,-79.766803)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(27.935429,-97.695074)--(27.569106,-96.450819)--(34.239361,-94.141237)--(34.694315,-95.686536)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(80.085108,-62.331264)--(77.650702,-58.795272)--(81.938258,-53.213291)--(84.507081,-56.944527)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-6.966666,-101.668246)--(-7.059235,-101.353825)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(86.728568,51.157312)--(78.912853,54.870526)--(76.991921,60.544393)--(84.617382,56.921568)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-95.154171,10.666739)--(-100.944004,6.270770)--(-101.160596,12.936022)--(-95.358340,17.341423)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.031930,-100.156459)--(-14.088241,-100.786834)--(-21.056920,-99.788258)--(-20.972754,-98.846071)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(34.694315,-95.686536)--(34.239361,-94.141237)--(40.762997,-91.428529)--(41.304634,-93.268254)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(7.031019,-101.501063)--(6.882500,-101.812965)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(7.031019,-101.501063)--(7.059235,-101.185199)--(14.088241,-100.450305)--(14.031930,-101.080680)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-90.728181,-33.284500)--(-94.379683,-37.434097)--(-97.221660,-31.160543)--(-93.460205,-26.885992)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-58.463748,-79.766803)--(-59.725350,-82.416270)--(-65.443552,-78.359655)--(-64.061163,-75.456524)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-6.754895,-101.975845)--(-6.966666,-101.668246)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(26.744474,96.227167)--(17.178957,97.211807)--(16.018618,100.032632)--(24.938039,99.114499)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-20.972754,-98.846071)--(-21.056920,-99.788258)--(-27.935429,-98.362374)--(-27.823769,-97.112410)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-33.672552,92.185971)--(-43.028755,90.466544)--(-40.468627,93.912374)--(-31.669100,95.529498)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(41.304634,-93.268254)--(40.762997,-91.428529)--(47.112080,-88.324309)--(47.738080,-90.450582)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(6.882500,-101.812965)--(6.616220,-102.115568)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-45.404628,86.633322)--(-54.500556,84.393729)--(-51.648724,88.344141)--(-43.028755,90.466544)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(84.507081,-56.944527)--(81.938258,-53.213291)--(85.874941,-47.403443)--(88.567183,-51.313945)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-7.059235,-101.353825)--(-6.966666,-101.668246)--(-13.903499,-101.414330)--(-14.088241,-100.786834)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(14.031930,-101.080680)--(14.088241,-100.450305)--(21.056920,-99.285267)--(20.972754,-100.227454)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(101.296400,-9.206929)--(96.387475,-4.775413)--(97.435054,1.940278)--(102.397331,-2.539401)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-64.061163,-75.456524)--(-65.443552,-78.359655)--(-70.881514,-73.967492)--(-69.384257,-70.823128)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-6.427546,-102.271358)--(-6.754895,-101.975845)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(97.435054,28.433650)--(90.805636,32.653476)--(89.829334,38.997230)--(96.387475,34.822774)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-27.823769,-97.112410)--(-27.935429,-98.362374)--(-34.694315,-96.515287)--(-34.555639,-94.962898)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(47.738080,-90.450582)--(47.112080,-88.324309)--(53.259422,-84.841871)--(53.967105,-87.245588)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(6.616220,-102.115568)--(6.236734,-102.403695)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(6.882500,-101.812965)--(7.031019,-101.501063)--(14.031930,-101.080680)--(13.735528,-101.703148)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-93.460205,-26.885992)--(-97.221660,-31.160543)--(-99.647320,-24.753555)--(-95.792017,-20.372355)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-5.990220,-102.549729)--(-6.427546,-102.271358)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-84.928522,46.985930)--(-92.109083,43.017246)--(-90.297685,49.042980)--(-83.258335,52.933617)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(20.972754,-100.227454)--(21.056920,-99.285267)--(27.935429,-97.695074)--(27.823769,-98.945039)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(72.170621,71.091161)--(63.787814,74.138966)--(61.242578,78.845091)--(69.290898,75.918898)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-22.327706,96.739955)--(-31.669100,95.529498)--(-29.530035,98.463954)--(-20.819598,99.592651)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-95.358340,17.341423)--(-101.160596,12.936022)--(-100.944004,19.545879)--(-95.154171,23.941848)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(6.236734,-102.403695)--(5.750536,-102.672416)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-69.384257,-70.823128)--(-70.881514,-73.967492)--(-76.015951,-69.258589)--(-74.410237,-65.886457)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(88.567183,-51.313945)--(85.874941,-47.403443)--(89.443895,-41.390607)--(92.248026,-45.463628)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.088241,-100.786834)--(-13.903499,-101.414330)--(-20.780796,-100.726142)--(-21.056920,-99.788258)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-34.555639,-94.962898)--(-34.694315,-96.515287)--(-41.304634,-94.254906)--(-41.139536,-92.406740)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.966666,-101.668246)--(-6.754895,-101.975845)--(-13.480864,-102.028210)--(-13.903499,-101.414330)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(53.967105,-87.245588)--(53.259422,-84.841871)--(59.178700,-80.996127)--(59.965034,-83.666994)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-5.450400,-102.806196)--(-5.990220,-102.549729)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-70.840570,67.480282)--(-78.857066,64.124482)--(-76.144830,69.319740)--(-68.404056,72.560119)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-57.119009,80.081930)--(-65.674625,77.329242)--(-62.663965,81.767230)--(-54.500556,84.393729)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(5.750536,-102.672416)--(5.165945,-102.917133)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(47.152325,89.524182)--(38.120480,91.435758)--(35.852385,94.823922)--(44.346852,93.026081)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(6.825114,100.544724)--(-2.485170,100.642013)--(-2.294510,102.987732)--(6.301497,102.897907)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(102.397331,-2.539401)--(97.435054,1.940278)--(98.065401,8.647660)--(103.059781,4.139000)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-4.817321,-103.036369)--(-5.450400,-102.806196)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(6.616220,-102.115568)--(6.882500,-101.812965)--(13.735528,-101.703148)--(13.204107,-102.307059)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(84.617382,56.921568)--(76.991921,60.544393)--(74.741298,65.959001)--(82.143852,62.442077)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(27.823769,-98.945039)--(27.935429,-97.695074)--(34.694315,-95.686536)--(34.555639,-97.238925)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(13.735528,-101.703148)--(14.031930,-101.080680)--(20.972754,-100.227454)--(20.529738,-101.157823)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(5.165945,-102.917133)--(4.492963,-103.133658)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-74.410237,-65.886457)--(-76.015951,-69.258589)--(-80.824877,-64.253110)--(-79.117582,-60.667650)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.485170,100.642013)--(-11.752932,100.322835)--(-10.851259,102.693041)--(-2.294510,102.987732)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-95.792017,-20.372355)--(-99.647320,-24.753555)--(-101.646275,-18.240568)--(-97.713633,-13.771480)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-41.139536,-92.406740)--(-41.304634,-94.254906)--(-47.738080,-91.590912)--(-47.547268,-89.454883)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(59.965034,-83.666994)--(59.178700,-80.996127)--(64.844564,-76.803545)--(65.706184,-79.730125)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-4.101817,-103.236311)--(-4.817321,-103.036369)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(58.435093,83.213590)--(49.755884,85.638927)--(47.152325,89.524182)--(55.377380,87.225755)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(92.248026,-45.463628)--(89.443895,-41.390607)--(92.629836,-35.200529)--(95.533849,-39.418629)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-21.056920,-99.788258)--(-20.780796,-100.726142)--(-27.569106,-99.606629)--(-27.935429,-98.362374)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(35.852385,94.823922)--(26.744474,96.227167)--(24.938039,99.114499)--(33.430764,97.806035)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(4.492963,-103.133658)--(3.743105,-103.318288)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.754895,-101.975845)--(-6.427546,-102.271358)--(-12.827568,-102.617971)--(-13.480864,-102.028210)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(96.387475,34.822774)--(89.829334,38.997230)--(88.468368,45.173992)--(94.927150,41.062781)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-3.316130,-103.402601)--(-4.101817,-103.236311)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(16.018618,100.032632)--(6.825114,100.544724)--(6.301497,102.897907)--(14.789685,102.425102)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(3.743105,-103.318288)--(2.929201,-103.467862)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-2.473703,-103.532392)--(-3.316130,-103.402601)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(2.929201,-103.467862)--(2.065179,-103.579822)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.903499,-101.414330)--(-13.480864,-102.028210)--(-20.149107,-101.643675)--(-20.780796,-100.726142)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-95.154171,23.941848)--(-100.944004,19.545879)--(-100.295154,26.072038)--(-94.542536,30.439751)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(34.555639,-97.238925)--(34.694315,-95.686536)--(41.304634,-93.268254)--(41.139536,-95.116420)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(6.236734,-102.403695)--(6.616220,-102.115568)--(13.204107,-102.307059)--(12.446761,-102.882079)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-1.588950,-103.623466)--(-2.473703,-103.532392)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(2.065179,-103.579822)--(1.165820,-103.652252)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(-0.000000,-101.486803)--(-0.677010,-103.674262)--(-1.588950,-103.623466)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.000000,-101.486803)--(0.000000,-101.486803)--(0.246514,-103.683913)--(-0.677010,-103.674262)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(0.000000,-101.486803)--(0.000000,-101.486803)--(1.165820,-103.652252)--(0.246514,-103.683913)--cycle;
	fill p withcolor (0.000008,0.999992,1.000000);
	draw p withcolor meshcolor;

	p:=(-47.547268,-89.454883)--(-47.738080,-91.590912)--(-53.967105,-88.534711)--(-53.751395,-86.119966)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-79.117582,-60.667650)--(-80.824877,-64.253110)--(-85.287697,-58.972489)--(-83.486133,-55.189055)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(65.706184,-79.730125)--(64.844564,-76.803545)--(70.232755,-72.282079)--(71.165969,-75.451840)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-83.258335,52.933617)--(-90.297685,49.042980)--(-88.099619,54.858704)--(-81.231624,58.654634)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-11.752932,100.322835)--(-20.819598,99.592651)--(-19.222339,102.018876)--(-10.851259,102.693041)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(20.529738,-101.157823)--(20.972754,-100.227454)--(27.823769,-98.945039)--(27.236037,-100.179324)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(103.059781,4.139000)--(98.065401,8.647660)--(98.275817,15.318012)--(103.280914,10.799677)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(95.533849,-39.418629)--(92.629836,-35.200529)--(95.419122,-28.859717)--(98.410581,-33.204834)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.427546,-102.271358)--(-5.990220,-102.549729)--(-11.954789,-103.173522)--(-12.827568,-102.617971)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-97.713633,-13.771480)--(-101.646275,-18.240568)--(-103.209964,-11.649472)--(-99.216824,-7.111633)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-27.935429,-98.362374)--(-27.569106,-99.606629)--(-34.239361,-98.060586)--(-34.694315,-96.515287)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(13.204107,-102.307059)--(13.735528,-101.703148)--(20.529738,-101.157823)--(19.735453,-102.060455)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-43.028755,90.466544)--(-51.648724,88.344141)--(-48.575724,91.916250)--(-40.468627,93.912374)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.669100,95.529498)--(-40.468627,93.912374)--(-37.735205,96.956056)--(-29.530035,98.463954)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(5.750536,-102.672416)--(6.236734,-102.403695)--(12.446761,-102.882079)--(11.476447,-103.418370)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(41.139536,-95.116420)--(41.304634,-93.268254)--(47.738080,-90.450582)--(47.547268,-92.586612)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-53.751395,-86.119966)--(-53.967105,-88.534711)--(-59.965034,-85.099392)--(-59.725350,-82.416270)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(69.290898,75.918898)--(61.242578,78.845091)--(58.435093,83.213590)--(66.114462,80.421539)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(71.165969,-75.451840)--(70.232755,-72.282079)--(75.320198,-67.451090)--(76.321011,-70.850459)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-83.486133,-55.189055)--(-85.287697,-58.972489)--(-89.385303,-53.439339)--(-87.497183,-49.474132)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(24.938039,99.114499)--(16.018618,100.032632)--(14.789685,102.425102)--(23.024817,101.577408)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-68.404056,72.560119)--(-76.144830,69.319740)--(-73.106530,74.218160)--(-65.674625,77.329242)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-5.990220,-102.549729)--(-5.450400,-102.806196)--(-10.877460,-103.685357)--(-11.954789,-103.173522)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(82.143852,62.442077)--(74.741298,65.959001)--(72.170621,71.091161)--(79.318569,67.695200)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.480864,-102.028210)--(-12.827568,-102.617971)--(-19.172661,-102.525158)--(-20.149107,-101.643675)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-20.780796,-100.726142)--(-20.149107,-101.643675)--(-26.731067,-100.823886)--(-27.569106,-99.606629)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(94.927150,41.062781)--(88.468368,45.173992)--(86.728568,51.157312)--(93.060332,47.126951)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(98.410581,-33.204834)--(95.419122,-28.859717)--(97.799809,-22.395324)--(100.865904,-26.848850)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-34.694315,-96.515287)--(-34.239361,-98.060586)--(-40.762997,-96.094632)--(-41.304634,-94.254906)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-54.500556,84.393729)--(-62.663965,81.767230)--(-59.384969,85.855078)--(-51.648724,88.344141)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-94.542536,30.439751)--(-100.295154,26.072038)--(-99.216824,32.486553)--(-93.526056,36.807305)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(27.236037,-100.179324)--(27.823769,-98.945039)--(34.555639,-97.238925)--(33.825707,-98.771843)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(5.165945,-102.917133)--(5.750536,-102.672416)--(11.476447,-103.418370)--(10.309768,-103.906756)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-99.216824,-7.111633)--(-103.209964,-11.649472)--(-104.331693,-5.008491)--(-100.295154,-0.421334)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(103.280914,10.799677)--(98.275817,15.318012)--(98.065401,21.922769)--(103.059781,17.414109)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-59.725350,-82.416270)--(-59.965034,-85.099392)--(-65.706184,-81.299663)--(-65.443552,-78.359655)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(47.547268,-92.586612)--(47.738080,-90.450582)--(53.967105,-87.245588)--(53.751395,-89.660333)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(76.321011,-70.850459)--(75.320198,-67.451090)--(80.085108,-62.331264)--(81.149235,-65.945684)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-5.450400,-102.806196)--(-4.817321,-103.036369)--(-9.614014,-104.144718)--(-10.877460,-103.685357)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(12.446761,-102.882079)--(13.204107,-102.307059)--(19.735453,-102.060455)--(18.603489,-102.919906)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-20.819598,99.592651)--(-29.530035,98.463954)--(-27.264519,100.976772)--(-19.222339,102.018876)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-87.497183,-49.474132)--(-89.385303,-53.439339)--(-93.100147,-47.677354)--(-91.133557,-43.547353)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(44.346852,93.026081)--(35.852385,94.823922)--(33.430764,97.806035)--(41.351479,96.129627)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(19.735453,-102.060455)--(20.529738,-101.157823)--(27.236037,-100.179324)--(26.182289,-101.376813)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(4.492963,-103.133658)--(5.165945,-102.917133)--(10.309768,-103.906756)--(8.966686,-104.338880)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-81.231624,58.654634)--(-88.099619,54.858704)--(-85.524296,60.439515)--(-78.857066,64.124482)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(55.377380,87.225755)--(47.152325,89.524182)--(44.346852,93.026081)--(52.082532,90.864405)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-4.817321,-103.036369)--(-4.101817,-103.236311)--(-8.186070,-104.543745)--(-9.614014,-104.144718)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(100.865904,-26.848850)--(97.799809,-22.395324)--(99.761702,-15.835030)--(102.889303,-20.377895)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-12.827568,-102.617971)--(-11.954789,-103.173522)--(-17.868165,-103.355509)--(-19.172661,-102.525158)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-41.304634,-94.254906)--(-40.762997,-96.094632)--(-47.112080,-93.717186)--(-47.738080,-91.590912)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-27.569106,-99.606629)--(-26.731067,-100.823886)--(-33.198562,-99.572354)--(-34.239361,-98.060586)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-65.443552,-78.359655)--(-65.706184,-81.299663)--(-71.165969,-77.151797)--(-70.881514,-73.967492)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(6.301497,102.897907)--(-2.294510,102.987732)--(-2.094025,104.892442)--(5.750897,104.810465)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(33.825707,-98.771843)--(34.555639,-97.238925)--(41.139536,-95.116420)--(40.270530,-96.941405)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(3.743105,-103.318288)--(4.492963,-103.133658)--(8.966686,-104.338880)--(7.470181,-104.707348)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(53.751395,-89.660333)--(53.967105,-87.245588)--(59.965034,-83.666994)--(59.725350,-86.350115)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(81.149235,-65.945684)--(80.085108,-62.331264)--(84.507081,-56.944527)--(85.629965,-60.758521)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(33.430764,97.806035)--(24.938039,99.114499)--(23.024817,101.577408)--(30.865987,100.369327)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-100.295154,-0.421334)--(-104.331693,-5.008491)--(-105.006657,1.653936)--(-100.944004,6.270770)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-91.133557,-43.547353)--(-93.100147,-47.677354)--(-96.416321,-41.711206)--(-94.379683,-37.434097)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-4.101817,-103.236311)--(-3.316130,-103.402601)--(-6.618060,-104.875612)--(-8.186070,-104.543745)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.294510,102.987732)--(-10.851259,102.693041)--(-9.903118,104.623500)--(-2.094025,104.892442)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-20.149107,-101.643675)--(-19.172661,-102.525158)--(-25.435653,-101.993317)--(-26.731067,-100.823886)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-93.526056,36.807305)--(-99.216824,32.486553)--(-97.713633,38.761955)--(-92.109083,43.017246)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(93.060332,47.126951)--(86.728568,51.157312)--(84.617382,56.921568)--(90.795016,52.989316)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(11.476447,-103.418370)--(12.446761,-102.882079)--(18.603489,-102.919906)--(17.153214,-103.721471)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(103.059781,17.414109)--(98.065401,21.922769)--(97.435054,28.433650)--(102.397331,23.953971)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(2.929201,-103.467862)--(3.743105,-103.318288)--(7.470181,-104.707348)--(5.845860,-105.005856)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-65.674625,77.329242)--(-73.106530,74.218160)--(-69.755177,78.798766)--(-62.663965,81.767230)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(14.789685,102.425102)--(6.301497,102.897907)--(5.750897,104.810465)--(13.497420,104.378972)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.316130,-103.402601)--(-2.473703,-103.532392)--(-4.936813,-105.134640)--(-6.618060,-104.875612)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(79.318569,67.695200)--(72.170621,71.091161)--(69.290898,75.918898)--(76.153632,72.658442)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(66.114462,80.421539)--(58.435093,83.213590)--(55.377380,87.225755)--(62.654912,84.579803)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(2.065179,-103.579822)--(2.929201,-103.467862)--(5.845860,-105.005856)--(4.121514,-105.229297)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-40.468627,93.912374)--(-48.575724,91.916250)--(-45.294715,95.094759)--(-37.735205,96.956056)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.473703,-103.532392)--(-1.588950,-103.623466)--(-3.171096,-105.316397)--(-4.936813,-105.134640)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(-11.954789,-103.173522)--(-10.877460,-103.685357)--(-16.257941,-104.120521)--(-17.868165,-103.355509)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(102.889303,-20.377895)--(99.761702,-15.835030)--(101.296400,-9.206929)--(104.472115,-13.819679)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-70.881514,-73.967492)--(-71.165969,-77.151797)--(-76.321011,-72.673555)--(-76.015951,-69.258589)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-47.738080,-91.590912)--(-47.112080,-93.717186)--(-53.259422,-90.938428)--(-53.967105,-88.534711)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(1.165820,-103.652252)--(2.065179,-103.579822)--(4.121514,-105.229297)--(2.326648,-105.373846)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(26.182289,-101.376813)--(27.236037,-100.179324)--(33.825707,-98.771843)--(32.517008,-100.259059)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(85.629965,-60.758521)--(84.507081,-56.944527)--(88.567183,-51.313945)--(89.744015,-55.311180)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-1.588950,-103.623466)--(-0.677010,-103.674262)--(-1.351121,-105.417772)--(-3.171096,-105.316397)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(59.725350,-86.350115)--(59.965034,-83.666994)--(65.706184,-79.730125)--(65.443552,-82.670133)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.677010,-103.674262)--(0.246514,-103.683913)--(0.491972,-105.437032)--(-1.351121,-105.417772)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(0.246514,-103.683913)--(1.165820,-103.652252)--(2.326648,-105.373846)--(0.491972,-105.437032)--cycle;
	fill p withcolor (0.000042,0.999958,1.000000);
	draw p withcolor meshcolor;

	p:=(18.603489,-102.919906)--(19.735453,-102.060455)--(26.182289,-101.376813)--(24.680555,-102.517015)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.851259,102.693041)--(-19.222339,102.018876)--(-17.542766,104.008241)--(-9.903118,104.623500)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-94.379683,-37.434097)--(-96.416321,-41.711206)--(-99.319627,-35.566445)--(-97.221660,-31.160543)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-29.530035,98.463954)--(-37.735205,96.956056)--(-34.840196,99.584559)--(-27.264519,100.976772)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(40.270530,-96.941405)--(41.139536,-95.116420)--(47.547268,-92.586612)--(46.542909,-94.695849)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-100.944004,6.270770)--(-105.006657,1.653936)--(-105.231967,8.309282)--(-101.160596,12.936022)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-51.648724,88.344141)--(-59.384969,85.855078)--(-55.851677,89.575282)--(-48.575724,91.916250)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-78.857066,64.124482)--(-85.524296,60.439515)--(-82.582745,65.761514)--(-76.144830,69.319740)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-34.239361,-98.060586)--(-33.198562,-99.572354)--(-39.523895,-97.894438)--(-40.762997,-96.094632)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(10.309768,-103.906756)--(11.476447,-103.418370)--(17.153214,-103.721471)--(15.409443,-104.451434)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(23.024817,101.577408)--(14.789685,102.425102)--(13.497420,104.378972)--(21.012998,103.605346)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(102.397331,23.953971)--(97.435054,28.433650)--(96.387475,34.822774)--(101.296400,30.391258)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-92.109083,43.017246)--(-97.713633,38.761955)--(-95.792017,44.871372)--(-90.297685,49.042980)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-19.172661,-102.525158)--(-17.868165,-103.355509)--(-23.705028,-103.094913)--(-25.435653,-101.993317)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.877460,-103.685357)--(-9.614014,-104.144718)--(-14.369538,-104.807103)--(-16.257941,-104.120521)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-76.015951,-69.258589)--(-76.321011,-72.673555)--(-81.149235,-67.884113)--(-80.824877,-64.253110)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(89.744015,-55.311180)--(88.567183,-51.313945)--(92.248026,-45.463628)--(93.473767,-49.626988)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-26.731067,-100.823886)--(-25.435653,-101.993317)--(-31.589726,-101.024725)--(-33.198562,-99.572354)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(104.472115,-13.819679)--(101.296400,-9.206929)--(102.397331,-2.539401)--(105.607561,-7.202285)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(90.795016,52.989316)--(84.617382,56.921568)--(82.143852,62.442077)--(88.140902,58.624772)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-53.967105,-88.534711)--(-53.259422,-90.938428)--(-59.178700,-87.770259)--(-59.965034,-85.099392)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(65.443552,-82.670133)--(65.706184,-79.730125)--(71.165969,-75.451840)--(70.881514,-78.636145)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(52.082532,90.864405)--(44.346852,93.026081)--(41.351479,96.129627)--(48.564659,94.113961)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-97.221660,-31.160543)--(-99.319627,-35.566445)--(-101.797630,-29.269383)--(-99.647320,-24.753555)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(41.351479,96.129627)--(33.430764,97.806035)--(30.865987,100.369327)--(38.179033,98.821533)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(8.966686,-104.338880)--(10.309768,-103.906756)--(15.409443,-104.451434)--(13.402012,-105.097306)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-19.222339,102.018876)--(-27.264519,100.976772)--(-24.882252,103.057191)--(-17.542766,104.008241)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(46.542909,-94.695849)--(47.547268,-92.586612)--(53.751395,-89.660333)--(52.615983,-92.044790)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(32.517008,-100.259059)--(33.825707,-98.771843)--(40.270530,-96.941405)--(38.712484,-98.711981)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(17.153214,-103.721471)--(18.603489,-102.919906)--(24.680555,-102.517015)--(22.756529,-103.580420)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-101.160596,12.936022)--(-105.231967,8.309282)--(-105.006657,14.929045)--(-100.944004,19.545879)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(76.153632,72.658442)--(69.290898,75.918898)--(66.114462,80.421539)--(72.662593,77.310548)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.614014,-104.144718)--(-8.186070,-104.543745)--(-12.235269,-105.403507)--(-14.369538,-104.807103)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-40.762997,-96.094632)--(-39.523895,-97.894438)--(-45.679980,-95.797322)--(-47.112080,-93.717186)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-62.663965,81.767230)--(-69.755177,78.798766)--(-66.105121,83.041944)--(-59.384969,85.855078)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-80.824877,-64.253110)--(-81.149235,-67.884113)--(-85.629965,-62.803982)--(-85.287697,-58.972489)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(24.680555,-102.517015)--(26.182289,-101.376813)--(32.517008,-100.259059)--(30.651934,-101.675129)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(62.654912,84.579803)--(55.377380,87.225755)--(52.082532,90.864405)--(58.927065,88.375883)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(93.473767,-49.626988)--(92.248026,-45.463628)--(95.533849,-39.418629)--(96.803250,-43.730285)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(7.470181,-104.707348)--(8.966686,-104.338880)--(13.402012,-105.097306)--(11.165269,-105.648035)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(70.881514,-78.636145)--(71.165969,-75.451840)--(76.321011,-70.850459)--(76.015951,-74.265424)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(105.607561,-7.202285)--(102.397331,-2.539401)--(103.059781,4.139000)--(106.290780,-0.554050)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-59.965034,-85.099392)--(-59.178700,-87.770259)--(-64.844564,-84.226243)--(-65.706184,-81.299663)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(101.296400,30.391258)--(96.387475,34.822774)--(94.927150,41.062781)--(99.761702,36.698405)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-76.144830,69.319740)--(-82.582745,65.761514)--(-79.287562,70.801913)--(-73.106530,74.218160)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(30.865987,100.369327)--(23.024817,101.577408)--(21.012998,103.605346)--(28.169038,102.502823)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.868165,-103.355509)--(-16.257941,-104.120521)--(-21.568803,-104.109825)--(-23.705028,-103.094913)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-99.647320,-24.753555)--(-101.797630,-29.269383)--(-103.839721,-22.846985)--(-101.646275,-18.240568)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-8.186070,-104.543745)--(-6.618060,-104.875612)--(-9.891651,-105.899531)--(-12.235269,-105.403507)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-90.297685,49.042980)--(-95.792017,44.871372)--(-93.460205,50.788644)--(-88.099619,54.858704)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(5.750897,104.810465)--(-2.094025,104.892442)--(-1.884573,106.347986)--(5.175671,106.274209)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-37.735205,96.956056)--(-45.294715,95.094759)--(-41.819748,97.866059)--(-34.840196,99.584559)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(5.845860,-105.005856)--(7.470181,-104.707348)--(11.165269,-105.648035)--(8.737485,-106.094199)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.094025,104.892442)--(-9.903118,104.623500)--(-8.912571,106.105945)--(-1.884573,106.347986)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(52.615983,-92.044790)--(53.751395,-89.660333)--(59.725350,-86.350115)--(58.463748,-88.999582)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-33.198562,-99.572354)--(-31.589726,-101.024725)--(-37.608527,-99.623529)--(-39.523895,-97.894438)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(88.140902,58.624772)--(82.143852,62.442077)--(79.318569,67.695200)--(85.109354,64.009189)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-48.575724,91.916250)--(-55.851677,89.575282)--(-52.079220,92.911910)--(-45.294715,95.094759)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-100.944004,19.545879)--(-105.006657,14.929045)--(-104.331693,21.484880)--(-100.295154,26.072038)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(15.409443,-104.451434)--(17.153214,-103.721471)--(22.756529,-103.580420)--(20.443133,-104.548835)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-25.435653,-101.993317)--(-23.705028,-103.094913)--(-29.440382,-102.392848)--(-31.589726,-101.024725)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.618060,-104.875612)--(-4.936813,-105.134640)--(-7.378784,-106.286685)--(-9.891651,-105.899531)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-85.287697,-58.972489)--(-85.629965,-62.803982)--(-89.744015,-57.454914)--(-89.385303,-53.439339)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(13.497420,104.378972)--(5.750897,104.810465)--(5.175671,106.274209)--(12.147357,105.885876)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(38.712484,-98.711981)--(40.270530,-96.941405)--(46.542909,-94.695849)--(44.742188,-96.742203)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(96.803250,-43.730285)--(95.533849,-39.418629)--(98.410581,-33.204834)--(99.718207,-37.646323)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(4.121514,-105.229297)--(5.845860,-105.005856)--(8.737485,-106.094199)--(6.160200,-106.428163)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-47.112080,-93.717186)--(-45.679980,-95.797322)--(-51.640457,-93.289988)--(-53.259422,-90.938428)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-27.264519,100.976772)--(-34.840196,99.584559)--(-31.795996,101.786624)--(-24.882252,103.057191)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(76.015951,-74.265424)--(76.321011,-70.850459)--(81.149235,-65.945684)--(80.824877,-69.576688)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-4.936813,-105.134640)--(-3.171096,-105.316397)--(-4.739664,-106.558347)--(-7.378784,-106.286685)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(106.290780,-0.554050)--(103.059781,4.139000)--(103.280914,10.799677)--(106.518845,6.096557)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-101.646275,-18.240568)--(-103.839721,-22.846985)--(-105.437153,-16.326753)--(-103.209964,-11.649472)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-65.706184,-81.299663)--(-64.844564,-84.226243)--(-70.232755,-80.321558)--(-71.165969,-77.151797)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(2.326648,-105.373846)--(4.121514,-105.229297)--(6.160200,-106.428163)--(3.477513,-106.644213)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.903118,104.623500)--(-17.542766,104.008241)--(-15.788072,105.552226)--(-8.912571,106.105945)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.171096,-105.316397)--(-1.351121,-105.417772)--(-2.019447,-106.709867)--(-4.739664,-106.558347)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(-16.257941,-104.120521)--(-14.369538,-104.807103)--(-19.063530,-105.020687)--(-21.568803,-104.109825)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-1.351121,-105.417772)--(0.491972,-105.437032)--(0.735324,-106.738653)--(-2.019447,-106.709867)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(0.491972,-105.437032)--(2.326648,-105.373846)--(3.477513,-106.644213)--(0.735324,-106.738653)--cycle;
	fill p withcolor (0.000110,0.999890,1.000000);
	draw p withcolor meshcolor;

	p:=(99.761702,36.698405)--(94.927150,41.062781)--(93.060332,47.126951)--(97.799809,42.848404)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(72.662593,77.310548)--(66.114462,80.421539)--(62.654912,84.579803)--(68.860402,81.631600)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(22.756529,-103.580420)--(24.680555,-102.517015)--(30.651934,-101.675129)--(28.262397,-102.995823)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(30.651934,-101.675129)--(32.517008,-100.259059)--(38.712484,-98.711981)--(36.492057,-100.397855)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(48.564659,94.113961)--(41.351479,96.129627)--(38.179033,98.821533)--(44.838824,96.960506)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-59.384969,85.855078)--(-66.105121,83.041944)--(-62.171993,86.929523)--(-55.851677,89.575282)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(21.012998,103.605346)--(13.497420,104.378972)--(12.147357,105.885876)--(18.911199,105.189630)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-88.099619,54.858704)--(-93.460205,50.788644)--(-90.728181,56.488430)--(-85.524296,60.439515)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(13.402012,-105.097306)--(15.409443,-104.451434)--(20.443133,-104.548835)--(17.779949,-105.405689)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(58.463748,-88.999582)--(59.725350,-86.350115)--(65.443552,-82.670133)--(64.061163,-85.573264)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-89.385303,-53.439339)--(-89.744015,-57.454914)--(-93.473767,-51.859815)--(-93.100147,-47.677354)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-73.106530,74.218160)--(-79.287562,70.801913)--(-75.652858,75.539127)--(-69.755177,78.798766)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(99.718207,-37.646323)--(98.410581,-33.204834)--(100.865904,-26.848850)--(102.206155,-31.401154)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(38.179033,98.821533)--(30.865987,100.369327)--(28.169038,102.502823)--(34.843098,101.090269)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-100.295154,26.072038)--(-104.331693,21.484880)--(-103.209964,27.948714)--(-99.216824,32.486553)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(58.927065,88.375883)--(52.082532,90.864405)--(48.564659,94.113961)--(54.946884,91.793524)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(80.824877,-69.576688)--(81.149235,-65.945684)--(85.629965,-60.758521)--(85.287697,-64.590013)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-39.523895,-97.894438)--(-37.608527,-99.623529)--(-43.466282,-97.795731)--(-45.679980,-95.797322)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(85.109354,64.009189)--(79.318569,67.695200)--(76.153632,72.658442)--(81.713356,69.119508)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-103.209964,-11.649472)--(-105.437153,-16.326753)--(-106.583088,-9.736607)--(-104.331693,-5.008491)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(106.518845,6.096557)--(103.280914,10.799677)--(103.059781,17.414109)--(106.290780,12.721059)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.369538,-104.807103)--(-12.235269,-105.403507)--(-16.232074,-105.811915)--(-19.063530,-105.020687)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-71.165969,-77.151797)--(-70.232755,-80.321558)--(-75.320198,-76.072924)--(-76.321011,-72.673555)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-53.259422,-90.938428)--(-51.640457,-93.289988)--(-57.379801,-90.383172)--(-59.178700,-87.770259)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-23.705028,-103.094913)--(-21.568803,-104.109825)--(-26.787304,-103.653315)--(-29.440382,-102.392848)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(44.742188,-96.742203)--(46.542909,-94.695849)--(52.615983,-92.044790)--(50.580298,-94.358160)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.542766,104.008241)--(-24.882252,103.057191)--(-22.393435,104.696304)--(-15.788072,105.552226)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.589726,-101.024725)--(-29.440382,-102.392848)--(-35.049667,-101.252322)--(-37.608527,-99.623529)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(11.165269,-105.648035)--(13.402012,-105.097306)--(17.779949,-105.405689)--(14.812545,-106.136321)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(97.799809,42.848404)--(93.060332,47.126951)--(90.795016,52.989316)--(95.419122,48.814919)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-93.100147,-47.677354)--(-93.473767,-51.859815)--(-96.803250,-46.042645)--(-96.416321,-41.711206)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(102.206155,-31.401154)--(100.865904,-26.848850)--(102.889303,-20.377895)--(104.256440,-25.021520)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-45.294715,95.094759)--(-52.079220,92.911910)--(-48.083752,95.850675)--(-41.819748,97.866059)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(28.169038,102.502823)--(21.012998,103.605346)--(18.911199,105.189630)--(25.351464,104.197386)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-34.840196,99.584559)--(-41.819748,97.866059)--(-38.165702,100.218280)--(-31.795996,101.786624)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(20.443133,-104.548835)--(22.756529,-103.580420)--(28.262397,-102.995823)--(25.389282,-104.198542)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(64.061163,-85.573264)--(65.443552,-82.670133)--(70.881514,-78.636145)--(69.384257,-81.780508)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-99.216824,32.486553)--(-103.209964,27.948714)--(-101.646275,34.292867)--(-97.713633,38.761955)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-12.235269,-105.403507)--(-9.891651,-105.899531)--(-13.122884,-106.469971)--(-16.232074,-105.811915)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(85.287697,-64.590013)--(85.629965,-60.758521)--(89.744015,-55.311180)--(89.385303,-59.326755)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-85.524296,60.439515)--(-90.728181,56.488430)--(-87.607646,61.946325)--(-82.582745,65.761514)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-104.331693,-5.008491)--(-106.583088,-9.736607)--(-107.272618,-3.104767)--(-105.006657,1.653936)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(36.492057,-100.397855)--(38.712484,-98.711981)--(44.742188,-96.742203)--(42.175915,-98.690663)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(68.860402,81.631600)--(62.654912,84.579803)--(58.927065,88.375883)--(64.763340,85.603092)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(106.290780,12.721059)--(103.059781,17.414109)--(102.397331,23.953971)--(105.607561,19.291086)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(8.737485,-106.094199)--(11.165269,-105.648035)--(14.812545,-106.136321)--(11.591695,-106.728230)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-76.321011,-72.673555)--(-75.320198,-76.072924)--(-80.085108,-71.498533)--(-81.149235,-67.884113)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(28.262397,-102.995823)--(30.651934,-101.675129)--(36.492057,-100.397855)--(33.647240,-101.970181)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(5.175671,106.274209)--(-1.884573,106.347986)--(-1.667050,107.348132)--(4.578281,107.282871)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-69.755177,78.798766)--(-75.652858,75.539127)--(-71.694196,79.952871)--(-66.105121,83.041944)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-59.178700,-87.770259)--(-57.379801,-90.383172)--(-62.873437,-87.089321)--(-64.844564,-84.226243)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-1.884573,106.347986)--(-8.912571,106.105945)--(-7.883858,107.134028)--(-1.667050,107.348132)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-21.568803,-104.109825)--(-19.063530,-105.020687)--(-23.675888,-104.784557)--(-26.787304,-103.653315)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-55.851677,89.575282)--(-62.171993,86.929523)--(-57.972635,90.444857)--(-52.079220,92.911910)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.891651,-105.899531)--(-7.378784,-106.286685)--(-9.789157,-106.983594)--(-13.122884,-106.469971)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-24.882252,103.057191)--(-31.795996,101.786624)--(-28.615640,103.552824)--(-22.393435,104.696304)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(50.580298,-94.358160)--(52.615983,-92.044790)--(58.463748,-88.999582)--(56.201816,-91.570061)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-45.679980,-95.797322)--(-43.466282,-97.795731)--(-49.137909,-95.549155)--(-51.640457,-93.289988)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(81.713356,69.119508)--(76.153632,72.658442)--(72.662593,77.310548)--(77.967448,73.933847)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-96.416321,-41.711206)--(-96.803250,-46.042645)--(-99.718207,-40.028313)--(-99.319627,-35.566445)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(104.256440,-25.021520)--(102.889303,-20.377895)--(104.472115,-13.819679)--(105.860284,-18.534740)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(12.147357,105.885876)--(5.175671,106.274209)--(4.578281,107.282871)--(10.745277,106.939360)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(6.160200,-106.428163)--(8.737485,-106.094199)--(11.591695,-106.728230)--(8.172507,-107.171288)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(44.838824,96.960506)--(38.179033,98.821533)--(34.843098,101.090269)--(40.920983,99.391851)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(95.419122,48.814919)--(90.795016,52.989316)--(88.140902,58.624772)--(92.629836,54.572401)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-7.378784,-106.286685)--(-4.739664,-106.558347)--(-6.287935,-107.343997)--(-9.789157,-106.983594)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(89.385303,-59.326755)--(89.744015,-55.311180)--(93.473767,-49.626988)--(93.100147,-53.809449)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(54.946884,91.793524)--(48.564659,94.113961)--(44.838824,96.960506)--(50.731411,94.818090)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(69.384257,-81.780508)--(70.881514,-78.636145)--(76.015951,-74.265424)--(74.410237,-77.637556)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(17.779949,-105.405689)--(20.443133,-104.548835)--(25.389282,-104.198542)--(22.081749,-105.262709)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-8.912571,106.105945)--(-15.788072,105.552226)--(-13.965771,106.644221)--(-7.883858,107.134028)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(3.477513,-106.644213)--(6.160200,-106.428163)--(8.172507,-107.171288)--(4.613486,-107.457914)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-97.713633,38.761955)--(-101.646275,34.292867)--(-99.647320,40.490173)--(-95.792017,44.871372)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-105.006657,1.653936)--(-107.272618,-3.104767)--(-107.502789,3.540367)--(-105.231967,8.309282)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-4.739664,-106.558347)--(-2.019447,-106.709867)--(-2.679124,-107.545014)--(-6.287935,-107.343997)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.019447,-106.709867)--(0.735324,-106.738653)--(0.975527,-107.583204)--(-2.679124,-107.545014)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(0.735324,-106.738653)--(3.477513,-106.644213)--(4.613486,-107.457914)--(0.975527,-107.583204)--cycle;
	fill p withcolor (0.000211,0.999789,1.000000);
	draw p withcolor meshcolor;

	p:=(-29.440382,-102.392848)--(-26.787304,-103.653315)--(-31.891098,-102.752945)--(-35.049667,-101.252322)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-37.608527,-99.623529)--(-35.049667,-101.252322)--(-40.508865,-99.678217)--(-43.466282,-97.795731)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(34.843098,101.090269)--(28.169038,102.502823)--(25.351464,104.197386)--(31.357960,102.926121)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(105.607561,19.291086)--(102.397331,23.953971)--(101.296400,30.391258)--(104.472115,25.778507)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-81.149235,-67.884113)--(-80.085108,-71.498533)--(-84.507081,-66.617975)--(-85.629965,-62.803982)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-82.582745,65.761514)--(-87.607646,61.946325)--(-84.111962,67.138956)--(-79.287562,70.801913)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(18.911199,105.189630)--(12.147357,105.885876)--(10.745277,106.939360)--(16.728419,106.323477)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-99.319627,-35.566445)--(-99.718207,-40.028313)--(-102.206155,-33.842574)--(-101.797630,-29.269383)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-19.063530,-105.020687)--(-16.232074,-105.811915)--(-20.159372,-105.767220)--(-23.675888,-104.784557)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(105.860284,-18.534740)--(104.472115,-13.819679)--(105.607561,-7.202285)--(107.010817,-11.968591)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-64.844564,-84.226243)--(-62.873437,-87.089321)--(-68.097838,-83.422541)--(-70.232755,-80.321558)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(42.175915,-98.690663)--(44.742188,-96.742203)--(50.580298,-94.358160)--(47.679170,-96.560861)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-41.819748,97.866059)--(-48.083752,95.850675)--(-43.882381,98.378993)--(-38.165702,100.218280)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-15.788072,105.552226)--(-22.393435,104.696304)--(-19.808726,105.887091)--(-13.965771,106.644221)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(64.763340,85.603092)--(58.927065,88.375883)--(54.946884,91.793524)--(60.388952,89.208019)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(56.201816,-91.570061)--(58.463748,-88.999582)--(64.061163,-85.573264)--(61.582669,-88.389845)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(25.389282,-104.198542)--(28.262397,-102.995823)--(33.647240,-101.970181)--(30.226710,-103.402055)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(93.100147,-53.809449)--(93.473767,-49.626988)--(96.803250,-43.730285)--(96.416321,-48.061724)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-66.105121,83.041944)--(-71.694196,79.952871)--(-67.428529,84.024244)--(-62.171993,86.929523)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-51.640457,-93.289988)--(-49.137909,-95.549155)--(-54.599119,-92.893424)--(-57.379801,-90.383172)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(14.812545,-106.136321)--(17.779949,-105.405689)--(22.081749,-105.262709)--(18.396392,-106.170115)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-105.231967,8.309282)--(-107.502789,3.540367)--(-107.272618,10.170342)--(-105.006657,14.929045)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(77.967448,73.933847)--(72.662593,77.310548)--(68.860402,81.631600)--(73.887672,78.431590)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(92.629836,54.572401)--(88.140902,58.624772)--(85.109354,64.009189)--(89.443895,60.096196)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(74.410237,-77.637556)--(76.015951,-74.265424)--(80.824877,-69.576688)--(79.117582,-73.162147)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.795996,101.786624)--(-38.165702,100.218280)--(-34.348224,102.141352)--(-28.615640,103.552824)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(33.647240,-101.970181)--(36.492057,-100.397855)--(42.175915,-98.690663)--(38.888001,-100.507887)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-95.792017,44.871372)--(-99.647320,40.490173)--(-97.221660,46.514093)--(-93.460205,50.788644)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(104.472115,25.778507)--(101.296400,30.391258)--(99.761702,36.698405)--(102.889303,32.155540)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-85.629965,-62.803982)--(-84.507081,-66.617975)--(-88.567183,-61.452149)--(-89.744015,-57.454914)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-52.079220,92.911910)--(-57.972635,90.444857)--(-53.525030,93.572892)--(-48.083752,95.850675)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(25.351464,104.197386)--(18.911199,105.189630)--(16.728419,106.323477)--(22.425332,105.445760)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-16.232074,-105.811915)--(-13.122884,-106.469971)--(-16.297922,-106.584490)--(-20.159372,-105.767220)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-101.797630,-29.269383)--(-102.206155,-33.842574)--(-104.256440,-27.511915)--(-103.839721,-22.846985)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(107.010817,-11.968591)--(105.607561,-7.202285)--(106.290780,-0.554050)--(107.703114,-5.351191)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-26.787304,-103.653315)--(-23.675888,-104.784557)--(-28.186863,-104.099724)--(-31.891098,-102.752945)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-79.287562,70.801913)--(-84.111962,67.138956)--(-80.256097,72.044087)--(-75.652858,75.539127)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(11.591695,-106.728230)--(14.812545,-106.136321)--(18.396392,-106.170115)--(14.396268,-106.905234)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(50.731411,94.818090)--(44.838824,96.960506)--(40.920983,99.391851)--(46.298698,97.436631)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(96.416321,-48.061724)--(96.803250,-43.730285)--(99.718207,-37.646323)--(99.319627,-42.108191)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-70.232755,-80.321558)--(-68.097838,-83.422541)--(-73.030634,-79.398532)--(-75.320198,-76.072924)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(40.920983,99.391851)--(34.843098,101.090269)--(31.357960,102.926121)--(36.827911,101.397585)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-43.466282,-97.795731)--(-40.508865,-99.678217)--(-45.794597,-97.677275)--(-49.137909,-95.549155)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-22.393435,104.696304)--(-28.615640,103.552824)--(-25.312748,104.875595)--(-19.808726,105.887091)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-105.006657,14.929045)--(-107.272618,10.170342)--(-106.583088,16.756765)--(-104.331693,21.484880)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-35.049667,-101.252322)--(-31.891098,-102.752945)--(-36.858329,-101.412572)--(-40.508865,-99.678217)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(4.578281,107.282871)--(-1.667050,107.348132)--(-1.442390,107.888597)--(3.961287,107.832130)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.122884,-106.469971)--(-9.789157,-106.983594)--(-12.157611,-107.222383)--(-16.297922,-106.584490)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(79.117582,-73.162147)--(80.824877,-69.576688)--(85.287697,-64.590013)--(83.486133,-68.373447)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(61.582669,-88.389845)--(64.061163,-85.573264)--(69.384257,-81.780508)--(66.699816,-84.831130)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(47.679170,-96.560861)--(50.580298,-94.358160)--(56.201816,-91.570061)--(52.978255,-94.017571)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-1.667050,107.348132)--(-7.883858,107.134028)--(-6.821386,107.703346)--(-1.442390,107.888597)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(22.081749,-105.262709)--(25.389282,-104.198542)--(30.226710,-103.402055)--(26.288992,-104.668978)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(89.443895,60.096196)--(85.109354,64.009189)--(81.713356,69.119508)--(85.874941,65.362650)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-93.460205,50.788644)--(-97.221660,46.514093)--(-94.379683,52.338833)--(-90.728181,56.488430)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(102.889303,32.155540)--(99.761702,36.698405)--(97.799809,42.848404)--(100.865904,38.394878)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-89.744015,-57.454914)--(-88.567183,-61.452149)--(-92.248026,-56.023175)--(-93.473767,-51.859815)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(8.172507,-107.171288)--(11.591695,-106.728230)--(14.396268,-106.905234)--(10.149819,-107.455488)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-103.839721,-22.846985)--(-104.256440,-27.511915)--(-105.860284,-21.063447)--(-105.437153,-16.326753)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(10.745277,106.939360)--(4.578281,107.282871)--(3.961287,107.832130)--(9.297184,107.534913)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-57.379801,-90.383172)--(-54.599119,-92.893424)--(-59.826527,-89.839909)--(-62.873437,-87.089321)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-62.171993,86.929523)--(-67.428529,84.024244)--(-62.874122,87.735813)--(-57.972635,90.444857)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(73.887672,78.431590)--(68.860402,81.631600)--(64.763340,85.603092)--(69.491497,82.593477)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(107.703114,-5.351191)--(106.290780,-0.554050)--(106.518845,6.096557)--(107.934209,1.289124)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(60.388952,89.208019)--(54.946884,91.793524)--(50.731411,94.818090)--(55.755969,92.430943)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(31.357960,102.926121)--(25.351464,104.197386)--(22.425332,105.445760)--(27.738542,104.321227)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.789157,-106.983594)--(-6.287935,-107.343997)--(-7.809280,-107.669985)--(-12.157611,-107.222383)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-7.883858,107.134028)--(-13.965771,106.644221)--(-12.083667,107.279548)--(-6.821386,107.703346)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(4.613486,-107.457914)--(8.172507,-107.171288)--(10.149819,-107.455488)--(5.729704,-107.811463)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(99.319627,-42.108191)--(99.718207,-37.646323)--(102.206155,-31.401154)--(101.797630,-35.974344)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-38.165702,100.218280)--(-43.882381,98.378993)--(-39.493100,100.486037)--(-34.348224,102.141352)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(38.888001,-100.507887)--(42.175915,-98.690663)--(47.679170,-96.560861)--(43.962238,-98.615203)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(30.226710,-103.402055)--(33.647240,-101.970181)--(38.888001,-100.507887)--(34.934703,-102.162784)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-23.675888,-104.784557)--(-20.159372,-105.767220)--(-24.000343,-105.269614)--(-28.186863,-104.099724)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.287935,-107.343997)--(-2.679124,-107.545014)--(-3.327330,-107.919636)--(-7.809280,-107.669985)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.679124,-107.545014)--(0.975527,-107.583204)--(1.211552,-107.967066)--(-3.327330,-107.919636)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(0.975527,-107.583204)--(4.613486,-107.457914)--(5.729704,-107.811463)--(1.211552,-107.967066)--cycle;
	fill p withcolor (0.016219,0.983781,1.000000);
	draw p withcolor meshcolor;

	p:=(-75.652858,75.539127)--(-80.256097,72.044087)--(-76.056563,76.640715)--(-71.694196,79.952871)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-104.331693,21.484880)--(-106.583088,16.756765)--(-105.437153,23.271433)--(-103.209964,27.948714)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(16.728419,106.323477)--(10.745277,106.939360)--(9.297184,107.534913)--(14.474005,107.002030)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-75.320198,-76.072924)--(-73.030634,-79.398532)--(-77.650702,-75.034526)--(-80.085108,-71.498533)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-48.083752,95.850675)--(-53.525030,93.572892)--(-48.848222,96.300234)--(-43.882381,98.378993)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(83.486133,-68.373447)--(85.287697,-64.590013)--(89.385303,-59.326755)--(87.497183,-63.291962)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-28.615640,103.552824)--(-34.348224,102.141352)--(-30.383662,103.627038)--(-25.312748,104.875595)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(100.865904,38.394878)--(97.799809,42.848404)--(95.419122,48.814919)--(98.410581,44.469803)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-93.473767,-51.859815)--(-92.248026,-56.023175)--(-95.533849,-50.354301)--(-96.803250,-46.042645)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-105.437153,-16.326753)--(-105.860284,-21.063447)--(-107.010817,-14.524781)--(-106.583088,-9.736607)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-90.728181,56.488430)--(-94.379683,52.338833)--(-91.133557,57.939450)--(-87.607646,61.946325)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.965771,106.644221)--(-19.808726,105.887091)--(-17.139193,106.624454)--(-12.083667,107.279548)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(18.396392,-106.170115)--(22.081749,-105.262709)--(26.288992,-104.668978)--(21.901463,-105.749272)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(107.934209,1.289124)--(106.518845,6.096557)--(106.290780,12.721059)--(107.703114,7.923918)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(85.874941,65.362650)--(81.713356,69.119508)--(77.967448,73.933847)--(81.938258,70.349211)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(66.699816,-84.831130)--(69.384257,-81.780508)--(74.410237,-77.637556)--(71.531344,-80.909155)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-49.137909,-95.549155)--(-45.794597,-97.677275)--(-50.884230,-95.258064)--(-54.599119,-92.893424)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.891098,-102.752945)--(-28.186863,-104.099724)--(-32.577137,-102.969119)--(-36.858329,-101.412572)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(52.978255,-94.017571)--(56.201816,-91.570061)--(61.582669,-88.389845)--(58.050479,-91.071684)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(46.298698,97.436631)--(40.920983,99.391851)--(36.827911,101.397585)--(41.667728,99.637934)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(22.425332,105.445760)--(16.728419,106.323477)--(14.474005,107.002030)--(19.403171,106.242599)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(101.797630,-35.974344)--(102.206155,-31.401154)--(104.256440,-25.021520)--(103.839721,-29.686450)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-62.873437,-87.089321)--(-59.826527,-89.839909)--(-64.797749,-86.401685)--(-68.097838,-83.422541)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(69.491497,82.593477)--(64.763340,85.603092)--(60.388952,89.208019)--(64.797749,86.401685)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-103.209964,27.948714)--(-105.437153,23.271433)--(-103.839721,29.686450)--(-101.646275,34.292867)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-20.159372,-105.767220)--(-16.297922,-106.584490)--(-19.403171,-106.242599)--(-24.000343,-105.269614)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-40.508865,-99.678217)--(-36.858329,-101.412572)--(-41.667728,-99.637934)--(-45.794597,-97.677275)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-57.972635,90.444857)--(-62.874122,87.735813)--(-58.050479,91.071684)--(-53.525030,93.572892)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(36.827911,101.397585)--(31.357960,102.926121)--(27.738542,104.321227)--(32.577137,102.969119)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(55.755969,92.430943)--(50.731411,94.818090)--(46.298698,97.436631)--(50.884230,95.258064)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-71.694196,79.952871)--(-76.056563,76.640715)--(-71.531344,80.909155)--(-67.428529,84.024244)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-80.085108,-71.498533)--(-77.650702,-75.034526)--(-81.938258,-70.349211)--(-84.507081,-66.617975)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-106.583088,-9.736607)--(-107.010817,-14.524781)--(-107.703114,-7.923918)--(-107.272618,-3.104767)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-19.808726,105.887091)--(-25.312748,104.875595)--(-21.901463,105.749272)--(-17.139193,106.624454)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(14.396268,-106.905234)--(18.396392,-106.170115)--(21.901463,-105.749272)--(17.139193,-106.624454)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(87.497183,-63.291962)--(89.385303,-59.326755)--(93.100147,-53.809449)--(91.133557,-57.939450)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(107.703114,7.923918)--(106.290780,12.721059)--(105.607561,19.291086)--(107.010817,14.524781)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(98.410581,44.469803)--(95.419122,48.814919)--(92.629836,54.572401)--(95.533849,50.354301)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-96.803250,-46.042645)--(-95.533849,-50.354301)--(-98.410581,-44.469803)--(-99.718207,-40.028313)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(26.288992,-104.668978)--(30.226710,-103.402055)--(34.934703,-102.162784)--(30.383662,-103.627038)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-87.607646,61.946325)--(-91.133557,57.939450)--(-87.497183,63.291962)--(-84.111962,67.138956)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(43.962238,-98.615203)--(47.679170,-96.560861)--(52.978255,-94.017571)--(48.848222,-96.300234)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(81.938258,70.349211)--(77.967448,73.933847)--(73.887672,78.431590)--(77.650702,75.034526)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-16.297922,-106.584490)--(-12.157611,-107.222383)--(-14.474005,-107.002030)--(-19.403171,-106.242599)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(103.839721,-29.686450)--(104.256440,-25.021520)--(105.860284,-18.534740)--(105.437153,-23.271433)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(71.531344,-80.909155)--(74.410237,-77.637556)--(79.117582,-73.162147)--(76.056563,-76.640715)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(3.961287,107.832130)--(-1.442390,107.888597)--(-1.211552,107.967066)--(3.327330,107.919636)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(27.738542,104.321227)--(22.425332,105.445760)--(19.403171,106.242599)--(24.000343,105.269614)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-34.348224,102.141352)--(-39.493100,100.486037)--(-34.934703,102.162784)--(-30.383662,103.627038)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-43.882381,98.378993)--(-48.848222,96.300234)--(-43.962238,98.615203)--(-39.493100,100.486037)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(34.934703,-102.162784)--(38.888001,-100.507887)--(43.962238,-98.615203)--(39.493100,-100.486037)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-101.646275,34.292867)--(-103.839721,29.686450)--(-101.797630,35.974344)--(-99.647320,40.490173)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-1.442390,107.888597)--(-6.821386,107.703346)--(-5.729704,107.811463)--(-1.211552,107.967066)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(10.149819,-107.455488)--(14.396268,-106.905234)--(17.139193,-106.624454)--(12.083667,-107.279548)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(9.297184,107.534913)--(3.961287,107.832130)--(3.327330,107.919636)--(7.809280,107.669985)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-28.186863,-104.099724)--(-24.000343,-105.269614)--(-27.738542,-104.321227)--(-32.577137,-102.969119)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-54.599119,-92.893424)--(-50.884230,-95.258064)--(-55.755969,-92.430943)--(-59.826527,-89.839909)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-107.272618,-3.104767)--(-107.703114,-7.923918)--(-107.934209,-1.289124)--(-107.502789,3.540367)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-68.097838,-83.422541)--(-64.797749,-86.401685)--(-69.491497,-82.593477)--(-73.030634,-79.398532)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(58.050479,-91.071684)--(61.582669,-88.389845)--(66.699816,-84.831130)--(62.874122,-87.735813)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(64.797749,86.401685)--(60.388952,89.208019)--(55.755969,92.430943)--(59.826527,89.839909)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-12.157611,-107.222383)--(-7.809280,-107.669985)--(-9.297184,-107.534913)--(-14.474005,-107.002030)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(107.010817,14.524781)--(105.607561,19.291086)--(104.472115,25.778507)--(105.860284,21.063447)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.821386,107.703346)--(-12.083667,107.279548)--(-10.149819,107.455488)--(-5.729704,107.811463)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(95.533849,50.354301)--(92.629836,54.572401)--(89.443895,60.096196)--(92.248026,56.023175)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-99.718207,-40.028313)--(-98.410581,-44.469803)--(-100.865904,-38.394878)--(-102.206155,-33.842574)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(91.133557,-57.939450)--(93.100147,-53.809449)--(96.416321,-48.061724)--(94.379683,-52.338833)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-84.507081,-66.617975)--(-81.938258,-70.349211)--(-85.874941,-65.362650)--(-88.567183,-61.452149)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-25.312748,104.875595)--(-30.383662,103.627038)--(-26.288992,104.668978)--(-21.901463,105.749272)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(5.729704,-107.811463)--(10.149819,-107.455488)--(12.083667,-107.279548)--(6.821386,-107.703346)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(-53.525030,93.572892)--(-58.050479,91.071684)--(-52.978255,94.017571)--(-48.848222,96.300234)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-67.428529,84.024244)--(-71.531344,80.909155)--(-66.699816,84.831130)--(-62.874122,87.735813)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-84.111962,67.138956)--(-87.497183,63.291962)--(-83.486133,68.373447)--(-80.256097,72.044087)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(14.474005,107.002030)--(9.297184,107.534913)--(7.809280,107.669985)--(12.157611,107.222383)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-7.809280,-107.669985)--(-3.327330,-107.919636)--(-3.961287,-107.832130)--(-9.297184,-107.534913)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(41.667728,99.637934)--(36.827911,101.397585)--(32.577137,102.969119)--(36.858329,101.412572)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.327330,-107.919636)--(1.211552,-107.967066)--(1.442390,-107.888597)--(-3.961287,-107.832130)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(1.211552,-107.967066)--(5.729704,-107.811463)--(6.821386,-107.703346)--(1.442390,-107.888597)--cycle;
	fill p withcolor (0.032259,0.967741,1.000000);
	draw p withcolor meshcolor;

	p:=(105.437153,-23.271433)--(105.860284,-18.534740)--(107.010817,-11.968591)--(106.583088,-16.756765)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(21.901463,-105.749272)--(26.288992,-104.668978)--(30.383662,-103.627038)--(25.312748,-104.875595)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(50.884230,95.258064)--(46.298698,97.436631)--(41.667728,99.637934)--(45.794597,97.677275)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-36.858329,-101.412572)--(-32.577137,-102.969119)--(-36.827911,-101.397585)--(-41.667728,-99.637934)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(77.650702,75.034526)--(73.887672,78.431590)--(69.491497,82.593477)--(73.030634,79.398532)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-99.647320,40.490173)--(-101.797630,35.974344)--(-99.319627,42.108191)--(-97.221660,46.514093)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-45.794597,-97.677275)--(-41.667728,-99.637934)--(-46.298698,-97.436631)--(-50.884230,-95.258064)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-12.083667,107.279548)--(-17.139193,106.624454)--(-14.396268,106.905234)--(-10.149819,107.455488)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(76.056563,-76.640715)--(79.117582,-73.162147)--(83.486133,-68.373447)--(80.256097,-72.044087)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(32.577137,102.969119)--(27.738542,104.321227)--(24.000343,105.269614)--(28.186863,104.099724)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-107.502789,3.540367)--(-107.934209,-1.289124)--(-107.703114,5.351191)--(-107.272618,10.170342)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(105.860284,21.063447)--(104.472115,25.778507)--(102.889303,32.155540)--(104.256440,27.511915)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(19.403171,106.242599)--(14.474005,107.002030)--(12.157611,107.222383)--(16.297922,106.584490)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-24.000343,-105.269614)--(-19.403171,-106.242599)--(-22.425332,-105.445760)--(-27.738542,-104.321227)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(48.848222,-96.300234)--(52.978255,-94.017571)--(58.050479,-91.071684)--(53.525030,-93.572892)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(92.248026,56.023175)--(89.443895,60.096196)--(85.874941,65.362650)--(88.567183,61.452149)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-102.206155,-33.842574)--(-100.865904,-38.394878)--(-102.889303,-32.155540)--(-104.256440,-27.511915)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(94.379683,-52.338833)--(96.416321,-48.061724)--(99.319627,-42.108191)--(97.221660,-46.514093)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-39.493100,100.486037)--(-43.962238,98.615203)--(-38.888001,100.507887)--(-34.934703,102.162784)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(30.383662,-103.627038)--(34.934703,-102.162784)--(39.493100,-100.486037)--(34.348224,-102.141352)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-80.256097,72.044087)--(-83.486133,68.373447)--(-79.117582,73.162147)--(-76.056563,76.640715)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-88.567183,-61.452149)--(-85.874941,-65.362650)--(-89.443895,-60.096196)--(-92.248026,-56.023175)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-73.030634,-79.398532)--(-69.491497,-82.593477)--(-73.887672,-78.431590)--(-77.650702,-75.034526)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(106.583088,-16.756765)--(107.010817,-11.968591)--(107.703114,-5.351191)--(107.272618,-10.170342)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.139193,106.624454)--(-21.901463,105.749272)--(-18.396392,106.170115)--(-14.396268,106.905234)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(59.826527,89.839909)--(55.755969,92.430943)--(50.884230,95.258064)--(54.599119,92.893424)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(62.874122,-87.735813)--(66.699816,-84.831130)--(71.531344,-80.909155)--(67.428529,-84.024244)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-97.221660,46.514093)--(-99.319627,42.108191)--(-96.416321,48.061724)--(-94.379683,52.338833)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-30.383662,103.627038)--(-34.934703,102.162784)--(-30.226710,103.402055)--(-26.288992,104.668978)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-62.874122,87.735813)--(-66.699816,84.831130)--(-61.582669,88.389845)--(-58.050479,91.071684)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-59.826527,-89.839909)--(-55.755969,-92.430943)--(-60.388952,-89.208019)--(-64.797749,-86.401685)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(17.139193,-106.624454)--(21.901463,-105.749272)--(25.312748,-104.875595)--(19.808726,-105.887091)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(39.493100,-100.486037)--(43.962238,-98.615203)--(48.848222,-96.300234)--(43.882381,-98.378993)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-48.848222,96.300234)--(-52.978255,94.017571)--(-47.679170,96.560861)--(-43.962238,98.615203)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(73.030634,79.398532)--(69.491497,82.593477)--(64.797749,86.401685)--(68.097838,83.422541)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-107.272618,10.170342)--(-107.703114,5.351191)--(-107.010817,11.968591)--(-106.583088,16.756765)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(24.000343,105.269614)--(19.403171,106.242599)--(16.297922,106.584490)--(20.159372,105.767220)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(104.256440,27.511915)--(102.889303,32.155540)--(100.865904,38.394878)--(102.206155,33.842574)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-19.403171,-106.242599)--(-14.474005,-107.002030)--(-16.728419,-106.323477)--(-22.425332,-105.445760)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(80.256097,-72.044087)--(83.486133,-68.373447)--(87.497183,-63.291962)--(84.111962,-67.138956)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(88.567183,61.452149)--(85.874941,65.362650)--(81.938258,70.349211)--(84.507081,66.617975)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-104.256440,-27.511915)--(-102.889303,-32.155540)--(-104.472115,-25.778507)--(-105.860284,-21.063447)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-32.577137,-102.969119)--(-27.738542,-104.321227)--(-31.357960,-102.926121)--(-36.827911,-101.397585)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(45.794597,97.677275)--(41.667728,99.637934)--(36.858329,101.412572)--(40.508865,99.678217)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(36.858329,101.412572)--(32.577137,102.969119)--(28.186863,104.099724)--(31.891098,102.752945)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(3.327330,107.919636)--(-1.211552,107.967066)--(-0.975527,107.583204)--(2.679124,107.545014)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(107.272618,-10.170342)--(107.703114,-5.351191)--(107.934209,1.289124)--(107.502789,-3.540367)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(97.221660,-46.514093)--(99.319627,-42.108191)--(101.797630,-35.974344)--(99.647320,-40.490173)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-1.211552,107.967066)--(-5.729704,107.811463)--(-4.613486,107.457914)--(-0.975527,107.583204)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(12.083667,-107.279548)--(17.139193,-106.624454)--(19.808726,-105.887091)--(13.965771,-106.644221)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-21.901463,105.749272)--(-26.288992,104.668978)--(-22.081749,105.262709)--(-18.396392,106.170115)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-76.056563,76.640715)--(-79.117582,73.162147)--(-74.410237,77.637556)--(-71.531344,80.909155)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-50.884230,-95.258064)--(-46.298698,-97.436631)--(-50.731411,-94.818090)--(-55.755969,-92.430943)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-94.379683,52.338833)--(-96.416321,48.061724)--(-93.100147,53.809449)--(-91.133557,57.939450)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(7.809280,107.669985)--(3.327330,107.919636)--(2.679124,107.545014)--(6.287935,107.343997)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-92.248026,-56.023175)--(-89.443895,-60.096196)--(-92.629836,-54.572401)--(-95.533849,-50.354301)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-41.667728,-99.637934)--(-36.827911,-101.397585)--(-40.920983,-99.391851)--(-46.298698,-97.436631)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-5.729704,107.811463)--(-10.149819,107.455488)--(-8.172507,107.171288)--(-4.613486,107.457914)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.474005,-107.002030)--(-9.297184,-107.534913)--(-10.745277,-106.939360)--(-16.728419,-106.323477)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-106.583088,16.756765)--(-107.010817,11.968591)--(-105.860284,18.534740)--(-105.437153,23.271433)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(102.206155,33.842574)--(100.865904,38.394878)--(98.410581,44.469803)--(99.718207,40.028313)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-77.650702,-75.034526)--(-73.887672,-78.431590)--(-77.967448,-73.933847)--(-81.938258,-70.349211)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(54.599119,92.893424)--(50.884230,95.258064)--(45.794597,97.677275)--(49.137909,95.549155)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-58.050479,91.071684)--(-61.582669,88.389845)--(-56.201816,91.570061)--(-52.978255,94.017571)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(25.312748,-104.875595)--(30.383662,-103.627038)--(34.348224,-102.141352)--(28.615640,-103.552824)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(12.157611,107.222383)--(7.809280,107.669985)--(6.287935,107.343997)--(9.789157,106.983594)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(53.525030,-93.572892)--(58.050479,-91.071684)--(62.874122,-87.735813)--(57.972635,-90.444857)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(28.186863,104.099724)--(24.000343,105.269614)--(20.159372,105.767220)--(23.675888,104.784557)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(6.821386,-107.703346)--(12.083667,-107.279548)--(13.965771,-106.644221)--(7.883858,-107.134028)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(68.097838,83.422541)--(64.797749,86.401685)--(59.826527,89.839909)--(62.873437,87.089321)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(67.428529,-84.024244)--(71.531344,-80.909155)--(76.056563,-76.640715)--(71.694196,-79.952871)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.297184,-107.534913)--(-3.961287,-107.832130)--(-4.578281,-107.282871)--(-10.745277,-106.939360)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(-34.934703,102.162784)--(-38.888001,100.507887)--(-33.647240,101.970181)--(-30.226710,103.402055)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.961287,-107.832130)--(1.442390,-107.888597)--(1.667050,-107.348132)--(-4.578281,-107.282871)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(1.442390,-107.888597)--(6.821386,-107.703346)--(7.883858,-107.134028)--(1.667050,-107.348132)--cycle;
	fill p withcolor (0.032457,0.967543,1.000000);
	draw p withcolor meshcolor;

	p:=(84.507081,66.617975)--(81.938258,70.349211)--(77.650702,75.034526)--(80.085108,71.498533)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.149819,107.455488)--(-14.396268,106.905234)--(-11.591695,106.728230)--(-8.172507,107.171288)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-105.860284,-21.063447)--(-104.472115,-25.778507)--(-105.607561,-19.291086)--(-107.010817,-14.524781)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-64.797749,-86.401685)--(-60.388952,-89.208019)--(-64.763340,-85.603092)--(-69.491497,-82.593477)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-43.962238,98.615203)--(-47.679170,96.560861)--(-42.175915,98.690663)--(-38.888001,100.507887)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(107.502789,-3.540367)--(107.934209,1.289124)--(107.703114,7.923918)--(107.272618,3.104767)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(84.111962,-67.138956)--(87.497183,-63.291962)--(91.133557,-57.939450)--(87.607646,-61.946325)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-91.133557,57.939450)--(-93.100147,53.809449)--(-89.385303,59.326755)--(-87.497183,63.291962)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(16.297922,106.584490)--(12.157611,107.222383)--(9.789157,106.983594)--(13.122884,106.469971)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(99.647320,-40.490173)--(101.797630,-35.974344)--(103.839721,-29.686450)--(101.646275,-34.292867)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-71.531344,80.909155)--(-74.410237,77.637556)--(-69.384257,81.780508)--(-66.699816,84.831130)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-26.288992,104.668978)--(-30.226710,103.402055)--(-25.389282,104.198542)--(-22.081749,105.262709)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(34.348224,-102.141352)--(39.493100,-100.486037)--(43.882381,-98.378993)--(38.165702,-100.218280)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-27.738542,-104.321227)--(-22.425332,-105.445760)--(-25.351464,-104.197386)--(-31.357960,-102.926121)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(43.882381,-98.378993)--(48.848222,-96.300234)--(53.525030,-93.572892)--(48.083752,-95.850675)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-105.437153,23.271433)--(-105.860284,18.534740)--(-104.256440,25.021520)--(-103.839721,29.686450)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(99.718207,40.028313)--(98.410581,44.469803)--(95.533849,50.354301)--(96.803250,46.042645)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-95.533849,-50.354301)--(-92.629836,-54.572401)--(-95.419122,-48.814919)--(-98.410581,-44.469803)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.396268,106.905234)--(-18.396392,106.170115)--(-14.812545,106.136321)--(-11.591695,106.728230)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(40.508865,99.678217)--(36.858329,101.412572)--(31.891098,102.752945)--(35.049667,101.252322)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(19.808726,-105.887091)--(25.312748,-104.875595)--(28.615640,-103.552824)--(22.393435,-104.696304)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-52.978255,94.017571)--(-56.201816,91.570061)--(-50.580298,94.358160)--(-47.679170,96.560861)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(31.891098,102.752945)--(28.186863,104.099724)--(23.675888,104.784557)--(26.787304,103.653315)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(62.873437,87.089321)--(59.826527,89.839909)--(54.599119,92.893424)--(57.379801,90.383172)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(80.085108,71.498533)--(77.650702,75.034526)--(73.030634,79.398532)--(75.320198,76.072924)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(20.159372,105.767220)--(16.297922,106.584490)--(13.122884,106.469971)--(16.232074,105.811915)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-107.010817,-14.524781)--(-105.607561,-19.291086)--(-106.290780,-12.721059)--(-107.703114,-7.923918)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(107.272618,3.104767)--(107.703114,7.923918)--(107.010817,14.524781)--(106.583088,9.736607)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-81.938258,-70.349211)--(-77.967448,-73.933847)--(-81.713356,-69.119508)--(-85.874941,-65.362650)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(49.137909,95.549155)--(45.794597,97.677275)--(40.508865,99.678217)--(43.466282,97.795731)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-87.497183,63.291962)--(-89.385303,59.326755)--(-85.287697,64.590013)--(-83.486133,68.373447)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-55.755969,-92.430943)--(-50.731411,-94.818090)--(-54.946884,-91.793524)--(-60.388952,-89.208019)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(101.646275,-34.292867)--(103.839721,-29.686450)--(105.437153,-23.271433)--(103.209964,-27.948714)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-36.827911,-101.397585)--(-31.357960,-102.926121)--(-34.843098,-101.090269)--(-40.920983,-99.391851)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-103.839721,29.686450)--(-104.256440,25.021520)--(-102.206155,31.401154)--(-101.797630,35.974344)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(71.694196,-79.952871)--(76.056563,-76.640715)--(80.256097,-72.044087)--(75.652858,-75.539127)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(96.803250,46.042645)--(95.533849,50.354301)--(92.248026,56.023175)--(93.473767,51.859815)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-66.699816,84.831130)--(-69.384257,81.780508)--(-64.061163,85.573264)--(-61.582669,88.389845)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-18.396392,106.170115)--(-22.081749,105.262709)--(-17.779949,105.405689)--(-14.812545,106.136321)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(87.607646,-61.946325)--(91.133557,-57.939450)--(94.379683,-52.338833)--(90.728181,-56.488430)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-22.425332,-105.445760)--(-16.728419,-106.323477)--(-18.911199,-105.189630)--(-25.351464,-104.197386)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(57.972635,-90.444857)--(62.874122,-87.735813)--(67.428529,-84.024244)--(62.171993,-86.929523)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-46.298698,-97.436631)--(-40.920983,-99.391851)--(-44.838824,-96.960506)--(-50.731411,-94.818090)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-38.888001,100.507887)--(-42.175915,98.690663)--(-36.492057,100.397855)--(-33.647240,101.970181)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-30.226710,103.402055)--(-33.647240,101.970181)--(-28.262397,102.995823)--(-25.389282,104.198542)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-69.491497,-82.593477)--(-64.763340,-85.603092)--(-68.860402,-81.631600)--(-73.887672,-78.431590)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-98.410581,-44.469803)--(-95.419122,-48.814919)--(-97.799809,-42.848404)--(-100.865904,-38.394878)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(23.675888,104.784557)--(20.159372,105.767220)--(16.232074,105.811915)--(19.063530,105.020687)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(2.679124,107.545014)--(-0.975527,107.583204)--(-0.735324,106.738653)--(2.019447,106.709867)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(13.965771,-106.644221)--(19.808726,-105.887091)--(22.393435,-104.696304)--(15.788072,-105.552226)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.975527,107.583204)--(-4.613486,107.457914)--(-3.477513,106.644213)--(-0.735324,106.738653)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(75.320198,76.072924)--(73.030634,79.398532)--(68.097838,83.422541)--(70.232755,80.321558)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(106.583088,9.736607)--(107.010817,14.524781)--(105.860284,21.063447)--(105.437153,16.326753)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-107.703114,-7.923918)--(-106.290780,-12.721059)--(-106.518845,-6.096557)--(-107.934209,-1.289124)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(6.287935,107.343997)--(2.679124,107.545014)--(2.019447,106.709867)--(4.739664,106.558347)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-83.486133,68.373447)--(-85.287697,64.590013)--(-80.824877,69.576688)--(-79.117582,73.162147)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(28.615640,-103.552824)--(34.348224,-102.141352)--(38.165702,-100.218280)--(31.795996,-101.786624)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(57.379801,90.383172)--(54.599119,92.893424)--(49.137909,95.549155)--(51.640457,93.289988)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-4.613486,107.457914)--(-8.172507,107.171288)--(-6.160200,106.428163)--(-3.477513,106.644213)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-101.797630,35.974344)--(-102.206155,31.401154)--(-99.718207,37.646323)--(-99.319627,42.108191)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-47.679170,96.560861)--(-50.580298,94.358160)--(-44.742188,96.742203)--(-42.175915,98.690663)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-16.728419,-106.323477)--(-10.745277,-106.939360)--(-12.147357,-105.885876)--(-18.911199,-105.189630)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(93.473767,51.859815)--(92.248026,56.023175)--(88.567183,61.452149)--(89.744015,57.454914)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(9.789157,106.983594)--(6.287935,107.343997)--(4.739664,106.558347)--(7.378784,106.286685)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(35.049667,101.252322)--(31.891098,102.752945)--(26.787304,103.653315)--(29.440382,102.392848)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-22.081749,105.262709)--(-25.389282,104.198542)--(-20.443133,104.548835)--(-17.779949,105.405689)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(103.209964,-27.948714)--(105.437153,-23.271433)--(106.583088,-16.756765)--(104.331693,-21.484880)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(48.083752,-95.850675)--(53.525030,-93.572892)--(57.972635,-90.444857)--(52.079220,-92.911910)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-85.874941,-65.362650)--(-81.713356,-69.119508)--(-85.109354,-64.009189)--(-89.443895,-60.096196)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(43.466282,97.795731)--(40.508865,99.678217)--(35.049667,101.252322)--(37.608527,99.623529)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-61.582669,88.389845)--(-64.061163,85.573264)--(-58.463748,88.999582)--(-56.201816,91.570061)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(7.883858,-107.134028)--(13.965771,-106.644221)--(15.788072,-105.552226)--(8.912571,-106.105945)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(-8.172507,107.171288)--(-11.591695,106.728230)--(-8.737485,106.094199)--(-6.160200,106.428163)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(38.165702,-100.218280)--(43.882381,-98.378993)--(48.083752,-95.850675)--(41.819748,-97.866059)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.745277,-106.939360)--(-4.578281,-107.282871)--(-5.175671,-106.274209)--(-12.147357,-105.885876)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(90.728181,-56.488430)--(94.379683,-52.338833)--(97.221660,-46.514093)--(93.460205,-50.788644)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-4.578281,-107.282871)--(1.667050,-107.348132)--(1.884573,-106.347986)--(-5.175671,-106.274209)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(1.667050,-107.348132)--(7.883858,-107.134028)--(8.912571,-106.105945)--(1.884573,-106.347986)--cycle;
	fill p withcolor (0.048560,0.951440,1.000000);
	draw p withcolor meshcolor;

	p:=(13.122884,106.469971)--(9.789157,106.983594)--(7.378784,106.286685)--(9.891651,105.899531)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(105.437153,16.326753)--(105.860284,21.063447)--(104.256440,27.511915)--(103.839721,22.846985)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(26.787304,103.653315)--(23.675888,104.784557)--(19.063530,105.020687)--(21.568803,104.109825)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.357960,-102.926121)--(-25.351464,-104.197386)--(-28.169038,-102.502823)--(-34.843098,-101.090269)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(75.652858,-75.539127)--(80.256097,-72.044087)--(84.111962,-67.138956)--(79.287562,-70.801913)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-100.865904,-38.394878)--(-97.799809,-42.848404)--(-99.761702,-36.698405)--(-102.889303,-32.155540)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(70.232755,80.321558)--(68.097838,83.422541)--(62.873437,87.089321)--(64.844564,84.226243)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-107.934209,-1.289124)--(-106.518845,-6.096557)--(-106.290780,0.554050)--(-107.703114,5.351191)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-79.117582,73.162147)--(-80.824877,69.576688)--(-76.015951,74.265424)--(-74.410237,77.637556)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-11.591695,106.728230)--(-14.812545,106.136321)--(-11.165269,105.648035)--(-8.737485,106.094199)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-99.319627,42.108191)--(-99.718207,37.646323)--(-96.803250,43.730285)--(-96.416321,48.061724)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-60.388952,-89.208019)--(-54.946884,-91.793524)--(-58.927065,-88.375883)--(-64.763340,-85.603092)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-33.647240,101.970181)--(-36.492057,100.397855)--(-30.651934,101.675129)--(-28.262397,102.995823)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(89.744015,57.454914)--(88.567183,61.452149)--(84.507081,66.617975)--(85.629965,62.803982)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(62.171993,-86.929523)--(67.428529,-84.024244)--(71.694196,-79.952871)--(66.105121,-83.041944)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(51.640457,93.289988)--(49.137909,95.549155)--(43.466282,97.795731)--(45.679980,95.797322)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(16.232074,105.811915)--(13.122884,106.469971)--(9.891651,105.899531)--(12.235269,105.403507)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-73.887672,-78.431590)--(-68.860402,-81.631600)--(-72.662593,-77.310548)--(-77.967448,-73.933847)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(104.331693,-21.484880)--(106.583088,-16.756765)--(107.272618,-10.170342)--(105.006657,-14.929045)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-25.389282,104.198542)--(-28.262397,102.995823)--(-22.756529,103.580420)--(-20.443133,104.548835)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-42.175915,98.690663)--(-44.742188,96.742203)--(-38.712484,98.711981)--(-36.492057,100.397855)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-56.201816,91.570061)--(-58.463748,88.999582)--(-52.615983,92.044790)--(-50.580298,94.358160)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(22.393435,-104.696304)--(28.615640,-103.552824)--(31.795996,-101.786624)--(24.882252,-103.057191)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.812545,106.136321)--(-17.779949,105.405689)--(-13.402012,105.097306)--(-11.165269,105.648035)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-40.920983,-99.391851)--(-34.843098,-101.090269)--(-38.179033,-98.821533)--(-44.838824,-96.960506)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(103.839721,22.846985)--(104.256440,27.511915)--(102.206155,33.842574)--(101.797630,29.269383)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-50.731411,-94.818090)--(-44.838824,-96.960506)--(-48.564659,-94.113961)--(-54.946884,-91.793524)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-74.410237,77.637556)--(-76.015951,74.265424)--(-70.881514,78.636145)--(-69.384257,81.780508)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(64.844564,84.226243)--(62.873437,87.089321)--(57.379801,90.383172)--(59.178700,87.770259)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-89.443895,-60.096196)--(-85.109354,-64.009189)--(-88.140902,-58.624772)--(-92.629836,-54.572401)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-107.703114,5.351191)--(-106.290780,0.554050)--(-105.607561,7.202285)--(-107.010817,11.968591)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(37.608527,99.623529)--(35.049667,101.252322)--(29.440382,102.392848)--(31.589726,101.024725)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-96.416321,48.061724)--(-96.803250,43.730285)--(-93.473767,49.626988)--(-93.100147,53.809449)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(85.629965,62.803982)--(84.507081,66.617975)--(80.085108,71.498533)--(81.149235,67.884113)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(19.063530,105.020687)--(16.232074,105.811915)--(12.235269,105.403507)--(14.369538,104.807103)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(29.440382,102.392848)--(26.787304,103.653315)--(21.568803,104.109825)--(23.705028,103.094913)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(93.460205,-50.788644)--(97.221660,-46.514093)--(99.647320,-40.490173)--(95.792017,-44.871372)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-102.889303,-32.155540)--(-99.761702,-36.698405)--(-101.296400,-30.391258)--(-104.472115,-25.778507)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-25.351464,-104.197386)--(-18.911199,-105.189630)--(-21.012998,-103.605346)--(-28.169038,-102.502823)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.779949,105.405689)--(-20.443133,104.548835)--(-15.409443,104.451434)--(-13.402012,105.097306)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(45.679980,95.797322)--(43.466282,97.795731)--(37.608527,99.623529)--(39.523895,97.894438)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(79.287562,-70.801913)--(84.111962,-67.138956)--(87.607646,-61.946325)--(82.582745,-65.761514)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(52.079220,-92.911910)--(57.972635,-90.444857)--(62.171993,-86.929523)--(55.851677,-89.575282)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(105.006657,-14.929045)--(107.272618,-10.170342)--(107.502789,-3.540367)--(105.231967,-8.309282)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-50.580298,94.358160)--(-52.615983,92.044790)--(-46.542909,94.695849)--(-44.742188,96.742203)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(31.795996,-101.786624)--(38.165702,-100.218280)--(41.819748,-97.866059)--(34.840196,-99.584559)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(101.797630,29.269383)--(102.206155,33.842574)--(99.718207,40.028313)--(99.319627,35.566445)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(15.788072,-105.552226)--(22.393435,-104.696304)--(24.882252,-103.057191)--(17.542766,-104.008241)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(-28.262397,102.995823)--(-30.651934,101.675129)--(-24.680555,102.517015)--(-22.756529,103.580420)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-69.384257,81.780508)--(-70.881514,78.636145)--(-65.443552,82.670133)--(-64.061163,85.573264)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(2.019447,106.709867)--(-0.735324,106.738653)--(-0.491972,105.437032)--(1.351121,105.417772)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-93.100147,53.809449)--(-93.473767,49.626988)--(-89.744015,55.311180)--(-89.385303,59.326755)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-36.492057,100.397855)--(-38.712484,98.711981)--(-32.517008,100.259059)--(-30.651934,101.675129)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.735324,106.738653)--(-3.477513,106.644213)--(-2.326648,105.373846)--(-0.491972,105.437032)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(59.178700,87.770259)--(57.379801,90.383172)--(51.640457,93.289988)--(53.259422,90.938428)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(81.149235,67.884113)--(80.085108,71.498533)--(75.320198,76.072924)--(76.321011,72.673555)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-107.010817,11.968591)--(-105.607561,7.202285)--(-104.472115,13.819679)--(-105.860284,18.534740)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(21.568803,104.109825)--(19.063530,105.020687)--(14.369538,104.807103)--(16.257941,104.120521)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(4.739664,106.558347)--(2.019447,106.709867)--(1.351121,105.417772)--(3.171096,105.316397)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(41.819748,-97.866059)--(48.083752,-95.850675)--(52.079220,-92.911910)--(45.294715,-95.094759)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.477513,106.644213)--(-6.160200,106.428163)--(-4.121514,105.229297)--(-2.326648,105.373846)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-64.763340,-85.603092)--(-58.927065,-88.375883)--(-62.654912,-84.579803)--(-68.860402,-81.631600)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-77.967448,-73.933847)--(-72.662593,-77.310548)--(-76.153632,-72.658442)--(-81.713356,-69.119508)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(7.378784,106.286685)--(4.739664,106.558347)--(3.171096,105.316397)--(4.936813,105.134640)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-18.911199,-105.189630)--(-12.147357,-105.885876)--(-13.497420,-104.378972)--(-21.012998,-103.605346)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(66.105121,-83.041944)--(71.694196,-79.952871)--(75.652858,-75.539127)--(69.755177,-78.798766)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.160200,106.428163)--(-8.737485,106.094199)--(-5.845860,105.005856)--(-4.121514,105.229297)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-104.472115,-25.778507)--(-101.296400,-30.391258)--(-102.397331,-23.953971)--(-105.607561,-19.291086)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-20.443133,104.548835)--(-22.756529,103.580420)--(-17.153214,103.721471)--(-15.409443,104.451434)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-92.629836,-54.572401)--(-88.140902,-58.624772)--(-90.795016,-52.989316)--(-95.419122,-48.814919)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(95.792017,-44.871372)--(99.647320,-40.490173)--(101.646275,-34.292867)--(97.713633,-38.761955)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(31.589726,101.024725)--(29.440382,102.392848)--(23.705028,103.094913)--(25.435653,101.993317)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(8.912571,-106.105945)--(15.788072,-105.552226)--(17.542766,-104.008241)--(9.903118,-104.623500)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(9.891651,105.899531)--(7.378784,106.286685)--(4.936813,105.134640)--(6.618060,104.875612)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(99.319627,35.566445)--(99.718207,40.028313)--(96.803250,46.042645)--(96.416321,41.711206)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(105.231967,-8.309282)--(107.502789,-3.540367)--(107.272618,3.104767)--(105.006657,-1.653936)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-34.843098,-101.090269)--(-28.169038,-102.502823)--(-30.865987,-100.369327)--(-38.179033,-98.821533)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-89.385303,59.326755)--(-89.744015,55.311180)--(-85.629965,60.758521)--(-85.287697,64.590013)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-64.061163,85.573264)--(-65.443552,82.670133)--(-59.725350,86.350115)--(-58.463748,88.999582)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-8.737485,106.094199)--(-11.165269,105.648035)--(-7.470181,104.707348)--(-5.845860,105.005856)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-44.742188,96.742203)--(-46.542909,94.695849)--(-40.270530,96.941405)--(-38.712484,98.711981)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-12.147357,-105.885876)--(-5.175671,-106.274209)--(-5.750897,-104.810465)--(-13.497420,-104.378972)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(76.321011,72.673555)--(75.320198,76.072924)--(70.232755,80.321558)--(71.165969,77.151797)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(39.523895,97.894438)--(37.608527,99.623529)--(31.589726,101.024725)--(33.198562,99.572354)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-5.175671,-106.274209)--(1.884573,-106.347986)--(2.094025,-104.892442)--(-5.750897,-104.810465)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(1.884573,-106.347986)--(8.912571,-106.105945)--(9.903118,-104.623500)--(2.094025,-104.892442)--cycle;
	fill p withcolor (0.064692,0.935308,1.000000);
	draw p withcolor meshcolor;

	p:=(53.259422,90.938428)--(51.640457,93.289988)--(45.679980,95.797322)--(47.112080,93.717186)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(23.705028,103.094913)--(21.568803,104.109825)--(16.257941,104.120521)--(17.868165,103.355509)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-105.860284,18.534740)--(-104.472115,13.819679)--(-102.889303,20.377895)--(-104.256440,25.021520)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(12.235269,105.403507)--(9.891651,105.899531)--(6.618060,104.875612)--(8.186070,104.543745)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-54.946884,-91.793524)--(-48.564659,-94.113961)--(-52.082532,-90.864405)--(-58.927065,-88.375883)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(82.582745,-65.761514)--(87.607646,-61.946325)--(90.728181,-56.488430)--(85.524296,-60.439515)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-11.165269,105.648035)--(-13.402012,105.097306)--(-8.966686,104.338880)--(-7.470181,104.707348)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-30.651934,101.675129)--(-32.517008,100.259059)--(-26.182289,101.376813)--(-24.680555,102.517015)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-44.838824,-96.960506)--(-38.179033,-98.821533)--(-41.351479,-96.129627)--(-48.564659,-94.113961)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(96.416321,41.711206)--(96.803250,46.042645)--(93.473767,51.859815)--(93.100147,47.677354)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(24.882252,-103.057191)--(31.795996,-101.786624)--(34.840196,-99.584559)--(27.264519,-100.976772)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-22.756529,103.580420)--(-24.680555,102.517015)--(-18.603489,102.919906)--(-17.153214,103.721471)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(14.369538,104.807103)--(12.235269,105.403507)--(8.186070,104.543745)--(9.614014,104.144718)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-85.287697,64.590013)--(-85.629965,60.758521)--(-81.149235,65.945684)--(-80.824877,69.576688)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-58.463748,88.999582)--(-59.725350,86.350115)--(-53.751395,89.660333)--(-52.615983,92.044790)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(71.165969,77.151797)--(70.232755,80.321558)--(64.844564,84.226243)--(65.706184,81.299663)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-105.607561,-19.291086)--(-102.397331,-23.953971)--(-103.059781,-17.414109)--(-106.290780,-12.721059)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(105.006657,-1.653936)--(107.272618,3.104767)--(106.583088,9.736607)--(104.331693,5.008491)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.402012,105.097306)--(-15.409443,104.451434)--(-10.309768,103.906756)--(-8.966686,104.338880)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-38.712484,98.711981)--(-40.270530,96.941405)--(-33.825707,98.771843)--(-32.517008,100.259059)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(97.713633,-38.761955)--(101.646275,-34.292867)--(103.209964,-27.948714)--(99.216824,-32.486553)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(55.851677,-89.575282)--(62.171993,-86.929523)--(66.105121,-83.041944)--(59.384969,-85.855078)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(47.112080,93.717186)--(45.679980,95.797322)--(39.523895,97.894438)--(40.762997,96.094632)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-104.256440,25.021520)--(-102.889303,20.377895)--(-100.865904,26.848850)--(-102.206155,31.401154)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-95.419122,-48.814919)--(-90.795016,-52.989316)--(-93.060332,-47.126951)--(-97.799809,-42.848404)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(33.198562,99.572354)--(31.589726,101.024725)--(25.435653,101.993317)--(26.731067,100.823886)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(25.435653,101.993317)--(23.705028,103.094913)--(17.868165,103.355509)--(19.172661,102.525158)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-81.713356,-69.119508)--(-76.153632,-72.658442)--(-79.318569,-67.695200)--(-85.109354,-64.009189)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(16.257941,104.120521)--(14.369538,104.807103)--(9.614014,104.144718)--(10.877460,103.685357)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(69.755177,-78.798766)--(75.652858,-75.539127)--(79.287562,-70.801913)--(73.106530,-74.218160)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-28.169038,-102.502823)--(-21.012998,-103.605346)--(-23.024817,-101.577408)--(-30.865987,-100.369327)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(93.100147,47.677354)--(93.473767,51.859815)--(89.744015,57.454914)--(89.385303,53.439339)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-80.824877,69.576688)--(-81.149235,65.945684)--(-76.321011,70.850459)--(-76.015951,74.265424)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-68.860402,-81.631600)--(-62.654912,-84.579803)--(-66.114462,-80.421539)--(-72.662593,-77.310548)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(65.706184,81.299663)--(64.844564,84.226243)--(59.178700,87.770259)--(59.965034,85.099392)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-52.615983,92.044790)--(-53.751395,89.660333)--(-47.547268,92.586612)--(-46.542909,94.695849)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-15.409443,104.451434)--(-17.153214,103.721471)--(-11.476447,103.418370)--(-10.309768,103.906756)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(34.840196,-99.584559)--(41.819748,-97.866059)--(45.294715,-95.094759)--(37.735205,-96.956056)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(45.294715,-95.094759)--(52.079220,-92.911910)--(55.851677,-89.575282)--(48.575724,-91.916250)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-24.680555,102.517015)--(-26.182289,101.376813)--(-19.735453,102.060455)--(-18.603489,102.919906)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(40.762997,96.094632)--(39.523895,97.894438)--(33.198562,99.572354)--(34.239361,98.060586)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(104.331693,5.008491)--(106.583088,9.736607)--(105.437153,16.326753)--(103.209964,11.649472)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(17.868165,103.355509)--(16.257941,104.120521)--(10.877460,103.685357)--(11.954789,103.173522)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-102.206155,31.401154)--(-100.865904,26.848850)--(-98.410581,33.204834)--(-99.718207,37.646323)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-106.290780,-12.721059)--(-103.059781,-17.414109)--(-103.280914,-10.799677)--(-106.518845,-6.096557)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-32.517008,100.259059)--(-33.825707,98.771843)--(-27.236037,100.179324)--(-26.182289,101.376813)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(17.542766,-104.008241)--(24.882252,-103.057191)--(27.264519,-100.976772)--(19.222339,-102.018876)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(85.524296,-60.439515)--(90.728181,-56.488430)--(93.460205,-50.788644)--(88.099619,-54.858704)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-76.015951,74.265424)--(-76.321011,70.850459)--(-71.165969,75.451840)--(-70.881514,78.636145)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(89.385303,53.439339)--(89.744015,57.454914)--(85.629965,62.803982)--(85.287697,58.972489)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(59.965034,85.099392)--(59.178700,87.770259)--(53.259422,90.938428)--(53.967105,88.534711)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(1.351121,105.417772)--(-0.491972,105.437032)--(-0.246514,103.683913)--(0.677010,103.674262)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.491972,105.437032)--(-2.326648,105.373846)--(-1.165820,103.652252)--(-0.246514,103.683913)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(3.171096,105.316397)--(1.351121,105.417772)--(0.677010,103.674262)--(1.588950,103.623466)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.153214,103.721471)--(-18.603489,102.919906)--(-12.446761,102.882079)--(-11.476447,103.418370)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-46.542909,94.695849)--(-47.547268,92.586612)--(-41.139536,95.116420)--(-40.270530,96.941405)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(99.216824,-32.486553)--(103.209964,-27.948714)--(104.331693,-21.484880)--(100.295154,-26.072038)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(26.731067,100.823886)--(25.435653,101.993317)--(19.172661,102.525158)--(20.149107,101.643675)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.326648,105.373846)--(-4.121514,105.229297)--(-2.065179,103.579822)--(-1.165820,103.652252)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(4.936813,105.134640)--(3.171096,105.316397)--(1.588950,103.623466)--(2.473703,103.532392)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-4.121514,105.229297)--(-5.845860,105.005856)--(-2.929201,103.467862)--(-2.065179,103.579822)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-21.012998,-103.605346)--(-13.497420,-104.378972)--(-14.789685,-102.425102)--(-23.024817,-101.577408)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(6.618060,104.875612)--(4.936813,105.134640)--(2.473703,103.532392)--(3.316130,103.402601)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-97.799809,-42.848404)--(-93.060332,-47.126951)--(-94.927150,-41.062781)--(-99.761702,-36.698405)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(19.172661,102.525158)--(17.868165,103.355509)--(11.954789,103.173522)--(12.827568,102.617971)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-5.845860,105.005856)--(-7.470181,104.707348)--(-3.743105,103.318288)--(-2.929201,103.467862)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-38.179033,-98.821533)--(-30.865987,-100.369327)--(-33.430764,-97.806035)--(-41.351479,-96.129627)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(34.239361,98.060586)--(33.198562,99.572354)--(26.731067,100.823886)--(27.569106,99.606629)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-99.718207,37.646323)--(-98.410581,33.204834)--(-95.533849,39.418629)--(-96.803250,43.730285)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-58.927065,-88.375883)--(-52.082532,-90.864405)--(-55.377380,-87.225755)--(-62.654912,-84.579803)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(8.186070,104.543745)--(6.618060,104.875612)--(3.316130,103.402601)--(4.101817,103.236311)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-70.881514,78.636145)--(-71.165969,75.451840)--(-65.706184,79.730125)--(-65.443552,82.670133)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(53.967105,88.534711)--(53.259422,90.938428)--(47.112080,93.717186)--(47.738080,91.590912)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(103.209964,11.649472)--(105.437153,16.326753)--(103.839721,22.846985)--(101.646275,18.240568)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(9.903118,-104.623500)--(17.542766,-104.008241)--(19.222339,-102.018876)--(10.851259,-102.693041)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(85.287697,58.972489)--(85.629965,62.803982)--(81.149235,67.884113)--(80.824877,64.253110)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-7.470181,104.707348)--(-8.966686,104.338880)--(-4.492963,103.133658)--(-3.743105,103.318288)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-26.182289,101.376813)--(-27.236037,100.179324)--(-20.529738,101.157823)--(-19.735453,102.060455)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-40.270530,96.941405)--(-41.139536,95.116420)--(-34.555639,97.238925)--(-33.825707,98.771843)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-85.109354,-64.009189)--(-79.318569,-67.695200)--(-82.143852,-62.442077)--(-88.140902,-58.624772)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-18.603489,102.919906)--(-19.735453,102.060455)--(-13.204107,102.307059)--(-12.446761,102.882079)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(9.614014,104.144718)--(8.186070,104.543745)--(4.101817,103.236311)--(4.817321,103.036369)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-106.518845,-6.096557)--(-103.280914,-10.799677)--(-103.059781,-4.139000)--(-106.290780,0.554050)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.497420,-104.378972)--(-5.750897,-104.810465)--(-6.301497,-102.897907)--(-14.789685,-102.425102)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(-48.564659,-94.113961)--(-41.351479,-96.129627)--(-44.346852,-93.026081)--(-52.082532,-90.864405)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-8.966686,104.338880)--(-10.309768,103.906756)--(-5.165945,102.917133)--(-4.492963,103.133658)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(59.384969,-85.855078)--(66.105121,-83.041944)--(69.755177,-78.798766)--(62.663965,-81.767230)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-5.750897,-104.810465)--(2.094025,-104.892442)--(2.294510,-102.987732)--(-6.301497,-102.897907)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(2.094025,-104.892442)--(9.903118,-104.623500)--(10.851259,-102.693041)--(2.294510,-102.987732)--cycle;
	fill p withcolor (0.080854,0.919146,1.000000);
	draw p withcolor meshcolor;

	p:=(73.106530,-74.218160)--(79.287562,-70.801913)--(82.582745,-65.761514)--(76.144830,-69.319740)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(10.877460,103.685357)--(9.614014,104.144718)--(4.817321,103.036369)--(5.450400,102.806196)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-65.443552,82.670133)--(-65.706184,79.730125)--(-59.965034,83.666994)--(-59.725350,86.350115)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(20.149107,101.643675)--(19.172661,102.525158)--(12.827568,102.617971)--(13.480864,102.028210)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(47.738080,91.590912)--(47.112080,93.717186)--(40.762997,96.094632)--(41.304634,94.254906)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(27.569106,99.606629)--(26.731067,100.823886)--(20.149107,101.643675)--(20.780796,100.726142)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-96.803250,43.730285)--(-95.533849,39.418629)--(-92.248026,45.463628)--(-93.473767,49.626988)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(80.824877,64.253110)--(81.149235,67.884113)--(76.321011,72.673555)--(76.015951,69.258589)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.309768,103.906756)--(-11.476447,103.418370)--(-5.750536,102.672416)--(-5.165945,102.917133)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(100.295154,-26.072038)--(104.331693,-21.484880)--(105.006657,-14.929045)--(100.944004,-19.545879)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(27.264519,-100.976772)--(34.840196,-99.584559)--(37.735205,-96.956056)--(29.530035,-98.463954)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-72.662593,-77.310548)--(-66.114462,-80.421539)--(-69.290898,-75.918898)--(-76.153632,-72.658442)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-33.825707,98.771843)--(-34.555639,97.238925)--(-27.823769,98.945039)--(-27.236037,100.179324)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(88.099619,-54.858704)--(93.460205,-50.788644)--(95.792017,-44.871372)--(90.297685,-49.042980)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(11.954789,103.173522)--(10.877460,103.685357)--(5.450400,102.806196)--(5.990220,102.549729)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(101.646275,18.240568)--(103.839721,22.846985)--(101.797630,29.269383)--(99.647320,24.753555)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-19.735453,102.060455)--(-20.529738,101.157823)--(-13.735528,101.703148)--(-13.204107,102.307059)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-11.476447,103.418370)--(-12.446761,102.882079)--(-6.236734,102.403695)--(-5.750536,102.672416)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-59.725350,86.350115)--(-59.965034,83.666994)--(-53.967105,87.245588)--(-53.751395,89.660333)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(41.304634,94.254906)--(40.762997,96.094632)--(34.239361,98.060586)--(34.694315,96.515287)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-99.761702,-36.698405)--(-94.927150,-41.062781)--(-96.387475,-34.822774)--(-101.296400,-30.391258)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(12.827568,102.617971)--(11.954789,103.173522)--(5.990220,102.549729)--(6.427546,102.271358)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(76.015951,69.258589)--(76.321011,72.673555)--(71.165969,77.151797)--(70.881514,73.967492)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-106.290780,0.554050)--(-103.059781,-4.139000)--(-102.397331,2.539401)--(-105.607561,7.202285)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-27.236037,100.179324)--(-27.823769,98.945039)--(-20.972754,100.227454)--(-20.529738,101.157823)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(20.780796,100.726142)--(20.149107,101.643675)--(13.480864,102.028210)--(13.903499,101.414330)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-93.473767,49.626988)--(-92.248026,45.463628)--(-88.567183,51.313945)--(-89.744015,55.311180)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(48.575724,-91.916250)--(55.851677,-89.575282)--(59.384969,-85.855078)--(51.648724,-88.344141)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-12.446761,102.882079)--(-13.204107,102.307059)--(-6.616220,102.115568)--(-6.236734,102.403695)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-53.751395,89.660333)--(-53.967105,87.245588)--(-47.738080,90.450582)--(-47.547268,92.586612)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(37.735205,-96.956056)--(45.294715,-95.094759)--(48.575724,-91.916250)--(40.468627,-93.912374)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(34.694315,96.515287)--(34.239361,98.060586)--(27.569106,99.606629)--(27.935429,98.362374)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-30.865987,-100.369327)--(-23.024817,-101.577408)--(-24.938039,-99.114499)--(-33.430764,-97.806035)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(13.480864,102.028210)--(12.827568,102.617971)--(6.427546,102.271358)--(6.754895,101.975845)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(70.881514,73.967492)--(71.165969,77.151797)--(65.706184,81.299663)--(65.443552,78.359655)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(99.647320,24.753555)--(101.797630,29.269383)--(99.319627,35.566445)--(97.221660,31.160543)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-20.529738,101.157823)--(-20.972754,100.227454)--(-14.031930,101.080680)--(-13.735528,101.703148)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.204107,102.307059)--(-13.735528,101.703148)--(-6.882500,101.812965)--(-6.616220,102.115568)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-47.547268,92.586612)--(-47.738080,90.450582)--(-41.304634,93.268254)--(-41.139536,95.116420)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(27.935429,98.362374)--(27.569106,99.606629)--(20.780796,100.726142)--(21.056920,99.788258)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(100.944004,-19.545879)--(105.006657,-14.929045)--(105.231967,-8.309282)--(101.160596,-12.936022)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-88.140902,-58.624772)--(-82.143852,-62.442077)--(-84.617382,-56.921568)--(-90.795016,-52.989316)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(13.903499,101.414330)--(13.480864,102.028210)--(6.754895,101.975845)--(6.966666,101.668246)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-89.744015,55.311180)--(-88.567183,51.313945)--(-84.507081,56.944527)--(-85.629965,60.758521)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-41.139536,95.116420)--(-41.304634,93.268254)--(-34.694315,95.686536)--(-34.555639,97.238925)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(65.443552,78.359655)--(65.706184,81.299663)--(59.965034,85.099392)--(59.725350,82.416270)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(21.056920,99.788258)--(20.780796,100.726142)--(13.903499,101.414330)--(14.088241,100.786834)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(19.222339,-102.018876)--(27.264519,-100.976772)--(29.530035,-98.463954)--(20.819598,-99.592651)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.735528,101.703148)--(-14.031930,101.080680)--(-7.031019,101.501063)--(-6.882500,101.812965)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-105.607561,7.202285)--(-102.397331,2.539401)--(-101.296400,9.206929)--(-104.472115,13.819679)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-62.654912,-84.579803)--(-55.377380,-87.225755)--(-58.435093,-83.213590)--(-66.114462,-80.421539)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(90.297685,-49.042980)--(95.792017,-44.871372)--(97.713633,-38.761955)--(92.109083,-43.017246)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(76.144830,-69.319740)--(82.582745,-65.761514)--(85.524296,-60.439515)--(78.857066,-64.124482)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-34.555639,97.238925)--(-34.694315,95.686536)--(-27.935429,97.695074)--(-27.823769,98.945039)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(14.088241,100.786834)--(13.903499,101.414330)--(6.966666,101.668246)--(7.059235,101.353825)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(97.221660,31.160543)--(99.319627,35.566445)--(96.416321,41.711206)--(94.379683,37.434097)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(59.725350,82.416270)--(59.965034,85.099392)--(53.967105,88.534711)--(53.751395,86.119966)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-101.296400,-30.391258)--(-96.387475,-34.822774)--(-97.435054,-28.433650)--(-102.397331,-23.953971)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-27.823769,98.945039)--(-27.935429,97.695074)--(-21.056920,99.285267)--(-20.972754,100.227454)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(5.990220,102.549729)--(5.450400,102.806196)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(5.450400,102.806196)--(4.817321,103.036369)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(4.817321,103.036369)--(4.101817,103.236311)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(4.101817,103.236311)--(3.316130,103.402601)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(3.316130,103.402601)--(2.473703,103.532392)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(2.473703,103.532392)--(1.588950,103.623466)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(1.588950,103.623466)--(0.677010,103.674262)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(0.677010,103.674262)--(-0.246514,103.683913)--(-0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.246514,103.683913)--(-1.165820,103.652252)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-1.165820,103.652252)--(-2.065179,103.579822)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.065179,103.579822)--(-2.929201,103.467862)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.929201,103.467862)--(-3.743105,103.318288)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.743105,103.318288)--(-4.492963,103.133658)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-4.492963,103.133658)--(-5.165945,102.917133)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-5.165945,102.917133)--(-5.750536,102.672416)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(7.059235,101.353825)--(6.966666,101.668246)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(6.966666,101.668246)--(6.754895,101.975845)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(6.754895,101.975845)--(6.427546,102.271358)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(6.427546,102.271358)--(5.990220,102.549729)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-5.750536,102.672416)--(-6.236734,102.403695)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.236734,102.403695)--(-6.616220,102.115568)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.616220,102.115568)--(-6.882500,101.812965)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.882500,101.812965)--(-7.031019,101.501063)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-85.629965,60.758521)--(-84.507081,56.944527)--(-80.085108,62.331264)--(-81.149235,65.945684)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(62.663965,-81.767230)--(69.755177,-78.798766)--(73.106530,-74.218160)--(65.674625,-77.329242)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-20.972754,100.227454)--(-21.056920,99.285267)--(-14.088241,100.450305)--(-14.031930,101.080680)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.031930,101.080680)--(-14.088241,100.450305)--(-7.059235,101.185199)--(-7.031019,101.501063)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-7.031019,101.501063)--(-7.059235,101.185199)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-41.351479,-96.129627)--(-33.430764,-97.806035)--(-35.852385,-94.823922)--(-44.346852,-93.026081)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-23.024817,-101.577408)--(-14.789685,-102.425102)--(-16.018618,-100.032632)--(-24.938039,-99.114499)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(53.751395,86.119966)--(53.967105,88.534711)--(47.738080,91.590912)--(47.547268,89.454883)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-76.153632,-72.658442)--(-69.290898,-75.918898)--(-72.170621,-71.091161)--(-79.318569,-67.695200)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(7.031019,101.037961)--(7.059235,101.353825)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-52.082532,-90.864405)--(-44.346852,-93.026081)--(-47.152325,-89.524182)--(-55.377380,-87.225755)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(47.547268,89.454883)--(47.738080,91.590912)--(41.304634,94.254906)--(41.139536,92.406740)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(101.160596,-12.936022)--(105.231967,-8.309282)--(105.006657,-1.653936)--(100.944004,-6.270770)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(14.031930,100.156459)--(14.088241,100.786834)--(7.059235,101.353825)--(7.031019,101.037961)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-7.059235,101.185199)--(-6.966666,100.870778)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-81.149235,65.945684)--(-80.085108,62.331264)--(-75.320198,67.451090)--(-76.321011,70.850459)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(41.139536,92.406740)--(41.304634,94.254906)--(34.694315,96.515287)--(34.555639,94.962898)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(20.972754,98.846071)--(21.056920,99.788258)--(14.088241,100.786834)--(14.031930,100.156459)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(34.555639,94.962898)--(34.694315,96.515287)--(27.935429,98.362374)--(27.823769,97.112410)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(27.823769,97.112410)--(27.935429,98.362374)--(21.056920,99.788258)--(20.972754,98.846071)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-104.472115,13.819679)--(-101.296400,9.206929)--(-99.761702,15.835030)--(-102.889303,20.377895)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(10.851259,-102.693041)--(19.222339,-102.018876)--(20.819598,-99.592651)--(11.752932,-100.322835)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(94.379683,37.434097)--(96.416321,41.711206)--(93.100147,47.677354)--(91.133557,43.547353)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(6.882500,100.726059)--(7.031019,101.037961)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.966666,100.870778)--(-6.754895,100.563179)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.088241,100.450305)--(-13.903499,99.822809)--(-6.966666,100.870778)--(-7.059235,101.185199)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-76.321011,70.850459)--(-75.320198,67.451090)--(-70.232755,72.282079)--(-71.165969,75.451840)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.789685,-102.425102)--(-6.301497,-102.897907)--(-6.825114,-100.544724)--(-16.018618,-100.032632)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(-90.795016,-52.989316)--(-84.617382,-56.921568)--(-86.728568,-51.157312)--(-93.060332,-47.126951)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.301497,-102.897907)--(2.294510,-102.987732)--(2.485170,-100.642013)--(-6.825114,-100.544724)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(2.294510,-102.987732)--(10.851259,-102.693041)--(11.752932,-100.322835)--(2.485170,-100.642013)--cycle;
	fill p withcolor (0.112916,0.887084,1.000000);
	draw p withcolor meshcolor;

	p:=(29.530035,-98.463954)--(37.735205,-96.956056)--(40.468627,-93.912374)--(31.669100,-95.529498)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(6.616220,100.423456)--(6.882500,100.726059)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-21.056920,99.285267)--(-20.780796,98.347383)--(-13.903499,99.822809)--(-14.088241,100.450305)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-71.165969,75.451840)--(-70.232755,72.282079)--(-64.844564,76.803545)--(-65.706184,79.730125)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(91.133557,43.547353)--(93.100147,47.677354)--(89.385303,53.439339)--(87.497183,49.474132)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(92.109083,-43.017246)--(97.713633,-38.761955)--(99.216824,-32.486553)--(93.526056,-36.807305)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-102.397331,-23.953971)--(-97.435054,-28.433650)--(-98.065401,-21.922769)--(-103.059781,-17.414109)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(13.735528,99.533990)--(14.031930,100.156459)--(7.031019,101.037961)--(6.882500,100.726059)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.754895,100.563179)--(-6.427546,100.267666)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(51.648724,-88.344141)--(59.384969,-85.855078)--(62.663965,-81.767230)--(54.500556,-84.393729)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-102.889303,20.377895)--(-99.761702,15.835030)--(-97.799809,22.395324)--(-100.865904,26.848850)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(6.236734,100.135329)--(6.616220,100.423456)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-27.935429,97.695074)--(-27.569106,96.450819)--(-20.780796,98.347383)--(-21.056920,99.285267)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-65.706184,79.730125)--(-64.844564,76.803545)--(-59.178700,80.996127)--(-59.965034,83.666994)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(100.944004,-6.270770)--(105.006657,-1.653936)--(104.331693,5.008491)--(100.295154,0.421334)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(78.857066,-64.124482)--(85.524296,-60.439515)--(88.099619,-54.858704)--(81.231624,-58.654634)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(40.468627,-93.912374)--(48.575724,-91.916250)--(51.648724,-88.344141)--(43.028755,-90.466544)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-34.694315,95.686536)--(-34.239361,94.141237)--(-27.569106,96.450819)--(-27.935429,97.695074)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-59.965034,83.666994)--(-59.178700,80.996127)--(-53.259422,84.841871)--(-53.967105,87.245588)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.427546,100.267666)--(-5.990220,99.989295)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.903499,99.822809)--(-13.480864,99.208929)--(-6.754895,100.563179)--(-6.966666,100.870778)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-41.304634,93.268254)--(-40.762997,91.428529)--(-34.239361,94.141237)--(-34.694315,95.686536)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-53.967105,87.245588)--(-53.259422,84.841871)--(-47.112080,88.324309)--(-47.738080,90.450582)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-47.738080,90.450582)--(-47.112080,88.324309)--(-40.762997,91.428529)--(-41.304634,93.268254)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(87.497183,49.474132)--(89.385303,53.439339)--(85.287697,58.972489)--(83.486133,55.189055)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(20.529738,97.915702)--(20.972754,98.846071)--(14.031930,100.156459)--(13.735528,99.533990)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(5.750536,99.866608)--(6.236734,100.135329)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-5.990220,99.989295)--(-5.450400,99.732828)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-33.430764,-97.806035)--(-24.938039,-99.114499)--(-26.744474,-96.227167)--(-35.852385,-94.823922)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-66.114462,-80.421539)--(-58.435093,-83.213590)--(-61.242578,-78.845091)--(-69.290898,-75.918898)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(13.204107,98.930080)--(13.735528,99.533990)--(6.882500,100.726059)--(6.616220,100.423456)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(5.165945,99.621891)--(5.750536,99.866608)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(65.674625,-77.329242)--(73.106530,-74.218160)--(76.144830,-69.319740)--(68.404056,-72.560119)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(83.486133,55.189055)--(85.287697,58.972489)--(80.824877,64.253110)--(79.117582,60.667650)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-100.865904,26.848850)--(-97.799809,22.395324)--(-95.419122,28.859717)--(-98.410581,33.204834)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-79.318569,-67.695200)--(-72.170621,-71.091161)--(-74.741298,-65.959001)--(-82.143852,-62.442077)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(27.236037,95.878124)--(27.823769,97.112410)--(20.972754,98.846071)--(20.529738,97.915702)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-5.450400,99.732828)--(-4.817321,99.502655)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(4.492963,99.405366)--(5.165945,99.621891)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-20.780796,98.347383)--(-20.149107,97.429850)--(-13.480864,99.208929)--(-13.903499,99.822809)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(100.295154,0.421334)--(104.331693,5.008491)--(103.209964,11.649472)--(99.216824,7.111633)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-103.059781,-17.414109)--(-98.065401,-21.922769)--(-98.275817,-15.318012)--(-103.280914,-10.799677)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.480864,99.208929)--(-12.827568,98.619168)--(-6.427546,100.267666)--(-6.754895,100.563179)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(79.117582,60.667650)--(80.824877,64.253110)--(76.015951,69.258589)--(74.410237,65.886457)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-4.817321,99.502655)--(-4.101817,99.302713)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(33.825707,93.429981)--(34.555639,94.962898)--(27.823769,97.112410)--(27.236037,95.878124)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-93.060332,-47.126951)--(-86.728568,-51.157312)--(-88.468368,-45.173992)--(-94.927150,-41.062781)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(93.526056,-36.807305)--(99.216824,-32.486553)--(100.295154,-26.072038)--(94.542536,-30.439751)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(3.743105,99.220736)--(4.492963,99.405366)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(20.819598,-99.592651)--(29.530035,-98.463954)--(31.669100,-95.529498)--(22.327706,-96.739955)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-4.101817,99.302713)--(-3.316130,99.136423)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(74.410237,65.886457)--(76.015951,69.258589)--(70.881514,73.967492)--(69.384257,70.823128)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(12.446761,98.355059)--(13.204107,98.930080)--(6.616220,100.423456)--(6.236734,100.135329)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(40.270530,90.581756)--(41.139536,92.406740)--(34.555639,94.962898)--(33.825707,93.429981)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(2.929201,99.071162)--(3.743105,99.220736)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-98.410581,33.204834)--(-95.419122,28.859717)--(-92.629836,35.200529)--(-95.533849,39.418629)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-44.346852,-93.026081)--(-35.852385,-94.823922)--(-38.120480,-91.435758)--(-47.152325,-89.524182)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-55.377380,-87.225755)--(-47.152325,-89.524182)--(-49.755884,-85.638927)--(-58.435093,-83.213590)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.316130,99.136423)--(-2.473703,99.006632)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(19.735453,97.013070)--(20.529738,97.915702)--(13.735528,99.533990)--(13.204107,98.930080)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(69.384257,70.823128)--(70.881514,73.967492)--(65.443552,78.359655)--(64.061163,75.456524)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(2.065179,98.959202)--(2.929201,99.071162)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(46.542909,87.345646)--(47.547268,89.454883)--(41.139536,92.406740)--(40.270530,90.581756)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.473703,99.006632)--(-1.588950,98.915558)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-27.569106,96.450819)--(-26.731067,95.233562)--(-20.149107,97.429850)--(-20.780796,98.347383)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(64.061163,75.456524)--(65.443552,78.359655)--(59.725350,82.416270)--(58.463748,79.766803)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(58.463748,79.766803)--(59.725350,82.416270)--(53.751395,86.119966)--(52.615983,83.735509)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(52.615983,83.735509)--(53.751395,86.119966)--(47.547268,89.454883)--(46.542909,87.345646)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(1.165820,98.886772)--(2.065179,98.959202)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-1.588950,98.915558)--(-0.677010,98.864762)--(-0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-0.677010,98.864762)--(0.246514,98.855111)--(0.000000,101.486803)--(-0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(0.246514,98.855111)--(1.165820,98.886772)--(0.000000,101.486803)--(0.000000,101.486803)--cycle;
	fill p withcolor (0.999992,0.000008,1.000000);
	draw p withcolor meshcolor;

	p:=(-12.827568,98.619168)--(-11.954789,98.063617)--(-5.990220,99.989295)--(-6.427546,100.267666)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-24.938039,-99.114499)--(-16.018618,-100.032632)--(-17.178957,-97.211807)--(-26.744474,-96.227167)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(99.216824,7.111633)--(103.209964,11.649472)--(101.646275,18.240568)--(97.713633,13.771480)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(81.231624,-58.654634)--(88.099619,-54.858704)--(90.297685,-49.042980)--(83.258335,-52.933617)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-95.533849,39.418629)--(-92.629836,35.200529)--(-89.443895,41.390607)--(-92.248026,45.463628)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(11.476447,97.818768)--(12.446761,98.355059)--(6.236734,100.135329)--(5.750536,99.866608)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-103.280914,-10.799677)--(-98.275817,-15.318012)--(-98.065401,-8.647660)--(-103.059781,-4.139000)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-20.149107,97.429850)--(-19.172661,96.548367)--(-12.827568,98.619168)--(-13.480864,99.208929)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-34.239361,94.141237)--(-33.198562,92.629469)--(-26.731067,95.233562)--(-27.569106,96.450819)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(54.500556,-84.393729)--(62.663965,-81.767230)--(65.674625,-77.329242)--(57.119009,-80.081930)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(11.752932,-100.322835)--(20.819598,-99.592651)--(22.327706,-96.739955)--(12.604278,-97.523031)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(26.182289,94.680635)--(27.236037,95.878124)--(20.529738,97.915702)--(19.735453,97.013070)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-11.954789,98.063617)--(-10.877460,97.551782)--(-5.450400,99.732828)--(-5.990220,99.989295)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(31.669100,-95.529498)--(40.468627,-93.912374)--(43.028755,-90.466544)--(33.672552,-92.185971)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(94.542536,-30.439751)--(100.295154,-26.072038)--(100.944004,-19.545879)--(95.154171,-23.941848)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-92.248026,45.463628)--(-89.443895,41.390607)--(-85.874941,47.403443)--(-88.567183,51.313945)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-16.018618,-100.032632)--(-6.825114,-100.544724)--(-7.319504,-97.760993)--(-17.178957,-97.211807)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(-40.762997,91.428529)--(-39.523895,89.628723)--(-33.198562,92.629469)--(-34.239361,94.141237)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-82.143852,-62.442077)--(-74.741298,-65.959001)--(-76.991921,-60.544393)--(-84.617382,-56.921568)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(18.603489,96.153619)--(19.735453,97.013070)--(13.204107,98.930080)--(12.446761,98.355059)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(97.713633,13.771480)--(101.646275,18.240568)--(99.647320,24.753555)--(95.792017,20.372355)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-94.927150,-41.062781)--(-88.468368,-45.173992)--(-89.829334,-38.997230)--(-96.387475,-34.822774)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.825114,-100.544724)--(2.485170,-100.642013)--(2.665188,-97.865330)--(-7.319504,-97.760993)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(2.485170,-100.642013)--(11.752932,-100.322835)--(12.604278,-97.523031)--(2.665188,-97.865330)--cycle;
	fill p withcolor (0.129131,0.870869,1.000000);
	draw p withcolor meshcolor;

	p:=(10.309768,97.330383)--(11.476447,97.818768)--(5.750536,99.866608)--(5.165945,99.621891)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(68.404056,-72.560119)--(76.144830,-69.319740)--(78.857066,-64.124482)--(70.840570,-67.480282)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(43.028755,-90.466544)--(51.648724,-88.344141)--(54.500556,-84.393729)--(45.404628,-86.633322)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-69.290898,-75.918898)--(-61.242578,-78.845091)--(-63.787814,-74.138966)--(-72.170621,-71.091161)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-88.567183,51.313945)--(-85.874941,47.403443)--(-81.938258,53.213291)--(-84.507081,56.944527)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-47.112080,88.324309)--(-45.679980,86.244172)--(-39.523895,89.628723)--(-40.762997,91.428529)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.877460,97.551782)--(-9.614014,97.092421)--(-4.817321,99.502655)--(-5.450400,99.732828)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(32.517008,91.942764)--(33.825707,93.429981)--(27.236037,95.878124)--(26.182289,94.680635)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-103.059781,-4.139000)--(-98.065401,-8.647660)--(-97.435054,-1.940278)--(-102.397331,2.539401)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-26.731067,95.233562)--(-25.435653,94.064131)--(-19.172661,96.548367)--(-20.149107,97.429850)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-84.507081,56.944527)--(-81.938258,53.213291)--(-77.650702,58.795272)--(-80.085108,62.331264)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-19.172661,96.548367)--(-17.868165,95.718016)--(-11.954789,98.063617)--(-12.827568,98.619168)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-53.259422,84.841871)--(-51.640457,82.490311)--(-45.679980,86.244172)--(-47.112080,88.324309)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(8.966686,96.898259)--(10.309768,97.330383)--(5.165945,99.621891)--(4.492963,99.405366)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(95.792017,20.372355)--(99.647320,24.753555)--(97.221660,31.160543)--(93.460205,26.885992)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-80.085108,62.331264)--(-77.650702,58.795272)--(-73.030634,64.125482)--(-75.320198,67.451090)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-35.852385,-94.823922)--(-26.744474,-96.227167)--(-28.436384,-92.927776)--(-38.120480,-91.435758)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-59.178700,80.996127)--(-57.379801,78.383214)--(-51.640457,82.490311)--(-53.259422,84.841871)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-75.320198,67.451090)--(-73.030634,64.125482)--(-68.097838,69.181096)--(-70.232755,72.282079)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(83.258335,-52.933617)--(90.297685,-49.042980)--(92.109083,-43.017246)--(84.928522,-46.985930)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-70.232755,72.282079)--(-68.097838,69.181096)--(-62.873437,73.940467)--(-64.844564,76.803545)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-64.844564,76.803545)--(-62.873437,73.940467)--(-57.379801,78.383214)--(-59.178700,80.996127)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.614014,97.092421)--(-8.186070,96.693393)--(-4.101817,99.302713)--(-4.817321,99.502655)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(95.154171,-23.941848)--(100.944004,-19.545879)--(101.160596,-12.936022)--(95.358340,-17.341423)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(17.153214,95.352054)--(18.603489,96.153619)--(12.446761,98.355059)--(11.476447,97.818768)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(38.712484,88.811179)--(40.270530,90.581756)--(33.825707,93.429981)--(32.517008,91.942764)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(7.470181,96.529791)--(8.966686,96.898259)--(4.492963,99.405366)--(3.743105,99.220736)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(24.680555,93.540434)--(26.182289,94.680635)--(19.735453,97.013070)--(18.603489,96.153619)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-58.435093,-83.213590)--(-49.755884,-85.638927)--(-52.146381,-81.386953)--(-61.242578,-78.845091)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(93.460205,26.885992)--(97.221660,31.160543)--(94.379683,37.434097)--(90.728181,33.284500)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-8.186070,96.693393)--(-6.618060,96.361526)--(-3.316130,99.136423)--(-4.101817,99.302713)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-102.397331,2.539401)--(-97.435054,-1.940278)--(-96.387475,4.775413)--(-101.296400,9.206929)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-96.387475,-34.822774)--(-89.829334,-38.997230)--(-90.805636,-32.653476)--(-97.435054,-28.433650)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-33.198562,92.629469)--(-31.589726,91.177098)--(-25.435653,94.064131)--(-26.731067,95.233562)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-47.152325,-89.524182)--(-38.120480,-91.435758)--(-40.225338,-87.656052)--(-49.755884,-85.638927)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(22.327706,-96.739955)--(31.669100,-95.529498)--(33.672552,-92.185971)--(23.740202,-93.473003)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(5.845860,96.231283)--(7.470181,96.529791)--(3.743105,99.220736)--(2.929201,99.071162)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.868165,95.718016)--(-16.257941,94.953004)--(-10.877460,97.551782)--(-11.954789,98.063617)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(44.742188,85.299291)--(46.542909,87.345646)--(40.270530,90.581756)--(38.712484,88.811179)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.618060,96.361526)--(-4.936813,96.102499)--(-2.473703,99.006632)--(-3.316130,99.136423)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(90.728181,33.284500)--(94.379683,37.434097)--(91.133557,43.547353)--(87.607646,39.540478)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-84.617382,-56.921568)--(-76.991921,-60.544393)--(-78.912853,-54.870526)--(-86.728568,-51.157312)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(4.121514,96.007842)--(5.845860,96.231283)--(2.929201,99.071162)--(2.065179,98.959202)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(57.119009,-80.081930)--(65.674625,-77.329242)--(68.404056,-72.560119)--(59.492869,-75.427208)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-4.936813,96.102499)--(-3.171096,95.920742)--(-1.588950,98.915558)--(-2.473703,99.006632)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(-25.435653,94.064131)--(-23.705028,92.962535)--(-17.868165,95.718016)--(-19.172661,96.548367)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(2.326648,95.863293)--(4.121514,96.007842)--(2.065179,98.959202)--(1.165820,98.886772)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(15.409443,94.622091)--(17.153214,95.352054)--(11.476447,97.818768)--(10.309768,97.330383)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(50.580298,81.422139)--(52.615983,83.735509)--(46.542909,87.345646)--(44.742188,85.299291)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.171096,95.920742)--(-1.351121,95.819367)--(-0.677010,98.864762)--(-1.588950,98.915558)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(70.840570,-67.480282)--(78.857066,-64.124482)--(81.231624,-58.654634)--(72.973733,-62.111484)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-1.351121,95.819367)--(0.491972,95.800107)--(0.246514,98.855111)--(-0.677010,98.864762)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(0.491972,95.800107)--(2.326648,95.863293)--(1.165820,98.886772)--(0.246514,98.855111)--cycle;
	fill p withcolor (0.999958,0.000042,1.000000);
	draw p withcolor meshcolor;

	p:=(95.358340,-17.341423)--(101.160596,-12.936022)--(100.944004,-6.270770)--(95.154171,-10.666739)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-26.744474,-96.227167)--(-17.178957,-97.211807)--(-18.265733,-93.974706)--(-28.436384,-92.927776)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(87.607646,39.540478)--(91.133557,43.547353)--(87.497183,49.474132)--(84.111962,45.627138)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-101.296400,9.206929)--(-96.387475,4.775413)--(-94.927150,11.470654)--(-99.761702,15.835030)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-72.170621,-71.091161)--(-63.787814,-74.138966)--(-66.059900,-69.115367)--(-74.741298,-65.959001)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-39.523895,89.628723)--(-37.608527,87.899631)--(-31.589726,91.177098)--(-33.198562,92.629469)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(30.651934,90.526694)--(32.517008,91.942764)--(26.182289,94.680635)--(24.680555,93.540434)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(56.201816,77.196324)--(58.463748,79.766803)--(52.615983,83.735509)--(50.580298,81.422139)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(84.928522,-46.985930)--(92.109083,-43.017246)--(93.526056,-36.807305)--(86.235032,-40.837043)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(84.111962,45.627138)--(87.497183,49.474132)--(83.486133,55.189055)--(80.256097,51.518415)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-16.257941,94.953004)--(-14.369538,94.266423)--(-9.614014,97.092421)--(-10.877460,97.551782)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(33.672552,-92.185971)--(43.028755,-90.466544)--(45.404628,-86.633322)--(35.531813,-88.447689)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(12.604278,-97.523031)--(22.327706,-96.739955)--(23.740202,-93.473003)--(13.401651,-94.305619)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(22.756529,92.477028)--(24.680555,93.540434)--(18.603489,96.153619)--(17.153214,95.352054)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(61.582669,72.639943)--(64.061163,75.456524)--(58.463748,79.766803)--(56.201816,77.196324)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(45.404628,-86.633322)--(54.500556,-84.393729)--(57.119009,-80.081930)--(47.586071,-82.429123)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(80.256097,51.518415)--(83.486133,55.189055)--(79.117582,60.667650)--(76.056563,57.189083)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(66.699816,67.772507)--(69.384257,70.823128)--(64.061163,75.456524)--(61.582669,72.639943)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-97.435054,-28.433650)--(-90.805636,-32.653476)--(-91.393095,-26.169895)--(-98.065401,-21.922769)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(76.056563,57.189083)--(79.117582,60.667650)--(74.410237,65.886457)--(71.531344,62.614858)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(71.531344,62.614858)--(74.410237,65.886457)--(69.384257,70.823128)--(66.699816,67.772507)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(13.402012,93.976219)--(15.409443,94.622091)--(10.309768,97.330383)--(8.966686,96.898259)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.178957,-97.211807)--(-7.319504,-97.760993)--(-7.782550,-94.558635)--(-18.265733,-93.974706)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(-99.761702,15.835030)--(-94.927150,11.470654)--(-93.060332,18.116777)--(-97.799809,22.395324)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-45.679980,86.244172)--(-43.466282,84.245764)--(-37.608527,87.899631)--(-39.523895,89.628723)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-7.319504,-97.760993)--(2.665188,-97.865330)--(2.833794,-94.669572)--(-7.782550,-94.558635)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(2.665188,-97.865330)--(12.604278,-97.523031)--(13.401651,-94.305619)--(2.833794,-94.669572)--cycle;
	fill p withcolor (0.145371,0.854629,1.000000);
	draw p withcolor meshcolor;

	p:=(95.154171,-10.666739)--(100.944004,-6.270770)--(100.295154,0.421334)--(94.542536,-3.946379)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.589726,91.177098)--(-29.440382,89.808975)--(-23.705028,92.962535)--(-25.435653,94.064131)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.369538,94.266423)--(-12.235269,93.670018)--(-8.186070,96.693393)--(-9.614014,97.092421)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(36.492057,87.125305)--(38.712484,88.811179)--(32.517008,91.942764)--(30.651934,90.526694)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-23.705028,92.962535)--(-21.568803,91.947623)--(-16.257941,94.953004)--(-17.868165,95.718016)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-86.728568,-51.157312)--(-78.912853,-54.870526)--(-80.495868,-48.961694)--(-88.468368,-45.173992)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-38.120480,-91.435758)--(-28.436384,-92.927776)--(-30.006525,-89.230453)--(-40.225338,-87.656052)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-97.799809,22.395324)--(-93.060332,18.116777)--(-90.795016,24.685321)--(-95.419122,28.859717)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(11.165269,93.425490)--(13.402012,93.976219)--(8.966686,96.898259)--(7.470181,96.529791)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-51.640457,82.490311)--(-49.137909,80.231144)--(-43.466282,84.245764)--(-45.679980,86.244172)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-61.242578,-78.845091)--(-52.146381,-81.386953)--(-54.313579,-76.786467)--(-63.787814,-74.138966)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(20.443133,91.508613)--(22.756529,92.477028)--(17.153214,95.352054)--(15.409443,94.622091)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(86.235032,-40.837043)--(93.526056,-36.807305)--(94.542536,-30.439751)--(87.172270,-34.513285)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(72.973733,-62.111484)--(81.231624,-58.654634)--(83.258335,-52.933617)--(74.794412,-56.476715)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-12.235269,93.670018)--(-9.891651,93.173995)--(-6.618060,96.361526)--(-8.186070,96.693393)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-98.065401,-21.922769)--(-91.393095,-26.169895)--(-91.589194,-19.574251)--(-98.275817,-15.318012)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(59.492869,-75.427208)--(68.404056,-72.560119)--(70.840570,-67.480282)--(61.611971,-70.449495)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(28.262397,89.206000)--(30.651934,90.526694)--(24.680555,93.540434)--(22.756529,92.477028)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(94.542536,-3.946379)--(100.295154,0.421334)--(99.216824,7.111633)--(93.526056,2.790881)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-49.755884,-85.638927)--(-40.225338,-87.656052)--(-42.157945,-83.500990)--(-52.146381,-81.386953)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-95.419122,28.859717)--(-90.795016,24.685321)--(-88.140902,31.148158)--(-92.629836,35.200529)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-57.379801,78.383214)--(-54.599119,75.872961)--(-49.137909,80.231144)--(-51.640457,82.490311)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(42.175915,83.350832)--(44.742188,85.299291)--(38.712484,88.811179)--(36.492057,87.125305)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(8.737485,92.979326)--(11.165269,93.425490)--(7.470181,96.529791)--(5.845860,96.231283)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-74.741298,-65.959001)--(-66.059900,-69.115367)--(-68.049107,-63.795805)--(-76.991921,-60.544393)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(23.740202,-93.473003)--(33.672552,-92.185971)--(35.531813,-88.447689)--(25.051039,-89.805786)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-37.608527,87.899631)--(-35.049667,86.270839)--(-29.440382,89.808975)--(-31.589726,91.177098)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.891651,93.173995)--(-7.378784,92.786840)--(-4.936813,96.102499)--(-6.618060,96.361526)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-21.568803,91.947623)--(-19.063530,91.036761)--(-14.369538,94.266423)--(-16.257941,94.953004)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-92.629836,35.200529)--(-88.140902,31.148158)--(-85.109354,37.477614)--(-89.443895,41.390607)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-62.873437,73.940467)--(-59.826527,71.189879)--(-54.599119,75.872961)--(-57.379801,78.383214)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(6.160200,92.645362)--(8.737485,92.979326)--(5.845860,96.231283)--(4.121514,96.007842)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-89.443895,41.390607)--(-85.109354,37.477614)--(-81.713356,43.646586)--(-85.874941,47.403443)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-7.378784,92.786840)--(-4.739664,92.515179)--(-3.171096,95.920742)--(-4.936813,96.102499)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(-68.097838,69.181096)--(-64.797749,66.201952)--(-59.826527,71.189879)--(-62.873437,73.940467)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(93.526056,2.790881)--(99.216824,7.111633)--(97.713633,13.771480)--(92.109083,9.516189)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-29.440382,89.808975)--(-26.787304,88.548508)--(-21.568803,91.947623)--(-23.705028,92.962535)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(3.477513,92.429312)--(6.160200,92.645362)--(4.121514,96.007842)--(2.326648,95.863293)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(47.679170,79.219438)--(50.580298,81.422139)--(44.742188,85.299291)--(42.175915,83.350832)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-85.874941,47.403443)--(-81.713356,43.646586)--(-77.967448,49.628655)--(-81.938258,53.213291)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-73.030634,64.125482)--(-69.491497,60.930537)--(-64.797749,66.201952)--(-68.097838,69.181096)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-4.739664,92.515179)--(-2.019447,92.363658)--(-1.351121,95.819367)--(-3.171096,95.920742)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(17.779949,90.651759)--(20.443133,91.508613)--(15.409443,94.622091)--(13.402012,93.976219)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-28.436384,-92.927776)--(-18.265733,-93.974706)--(-19.274292,-90.335190)--(-30.006525,-89.230453)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-81.938258,53.213291)--(-77.967448,49.628655)--(-73.887672,55.398208)--(-77.650702,58.795272)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-77.650702,58.795272)--(-73.887672,55.398208)--(-69.491497,60.930537)--(-73.030634,64.125482)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.019447,92.363658)--(0.735324,92.334872)--(0.491972,95.800107)--(-1.351121,95.819367)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(0.735324,92.334872)--(3.477513,92.429312)--(2.326648,95.863293)--(0.491972,95.800107)--cycle;
	fill p withcolor (0.999890,0.000110,1.000000);
	draw p withcolor meshcolor;

	p:=(47.586071,-82.429123)--(57.119009,-80.081930)--(59.492869,-75.427208)--(49.563743,-77.871950)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-98.275817,-15.318012)--(-91.589194,-19.574251)--(-91.393095,-12.894786)--(-98.065401,-8.647660)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-88.468368,-45.173992)--(-80.495868,-48.961694)--(-81.734188,-42.843201)--(-89.829334,-38.997230)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(35.531813,-88.447689)--(45.404628,-86.633322)--(47.586071,-82.429123)--(37.238922,-84.330660)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(87.172270,-34.513285)--(94.542536,-30.439751)--(95.154171,-23.941848)--(87.736223,-28.041736)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(33.647240,85.552979)--(36.492057,87.125305)--(30.651934,90.526694)--(28.262397,89.206000)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-43.466282,84.245764)--(-40.508865,82.363278)--(-35.049667,86.270839)--(-37.608527,87.899631)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(13.401651,-94.305619)--(23.740202,-93.473003)--(25.051039,-89.805786)--(14.141635,-90.684375)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(92.109083,9.516189)--(97.713633,13.771480)--(95.792017,20.372355)--(90.297685,16.200748)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-19.063530,91.036761)--(-16.232074,90.245533)--(-12.235269,93.670018)--(-14.369538,94.266423)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(52.978255,74.748814)--(56.201816,77.196324)--(50.580298,81.422139)--(47.679170,79.219438)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(25.389282,88.003281)--(28.262397,89.206000)--(22.756529,92.477028)--(20.443133,91.508613)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(74.794412,-56.476715)--(83.258335,-52.933617)--(84.928522,-46.985930)--(76.294810,-50.600104)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-18.265733,-93.974706)--(-7.782550,-94.558635)--(-8.212271,-90.951362)--(-19.274292,-90.335190)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-63.787814,-74.138966)--(-54.313579,-76.786467)--(-56.248198,-71.857170)--(-66.059900,-69.115367)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(14.812545,89.921127)--(17.779949,90.651759)--(13.402012,93.976219)--(11.165269,93.425490)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-7.782550,-94.558635)--(2.833794,-94.669572)--(2.990264,-91.068424)--(-8.212271,-90.951362)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(2.833794,-94.669572)--(13.401651,-94.305619)--(14.141635,-90.684375)--(2.990264,-91.068424)--cycle;
	fill p withcolor (0.177507,0.822493,1.000000);
	draw p withcolor meshcolor;

	p:=(-98.065401,-8.647660)--(-91.393095,-12.894786)--(-90.805636,-6.160104)--(-97.435054,-1.940278)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(90.297685,16.200748)--(95.792017,20.372355)--(93.460205,26.885992)--(88.099619,22.815932)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(61.611971,-70.449495)--(70.840570,-67.480282)--(72.973733,-62.111484)--(63.467242,-65.170106)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(58.050479,69.958105)--(61.582669,72.639943)--(56.201816,77.196324)--(52.978255,74.748814)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-76.991921,-60.544393)--(-68.049107,-63.795805)--(-69.746918,-58.203059)--(-78.912853,-54.870526)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-40.225338,-87.656052)--(-30.006525,-89.230453)--(-31.448174,-85.151032)--(-42.157945,-83.500990)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-35.049667,86.270839)--(-31.891098,84.770215)--(-26.787304,88.548508)--(-29.440382,89.808975)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-26.787304,88.548508)--(-23.675888,87.417266)--(-19.063530,91.036761)--(-21.568803,91.947623)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-16.232074,90.245533)--(-13.122884,89.587477)--(-9.891651,93.173995)--(-12.235269,93.670018)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-49.137909,80.231144)--(-45.794597,78.103024)--(-40.508865,82.363278)--(-43.466282,84.245764)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(87.736223,-28.041736)--(95.154171,-23.941848)--(95.358340,-17.341423)--(87.924476,-21.450108)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(88.099619,22.815932)--(93.460205,26.885992)--(90.728181,33.284500)--(85.524296,29.333416)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-52.146381,-81.386953)--(-42.157945,-83.500990)--(-43.910024,-78.988364)--(-54.313579,-76.786467)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-89.829334,-38.997230)--(-81.734188,-42.843201)--(-82.622509,-36.541247)--(-90.805636,-32.653476)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(62.874122,64.867824)--(66.699816,67.772507)--(61.582669,72.639943)--(58.050479,69.958105)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(38.888001,81.533607)--(42.175915,83.350832)--(36.492057,87.125305)--(33.647240,85.552979)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(11.591695,89.329218)--(14.812545,89.921127)--(11.165269,93.425490)--(8.737485,92.979326)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(85.524296,29.333416)--(90.728181,33.284500)--(87.607646,39.540478)--(82.582745,35.725289)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(67.428529,59.499769)--(71.531344,62.614858)--(66.699816,67.772507)--(62.874122,64.867824)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-97.435054,-1.940278)--(-90.805636,-6.160104)--(-89.829334,0.600956)--(-96.387475,4.775413)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(82.582745,35.725289)--(87.607646,39.540478)--(84.111962,45.627138)--(79.287562,41.964181)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(22.081749,86.939114)--(25.389282,88.003281)--(20.443133,91.508613)--(17.779949,90.651759)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(25.051039,-89.805786)--(35.531813,-88.447689)--(37.238922,-84.330660)--(26.254604,-85.754007)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(71.694196,53.876927)--(76.056563,57.189083)--(71.531344,62.614858)--(67.428529,59.499769)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.122884,89.587477)--(-9.789157,89.073854)--(-7.378784,92.786840)--(-9.891651,93.173995)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(79.287562,41.964181)--(84.111962,45.627138)--(80.256097,51.518415)--(75.652858,48.023375)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(75.652858,48.023375)--(80.256097,51.518415)--(76.056563,57.189083)--(71.694196,53.876927)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-54.599119,75.872961)--(-50.884230,73.508322)--(-45.794597,78.103024)--(-49.137909,80.231144)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(30.226710,84.121105)--(33.647240,85.552979)--(28.262397,89.206000)--(25.389282,88.003281)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(76.294810,-50.600104)--(84.928522,-46.985930)--(86.235032,-40.837043)--(77.468502,-44.506815)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(8.172507,88.886161)--(11.591695,89.329218)--(8.737485,92.979326)--(6.160200,92.645362)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(49.563743,-77.871950)--(59.492869,-75.427208)--(61.611971,-70.449495)--(51.329175,-72.981317)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(87.924476,-21.450108)--(95.358340,-17.341423)--(95.154171,-10.666739)--(87.736223,-14.766627)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.789157,89.073854)--(-6.287935,88.713451)--(-4.739664,92.515179)--(-7.378784,92.786840)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(43.962238,77.165096)--(47.679170,79.219438)--(42.175915,83.350832)--(38.888001,81.533607)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(37.238922,-84.330660)--(47.586071,-82.429123)--(49.563743,-77.871950)--(38.786567,-79.852515)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-96.387475,4.775413)--(-89.829334,0.600956)--(-88.468368,7.359443)--(-94.927150,11.470654)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-23.675888,87.417266)--(-20.159372,86.434603)--(-16.232074,90.245533)--(-19.063530,91.036761)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(4.613486,88.599535)--(8.172507,88.886161)--(6.160200,92.645362)--(3.477513,92.429312)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-40.508865,82.363278)--(-36.858329,80.628923)--(-31.891098,84.770215)--(-35.049667,86.270839)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-30.006525,-89.230453)--(-19.274292,-90.335190)--(-20.200316,-86.308846)--(-31.448174,-85.151032)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.287935,88.713451)--(-2.679124,88.512435)--(-2.019447,92.363658)--(-4.739664,92.515179)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-2.679124,88.512435)--(0.975527,88.474245)--(0.735324,92.334872)--(-2.019447,92.363658)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(0.975527,88.474245)--(4.613486,88.599535)--(3.477513,92.429312)--(0.735324,92.334872)--cycle;
	fill p withcolor (0.999789,0.000211,1.000000);
	draw p withcolor meshcolor;

	p:=(-90.805636,-32.653476)--(-82.622509,-36.541247)--(-83.157027,-30.082818)--(-91.393095,-26.169895)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-59.826527,71.189879)--(-55.755969,68.598845)--(-50.884230,73.508322)--(-54.599119,75.872961)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-78.912853,-54.870526)--(-69.746918,-58.203059)--(-71.146062,-52.361079)--(-80.495868,-48.961694)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-66.059900,-69.115367)--(-56.248198,-71.857170)--(-57.941954,-66.620170)--(-68.049107,-63.795805)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(63.467242,-65.170106)--(72.973733,-62.111484)--(74.794412,-56.476715)--(65.050736,-59.611649)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.891098,84.770215)--(-28.186863,83.423436)--(-23.675888,87.417266)--(-26.787304,88.548508)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(18.396392,86.031708)--(22.081749,86.939114)--(17.779949,90.651759)--(14.812545,89.921127)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(14.141635,-90.684375)--(25.051039,-89.805786)--(26.254604,-85.754007)--(14.821063,-86.674807)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-94.927150,11.470654)--(-88.468368,7.359443)--(-86.728568,14.086416)--(-93.060332,18.116777)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-64.797749,66.201952)--(-60.388952,63.395618)--(-55.755969,68.598845)--(-59.826527,71.189879)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(87.736223,-14.766627)--(95.154171,-10.666739)--(94.542536,-3.946379)--(87.172270,-8.019913)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(48.848222,72.466151)--(52.978255,74.748814)--(47.679170,79.219438)--(43.962238,77.165096)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-19.274292,-90.335190)--(-8.212271,-90.951362)--(-8.606826,-86.954621)--(-20.200316,-86.308846)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(34.934703,79.878710)--(38.888001,81.533607)--(33.647240,85.552979)--(30.226710,84.121105)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-20.159372,86.434603)--(-16.297922,85.617333)--(-13.122884,89.587477)--(-16.232074,90.245533)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(77.468502,-44.506815)--(86.235032,-40.837043)--(87.172270,-34.513285)--(78.310462,-38.222942)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-8.212271,-90.951362)--(2.990264,-91.068424)--(3.133930,-87.077308)--(-8.606826,-86.954621)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(2.990264,-91.068424)--(14.141635,-90.684375)--(14.821063,-86.674807)--(3.133930,-87.077308)--cycle;
	fill p withcolor (0.209665,0.790335,1.000000);
	draw p withcolor meshcolor;

	p:=(-93.060332,18.116777)--(-86.728568,14.086416)--(-84.617382,20.753068)--(-90.795016,24.685321)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-42.157945,-83.500990)--(-31.448174,-85.151032)--(-32.755157,-80.706981)--(-43.910024,-78.988364)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-54.313579,-76.786467)--(-43.910024,-78.988364)--(-45.474075,-74.137497)--(-56.248198,-71.857170)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(26.288992,82.854182)--(30.226710,84.121105)--(25.389282,88.003281)--(22.081749,86.939114)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-69.491497,60.930537)--(-64.763340,57.920921)--(-60.388952,63.395618)--(-64.797749,66.201952)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-45.794597,78.103024)--(-41.667728,76.142365)--(-36.858329,80.628923)--(-40.508865,82.363278)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-91.393095,-26.169895)--(-83.157027,-30.082818)--(-83.335455,-23.495569)--(-91.589194,-19.574251)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-90.795016,24.685321)--(-84.617382,20.753068)--(-82.143852,27.330853)--(-88.140902,31.148158)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(14.396268,85.296589)--(18.396392,86.031708)--(14.812545,89.921127)--(11.591695,89.329218)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-73.887672,55.398208)--(-68.860402,52.198198)--(-64.763340,57.920921)--(-69.491497,60.930537)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(87.172270,-8.019913)--(94.542536,-3.946379)--(93.526056,2.790881)--(86.235032,-1.238857)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-88.140902,31.148158)--(-82.143852,27.330853)--(-79.318569,33.791603)--(-85.109354,37.477614)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-77.967448,49.628655)--(-72.662593,46.251954)--(-68.860402,52.198198)--(-73.887672,55.398208)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(53.525030,67.456896)--(58.050479,69.958105)--(52.978255,74.748814)--(48.848222,72.466151)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-85.109354,37.477614)--(-79.318569,33.791603)--(-76.153632,40.107652)--(-81.713356,43.646586)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-81.713356,43.646586)--(-76.153632,40.107652)--(-72.662593,46.251954)--(-77.967448,49.628655)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(51.329175,-72.981317)--(61.611971,-70.449495)--(63.467242,-65.170106)--(52.874809,-67.778167)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-16.297922,85.617333)--(-12.157611,84.979440)--(-9.789157,89.073854)--(-13.122884,89.587477)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(26.254604,-85.754007)--(37.238922,-84.330660)--(38.786567,-79.852515)--(27.345743,-81.335015)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-80.495868,-48.961694)--(-71.146062,-52.361079)--(-72.240547,-46.294881)--(-81.734188,-42.843201)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-28.186863,83.423436)--(-24.000343,82.253546)--(-20.159372,86.434603)--(-23.675888,87.417266)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-36.858329,80.628923)--(-32.577137,79.072375)--(-28.186863,83.423436)--(-31.891098,84.770215)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(65.050736,-59.611649)--(74.794412,-56.476715)--(76.294810,-50.600104)--(66.355673,-53.797926)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(10.149819,84.746335)--(14.396268,85.296589)--(11.591695,89.329218)--(8.172507,88.886161)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-68.049107,-63.795805)--(-57.941954,-66.620170)--(-59.387594,-61.097892)--(-69.746918,-58.203059)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(86.235032,-1.238857)--(93.526056,2.790881)--(92.109083,9.516189)--(84.928522,5.547504)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(38.786567,-79.852515)--(49.563743,-77.871950)--(51.329175,-72.981317)--(40.168123,-75.032429)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-50.884230,73.508322)--(-46.298698,71.329754)--(-41.667728,76.142365)--(-45.794597,78.103024)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(39.493100,75.294262)--(43.962238,77.165096)--(38.888001,81.533607)--(34.934703,79.878710)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(57.972635,62.158780)--(62.874122,64.867824)--(58.050479,69.958105)--(53.525030,67.456896)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(78.310462,-38.222942)--(87.172270,-34.513285)--(87.736223,-28.041736)--(78.817084,-31.775392)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-12.157611,84.979440)--(-7.809280,84.531838)--(-6.287935,88.713451)--(-9.789157,89.073854)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-91.589194,-19.574251)--(-83.335455,-23.495569)--(-83.157027,-16.807709)--(-91.393095,-12.894786)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(21.901463,81.773888)--(26.288992,82.854182)--(22.081749,86.939114)--(18.396392,86.031708)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(5.729704,84.390361)--(10.149819,84.746335)--(8.172507,88.886161)--(4.613486,88.599535)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.448174,-85.151032)--(-20.200316,-86.308846)--(-21.039839,-81.912914)--(-32.755157,-80.706981)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-7.809280,84.531838)--(-3.327330,84.282187)--(-2.679124,88.512435)--(-6.287935,88.713451)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.327330,84.282187)--(1.211552,84.234757)--(0.975527,88.474245)--(-2.679124,88.512435)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(1.211552,84.234757)--(5.729704,84.390361)--(4.613486,88.599535)--(0.975527,88.474245)--cycle;
	fill p withcolor (0.983781,0.016219,1.000000);
	draw p withcolor meshcolor;

	p:=(84.928522,5.547504)--(92.109083,9.516189)--(90.297685,16.200748)--(83.258335,12.310110)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(30.383662,78.414456)--(34.934703,79.878710)--(30.226710,84.121105)--(26.288992,82.854182)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(62.171993,56.594490)--(67.428529,59.499769)--(62.874122,64.867824)--(57.972635,62.158780)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(14.821063,-86.674807)--(26.254604,-85.754007)--(27.345743,-81.335015)--(15.437025,-82.294085)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-24.000343,82.253546)--(-19.403171,81.280562)--(-16.297922,85.617333)--(-20.159372,86.434603)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(83.258335,12.310110)--(90.297685,16.200748)--(88.099619,22.815932)--(81.231624,19.020003)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-55.755969,68.598845)--(-50.731411,66.211698)--(-46.298698,71.329754)--(-50.884230,73.508322)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-56.248198,-71.857170)--(-45.474075,-74.137497)--(-46.843398,-68.969162)--(-57.941954,-66.620170)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(66.105121,50.787854)--(71.694196,53.876927)--(67.428529,59.499769)--(62.171993,56.594490)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-81.734188,-42.843201)--(-72.240547,-46.294881)--(-73.025687,-40.030441)--(-82.622509,-36.541247)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-91.393095,-12.894786)--(-83.157027,-16.807709)--(-82.622509,-10.047875)--(-90.805636,-6.160104)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-43.910024,-78.988364)--(-32.755157,-80.706981)--(-33.921877,-75.917331)--(-45.474075,-74.137497)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-20.200316,-86.308846)--(-8.606826,-86.954621)--(-8.964525,-82.585527)--(-21.039839,-81.912914)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(-41.667728,76.142365)--(-36.827911,74.382714)--(-32.577137,79.072375)--(-36.858329,80.628923)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(43.882381,70.387392)--(48.848222,72.466151)--(43.962238,77.165096)--(39.493100,75.294262)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(81.231624,19.020003)--(88.099619,22.815932)--(85.524296,29.333416)--(78.857066,25.648448)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(78.817084,-31.775392)--(87.736223,-28.041736)--(87.924476,-21.450108)--(78.986200,-25.191775)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(69.755177,44.763737)--(75.652858,48.023375)--(71.694196,53.876927)--(66.105121,50.787854)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-8.606826,-86.954621)--(3.133930,-87.077308)--(3.264176,-82.713313)--(-8.964525,-82.585527)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(3.133930,-87.077308)--(14.821063,-86.674807)--(15.437025,-82.294085)--(3.264176,-82.713313)--cycle;
	fill p withcolor (0.225970,0.774030,1.000000);
	draw p withcolor meshcolor;

	p:=(17.139193,80.898706)--(21.901463,81.773888)--(18.396392,86.031708)--(14.396268,85.296589)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(78.857066,25.648448)--(85.524296,29.333416)--(82.582745,35.725289)--(76.144830,32.167063)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(76.144830,32.167063)--(82.582745,35.725289)--(79.287562,41.964181)--(73.106530,38.547934)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(73.106530,38.547934)--(79.287562,41.964181)--(75.652858,48.023375)--(69.755177,44.763737)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(66.355673,-53.797926)--(76.294810,-50.600104)--(77.468502,-44.506815)--(67.376465,-47.753832)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(52.874809,-67.778167)--(63.467242,-65.170106)--(65.050736,-59.611649)--(54.194024,-62.284781)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-32.577137,79.072375)--(-27.738542,77.720267)--(-24.000343,82.253546)--(-28.186863,83.423436)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-69.746918,-58.203059)--(-59.387594,-61.097892)--(-60.578926,-55.313983)--(-71.146062,-52.361079)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-60.388952,63.395618)--(-54.946884,60.810113)--(-50.731411,66.211698)--(-55.755969,68.598845)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-19.403171,81.280562)--(-14.474005,80.521131)--(-12.157611,84.979440)--(-16.297922,85.617333)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-90.805636,-6.160104)--(-82.622509,-10.047875)--(-81.734188,-3.245015)--(-89.829334,0.600956)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(27.345743,-81.335015)--(38.786567,-79.852515)--(40.168123,-75.032429)--(28.319783,-76.567735)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(34.348224,73.638947)--(39.493100,75.294262)--(34.934703,79.878710)--(30.383662,78.414456)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(40.168123,-75.032429)--(51.329175,-72.981317)--(52.874809,-67.778167)--(41.377673,-69.891043)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(25.312748,77.165900)--(30.383662,78.414456)--(26.288992,82.854182)--(21.901463,81.773888)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(12.083667,80.243612)--(17.139193,80.898706)--(14.396268,85.296589)--(10.149819,84.746335)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(48.083752,65.179113)--(53.525030,67.456896)--(48.848222,72.466151)--(43.882381,70.387392)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(78.986200,-25.191775)--(87.924476,-21.450108)--(87.736223,-14.766627)--(78.817084,-18.500283)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-82.622509,-36.541247)--(-73.025687,-40.030441)--(-73.498120,-33.594585)--(-83.157027,-30.082818)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-64.763340,57.920921)--(-58.927065,55.148131)--(-54.946884,60.810113)--(-60.388952,63.395618)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-89.829334,0.600956)--(-81.734188,-3.245015)--(-80.495868,3.571741)--(-88.468368,7.359443)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-46.298698,71.329754)--(-40.920983,69.374534)--(-36.827911,74.382714)--(-41.667728,76.142365)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.474005,80.521131)--(-9.297184,79.988248)--(-7.809280,84.531838)--(-12.157611,84.979440)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-32.755157,-80.706981)--(-21.039839,-81.912914)--(-21.789267,-77.166218)--(-33.921877,-75.917331)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(6.821386,79.819814)--(12.083667,80.243612)--(10.149819,84.746335)--(5.729704,84.390361)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-27.738542,77.720267)--(-22.425332,76.595735)--(-19.403171,81.280562)--(-24.000343,82.253546)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.297184,79.988248)--(-3.961287,79.691030)--(-3.327330,84.282187)--(-7.809280,84.531838)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(67.376465,-47.753832)--(77.468502,-44.506815)--(78.310462,-38.222942)--(68.108740,-41.505248)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-68.860402,52.198198)--(-62.654912,49.249995)--(-58.927065,55.148131)--(-64.763340,57.920921)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-3.961287,79.691030)--(1.442390,79.634563)--(1.211552,84.234757)--(-3.327330,84.282187)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(1.442390,79.634563)--(6.821386,79.819814)--(5.729704,84.390361)--(1.211552,84.234757)--cycle;
	fill p withcolor (0.967741,0.032259,1.000000);
	draw p withcolor meshcolor;

	p:=(-57.941954,-66.620170)--(-46.843398,-68.969162)--(-48.012131,-63.505491)--(-59.387594,-61.097892)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-88.468368,7.359443)--(-80.495868,3.571741)--(-78.912853,10.373202)--(-86.728568,14.086416)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-36.827911,74.382714)--(-31.357960,72.854179)--(-27.738542,77.720267)--(-32.577137,79.072375)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(52.079220,59.691727)--(57.972635,62.158780)--(53.525030,67.456896)--(48.083752,65.179113)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(15.437025,-82.294085)--(27.345743,-81.335015)--(28.319783,-76.567735)--(15.986883,-77.560966)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(78.817084,-18.500283)--(87.736223,-14.766627)--(87.172270,-8.019913)--(78.310462,-11.729570)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(54.194024,-62.284781)--(65.050736,-59.611649)--(66.355673,-53.797926)--(55.281172,-56.524681)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-45.474075,-74.137497)--(-33.921877,-75.917331)--(-34.943339,-70.802591)--(-46.843398,-68.969162)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-72.662593,46.251954)--(-66.114462,43.140963)--(-62.654912,49.249995)--(-68.860402,52.198198)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-86.728568,14.086416)--(-78.912853,10.373202)--(-76.991921,17.130243)--(-84.617382,20.753068)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-71.146062,-52.361079)--(-60.578926,-55.313983)--(-61.510850,-49.293211)--(-72.240547,-46.294881)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(19.808726,76.154403)--(25.312748,77.165900)--(21.901463,81.773888)--(17.139193,80.898706)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-76.153632,40.107652)--(-69.290898,36.847195)--(-66.114462,43.140963)--(-72.662593,46.251954)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(38.165702,68.548105)--(43.882381,70.387392)--(39.493100,75.294262)--(34.348224,73.638947)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-83.157027,-30.082818)--(-73.498120,-33.594585)--(-73.655823,-27.014871)--(-83.335455,-23.495569)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-84.617382,20.753068)--(-76.991921,17.130243)--(-74.741298,23.813930)--(-82.143852,27.330853)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-21.039839,-81.912914)--(-8.964525,-82.585527)--(-9.283836,-77.862789)--(-21.789267,-77.166218)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(-82.143852,27.330853)--(-74.741298,23.813930)--(-72.170621,30.395642)--(-79.318569,33.791603)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-79.318569,33.791603)--(-72.170621,30.395642)--(-69.290898,36.847195)--(-76.153632,40.107652)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-50.731411,66.211698)--(-44.838824,64.069282)--(-40.920983,69.374534)--(-46.298698,71.329754)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-8.964525,-82.585527)--(3.264176,-82.713313)--(3.380444,-77.995127)--(-9.283836,-77.862789)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(3.264176,-82.713313)--(15.437025,-82.294085)--(15.986883,-77.560966)--(3.380444,-77.995127)--cycle;
	fill p withcolor (0.258165,0.741835,1.000000);
	draw p withcolor meshcolor;

	p:=(28.615640,72.227475)--(34.348224,73.638947)--(30.383662,78.414456)--(25.312748,77.165900)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(55.851677,53.948732)--(62.171993,56.594490)--(57.972635,62.158780)--(52.079220,59.691727)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(78.310462,-11.729570)--(87.172270,-8.019913)--(86.235032,-1.238857)--(77.468502,-4.908629)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-22.425332,76.595735)--(-16.728419,75.718018)--(-14.474005,80.521131)--(-19.403171,81.280562)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(28.319783,-76.567735)--(40.168123,-75.032429)--(41.377673,-69.891043)--(29.172553,-71.472580)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(41.377673,-69.891043)--(52.874809,-67.778167)--(54.194024,-62.284781)--(42.410037,-64.450372)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(68.108740,-41.505248)--(78.310462,-38.222942)--(78.817084,-31.775392)--(68.549363,-35.078933)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(13.965771,75.397274)--(19.808726,76.154403)--(17.139193,80.898706)--(12.083667,80.243612)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(59.384969,47.974720)--(66.105121,50.787854)--(62.171993,56.594490)--(55.851677,53.948732)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(77.468502,-4.908629)--(86.235032,-1.238857)--(84.928522,5.547504)--(76.294810,1.933331)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-83.335455,-23.495569)--(-73.655823,-27.014871)--(-73.498120,-20.319476)--(-83.157027,-16.807709)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-40.920983,69.374534)--(-34.843098,67.676117)--(-31.357960,72.854179)--(-36.827911,74.382714)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-54.946884,60.810113)--(-48.564659,58.489676)--(-44.838824,64.069282)--(-50.731411,66.211698)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.357960,72.854179)--(-25.351464,71.582913)--(-22.425332,76.595735)--(-27.738542,77.720267)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-16.728419,75.718018)--(-10.745277,75.102135)--(-9.297184,79.988248)--(-14.474005,80.521131)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(41.819748,63.163730)--(48.083752,65.179113)--(43.882381,70.387392)--(38.165702,68.548105)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-59.387594,-61.097892)--(-48.012131,-63.505491)--(-48.975268,-57.769879)--(-60.578926,-55.313983)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-72.240547,-46.294881)--(-61.510850,-49.293211)--(-62.179376,-43.061358)--(-73.025687,-40.030441)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(55.281172,-56.524681)--(66.355673,-53.797926)--(67.376465,-47.753832)--(56.131598,-50.522535)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-33.921877,-75.917331)--(-21.789267,-77.166218)--(-22.445389,-72.089084)--(-34.943339,-70.802591)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(62.663965,41.795272)--(69.755177,44.763737)--(66.105121,50.787854)--(59.384969,47.974720)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(7.883858,74.907467)--(13.965771,75.397274)--(12.083667,80.243612)--(6.821386,79.819814)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(76.294810,1.933331)--(84.928522,5.547504)--(83.258335,12.310110)--(74.794412,8.767013)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.745277,75.102135)--(-4.578281,74.758624)--(-3.961287,79.691030)--(-9.297184,79.988248)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(-4.578281,74.758624)--(1.667050,74.693362)--(1.442390,79.634563)--(-3.961287,79.691030)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(1.667050,74.693362)--(7.883858,74.907467)--(6.821386,79.819814)--(1.442390,79.634563)--cycle;
	fill p withcolor (0.967543,0.032457,1.000000);
	draw p withcolor meshcolor;

	p:=(65.674625,35.436851)--(73.106530,38.547934)--(69.755177,44.763737)--(62.663965,41.795272)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(74.794412,8.767013)--(83.258335,12.310110)--(81.231624,19.020003)--(72.973733,15.563153)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-46.843398,-68.969162)--(-34.943339,-70.802591)--(-35.815167,-65.384663)--(-48.012131,-63.505491)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(22.393435,71.083995)--(28.615640,72.227475)--(25.312748,77.165900)--(19.808726,76.154403)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(68.549363,-35.078933)--(78.817084,-31.775392)--(78.986200,-25.191775)--(68.696448,-28.502404)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(15.986883,-77.560966)--(28.319783,-76.567735)--(29.172553,-71.472580)--(16.468283,-72.495719)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-83.157027,-16.807709)--(-73.498120,-20.319476)--(-73.025687,-13.537069)--(-82.622509,-10.047875)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(68.404056,28.926684)--(76.144830,32.167063)--(73.106530,38.547934)--(65.674625,35.436851)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(72.973733,15.563153)--(81.231624,19.020003)--(78.857066,25.648448)--(70.840570,22.292649)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(70.840570,22.292649)--(78.857066,25.648448)--(76.144830,32.167063)--(68.404056,28.926684)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(31.795996,66.979761)--(38.165702,68.548105)--(34.348224,73.638947)--(28.615640,72.227475)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-58.927065,55.148131)--(-52.082532,52.659608)--(-48.564659,58.489676)--(-54.946884,60.810113)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-21.789267,-77.166218)--(-9.283836,-77.862789)--(-9.563392,-72.806631)--(-22.445389,-72.089084)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(45.294715,57.508877)--(52.079220,59.691727)--(48.083752,65.179113)--(41.819748,63.163730)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-25.351464,71.582913)--(-18.911199,70.590669)--(-16.728419,75.718018)--(-22.425332,76.595735)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.283836,-77.862789)--(3.380444,-77.995127)--(3.482237,-72.942954)--(-9.563392,-72.806631)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(3.380444,-77.995127)--(15.986883,-77.560966)--(16.468283,-72.495719)--(3.482237,-72.942954)--cycle;
	fill p withcolor (0.290377,0.709623,1.000000);
	draw p withcolor meshcolor;

	p:=(-44.838824,64.069282)--(-38.179033,62.208256)--(-34.843098,67.676117)--(-40.920983,69.374534)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(42.410037,-64.450372)--(54.194024,-62.284781)--(55.281172,-56.524681)--(43.260795,-58.733715)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-82.622509,-10.047875)--(-73.025687,-13.537069)--(-72.240547,-6.696695)--(-81.734188,-3.245015)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(29.172553,-71.472580)--(41.377673,-69.891043)--(42.410037,-64.450372)--(29.900402,-66.071368)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-73.025687,-40.030441)--(-62.179376,-43.061358)--(-62.581640,-36.645110)--(-73.498120,-33.594585)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-62.654912,49.249995)--(-55.377380,46.604043)--(-52.082532,52.659608)--(-58.927065,55.148131)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-34.843098,67.676117)--(-28.169038,66.263562)--(-25.351464,71.582913)--(-31.357960,72.854179)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(56.131598,-50.522535)--(67.376465,-47.753832)--(68.108740,-41.505248)--(56.741659,-44.304043)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(15.788072,70.228073)--(22.393435,71.083995)--(19.808726,76.154403)--(13.965771,75.397274)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(68.696448,-28.502404)--(78.986200,-25.191775)--(78.817084,-18.500283)--(68.549363,-21.803824)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-60.578926,-55.313983)--(-48.975268,-57.769879)--(-49.728686,-51.786888)--(-61.510850,-49.293211)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-81.734188,-3.245015)--(-72.240547,-6.696695)--(-71.146062,0.172356)--(-80.495868,3.571741)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-66.114462,43.140963)--(-58.435093,40.348913)--(-55.377380,46.604043)--(-62.654912,49.249995)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-18.911199,70.590669)--(-12.147357,69.894423)--(-10.745277,75.102135)--(-16.728419,75.718018)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(48.575724,51.607763)--(55.851677,53.948732)--(52.079220,59.691727)--(45.294715,57.508877)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(34.840196,61.445230)--(41.819748,63.163730)--(38.165702,68.548105)--(31.795996,66.979761)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-34.943339,-70.802591)--(-22.445389,-72.089084)--(-23.005397,-66.703254)--(-35.815167,-65.384663)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(24.882252,65.709194)--(31.795996,66.979761)--(28.615640,72.227475)--(22.393435,71.083995)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(8.912571,69.674354)--(15.788072,70.228073)--(13.965771,75.397274)--(7.883858,74.907467)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-80.495868,3.571741)--(-71.146062,0.172356)--(-69.746918,7.040668)--(-78.912853,10.373202)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-69.290898,36.847195)--(-61.242578,33.921002)--(-58.435093,40.348913)--(-66.114462,43.140963)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-48.564659,58.489676)--(-41.351479,56.474009)--(-38.179033,62.208256)--(-44.838824,64.069282)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-48.012131,-63.505491)--(-35.815167,-65.384663)--(-36.533630,-59.686748)--(-48.975268,-57.769879)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(68.549363,-21.803824)--(78.817084,-18.500283)--(78.310462,-11.729570)--(68.108740,-15.011876)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-12.147357,69.894423)--(-5.175671,69.506090)--(-4.578281,74.758624)--(-10.745277,75.102135)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-73.498120,-33.594585)--(-62.581640,-36.645110)--(-62.715919,-30.071942)--(-73.655823,-27.014871)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-5.175671,69.506090)--(1.884573,69.432313)--(1.667050,74.693362)--(-4.578281,74.758624)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(1.884573,69.432313)--(8.912571,69.674354)--(7.883858,74.907467)--(1.667050,74.693362)--cycle;
	fill p withcolor (0.951440,0.048560,1.000000);
	draw p withcolor meshcolor;

	p:=(-78.912853,10.373202)--(-69.746918,7.040668)--(-68.049107,13.878831)--(-76.991921,17.130243)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-72.170621,30.395642)--(-63.787814,27.347837)--(-61.242578,33.921002)--(-69.290898,36.847195)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-76.991921,17.130243)--(-68.049107,13.878831)--(-66.059900,20.657563)--(-74.741298,23.813930)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-74.741298,23.813930)--(-66.059900,20.657563)--(-63.787814,27.347837)--(-72.170621,30.395642)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(16.468283,-72.495719)--(29.172553,-71.472580)--(29.900402,-66.071368)--(16.879163,-67.120035)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(51.648724,45.485657)--(59.384969,47.974720)--(55.851677,53.948732)--(48.575724,51.607763)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(43.260795,-58.733715)--(55.281172,-56.524681)--(56.131598,-50.522535)--(43.926303,-52.765551)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(56.741659,-44.304043)--(68.108740,-41.505248)--(68.549363,-35.078933)--(57.108744,-37.895834)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-28.169038,66.263562)--(-21.012998,65.161040)--(-18.911199,70.590669)--(-25.351464,71.582913)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-22.445389,-72.089084)--(-9.563392,-72.806631)--(-9.801997,-67.438704)--(-23.005397,-66.703254)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(-38.179033,62.208256)--(-30.865987,60.660461)--(-28.169038,66.263562)--(-34.843098,67.676117)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(68.108740,-15.011876)--(78.310462,-11.729570)--(77.468502,-4.908629)--(67.376465,-8.155645)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-61.510850,-49.293211)--(-49.728686,-51.786888)--(-50.269158,-45.582138)--(-62.179376,-43.061358)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.563392,-72.806631)--(3.482237,-72.942954)--(3.569118,-67.578427)--(-9.801997,-67.438704)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(3.482237,-72.942954)--(16.468283,-72.495719)--(16.879163,-67.120035)--(3.569118,-67.578427)--cycle;
	fill p withcolor (0.322602,0.677398,1.000000);
	draw p withcolor meshcolor;

	p:=(29.900402,-66.071368)--(42.410037,-64.450372)--(43.260795,-58.733715)--(30.500213,-60.387229)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(37.735205,55.647580)--(45.294715,57.508877)--(41.819748,63.163730)--(34.840196,61.445230)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-52.082532,52.659608)--(-44.346852,50.497933)--(-41.351479,56.474009)--(-48.564659,58.489676)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(54.500556,39.168774)--(62.663965,41.795272)--(59.384969,47.974720)--(51.648724,45.485657)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(17.542766,64.758145)--(24.882252,65.709194)--(22.393435,71.083995)--(15.788072,70.228073)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-73.655823,-27.014871)--(-62.715919,-30.071942)--(-62.581640,-23.370001)--(-73.498120,-20.319476)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(67.376465,-8.155645)--(77.468502,-4.908629)--(76.294810,1.933331)--(66.355673,-1.264491)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(27.264519,60.053017)--(34.840196,61.445230)--(31.795996,66.979761)--(24.882252,65.709194)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(57.119009,32.684164)--(65.674625,35.436851)--(62.663965,41.795272)--(54.500556,39.168774)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-21.012998,65.161040)--(-13.497420,64.387413)--(-12.147357,69.894423)--(-18.911199,70.590669)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-35.815167,-65.384663)--(-23.005397,-66.703254)--(-23.466892,-61.031791)--(-36.533630,-59.686748)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-48.975268,-57.769879)--(-36.533630,-59.686748)--(-37.095650,-53.733245)--(-49.728686,-51.786888)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(66.355673,-1.264491)--(76.294810,1.933331)--(74.794412,8.767013)--(65.050736,5.632078)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(57.108744,-37.895834)--(68.549363,-35.078933)--(68.696448,-28.502404)--(57.231281,-31.325349)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(59.492869,26.059595)--(68.404056,28.926684)--(65.674625,35.436851)--(57.119009,32.684164)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(9.903118,64.142885)--(17.542766,64.758145)--(15.788072,70.228073)--(8.912571,69.674354)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-55.377380,46.604043)--(-47.152325,44.305616)--(-44.346852,50.497933)--(-52.082532,52.659608)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(65.050736,5.632078)--(74.794412,8.767013)--(72.973733,15.563153)--(63.467242,12.504530)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(63.467242,12.504530)--(72.973733,15.563153)--(70.840570,22.292649)--(61.611971,19.323436)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(61.611971,19.323436)--(70.840570,22.292649)--(68.404056,28.926684)--(59.492869,26.059595)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-73.498120,-20.319476)--(-62.581640,-23.370001)--(-62.179376,-16.567986)--(-73.025687,-13.537069)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(43.926303,-52.765551)--(56.131598,-50.522535)--(56.741659,-44.304043)--(44.403712,-46.571437)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-13.497420,64.387413)--(-5.750897,63.955920)--(-5.175671,69.506090)--(-12.147357,69.894423)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(-41.351479,56.474009)--(-33.430764,54.797602)--(-30.865987,60.660461)--(-38.179033,62.208256)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(40.468627,49.611640)--(48.575724,51.607763)--(45.294715,57.508877)--(37.735205,55.647580)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-62.179376,-43.061358)--(-50.269158,-45.582138)--(-50.594370,-39.182198)--(-62.581640,-36.645110)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-5.750897,63.955920)--(2.094025,63.873943)--(1.884573,69.432313)--(-5.175671,69.506090)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(2.094025,63.873943)--(9.903118,64.142885)--(8.912571,69.674354)--(1.884573,69.432313)--cycle;
	fill p withcolor (0.935308,0.064692,1.000000);
	draw p withcolor meshcolor;

	p:=(16.879163,-67.120035)--(29.900402,-66.071368)--(30.500213,-60.387229)--(17.217764,-61.456932)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-30.865987,60.660461)--(-23.024817,59.452381)--(-21.012998,65.161040)--(-28.169038,66.263562)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(30.500213,-60.387229)--(43.260795,-58.733715)--(43.926303,-52.765551)--(30.969417,-54.444502)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-23.005397,-66.703254)--(-9.801997,-67.438704)--(-9.998628,-61.781994)--(-23.466892,-61.031791)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(-58.435093,40.348913)--(-49.755884,37.923576)--(-47.152325,44.305616)--(-55.377380,46.604043)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-73.025687,-13.537069)--(-62.179376,-16.567986)--(-61.510850,-9.695025)--(-72.240547,-6.696695)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(57.231281,-31.325349)--(68.696448,-28.502404)--(68.549363,-21.803824)--(57.108744,-24.620725)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(19.222339,59.010912)--(27.264519,60.053017)--(24.882252,65.709194)--(17.542766,64.758145)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.801997,-67.438704)--(3.569118,-67.578427)--(3.640715,-61.924520)--(-9.998628,-61.781994)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(3.569118,-67.578427)--(16.879163,-67.120035)--(17.217764,-61.456932)--(3.640715,-61.924520)--cycle;
	fill p withcolor (0.354840,0.645160,1.000000);
	draw p withcolor meshcolor;

	p:=(29.530035,54.139683)--(37.735205,55.647580)--(34.840196,61.445230)--(27.264519,60.053017)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(43.028755,43.363254)--(51.648724,45.485657)--(48.575724,51.607763)--(40.468627,49.611640)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-61.242578,33.921002)--(-52.146381,31.379141)--(-49.755884,37.923576)--(-58.435093,40.348913)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-72.240547,-6.696695)--(-61.510850,-9.695025)--(-60.578926,-2.780548)--(-71.146062,0.172356)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-49.728686,-51.786888)--(-37.095650,-53.733245)--(-37.498821,-47.549649)--(-50.269158,-45.582138)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-44.346852,50.497933)--(-35.852385,48.700092)--(-33.430764,54.797602)--(-41.351479,56.474009)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-23.024817,59.452381)--(-14.789685,58.604686)--(-13.497420,64.387413)--(-21.012998,65.161040)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-62.581640,-36.645110)--(-50.594370,-39.182198)--(-50.702929,-32.614473)--(-62.715919,-30.071942)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(44.403712,-46.571437)--(56.741659,-44.304043)--(57.108744,-37.895834)--(44.690978,-40.177897)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-36.533630,-59.686748)--(-23.466892,-61.031791)--(-23.827898,-55.098980)--(-37.095650,-53.733245)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-63.787814,27.347837)--(-54.313579,24.700336)--(-52.146381,31.379141)--(-61.242578,33.921002)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-71.146062,0.172356)--(-60.578926,-2.780548)--(-59.387594,4.145836)--(-69.746918,7.040668)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(57.108744,-24.620725)--(68.549363,-21.803824)--(68.108740,-15.011876)--(56.741659,-17.810671)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(10.851259,58.336747)--(19.222339,59.010912)--(17.542766,64.758145)--(9.903118,64.142885)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(-66.059900,20.657563)--(-56.248198,17.915760)--(-54.313579,24.700336)--(-63.787814,27.347837)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-33.430764,54.797602)--(-24.938039,53.489138)--(-23.024817,59.452381)--(-30.865987,60.660461)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-69.746918,7.040668)--(-59.387594,4.145836)--(-57.941954,11.054467)--(-68.049107,13.878831)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-68.049107,13.878831)--(-57.941954,11.054467)--(-56.248198,17.915760)--(-66.059900,20.657563)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(45.404628,36.929181)--(54.500556,39.168774)--(51.648724,45.485657)--(43.028755,43.363254)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-14.789685,58.604686)--(-6.301497,58.131881)--(-5.750897,63.955920)--(-13.497420,64.387413)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(17.217764,-61.456932)--(30.500213,-60.387229)--(30.969417,-54.444502)--(17.482636,-55.530661)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.301497,58.131881)--(2.294510,58.042056)--(2.094025,63.873943)--(-5.750897,63.955920)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(2.294510,58.042056)--(10.851259,58.336747)--(9.903118,64.142885)--(2.094025,63.873943)--cycle;
	fill p withcolor (0.919146,0.080854,1.000000);
	draw p withcolor meshcolor;

	p:=(30.969417,-54.444502)--(43.926303,-52.765551)--(44.403712,-46.571437)--(31.306006,-48.268636)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(31.669100,47.994515)--(40.468627,49.611640)--(37.735205,55.647580)--(29.530035,54.139683)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(56.741659,-17.810671)--(68.108740,-15.011876)--(67.376465,-8.155645)--(56.131598,-10.924348)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-47.152325,44.305616)--(-38.120480,42.394040)--(-35.852385,48.700092)--(-44.346852,50.497933)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(20.819598,53.010986)--(29.530035,54.139683)--(27.264519,60.053017)--(19.222339,59.010912)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(-62.715919,-30.071942)--(-50.702929,-32.614473)--(-50.594370,-25.907089)--(-62.581640,-23.370001)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-23.466892,-61.031791)--(-9.998628,-61.781994)--(-10.152443,-55.860723)--(-23.827898,-55.098980)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(47.586071,30.336971)--(57.119009,32.684164)--(54.500556,39.168774)--(45.404628,36.929181)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.998628,-61.781994)--(3.640715,-61.924520)--(3.696723,-56.005443)--(-10.152443,-55.860723)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(3.640715,-61.924520)--(17.217764,-61.456932)--(17.482636,-55.530661)--(3.696723,-56.005443)--cycle;
	fill p withcolor (0.387087,0.612913,1.000000);
	draw p withcolor meshcolor;

	p:=(44.690978,-40.177897)--(57.108744,-37.895834)--(57.231281,-31.325349)--(44.786870,-33.612309)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-50.269158,-45.582138)--(-37.498821,-47.549649)--(-37.741417,-41.162437)--(-50.594370,-39.182198)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(56.131598,-10.924348)--(67.376465,-8.155645)--(66.355673,-1.264491)--(55.281172,-3.991247)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-24.938039,53.489138)--(-16.018618,52.571005)--(-14.789685,58.604686)--(-23.024817,59.452381)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(49.563743,23.614853)--(59.492869,26.059595)--(57.119009,32.684164)--(47.586071,30.336971)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-37.095650,-53.733245)--(-23.827898,-55.098980)--(-24.086869,-48.930227)--(-37.498821,-47.549649)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-35.852385,48.700092)--(-26.744474,47.296846)--(-24.938039,53.489138)--(-33.430764,54.797602)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(55.281172,-3.991247)--(66.355673,-1.264491)--(65.050736,5.632078)--(54.194024,2.958947)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(51.329175,16.791613)--(61.611971,19.323436)--(59.492869,26.059595)--(49.563743,23.614853)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-49.755884,37.923576)--(-40.225338,35.906450)--(-38.120480,42.394040)--(-47.152325,44.305616)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(54.194024,2.958947)--(65.050736,5.632078)--(63.467242,12.504530)--(52.874809,9.896469)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(52.874809,9.896469)--(63.467242,12.504530)--(61.611971,19.323436)--(51.329175,16.791613)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-62.581640,-23.370001)--(-50.594370,-25.907089)--(-50.269158,-19.088766)--(-62.179376,-16.567986)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(11.752932,52.280802)--(20.819598,53.010986)--(19.222339,59.010912)--(10.851259,58.336747)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(33.672552,41.643827)--(43.028755,43.363254)--(40.468627,49.611640)--(31.669100,47.994515)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-16.018618,52.571005)--(-6.825114,52.058913)--(-6.301497,58.131881)--(-14.789685,58.604686)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(17.482636,-55.530661)--(30.969417,-54.444502)--(31.306006,-48.268636)--(17.672645,-49.366599)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(31.306006,-48.268636)--(44.403712,-46.571437)--(44.690978,-40.177897)--(31.508537,-41.886076)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(44.786870,-33.612309)--(57.231281,-31.325349)--(57.108744,-24.620725)--(44.690978,-26.902788)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(-6.825114,52.058913)--(2.485170,51.961623)--(2.294510,58.042056)--(-6.301497,58.131881)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(2.485170,51.961623)--(11.752932,52.280802)--(10.851259,58.336747)--(2.294510,58.042056)--cycle;
	fill p withcolor (0.887084,0.112916,1.000000);
	draw p withcolor meshcolor;

	p:=(22.327706,46.784059)--(31.669100,47.994515)--(29.530035,54.139683)--(20.819598,53.010986)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-52.146381,31.379141)--(-42.157945,29.265103)--(-40.225338,35.906450)--(-49.755884,37.923576)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-50.594370,-39.182198)--(-37.741417,-41.162437)--(-37.822397,-34.598962)--(-50.702929,-32.614473)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-62.179376,-16.567986)--(-50.269158,-19.088766)--(-49.728686,-12.188702)--(-61.510850,-9.695025)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-23.827898,-55.098980)--(-10.152443,-55.860723)--(-10.262784,-49.700249)--(-24.086869,-48.930227)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.152443,-55.860723)--(3.696723,-56.005443)--(3.736900,-49.846541)--(-10.262784,-49.700249)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(3.696723,-56.005443)--(17.482636,-55.530661)--(17.672645,-49.366599)--(3.736900,-49.846541)--cycle;
	fill p withcolor (0.419342,0.580658,1.000000);
	draw p withcolor meshcolor;

	p:=(35.531813,35.114814)--(45.404628,36.929181)--(43.028755,43.363254)--(33.672552,41.643827)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-38.120480,42.394040)--(-28.436384,40.902022)--(-26.744474,47.296846)--(-35.852385,48.700092)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-26.744474,47.296846)--(-17.178957,46.312207)--(-16.018618,52.571005)--(-24.938039,53.489138)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-54.313579,24.700336)--(-43.910024,22.498439)--(-42.157945,29.265103)--(-52.146381,31.379141)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-61.510850,-9.695025)--(-49.728686,-12.188702)--(-48.975268,-5.236444)--(-60.578926,-2.780548)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-37.498821,-47.549649)--(-24.086869,-48.930227)--(-24.242697,-42.551946)--(-37.741417,-41.162437)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(44.690978,-26.902788)--(57.108744,-24.620725)--(56.741659,-17.810671)--(44.403712,-20.078065)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-56.248198,17.915760)--(-45.474075,15.635433)--(-43.910024,22.498439)--(-54.313579,24.700336)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-60.578926,-2.780548)--(-48.975268,-5.236444)--(-48.012131,1.738236)--(-59.387594,4.145836)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(12.604278,46.000982)--(22.327706,46.784059)--(20.819598,53.010986)--(11.752932,52.280802)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-59.387594,4.145836)--(-48.012131,1.738236)--(-46.843398,8.705474)--(-57.941954,11.054467)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-57.941954,11.054467)--(-46.843398,8.705474)--(-45.474075,15.635433)--(-56.248198,17.915760)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(31.508537,-41.886076)--(44.690978,-40.177897)--(44.786870,-33.612309)--(31.576144,-35.324153)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-50.702929,-32.614473)--(-37.822397,-34.598962)--(-37.741417,-27.887328)--(-50.594370,-25.907089)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(37.238922,28.435433)--(47.586071,30.336971)--(45.404628,36.929181)--(35.531813,35.114814)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(23.740202,40.356795)--(33.672552,41.643827)--(31.669100,47.994515)--(22.327706,46.784059)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(17.672645,-49.366599)--(31.306006,-48.268636)--(31.508537,-41.886076)--(17.786976,-42.991142)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-17.178957,46.312207)--(-7.319504,45.763020)--(-6.825114,52.058913)--(-16.018618,52.571005)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(44.403712,-20.078065)--(56.741659,-17.810671)--(56.131598,-10.924348)--(43.926303,-13.167365)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-7.319504,45.763020)--(2.665188,45.658683)--(2.485170,51.961623)--(-6.825114,52.058913)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(2.665188,45.658683)--(12.604278,46.000982)--(11.752932,52.280802)--(2.485170,51.961623)--cycle;
	fill p withcolor (0.870869,0.129131,1.000000);
	draw p withcolor meshcolor;

	p:=(-40.225338,35.906450)--(-30.006525,34.332049)--(-28.436384,40.902022)--(-38.120480,42.394040)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-24.086869,-48.930227)--(-10.262784,-49.700249)--(-10.329178,-43.326951)--(-24.242697,-42.551946)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(38.786567,21.634288)--(49.563743,23.614853)--(47.586071,30.336971)--(37.238922,28.435433)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-28.436384,40.902022)--(-18.265733,39.855092)--(-17.178957,46.312207)--(-26.744474,47.296846)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(43.926303,-13.167365)--(56.131598,-10.924348)--(55.281172,-3.991247)--(43.260795,-6.200280)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.262784,-49.700249)--(3.736900,-49.846541)--(3.761076,-43.474189)--(-10.329178,-43.326951)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(3.736900,-49.846541)--(17.672645,-49.366599)--(17.786976,-42.991142)--(3.761076,-43.474189)--cycle;
	fill p withcolor (0.451603,0.548397,1.000000);
	draw p withcolor meshcolor;

	p:=(-37.741417,-41.162437)--(-24.242697,-42.551946)--(-24.294714,-35.991452)--(-37.822397,-34.598962)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-50.594370,-25.907089)--(-37.741417,-27.887328)--(-37.498821,-21.056277)--(-50.269158,-19.088766)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(40.168123,14.740501)--(51.329175,16.791613)--(49.563743,23.614853)--(38.786567,21.634288)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(31.576144,-35.324153)--(44.786870,-33.612309)--(44.690978,-26.902788)--(31.508537,-28.610967)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(43.260795,-6.200280)--(55.281172,-3.991247)--(54.194024,2.958947)--(42.410037,0.793355)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(42.410037,0.793355)--(54.194024,2.958947)--(52.874809,9.896469)--(41.377673,7.783594)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(41.377673,7.783594)--(52.874809,9.896469)--(51.329175,16.791613)--(40.168123,14.740501)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(25.051039,33.756717)--(35.531813,35.114814)--(33.672552,41.643827)--(23.740202,40.356795)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-42.157945,29.265103)--(-31.448174,27.615062)--(-30.006525,34.332049)--(-40.225338,35.906450)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(13.401651,39.524179)--(23.740202,40.356795)--(22.327706,46.784059)--(12.604278,46.000982)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(17.786976,-42.991142)--(31.508537,-41.886076)--(31.576144,-35.324153)--(17.825141,-36.431591)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-18.265733,39.855092)--(-7.782550,39.271163)--(-7.319504,45.763020)--(-17.178957,46.312207)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-50.269158,-19.088766)--(-37.498821,-21.056277)--(-37.095650,-14.135059)--(-49.728686,-12.188702)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-7.782550,39.271163)--(2.833794,39.160226)--(2.665188,45.658683)--(-7.319504,45.763020)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(2.833794,39.160226)--(13.401651,39.524179)--(12.604278,46.000982)--(2.665188,45.658683)--cycle;
	fill p withcolor (0.854629,0.145371,1.000000);
	draw p withcolor meshcolor;

	p:=(-43.910024,22.498439)--(-32.755157,20.779822)--(-31.448174,27.615062)--(-42.157945,29.265103)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-30.006525,34.332049)--(-19.274292,33.227312)--(-18.265733,39.855092)--(-28.436384,40.902022)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-24.242697,-42.551946)--(-10.329178,-43.326951)--(-10.351341,-36.768119)--(-24.294714,-35.991452)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(31.508537,-28.610967)--(44.690978,-26.902788)--(44.403712,-20.078065)--(31.306006,-21.775264)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-37.822397,-34.598962)--(-24.294714,-35.991452)--(-24.242697,-29.276837)--(-37.741417,-27.887328)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(26.254604,27.012087)--(37.238922,28.435433)--(35.531813,35.114814)--(25.051039,33.756717)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-49.728686,-12.188702)--(-37.095650,-14.135059)--(-36.533630,-7.153313)--(-48.975268,-5.236444)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.329178,-43.326951)--(3.761076,-43.474189)--(3.769146,-36.915674)--(-10.351341,-36.768119)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(3.761076,-43.474189)--(17.786976,-42.991142)--(17.825141,-36.431591)--(3.769146,-36.915674)--cycle;
	fill p withcolor (0.483867,0.516133,1.000000);
	draw p withcolor meshcolor;

	p:=(-45.474075,15.635433)--(-33.921877,13.855600)--(-32.755157,20.779822)--(-43.910024,22.498439)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-48.975268,-5.236444)--(-36.533630,-7.153313)--(-35.815167,-0.140936)--(-48.012131,1.738236)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(14.141635,32.878127)--(25.051039,33.756717)--(23.740202,40.356795)--(13.401651,39.524179)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-48.012131,1.738236)--(-35.815167,-0.140936)--(-34.943339,6.872046)--(-46.843398,8.705474)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-46.843398,8.705474)--(-34.943339,6.872046)--(-33.921877,13.855600)--(-45.474075,15.635433)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(17.825141,-36.431591)--(31.576144,-35.324153)--(31.508537,-28.610967)--(17.786976,-29.716033)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(31.306006,-21.775264)--(44.403712,-20.078065)--(43.926303,-13.167365)--(30.969417,-14.846316)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(27.345743,20.151788)--(38.786567,21.634288)--(37.238922,28.435433)--(26.254604,27.012087)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-19.274292,33.227312)--(-8.212271,32.611141)--(-7.782550,39.271163)--(-18.265733,39.855092)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-31.448174,27.615062)--(-20.200316,26.457248)--(-19.274292,33.227312)--(-30.006525,34.332049)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-37.741417,-27.887328)--(-24.242697,-29.276837)--(-24.086869,-22.436855)--(-37.498821,-21.056277)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-8.212271,32.611141)--(2.990264,32.494078)--(2.833794,39.160226)--(-7.782550,39.271163)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(2.990264,32.494078)--(14.141635,32.878127)--(13.401651,39.524179)--(2.833794,39.160226)--cycle;
	fill p withcolor (0.822493,0.177507,1.000000);
	draw p withcolor meshcolor;

	p:=(-24.294714,-35.991452)--(-10.351341,-36.768119)--(-10.329178,-30.051842)--(-24.242697,-29.276837)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(30.969417,-14.846316)--(43.926303,-13.167365)--(43.260795,-6.200280)--(30.500213,-7.853794)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(28.319783,13.205195)--(40.168123,14.740501)--(38.786567,21.634288)--(27.345743,20.151788)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.351341,-36.768119)--(3.769146,-36.915674)--(3.761076,-30.199080)--(-10.329178,-30.051842)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(3.769146,-36.915674)--(17.825141,-36.431591)--(17.786976,-29.716033)--(3.761076,-30.199080)--cycle;
	fill p withcolor (0.516133,0.483867,1.000000);
	draw p withcolor meshcolor;

	p:=(14.821063,26.091286)--(26.254604,27.012087)--(25.051039,33.756717)--(14.141635,32.878127)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(30.500213,-7.853794)--(43.260795,-6.200280)--(42.410037,0.793355)--(29.900402,-0.827641)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(29.900402,-0.827641)--(42.410037,0.793355)--(41.377673,7.783594)--(29.172553,6.202056)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(29.172553,6.202056)--(41.377673,7.783594)--(40.168123,14.740501)--(28.319783,13.205195)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(17.786976,-29.716033)--(31.508537,-28.610967)--(31.306006,-21.775264)--(17.672645,-22.873227)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-32.755157,20.779822)--(-21.039839,19.573889)--(-20.200316,26.457248)--(-31.448174,27.615062)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(-37.498821,-21.056277)--(-24.086869,-22.436855)--(-23.827898,-15.500794)--(-37.095650,-14.135059)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-20.200316,26.457248)--(-8.606826,25.811473)--(-8.212271,32.611141)--(-19.274292,33.227312)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-8.606826,25.811473)--(3.133930,25.688786)--(2.990264,32.494078)--(-8.212271,32.611141)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(3.133930,25.688786)--(14.821063,26.091286)--(14.141635,32.878127)--(2.990264,32.494078)--cycle;
	fill p withcolor (0.790335,0.209665,1.000000);
	draw p withcolor meshcolor;

	p:=(-24.242697,-29.276837)--(-10.329178,-30.051842)--(-10.262784,-23.206877)--(-24.086869,-22.436855)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-33.921877,13.855600)--(-21.789267,12.606713)--(-21.039839,19.573889)--(-32.755157,20.779822)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-37.095650,-14.135059)--(-23.827898,-15.500794)--(-23.466892,-8.498356)--(-36.533630,-7.153313)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(15.437025,19.192719)--(27.345743,20.151788)--(26.254604,27.012087)--(14.821063,26.091286)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(17.672645,-22.873227)--(31.306006,-21.775264)--(30.969417,-14.846316)--(17.482636,-15.932475)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.329178,-30.051842)--(3.761076,-30.199080)--(3.736900,-23.353169)--(-10.262784,-23.206877)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(3.761076,-30.199080)--(17.786976,-29.716033)--(17.672645,-22.873227)--(3.736900,-23.353169)--cycle;
	fill p withcolor (0.548397,0.451603,1.000000);
	draw p withcolor meshcolor;

	p:=(-34.943339,6.872046)--(-22.445389,5.585552)--(-21.789267,12.606713)--(-33.921877,13.855600)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-36.533630,-7.153313)--(-23.466892,-8.498356)--(-23.005397,-1.459527)--(-35.815167,-0.140936)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-35.815167,-0.140936)--(-23.005397,-1.459527)--(-22.445389,5.585552)--(-34.943339,6.872046)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-21.039839,19.573889)--(-8.964525,18.901276)--(-8.606826,25.811473)--(-20.200316,26.457248)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(15.986883,12.211965)--(28.319783,13.205195)--(27.345743,20.151788)--(15.437025,19.192719)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(17.482636,-15.932475)--(30.969417,-14.846316)--(30.500213,-7.853794)--(17.217764,-8.923497)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-24.086869,-22.436855)--(-10.262784,-23.206877)--(-10.152443,-16.262537)--(-23.827898,-15.500794)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-8.964525,18.901276)--(3.264176,18.773490)--(3.133930,25.688786)--(-8.606826,25.811473)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(3.264176,18.773490)--(15.437025,19.192719)--(14.821063,26.091286)--(3.133930,25.688786)--cycle;
	fill p withcolor (0.774030,0.225970,1.000000);
	draw p withcolor meshcolor;

	p:=(16.468283,5.178917)--(29.172553,6.202056)--(28.319783,13.205195)--(15.986883,12.211965)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(17.217764,-8.923497)--(30.500213,-7.853794)--(29.900402,-0.827641)--(16.879163,-1.876307)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(16.879163,-1.876307)--(29.900402,-0.827641)--(29.172553,6.202056)--(16.468283,5.178917)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.262784,-23.206877)--(3.736900,-23.353169)--(3.696723,-16.407256)--(-10.152443,-16.262537)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(3.736900,-23.353169)--(17.672645,-22.873227)--(17.482636,-15.932475)--(3.696723,-16.407256)--cycle;
	fill p withcolor (0.580658,0.419342,1.000000);
	draw p withcolor meshcolor;

	p:=(-21.789267,12.606713)--(-9.283836,11.910141)--(-8.964525,18.901276)--(-21.039839,19.573889)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-23.827898,-15.500794)--(-10.152443,-16.262537)--(-9.998628,-9.248559)--(-23.466892,-8.498356)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.283836,11.910141)--(3.380444,11.777804)--(3.264176,18.773490)--(-8.964525,18.901276)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(3.380444,11.777804)--(15.986883,12.211965)--(15.437025,19.192719)--(3.264176,18.773490)--cycle;
	fill p withcolor (0.741835,0.258165,1.000000);
	draw p withcolor meshcolor;

	p:=(-22.445389,5.585552)--(-9.563392,4.868005)--(-9.283836,11.910141)--(-21.789267,12.606713)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-10.152443,-16.262537)--(3.696723,-16.407256)--(3.640715,-9.391085)--(-9.998628,-9.248559)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(3.696723,-16.407256)--(17.482636,-15.932475)--(17.217764,-8.923497)--(3.640715,-9.391085)--cycle;
	fill p withcolor (0.612913,0.387087,1.000000);
	draw p withcolor meshcolor;

	p:=(-23.466892,-8.498356)--(-9.998628,-9.248559)--(-9.801997,-2.194976)--(-23.005397,-1.459527)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-23.005397,-1.459527)--(-9.801997,-2.194976)--(-9.563392,4.868005)--(-22.445389,5.585552)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.563392,4.868005)--(3.482237,4.731683)--(3.380444,11.777804)--(-9.283836,11.910141)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(3.482237,4.731683)--(16.468283,5.178917)--(15.986883,12.211965)--(3.380444,11.777804)--cycle;
	fill p withcolor (0.709623,0.290377,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.998628,-9.248559)--(3.640715,-9.391085)--(3.569118,-2.334700)--(-9.801997,-2.194976)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(3.640715,-9.391085)--(17.217764,-8.923497)--(16.879163,-1.876307)--(3.569118,-2.334700)--cycle;
	fill p withcolor (0.645160,0.354840,1.000000);
	draw p withcolor meshcolor;

	p:=(-9.801997,-2.194976)--(3.569118,-2.334700)--(3.482237,4.731683)--(-9.563392,4.868005)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;

	p:=(3.569118,-2.334700)--(16.879163,-1.876307)--(16.468283,5.178917)--(3.482237,4.731683)--cycle;
	fill p withcolor (0.677398,0.322602,1.000000);
	draw p withcolor meshcolor;


	z1=llcorner currentpicture-(bboxmargin,bboxmargin);
	z2=urcorner currentpicture+(bboxmargin,bboxmargin);
	z3=(0.000000,0.000000);
	z4=2*z3-z1;
	setbounds currentpicture to (z1--(x4,y1)--(x4,y2)--(x1,y2)--cycle);
	currentpicture:=currentpicture shifted (-llcorner currentpicture);
	currentpicture:=currentpicture scaled (figwidth/(xpart urcorner currentpicture-xpart llcorner currentpicture));
endfig;
end
