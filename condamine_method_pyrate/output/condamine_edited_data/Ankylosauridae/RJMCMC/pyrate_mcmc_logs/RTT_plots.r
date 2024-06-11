

pdf(file='./RTT_plots.pdf',width=10, height=15)
par(mfrow=c(3,2))
library(scales)

time=c(-67.53477335020818, -68.13843526161259,-68.74209717301699,-69.34575908442139,-69.94942099582582,-70.55308290723022,-71.15674481863462,-71.76040673003905,-72.36406864144345,-72.96773055284785,-73.57139246425228,-74.17505437565669,-74.77871628706109,-75.38237819846549,-75.98604010986992,-76.58970202127432,-77.19336393267872,-77.79702584408315,-78.40068775548755,-79.00434966689195,-79.60801157829638,-80.21167348970079,-80.81533540110519,-81.41899731250962,-82.02265922391402,-82.62632113531842,-83.22998304672282,-83.83364495812725,-84.43730686953165,-85.04096878093605,-85.64463069234048,-86.24829260374489,-86.85195451514929,-87.45561642655372,-88.05927833795812,-88.66294024936252,-89.26660216076692,-89.87026407217135,-90.47392598357575,-91.07758789498016,-91.68124980638459,-92.28491171778899,-92.88857362919339,-93.49223554059782,-94.09589745200222,-94.69955936340662,-95.30322127481102,-95.90688318621545,-96.51054509761985,-97.11420700902426,-97.71786892042869,-98.32153083183309,-98.92519274323749,-99.52885465464192,-100.13251656604632,-100.73617847745072,-101.33984038885515,-101.94350230025955,-102.54716421166395,-103.15082612306836,-103.75448803447279,-104.35814994587719,-104.96181185728159,-105.56547376868602,-106.16913568009042,-106.77279759149482,-107.37645950289925,-107.98012141430365,-108.58378332570805,-109.18744523711246,-109.79110714851689,-110.39476905992129,-110.99843097132569,-111.60209288273012,-112.20575479413452,-112.80941670553892,-113.41307861694335,-114.01674052834775,-114.62040243975216,-115.22406435115656,-115.82772626256099,-116.43138817396539,-117.03505008536979,-117.63871199677422,-118.24237390817862,-118.84603581958302,-119.44969773098745,-120.05335964239185,-120.65702155379626,-121.26068346520066,-121.86434537660509,-122.46800728800949,-123.07166919941389,-123.67533111081832,-124.27899302222272,-124.88265493362712,-125.48631684503155,-126.08997875643595,-126.69364066784036,-127.29730257924476)
rate=c(0.18242894035014687, 0.18281134911254193,0.18292475252316806,0.18242894035014687,0.18281134911254193,0.18292475252316806,0.18298717943637216,0.18359243574198825,0.18388987949099128,0.18405350327702596,0.18405350327702596,0.1842688506976496,0.18429844344456953,0.18446733891942746,0.18464535547617886,0.18464535547617886,0.18464535547617886,0.18464535547617886,0.18468749945718257,0.18466932507958211,0.18464535547617886,0.18464535547617886,0.18464535547617886,0.18464535547617886,0.18464535547617886,0.18464535547617886,0.18464535547617886,0.18464535547617886,0.18464535547617886,0.18464535547617886,0.1844802736875518,0.18464535547617886,0.1844802736875518,0.18464535547617886,0.18464535547617886,0.18464535547617886,0.1844802736875518,0.1844802736875518,0.1844802736875518,0.18464535547617886,0.18464535547617886,0.18464535547617886,0.18468749945718257,0.18468749945718257,0.1851071799302372,0.1852091265779246,0.18535520926576612,0.185703805527164,0.1862329170945117,0.18640892349653782,0.18676881617553082,0.1869849675372285,0.1870086040095395,0.18749009548412868,0.18786179575555903,0.18829247238878175,0.18829247238878175,0.18829247238878175,0.18858301108166842,0.18858301108166842,0.18870323545536777,0.18889851376607125,0.18914076791138734,0.18914076791138734,0.18914076791138734,0.18925075428550908,0.18925075428550908,0.1891610263963149,0.1894043189726788,0.1894043189726788,0.18949645046210875,0.18949645046210875,0.18949645046210875,0.18952548440003772,0.1895949659457789,0.1895949659457789,0.1899762940968503,0.1903026235817028,0.1899762940968503,0.1903026235817028,0.1903026235817028,0.19051002029920147,0.1905463936827469,0.19043008474061732,0.19035013813493618,0.19035013813493618,0.19035013813493618,0.1903026235817028,0.1903026235817028,0.1903026235817028,0.1906637988610692,0.19120375101617454,0.19140808125076414,0.19147362873107868,0.19232696507938923,0.19384989718477863,0.19438725033542825,0.1951915964423655,0.19562726128161886,0.19651576869935283)
minHPD=c(0.10753109226428517, 0.110979685814633,0.11178370398664461,0.1130362931685394,0.1130362931685394,0.1130362931685394,0.1130362931685394,0.1130362931685394,0.11854451977958023,0.11854451977958023,0.11854451977958023,0.11854451977958023,0.11989730563088542,0.11989730563088542,0.11989730563088542,0.11989730563088542,0.11989730563088542,0.11989730563088542,0.11989730563088542,0.11989730563088542,0.11989730563088542,0.11989730563088542,0.12312431053056605,0.12312431053056605,0.12312431053056605,0.12312431053056605,0.12312431053056605,0.11989730563088542,0.11989730563088542,0.12312431053056605,0.12312431053056605,0.12312431053056605,0.11854451977958023,0.11854451977958023,0.11854451977958023,0.11854451977958023,0.11854451977958023,0.11854451977958023,0.11854451977958023,0.11854451977958023,0.11989730563088542,0.11989730563088542,0.11989730563088542,0.11989730563088542,0.11989730563088542,0.11989730563088542,0.11509571511476635,0.11805364675484852,0.11509571511476635,0.11553453694845077,0.11553453694845077,0.1130362931685394,0.11989730563088542,0.11727747478280412,0.11727747478280412,0.11553453694845077,0.11553453694845077,0.11553453694845077,0.11178370398664461,0.11178370398664461,0.11178370398664461,0.11178370398664461,0.11178370398664461,0.11178370398664461,0.11553453694845077,0.11989730563088542,0.11989730563088542,0.11178370398664461,0.11805364675484852,0.11805364675484852,0.11805364675484852,0.11805364675484852,0.11178370398664461,0.11530965899810132,0.11410328370897026,0.11530965899810132,0.11312953793555594,0.11312953793555594,0.11312953793555594,0.11178370398664461,0.1081775507641856,0.11178370398664461,0.11178370398664461,0.10976867811833103,0.1081775507641856,0.1081775507641856,0.1081775507641856,0.1081775507641856,0.1081775507641856,0.1081775507641856,0.10976867811833103,0.1081775507641856,0.1081775507641856,0.1081775507641856,0.1081775507641856,0.11178370398664461,0.09052910413645289,0.10976867811833103,0.1081775507641856,0.09052910413645289)
maxHPD=c(0.2637074216302272, 0.26415173546578874,0.26415173546578874,0.2637074216302272,0.2596648491793238,0.2566306724486588,0.2566306724486588,0.25469911379568866,0.2591494027894427,0.25696400929075286,0.25696400929075286,0.25696400929075286,0.25696400929075286,0.25696400929075286,0.25745122930492875,0.25745122930492875,0.25745122930492875,0.25745122930492875,0.25745122930492875,0.25745122930492875,0.25745122930492875,0.25745122930492875,0.2591494027894427,0.2591494027894427,0.2596648491793238,0.2596648491793238,0.2596648491793238,0.25745122930492875,0.25745122930492875,0.2596648491793238,0.2596648491793238,0.2596648491793238,0.25696400929075286,0.25696400929075286,0.25696400929075286,0.25696400929075286,0.25696400929075286,0.25696400929075286,0.25696400929075286,0.25696400929075286,0.25745122930492875,0.25745122930492875,0.25745122930492875,0.25745122930492875,0.2589446717120121,0.260991018814105,0.25745122930492875,0.261277410208234,0.2596648491793238,0.261277410208234,0.2631616024318089,0.26415173546578874,0.27201351206022817,0.27201351206022817,0.273450798497143,0.273450798497143,0.273450798497143,0.273450798497143,0.2758630156129357,0.2758630156129357,0.27903037947160736,0.27903037947160736,0.28403694037206,0.28403694037206,0.28892776983201557,0.2964426287568921,0.2964426287568921,0.2889758891911047,0.2964426287568921,0.2964426287568921,0.2964426287568921,0.2964426287568921,0.290370449997962,0.2946618813495313,0.2946618813495313,0.2964426287568921,0.2964426287568921,0.2964426287568921,0.2964426287568921,0.2964426287568921,0.2964426287568921,0.3041708670581591,0.3056450259837866,0.3056450259837866,0.3056450259837866,0.3056450259837866,0.3082893128931321,0.31350184947463733,0.3192918636297063,0.3248668549676223,0.34810152928878163,0.37130883749604104,0.40366697586439326,0.41082478537375444,0.4432735384137162,0.5112053217559335,0.5112053217559335,0.5621317744869668,0.6314269103383527,0.6658856335526403)
remove_na = !is.na(rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(0, 0.7324741969079044), xlim = c(-127.59913353494697,-67.23294239450597), ylab = 'Speciation rate', xlab = 'Time',main='Speciation (PyRate_Inputs_2_RJMCMC_Grj_mcmc)' )
polygon(c(time, rev(time)), c(maxHPD[remove_na], rev(minHPD[remove_na])), col = alpha('#4c4cec',0.3), border = NA)
lines(time,rate[remove_na], col = '#4c4cec', lwd=2)
mids=c(-67.53782214774051, -68.14758165420963,-68.75734116067872,-69.36710066714781,-69.97686017361693,-70.58661968008602,-71.19637918655513,-71.80613869302422,-72.41589819949331,-73.02565770596243,-73.63541721243152,-74.24517671890064,-74.85493622536973,-75.46469573183884,-76.07445523830793,-76.68421474477702,-77.29397425124614,-77.90373375771523,-78.51349326418435,-79.12325277065344,-79.73301227712253,-80.34277178359164,-80.95253129006073,-81.56229079652985,-82.17205030299894,-82.78180980946803,-83.39156931593715,-84.00132882240624,-84.61108832887535,-85.22084783534444,-85.83060734181356,-86.44036684828265,-87.05012635475174,-87.65988586122086,-88.26964536768995,-88.87940487415906,-89.48916438062815,-90.09892388709724,-90.70868339356636,-91.31844290003545,-91.92820240650457,-92.53796191297366,-93.14772141944275,-93.75748092591186,-94.36724043238095,-94.97699993885007,-95.58675944531916,-96.19651895178828,-96.80627845825737,-97.41603796472646,-98.02579747119557,-98.63555697766466,-99.24531648413378,-99.85507599060287,-100.46483549707196,-101.07459500354108,-101.68435451001017,-102.29411401647928,-102.90387352294837,-103.51363302941746,-104.12339253588658,-104.73315204235567,-105.34291154882479,-105.95267105529388,-106.562430561763,-107.17219006823208,-107.78194957470117,-108.39170908117029,-109.00146858763938,-109.6112280941085,-110.22098760057759,-110.83074710704668,-111.4405066135158,-112.05026611998488,-112.660025626454,-113.26978513292309,-113.87954463939221,-114.4893041458613,-115.09906365233039,-115.7088231587995,-116.3185826652686,-116.92834217173771,-117.5381016782068,-118.14786118467589,-118.75762069114501,-119.3673801976141,-119.97713970408321,-120.5868992105523,-121.19665871702139,-121.80641822349051,-122.4161777299596,-123.02593723642872,-123.6356967428978,-124.24545624936692,-124.85521575583601,-125.4649752623051,-126.07473476877422,-126.68449427524331,-127.29425378171243)
counts=c(0.004, 0.001,0.005,0.005,0.005,0.006,0.007,0.004,0.004,0.0,0.002,0.002,0.001,0.002,0.001,0.0,0.001,0.003,0.002,0.002,0.001,0.001,0.0,0.002,0.001,0.001,0.0,0.0,0.002,0.002,0.003,0.003,0.001,0.0,0.0,0.001,0.001,0.0,0.001,0.001,0.002,0.002,0.004,0.003,0.006,0.004,0.003,0.008,0.003,0.005,0.004,0.003,0.003,0.006,0.001,0.0,0.003,0.003,0.001,0.004,0.003,0.002,0.001,0.003,0.002,0.005,0.003,0.001,0.003,0.0,0.0,0.002,0.005,0.001,0.003,0.001,0.002,0.003,0.002,0.004,0.003,0.005,0.0,0.005,0.004,0.003,0.001,0.002,0.007,0.003,0.006,0.007,0.007,0.018,0.006,0.008,0.012,0.01,0.0)
plot(mids,counts,type = 'h', xlim = c(-127.59913353494697,-67.23294239450597), ylim=c(0,0.2), ylab = 'Frequency of rate shift', xlab = 'Time',lwd=5,col='#4c4cec')
bf2 = 0.032419993394657655
bf6 = 0.19844799111442532
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)

time=c(-67.53477335020818, -68.13843526161259,-68.74209717301699,-69.34575908442139,-69.94942099582582,-70.55308290723022,-71.15674481863462,-71.76040673003905,-72.36406864144345,-72.96773055284785,-73.57139246425228,-74.17505437565669,-74.77871628706109,-75.38237819846549,-75.98604010986992,-76.58970202127432,-77.19336393267872,-77.79702584408315,-78.40068775548755,-79.00434966689195,-79.60801157829638,-80.21167348970079,-80.81533540110519,-81.41899731250962,-82.02265922391402,-82.62632113531842,-83.22998304672282,-83.83364495812725,-84.43730686953165,-85.04096878093605,-85.64463069234048,-86.24829260374489,-86.85195451514929,-87.45561642655372,-88.05927833795812,-88.66294024936252,-89.26660216076692,-89.87026407217135,-90.47392598357575,-91.07758789498016,-91.68124980638459,-92.28491171778899,-92.88857362919339,-93.49223554059782,-94.09589745200222,-94.69955936340662,-95.30322127481102,-95.90688318621545,-96.51054509761985,-97.11420700902426,-97.71786892042869,-98.32153083183309,-98.92519274323749,-99.52885465464192,-100.13251656604632,-100.73617847745072,-101.33984038885515,-101.94350230025955,-102.54716421166395,-103.15082612306836,-103.75448803447279,-104.35814994587719,-104.96181185728159,-105.56547376868602,-106.16913568009042,-106.77279759149482,-107.37645950289925,-107.98012141430365,-108.58378332570805,-109.18744523711246,-109.79110714851689,-110.39476905992129,-110.99843097132569,-111.60209288273012,-112.20575479413452,-112.80941670553892,-113.41307861694335,-114.01674052834775,-114.62040243975216,-115.22406435115656,-115.82772626256099,-116.43138817396539,-117.03505008536979,-117.63871199677422,-118.24237390817862,-118.84603581958302,-119.44969773098745,-120.05335964239185,-120.65702155379626,-121.26068346520066,-121.86434537660509,-122.46800728800949,-123.07166919941389,-123.67533111081832,-124.27899302222272,-124.88265493362712,-125.48631684503155,-126.08997875643595,-126.69364066784036,-127.29730257924476)
rate=c(0.2700474289341378, 0.25916642003661217,0.24268961438831094,0.23769101758640201,0.23613825849540065,0.23560852089060041,0.23498790504738437,0.23091521135792265,0.2293886744995009,0.22393964859192322,0.21849121620414796,0.21184811098402953,0.20865547487979458,0.20719802315641422,0.2064395613845817,0.1957795511462785,0.17323809310528973,0.16529956229435094,0.16228335477035408,0.16160100731588076,0.16084106906505774,0.16072269757594299,0.160629325658231,0.16024973339001938,0.16030760679013176,0.16030760679013176,0.16024973339001938,0.16024973339001938,0.16024973339001938,0.16024973339001938,0.160442576230038,0.16030760679013176,0.16010637920920684,0.16010637920920684,0.15994954133088177,0.15975759611703927,0.15994954133088177,0.15994954133088177,0.15994954133088177,0.15994954133088177,0.15965903624222327,0.15950597073168282,0.15950597073168282,0.15950597073168282,0.15950597073168282,0.15956595712903732,0.15950597073168282,0.15950597073168282,0.15956595712903732,0.15956595712903732,0.15956595712903732,0.15956595712903732,0.15965903624222327,0.15965903624222327,0.15970674296922965,0.15994954133088177,0.16010637920920684,0.16017363383960506,0.16024973339001938,0.16024973339001938,0.16024973339001938,0.16024973339001938,0.16024973339001938,0.16024973339001938,0.16030760679013176,0.160442576230038,0.16077652831545505,0.1608948998045698,0.16099024895872965,0.1612313157109323,0.16130473969646597,0.16130473969646597,0.16138180756016116,0.16147652025014586,0.16147652025014586,0.16147652025014586,0.16138180756016116,0.1612313157109323,0.16130473969646597,0.1612313157109323,0.1611197943069907,0.1611197943069907,0.1612313157109323,0.1612313157109323,0.16099024895872965,0.16099024895872965,0.16099024895872965,0.1611197943069907,0.1612313157109323,0.1611197943069907,0.1612313157109323,0.1612313157109323,0.1612313157109323,0.1612313157109323,0.16138180756016116,0.16160100731588076,0.16228335477035408,0.1629037855742908,0.1631879491975743,0.16368465885293648)
minHPD=c(0.11684694674887801, 0.11231628815447507,0.11231628815447507,0.11487157937346713,0.11487157937346713,0.11487157937346713,0.11487157937346713,0.12023932471536394,0.11487157937346713,0.11487157937346713,0.11409969512825693,0.10910074426088798,0.10849472014276337,0.10910074426088798,0.09935048320610232,0.0763268385592153,0.06386325507482958,0.062466988169164225,0.061327653708040684,0.06610515166839266,0.061327653708040684,0.062466988169164225,0.061327653708040684,0.062466988169164225,0.062466988169164225,0.062466988169164225,0.062466988169164225,0.06436648232888573,0.06436648232888573,0.06453612922319989,0.06453612922319989,0.06453612922319989,0.06453612922319989,0.06453612922319989,0.06492882483008636,0.06492882483008636,0.06492882483008636,0.06524759187066931,0.06524759187066931,0.06524759187066931,0.06524759187066931,0.06492882483008636,0.06492882483008636,0.06492882483008636,0.06492882483008636,0.06492882483008636,0.06492882483008636,0.06492882483008636,0.06436648232888573,0.06436648232888573,0.06436648232888573,0.06436648232888573,0.06436648232888573,0.06386325507482958,0.06386325507482958,0.062466988169164225,0.062466988169164225,0.06436648232888573,0.062466988169164225,0.062466988169164225,0.062466988169164225,0.061327653708040684,0.061327653708040684,0.061327653708040684,0.06436648232888573,0.06436648232888573,0.061327653708040684,0.06386325507482958,0.06436648232888573,0.06436648232888573,0.06386325507482958,0.06453612922319989,0.06453612922319989,0.06386325507482958,0.06386325507482958,0.06386325507482958,0.062466988169164225,0.06386325507482958,0.06386325507482958,0.06436648232888573,0.06386325507482958,0.06386325507482958,0.06386325507482958,0.062466988169164225,0.061327653708040684,0.061327653708040684,0.061327653708040684,0.05854542748891194,0.06386325507482958,0.06386325507482958,0.06386325507482958,0.06386325507482958,0.061327653708040684,0.06386325507482958,0.062466988169164225,0.061327653708040684,0.061327653708040684,0.051793118053434374,0.051793118053434374,0.051793118053434374)
maxHPD=c(1.1833527262584274, 0.8190947908323088,0.5665694696522552,0.5395529021868599,0.5320827481965397,0.5303693949144082,0.5303693949144082,0.529964245264328,0.5236313705322732,0.5178935581789635,0.49922524112443906,0.4862790153188624,0.4824339261582312,0.4835815351732967,0.478240538543851,0.4379383899764949,0.3593855775170365,0.28095759197676073,0.2612775675868454,0.2611500130281919,0.2530242592181703,0.2530242592181703,0.2478826111978453,0.24782209931767554,0.2450624079545099,0.2450624079545099,0.2449362368889643,0.2450624079545099,0.2450624079545099,0.2450624079545099,0.2450624079545099,0.2450624079545099,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.2449362368889643,0.24484714707506183,0.2449362368889643,0.2478826111978453,0.2478826111978453,0.2478826111978453,0.2478826111978453,0.2478826111978453,0.2478826111978453,0.2478826111978453,0.2530242592181703,0.2530242592181703,0.2546693068849333,0.2586669251274938,0.2597291374585494,0.2597291374585494,0.2597291374585494,0.2612775675868454,0.2612775675868454,0.2612775675868454,0.2612775675868454,0.2612775675868454,0.26203182666849695,0.2612775675868454,0.2612775675868454,0.2612775675868454,0.26203182666849695,0.2612775675868454,0.26203182666849695,0.26203182666849695,0.26203182666849695,0.26203182666849695,0.26203182666849695,0.26203182666849695,0.2691181296683707,0.2691181296683707,0.2704047688617138,0.2704047688617138,0.2691181296683707,0.2756539543127511,0.2756539543127511,0.27724311348323966,0.28383902223721985,0.28383902223721985,0.2934821248380009,0.3087774450534687)
remove_na = !is.na(rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(0, 1.3016879988842702), xlim = c(-127.59913353494697,-67.23294239450597), ylab = 'Extinction rate', xlab = 'Time',main='Extinction' )
polygon(c(time, rev(time)), c(maxHPD[remove_na], rev(minHPD[remove_na])), col = alpha('#e34a33',0.3), border = NA)
lines(time,rate[remove_na], col = '#e34a33', lwd=2)
mids=c(-67.53782214774051, -68.14758165420963,-68.75734116067872,-69.36710066714781,-69.97686017361693,-70.58661968008602,-71.19637918655513,-71.80613869302422,-72.41589819949331,-73.02565770596243,-73.63541721243152,-74.24517671890064,-74.85493622536973,-75.46469573183884,-76.07445523830793,-76.68421474477702,-77.29397425124614,-77.90373375771523,-78.51349326418435,-79.12325277065344,-79.73301227712253,-80.34277178359164,-80.95253129006073,-81.56229079652985,-82.17205030299894,-82.78180980946803,-83.39156931593715,-84.00132882240624,-84.61108832887535,-85.22084783534444,-85.83060734181356,-86.44036684828265,-87.05012635475174,-87.65988586122086,-88.26964536768995,-88.87940487415906,-89.48916438062815,-90.09892388709724,-90.70868339356636,-91.31844290003545,-91.92820240650457,-92.53796191297366,-93.14772141944275,-93.75748092591186,-94.36724043238095,-94.97699993885007,-95.58675944531916,-96.19651895178828,-96.80627845825737,-97.41603796472646,-98.02579747119557,-98.63555697766466,-99.24531648413378,-99.85507599060287,-100.46483549707196,-101.07459500354108,-101.68435451001017,-102.29411401647928,-102.90387352294837,-103.51363302941746,-104.12339253588658,-104.73315204235567,-105.34291154882479,-105.95267105529388,-106.562430561763,-107.17219006823208,-107.78194957470117,-108.39170908117029,-109.00146858763938,-109.6112280941085,-110.22098760057759,-110.83074710704668,-111.4405066135158,-112.05026611998488,-112.660025626454,-113.26978513292309,-113.87954463939221,-114.4893041458613,-115.09906365233039,-115.7088231587995,-116.3185826652686,-116.92834217173771,-117.5381016782068,-118.14786118467589,-118.75762069114501,-119.3673801976141,-119.97713970408321,-120.5868992105523,-121.19665871702139,-121.80641822349051,-122.4161777299596,-123.02593723642872,-123.6356967428978,-124.24545624936692,-124.85521575583601,-125.4649752623051,-126.07473476877422,-126.68449427524331,-127.29425378171243)
counts=c(0.026, 0.048,0.014,0.006,0.004,0.004,0.011,0.008,0.016,0.034,0.028,0.016,0.006,0.011,0.089,0.151,0.061,0.016,0.009,0.007,0.002,0.006,0.002,0.002,0.0,0.002,0.003,0.0,0.001,0.005,0.001,0.003,0.001,0.0,0.001,0.002,0.002,0.0,0.004,0.003,0.001,0.002,0.002,0.002,0.001,0.002,0.0,0.003,0.0,0.0,0.0,0.002,0.002,0.002,0.002,0.003,0.003,0.002,0.0,0.001,0.001,0.0,0.002,0.002,0.004,0.006,0.003,0.003,0.001,0.004,0.002,0.002,0.002,0.001,0.003,0.006,0.003,0.001,0.004,0.001,0.002,0.003,0.003,0.0,0.002,0.001,0.005,0.002,0.002,0.0,0.003,0.005,0.002,0.003,0.008,0.006,0.004,0.009,0.001)
plot(mids,counts,type = 'h', xlim = c(-127.59913353494697,-67.23294239450597), ylim=c(0,0.2), ylab = 'Frequency of rate shift', xlab = 'Time',lwd=5,col='#e34a33')
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
#Net Diversification Rate
time=c(-67.53477335020818, -68.13843526161259,-68.74209717301699,-69.34575908442139,-69.94942099582582,-70.55308290723022,-71.15674481863462,-71.76040673003905,-72.36406864144345,-72.96773055284785,-73.57139246425228,-74.17505437565669,-74.77871628706109,-75.38237819846549,-75.98604010986992,-76.58970202127432,-77.19336393267872,-77.79702584408315,-78.40068775548755,-79.00434966689195,-79.60801157829638,-80.21167348970079,-80.81533540110519,-81.41899731250962,-82.02265922391402,-82.62632113531842,-83.22998304672282,-83.83364495812725,-84.43730686953165,-85.04096878093605,-85.64463069234048,-86.24829260374489,-86.85195451514929,-87.45561642655372,-88.05927833795812,-88.66294024936252,-89.26660216076692,-89.87026407217135,-90.47392598357575,-91.07758789498016,-91.68124980638459,-92.28491171778899,-92.88857362919339,-93.49223554059782,-94.09589745200222,-94.69955936340662,-95.30322127481102,-95.90688318621545,-96.51054509761985,-97.11420700902426,-97.71786892042869,-98.32153083183309,-98.92519274323749,-99.52885465464192,-100.13251656604632,-100.73617847745072,-101.33984038885515,-101.94350230025955,-102.54716421166395,-103.15082612306836,-103.75448803447279,-104.35814994587719,-104.96181185728159,-105.56547376868602,-106.16913568009042,-106.77279759149482,-107.37645950289925,-107.98012141430365,-108.58378332570805,-109.18744523711246,-109.79110714851689,-110.39476905992129,-110.99843097132569,-111.60209288273012,-112.20575479413452,-112.80941670553892,-113.41307861694335,-114.01674052834775,-114.62040243975216,-115.22406435115656,-115.82772626256099,-116.43138817396539,-117.03505008536979,-117.63871199677422,-118.24237390817862,-118.84603581958302,-119.44969773098745,-120.05335964239185,-120.65702155379626,-121.26068346520066,-121.86434537660509,-122.46800728800949,-123.07166919941389,-123.67533111081832,-124.27899302222272,-124.88265493362712,-125.48631684503155,-126.08997875643595,-126.69364066784036,-127.29730257924476)
net_rate=c(-0.20876281291256746, -0.1710512777690775,-0.11380634797327244,-0.10148612712111853,-0.09795309462887446,-0.09637015877395555,-0.09543395304404262,-0.0900973754548451,-0.08835014324508036,-0.08322897347122914,-0.07312980310678113,-0.06403256982122486,-0.05943719087924228,-0.0580544646379566,-0.0569741857967762,-0.03826341021785676,0.0027057832024135176,0.020790704606468098,0.02514739943584045,0.02647608069723446,0.027508080293963535,0.027674989960281688,0.028046814612862292,0.028566149882453398,0.028993870853236,0.028993870853236,0.029173762232588225,0.0292589729363078,0.0292589729363078,0.028734220661470373,0.02860089578672122,0.028826775630346694,0.028679437615729147,0.028713572128776996,0.02893438187320078,0.029085987708571126,0.028932868124679528,0.02879057792473827,0.02879057792473827,0.028823954509787905,0.029046347024156698,0.029326730166442327,0.02962867385910483,0.029659643417635034,0.029990107887579984,0.030059444270965505,0.0308448921449485,0.03155707789692785,0.032291647253735824,0.03277930702794022,0.03373282065253594,0.03488228969533338,0.03514045875222778,0.035896063244531144,0.036793786133349896,0.0371800039620939,0.03684524656488473,0.03632619200357708,0.0372416787087866,0.0372416787087866,0.037725759514880455,0.03765982996019408,0.03832624818207662,0.038322107306823776,0.038972417942304084,0.03981649782627277,0.039565261481230796,0.03922088557389079,0.03959564453540496,0.03741297492616959,0.03632348317928923,0.03305980676877823,0.03124896166584316,0.030569741800219957,0.0306939382570143,0.03092855595702573,0.031233418728655614,0.037329254235221536,0.036450252845553366,0.03936838312193284,0.039131949064766754,0.039306378142636614,0.039061968875992004,0.03901650242248561,0.03884411673988485,0.03878762127594007,0.03958992443085599,0.03939391828587074,0.039440813226395546,0.03983232542655441,0.041794751999219906,0.04424136627575882,0.04741002406410554,0.04679682113053749,0.05258442701186517,0.06449274614588985,0.06545451441037409,0.06658122964747348,0.07402998257549387,0.07798326790517371)
net_minHPD=c(-0.9913653422963175, -0.6445243183972644,-0.4023685853886919,-0.3765575078514269,-0.35555190674278064,-0.35555190674278064,-0.35555190674278064,-0.35555190674278064,-0.3536188741896137,-0.3459114798035611,-0.31072241162755454,-0.3022802917508805,-0.2962938046676751,-0.29797533089967576,-0.291660543635245,-0.2879638922501422,-0.17181719420025807,-0.10237892906819207,-0.09396507631219098,-0.08588052841004579,-0.09879170918637836,-0.09689365240255643,-0.09663150680941981,-0.09330550504885221,-0.09330550504885221,-0.09330550504885221,-0.0925140678819795,-0.0925140678819795,-0.0925140678819795,-0.09217693251212694,-0.0925140678819795,-0.09330550504885221,-0.09330550504885221,-0.09330550504885221,-0.09330550504885221,-0.09330550504885221,-0.09330550504885221,-0.0925140678819795,-0.0925140678819795,-0.0925140678819795,-0.0925140678819795,-0.0925140678819795,-0.0925140678819795,-0.08923590247726063,-0.09217693251212694,-0.09330550504885221,-0.09330550504885221,-0.0823044343198856,-0.08427949647663946,-0.08427949647663946,-0.08811319648922059,-0.08923590247726063,-0.09330550504885221,-0.09879170918637836,-0.0925140678819795,-0.09485947570482603,-0.09485947570482603,-0.09663150680941981,-0.10532926995622444,-0.10532926995622444,-0.10752218641273614,-0.10752218641273614,-0.10752218641273614,-0.10752218641273614,-0.11032810056054693,-0.09879170918637836,-0.09879170918637836,-0.10532926995622444,-0.10165336756242335,-0.11117869957032156,-0.11117869957032156,-0.11117869957032156,-0.11117869957032156,-0.11117869957032156,-0.11117869957032156,-0.11032810056054693,-0.11117869957032156,-0.11117869957032156,-0.11117869957032156,-0.11117869957032156,-0.11117869957032156,-0.11117869957032156,-0.11032810056054693,-0.11032810056054693,-0.11117869957032156,-0.11117869957032156,-0.11117869957032156,-0.135931997693853,-0.135931997693853,-0.135931997693853,-0.135931997693853,-0.135931997693853,-0.135931997693853,-0.18262709450251782,-0.15337443060079717,-0.15337443060079717,-0.18957390156094014,-0.24152338382063804,-0.26653267373368883,-0.24152338382063804)
net_maxHPD=c(0.16987759589040946, 0.11718497236720612,0.11201044134119846,0.10889510365725008,0.11718497236720612,0.11493279069043712,0.11718497236720612,0.10889510365725008,0.10889510365725008,0.10889510365725008,0.11784364276894706,0.10889510365725008,0.10889510365725008,0.10889510365725008,0.11801364128105857,0.11801364128105857,0.16987759589040946,0.15123211078042884,0.1495160524848985,0.15123211078042884,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.1372468096158042,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.13576172045283316,0.1372468096158042,0.13576172045283316,0.13576172045283316,0.1372468096158042,0.15033701985729975,0.15123211078042884,0.15123211078042884,0.15033701985729975,0.15306618240273026,0.15033701985729975,0.15033701985729975,0.1611784423649508,0.1611784423649508,0.1611784423649508,0.16033128009842462,0.1611784423649508,0.1611784423649508,0.1611784423649508,0.1611784423649508,0.1611784423649508,0.1611784423649508,0.1609496234585328,0.18102813121114653,0.18882618361258285,0.18641846463107695,0.19469529468919752,0.18641846463107695,0.18641846463107695,0.18641846463107695,0.18917983219917683,0.19263944594703405,0.19469529468919752,0.19917966495481348,0.2028431798522387,0.19917966495481348,0.19917966495481348,0.19469529468919752,0.19917966495481348,0.2028431798522387,0.20549589765461948,0.20549589765461948,0.20549589765461948,0.20549589765461948,0.2095112719426448,0.19263944594703405,0.19428840100138534,0.19917966495481348,0.21077178048663792,0.22714573418652667,0.26872411067763224,0.24767160101194774,0.3304902172834489,0.42529006260625735,0.44029606207223887,0.462372194332649,0.5538216648654367,0.7773009588173914)
remove_na = !is.na(net_rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(-1.0905018765259493, 0.8550310546991305), xlim = c(-127.59913353494697,-67.23294239450597), ylab = 'Net Rate', xlab = 'Time',lwd=2, main='Net diversification', col= '#504A4B' )
polygon(c(time, rev(time)), c(net_maxHPD[remove_na], rev(net_minHPD[remove_na])), col = alpha('#504A4B',0.3), border = NA)
lines(time,net_rate[remove_na], col = '#504A4B', lwd=2)
abline(h=0,lty=2)


time=c(-67.53477335020818, -68.13843526161259,-68.74209717301699,-69.34575908442139,-69.94942099582582,-70.55308290723022,-71.15674481863462,-71.76040673003905,-72.36406864144345,-72.96773055284785,-73.57139246425228,-74.17505437565669,-74.77871628706109,-75.38237819846549,-75.98604010986992,-76.58970202127432,-77.19336393267872,-77.79702584408315,-78.40068775548755,-79.00434966689195,-79.60801157829638,-80.21167348970079,-80.81533540110519,-81.41899731250962,-82.02265922391402,-82.62632113531842,-83.22998304672282,-83.83364495812725,-84.43730686953165,-85.04096878093605,-85.64463069234048,-86.24829260374489,-86.85195451514929,-87.45561642655372,-88.05927833795812,-88.66294024936252,-89.26660216076692,-89.87026407217135,-90.47392598357575,-91.07758789498016,-91.68124980638459,-92.28491171778899,-92.88857362919339,-93.49223554059782,-94.09589745200222,-94.69955936340662,-95.30322127481102,-95.90688318621545,-96.51054509761985,-97.11420700902426,-97.71786892042869,-98.32153083183309,-98.92519274323749,-99.52885465464192,-100.13251656604632,-100.73617847745072,-101.33984038885515,-101.94350230025955,-102.54716421166395,-103.15082612306836,-103.75448803447279,-104.35814994587719,-104.96181185728159,-105.56547376868602,-106.16913568009042,-106.77279759149482,-107.37645950289925,-107.98012141430365,-108.58378332570805,-109.18744523711246,-109.79110714851689,-110.39476905992129,-110.99843097132569,-111.60209288273012,-112.20575479413452,-112.80941670553892,-113.41307861694335,-114.01674052834775,-114.62040243975216,-115.22406435115656,-115.82772626256099,-116.43138817396539,-117.03505008536979,-117.63871199677422,-118.24237390817862,-118.84603581958302,-119.44969773098745,-120.05335964239185,-120.65702155379626,-121.26068346520066,-121.86434537660509,-122.46800728800949,-123.07166919941389,-123.67533111081832,-124.27899302222272,-124.88265493362712,-125.48631684503155,-126.08997875643595,-126.69364066784036,-127.29730257924476)
rate=c(2.5452478953715088, 2.8158753564086862,3.3547065357762027,3.5027511357773005,3.5394600064453607,3.55417147026312,3.5617598429230606,3.610645858230922,3.627222330674604,3.696611804604937,3.8399682342659145,3.977997963933982,4.049221124896754,4.071075806324903,4.087349658976398,4.425654427725202,5.405811867561034,5.991569796300745,6.146300260255176,6.1991228573824,6.241936345855661,6.248446224024618,6.260886253039765,6.28130992629852,6.272533862468179,6.272533862468179,6.278944935831068,6.280468603866106,6.280468603866106,6.284198989259574,6.28140361061819,6.285148941619668,6.2969637009559705,6.2969637009559705,6.305731385007406,6.311765342253797,6.3071848526455545,6.3010937969623555,6.3010937969623555,6.3010937969623555,6.31369116953191,6.3248878184445285,6.3248878184445285,6.325191865820022,6.323331781509092,6.319087843474064,6.3182377389157685,6.3182377389157685,6.306207970526746,6.306207970526746,6.306207970526746,6.306207970526746,6.302563936321052,6.295686586126864,6.290606687894579,6.284955766857336,6.271760387943031,6.2514096375489805,6.2321856017714445,6.2321856017714445,6.2321856017714445,6.227833858237425,6.227833858237425,6.227833858237425,6.21812675639251,6.207309138496416,6.068116159876189,6.0451533970574225,6.040192091397389,5.96152326318824,5.922626215272116,5.810315515441594,5.7501354097804525,5.720338841506703,5.719661087063992,5.72187838515932,5.721379698867662,5.923867392698453,6.01512371483314,6.109853288854755,6.120022424175257,6.123583682969421,6.113000569786547,6.116823409296888,6.116865834245392,6.116865834245392,6.115221919646797,6.106487613994356,6.103005194418499,6.107379761431786,6.108045467477688,6.108045467477688,6.098393592914568,6.046540929429506,5.989336185843308,5.95462527851316,5.797242809398052,5.6602815960808375,5.593198033897073,5.442542635224486)
minHPD=c(2.5452478953715088, 2.8158753564086862,3.3547065357762027,3.5027511357773005,3.5394600064453607,3.55417147026312,3.5617598429230606,3.610645858230922,3.627222330674604,3.696611804604937,3.8399682342659145,3.977997963933982,4.049221124896754,4.071075806324903,4.087349658976398,4.425654427725202,5.405811867561034,5.991569796300745,6.146300260255176,6.1991228573824,6.241936345855661,6.248446224024618,6.260886253039765,6.28130992629852,6.272533862468179,6.272533862468179,6.278944935831068,6.280468603866106,6.280468603866106,6.284198989259574,6.28140361061819,6.285148941619668,6.2969637009559705,6.2969637009559705,6.305731385007406,6.311765342253797,6.3071848526455545,6.3010937969623555,6.3010937969623555,6.3010937969623555,6.31369116953191,6.3248878184445285,6.3248878184445285,6.325191865820022,6.323331781509092,6.319087843474064,6.3182377389157685,6.3182377389157685,6.306207970526746,6.306207970526746,6.306207970526746,6.306207970526746,6.302563936321052,6.295686586126864,6.290606687894579,6.284955766857336,6.271760387943031,6.2514096375489805,6.2321856017714445,6.2321856017714445,6.2321856017714445,6.227833858237425,6.227833858237425,6.227833858237425,6.21812675639251,6.207309138496416,6.068116159876189,6.0451533970574225,6.040192091397389,5.96152326318824,5.922626215272116,5.810315515441594,5.7501354097804525,5.720338841506703,5.719661087063992,5.72187838515932,5.721379698867662,5.923867392698453,6.01512371483314,6.109853288854755,6.120022424175257,6.123583682969421,6.113000569786547,6.116823409296888,6.116865834245392,6.116865834245392,6.115221919646797,6.106487613994356,6.103005194418499,6.107379761431786,6.108045467477688,6.108045467477688,6.098393592914568,6.046540929429506,5.989336185843308,5.95462527851316,5.797242809398052,5.6602815960808375,5.593198033897073,5.442542635224486)
maxHPD=c(2.5452478953715088, 2.8158753564086862,3.3547065357762027,3.5027511357773005,3.5394600064453607,3.55417147026312,3.5617598429230606,3.610645858230922,3.627222330674604,3.696611804604937,3.8399682342659145,3.977997963933982,4.049221124896754,4.071075806324903,4.087349658976398,4.425654427725202,5.405811867561034,5.991569796300745,6.146300260255176,6.1991228573824,6.241936345855661,6.248446224024618,6.260886253039765,6.28130992629852,6.272533862468179,6.272533862468179,6.278944935831068,6.280468603866106,6.280468603866106,6.284198989259574,6.28140361061819,6.285148941619668,6.2969637009559705,6.2969637009559705,6.305731385007406,6.311765342253797,6.3071848526455545,6.3010937969623555,6.3010937969623555,6.3010937969623555,6.31369116953191,6.3248878184445285,6.3248878184445285,6.325191865820022,6.323331781509092,6.319087843474064,6.3182377389157685,6.3182377389157685,6.306207970526746,6.306207970526746,6.306207970526746,6.306207970526746,6.302563936321052,6.295686586126864,6.290606687894579,6.284955766857336,6.271760387943031,6.2514096375489805,6.2321856017714445,6.2321856017714445,6.2321856017714445,6.227833858237425,6.227833858237425,6.227833858237425,6.21812675639251,6.207309138496416,6.068116159876189,6.0451533970574225,6.040192091397389,5.96152326318824,5.922626215272116,5.810315515441594,5.7501354097804525,5.720338841506703,5.719661087063992,5.72187838515932,5.721379698867662,5.923867392698453,6.01512371483314,6.109853288854755,6.120022424175257,6.123583682969421,6.113000569786547,6.116823409296888,6.116865834245392,6.116865834245392,6.115221919646797,6.106487613994356,6.103005194418499,6.107379761431786,6.108045467477688,6.108045467477688,6.098393592914568,6.046540929429506,5.989336185843308,5.95462527851316,5.797242809398052,5.6602815960808375,5.593198033897073,5.442542635224486)
remove_na = !is.na(rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(0, 6.957711052402025), xlim = c(-127.59913353494697,-67.23294239450597), ylab = 'Mean longevity', xlab = 'Time',main='Longevity' )
polygon(c(time, rev(time)), c(maxHPD[remove_na], rev(minHPD[remove_na])), col = alpha('#756bb1',0.3), border = NA)
lines(time,rate[remove_na], col = '#756bb1', lwd=4)

n <- dev.off()