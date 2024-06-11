# 1 files combined:
# 	./PyRate_Inputs_2_BDMCMC_Grj_marginal_rates.log

# 95% HPDs calculated using code from Biopy (https://www.cs.auckland.ac.nz/~yhel002/biopy/)

pdf(file='./PyRate_Inputs_2_BDMCMC_Grj_marginal_rates_RTT.pdf',width=10.8, height=8.4)
par(mfrow=c(2,2))
library(scales)
plot_RTT <- function (age,hpd_M,hpd_m,mean_m,color){
    N=100
    beta=(1:(N-1))/N
    alpha_shape=0.25
    cat=1-(beta^(1./alpha_shape))
    for (i in 1:(N-1)){
        trans= 1/N + 2/N
        polygon(c(age, rev(age)), c(hpd_M-((hpd_M-mean_m)*cat[i]), rev(hpd_m+((mean_m-hpd_m)*cat[i]))), col = alpha(color,trans), border = NA)
    }
    lines(rev(age), rev(mean_m), col = color, lwd=3)
}
    
L_hpd_m95=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.079467874954131,0.079467874954131,0.077486979693998,0.07736190390751,0.06548839644122,0.071862126111091,0.071862126111091,0.071862126111091,0.071862126111091,0.071862126111091,0.071862126111091,0.071862126111091,0.071862126111091,0.071862126111091,0.071862126111091,0.071862126111091,0.071862126111091,0.06548839644122,0.521409670140717,0.053402947444052,0.066152035489727,0.068837643251593,0.068972946316253,0.068972946316253,0.068972946316253,0.068972946316253,0.068972946316253,0.068972946316253,0.06555294754684,0.06555294754684,0.06555294754684,0.06555294754684,0.066152035489727,0.066152035489727,0.066152035489727,0.067839044988618,0.066152035489727,0.066152035489727,0.066152035489727,0.066152035489727,0.066152035489727,0.066152035489727,0.066152035489727,0.066152035489727,0.066152035489727,0.066224862062059,0.066224862062059,0.066152035489727,0.066152035489727,0.066152035489727,0.066152035489727,0.066152035489727,0.06555294754684,0.057841090655854,0.055084916725938,0.057841090655854,0.068972946316253,0.073137447653403,0.073137447653403,0.073137447653403,0.077266917405368,0.077266917405368,0.073137447653403,0.075221656885362,0.077323567506097,0.075753527011583,0.075753527011583,0.073137447653403,0.073137447653403,0.073137447653403,0.076337026006038,0.076337026006038,0.077323567506097,0.077323567506097,0.077380266360024,0.073137447653403,0.073137447653403,0.073137447653403,0.073137447653403,0.073137447653403,0.073137447653403,0.073137447653403,0.073137447653403,0.073137447653403,0.073137447653403,0.073137447653403)
L_hpd_M95=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.21657644146823,0.21657644146823,0.214002628949855,0.208599837233736,0.147101089733487,0.120831253555493,0.119413182196658,0.119413182196658,0.119413182196658,0.119413182196658,0.119413182196658,0.119817782061356,0.119817782061356,0.119817782061356,0.119817782061356,0.119817782061356,0.119817782061356,0.65825457091841,1.485934615252163,1.204000220856097,0.144996465820708,0.145671254711422,0.145671254711422,0.145671254711422,0.145671254711422,0.145671254711422,0.145671254711422,0.145671254711422,0.142338045593646,0.142338045593646,0.142338045593646,0.142338045593646,0.143554028840364,0.143554028840364,0.143554028840364,0.145671254711422,0.144568152117688,0.144568152117688,0.144568152117688,0.144568152117688,0.144568152117688,0.144996465820708,0.144568152117688,0.144568152117688,0.144568152117688,0.14541087387409,0.14541087387409,0.145671254711422,0.145671254711422,0.147479881793191,0.148370336052747,0.148928027491548,0.150386617866367,0.149292543931053,0.150386617866367,0.159803580938709,0.174711938834277,0.186930701323874,0.190117407779038,0.192839212411851,0.200726422727576,0.202733311463274,0.206349697935972,0.209720091424112,0.212463857696318,0.21258837890584,0.21258837890584,0.21258837890584,0.21258837890584,0.213203832985523,0.2177726481685,0.222265283351015,0.225487410366207,0.225879873567588,0.23799331450822,0.25315556138519,0.268911885926953,0.286663089675768,0.291995540852498,0.300808867476464,0.323496847213657,0.33709891370386,0.341955791212132,0.44621606017545,0.524458897532627,0.642096446229698)
M_hpd_m95=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.175044402779152,0.176079889055142,0.176617217355911,0.175044402779152,0.176079889055142,0.176079889055142,0.061768248805669,0.055311041855206,0.060601260247764,0.060601260247764,0.060742226500182,0.060742226500182,0.060742226500182,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060500238583062,0.060742226500182,0.060601260247764,0.060601260247764,0.060601260247764,0.060601260247764,0.060601260247764,0.060601260247764,0.060601260247764,0.060500238583062,0.060500238583062,0.060500238583062,0.059628357695977,0.060742226500182,0.060742226500182,0.060500238583062,0.059628357695977,0.060500238583062,0.060742226500182,0.060500238583062,0.060500238583062,0.060500238583062,0.058996451752429,0.057337148335961,0.05714696028546,0.05714696028546,0.05714696028546,0.05714696028546,0.05714696028546,0.05714696028546,0.05714696028546,0.05714696028546,0.05714696028546,0.05714696028546,0.05714696028546,0.05714696028546,0.05714696028546,0.05714696028546,0.05714696028546,0.059628357695977,0.058996451752429,0.05714696028546,0.05714696028546,0.05714696028546,0.05714696028546,0.059260176939047,0.059260176939047,0.058996451752429,0.058996451752429,0.057337148335961,0.055311041855206,0.055311041855206,0.055311041855206,0.05714696028546)
M_hpd_M95=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.298852498275703,0.298852498275703,0.298852498275703,0.298852498275703,0.301991812421138,0.308512883002049,0.268693541280626,0.096665206301627,0.091160833334138,0.091160833334138,0.091160833334138,0.091160833334138,0.091160833334138,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.090788613980757,0.091160833334138,0.091160833334138,0.091160833334138,0.091160833334138,0.091160833334138,0.091160833334138,0.091160833334138,0.091160833334138,0.091160833334138,0.091160833334138,0.091840131366093,0.091160833334138,0.092287762032109,0.092664076910045,0.092920530960312,0.092664076910045,0.095012600150515,0.096233759346944,0.096233759346944,0.096665206301627,0.096665206301627,0.096665206301627,0.096377329292677,0.096665206301627,0.096665206301627,0.096665206301627,0.096665206301627,0.096665206301627,0.096665206301627,0.096665206301627,0.096665206301627,0.096665206301627,0.096665206301627,0.096665206301627,0.096665206301627,0.096665206301627,0.096665206301627,0.097166939398045,0.100175753155823,0.0998177942582,0.100175753155823,0.100175753155823,0.100175753155823,0.100175753155823,0.104583327727564,0.104583327727564,0.105015916511353,0.105015916511353,0.104583327727564,0.104583327727564,0.108346181986066,0.109668708909584,0.124251570918582)
R_hpd_m95=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,-0.189067711710479,-0.190784569427452,-0.189387338392353,-0.189387338392353,-0.2165210216,-0.217204399214319,-0.178436844557174,-0.010912578863457,-0.008266644240238,-0.008266644240238,-0.008086550215517,-0.008442399171033,-0.008442399171033,-0.008266644240238,-0.008266644240238,-0.008266644240238,-0.008266644240238,-0.015775872011747,0.448757679480777,-0.02016935634339,-0.0141168435684,-0.0141168435684,-0.012840583938158,-0.012840583938158,-0.0141168435684,-0.0141168435684,-0.0141168435684,-0.0141168435684,-0.012840583938158,-0.012840583938158,-0.012840583938158,-0.012840583938158,-0.0141168435684,-0.0141168435684,-0.0141168435684,-0.014484718471656,-0.0141168435684,-0.0141168435684,-0.0141168435684,-0.0141168435684,-0.0141168435684,-0.0141168435684,-0.0141168435684,-0.014484718471656,-0.0141168435684,-0.0141168435684,-0.0141168435684,-0.013801880671896,-0.013801880671896,-0.014946960714705,-0.013801880671896,-0.014484718471656,-0.014946960714705,-0.020355918079609,-0.022733451400227,-0.025683131883554,-0.014484718471656,-0.016948756075905,-0.014946960714705,-0.014946960714705,-0.0141168435684,-0.012317972503957,-0.010217549441163,-0.012317972503957,-0.012317972503957,-0.013248270366863,-0.013248270366863,-0.014946960714705,-0.014946960714705,-0.0141168435684,-0.018371036333671,-0.0141168435684,-0.013248270366863,-0.018371036333671,-0.0141168435684,-0.018371036333671,-0.025226360593583,-0.018371036333671,-0.025226360593583,-0.018371036333671,-0.020355918079609,-0.05804012308672,-0.05804012308672,-0.046834440641332,-0.046834440641332,-0.05804012308672)
R_hpd_M95=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,-0.000351744054703,-0.002314833765185,-0.002735842985813,-0.004884696513751,-0.062406466045426,-0.07051592561335,0.044107700891375,0.059741041169903,0.046263984367121,0.046263984367121,0.046263984367121,0.046263984367121,0.046263984367121,0.046263984367121,0.046263984367121,0.046263984367121,0.046263984367121,0.57908056255544,1.411932190200443,1.13543600188487,0.069826049321548,0.067112138511274,0.068069582706322,0.068069582706322,0.067112138511274,0.067112138511274,0.067112138511274,0.067112138511274,0.068069582706322,0.068069582706322,0.068069582706322,0.068069582706322,0.067112138511274,0.067112138511274,0.067112138511274,0.067112138511274,0.068069582706322,0.068069582706322,0.068069582706322,0.068069582706322,0.068069582706322,0.069826049321548,0.069826049321548,0.069826049321548,0.069826049321548,0.070587254776356,0.070587254776356,0.071314148478837,0.071314148478837,0.071314148478837,0.075212051627633,0.076711310154261,0.078473466416261,0.077388242977861,0.078473466416261,0.084798103968821,0.105193195593718,0.111697893441568,0.117743037462514,0.119922258955862,0.126166042963378,0.134120741494329,0.141840107207479,0.141840107207479,0.141840107207479,0.141840107207479,0.141840107207479,0.141840107207479,0.141840107207479,0.143186687910868,0.143186687910868,0.155226839063121,0.158745898367047,0.158745898367047,0.176824721924834,0.189423253909343,0.211139065494573,0.233966770794926,0.233966770794926,0.259967922071613,0.282587430329435,0.263725383178227,0.305177328982865,0.414678425694602,0.496387299730709,0.820777060126084)
L_mean=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.127555917365194,0.127555917365194,0.126119750400026,0.121507568265664,0.102711612462568,0.09787532557106,0.097375877765412,0.097375877765412,0.097375877765412,0.097368015625849,0.097368015625849,0.097439006977299,0.097439006977299,0.097439006977299,0.097439006977299,0.097439006977299,0.097439006977299,0.1613625417409,0.950344219394832,0.518044463974832,0.107182543720813,0.105058132795637,0.104968901862106,0.104968901862106,0.104958987467889,0.104958987467889,0.104958987467889,0.104986233313682,0.10490101472652,0.10490101472652,0.104873770152624,0.104873770152624,0.104766696913483,0.104708708603422,0.104658560918091,0.104588835847582,0.104333988047603,0.104333988047603,0.104333988047603,0.104333988047603,0.104333988047603,0.104395480171706,0.104465761342724,0.104479947531048,0.104655512976857,0.104805011536568,0.104845164820217,0.104937853409302,0.105043264089671,0.10522534165298,0.105511935162356,0.106291368281458,0.106966779641828,0.108219927403366,0.108968785996673,0.11060518449977,0.113631721830497,0.115985449307665,0.118471385094335,0.119120345424559,0.120394169760427,0.121944259200945,0.124217107107092,0.124824579901288,0.125102977673745,0.125901252770243,0.126011015967226,0.126372679532302,0.126372679532302,0.126819870882978,0.127077907397249,0.12855990544719,0.129106362439313,0.130212185518334,0.133530537156306,0.137401745459703,0.140660690575917,0.142936618436242,0.144483408223729,0.146403593221084,0.150024318433995,0.15291518387273,0.155921847484937,0.169499503163288,0.185599830532951,0.211871256297633)
M_mean=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.234251281755463,0.234335081329538,0.234100233165856,0.233917054908881,0.233175591900125,0.231078739373196,0.158803920557301,0.080713591372373,0.076026919555686,0.076026919555686,0.075998166917376,0.075998166917376,0.075988968742305,0.075847255703339,0.075847255703339,0.0758444162737,0.0758444162737,0.0758444162737,0.0758444162737,0.0758444162737,0.07585370849822,0.075871700795516,0.075871700795516,0.075871700795516,0.075871700795516,0.075871700795516,0.075871700795516,0.075871700795516,0.075871700795516,0.075871700795516,0.075871700795516,0.075871700795516,0.075871700795516,0.075913237352152,0.075944891227125,0.075944891227125,0.075944891227125,0.075931714616384,0.075931714616384,0.075931714616384,0.075948695127008,0.075981211587828,0.075997446136272,0.076148435906842,0.076234699590441,0.076263650244496,0.076429308927223,0.076581861799921,0.076702158025733,0.077105682875617,0.077429178242685,0.07751719925748,0.077737079106281,0.077737079106281,0.078000180539808,0.078138183541428,0.078340684699031,0.078340684699031,0.078245107417515,0.078136546959409,0.078136546959409,0.078136546959409,0.078115243267958,0.078115243267958,0.078115243267958,0.078115243267958,0.078115243267958,0.078115243267958,0.078115243267958,0.078057326270149,0.078371510040203,0.078476900524062,0.078522588682965,0.079176311839969,0.079176311839969,0.079176311839969,0.079214673807755,0.07966146702468,0.07966146702468,0.07991884637018,0.079909632410577,0.079880817779533,0.081005458373877,0.081859131858473,0.082105617684604,0.089258180138297)
R_mean=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,-0.106695364390269,-0.106779163964344,-0.10798048276583,-0.112409486643217,-0.130463979437557,-0.133203413802135,-0.061428042791889,0.016662286393039,0.021348958209726,0.021341096070164,0.021369848708474,0.021440840059923,0.021450038234994,0.02159175127396,0.02159175127396,0.021594590703599,0.021594590703599,0.085518125467201,0.874499803121132,0.442200047701132,0.031328835222593,0.029186432000121,0.02909720106659,0.02909720106659,0.029087286672373,0.029087286672373,0.029087286672373,0.029114532518166,0.029029313931004,0.029029313931004,0.029002069357109,0.029002069357109,0.028894996117967,0.02879547125127,0.028713669690966,0.028643944620457,0.028389096820478,0.028402273431219,0.028402273431219,0.028402273431219,0.028385292920595,0.028414268583878,0.028468315206452,0.028331511624206,0.028420813386416,0.028541361292072,0.028415855892994,0.028355991609381,0.028341106063937,0.028119658777363,0.028082756919671,0.028774169023978,0.029229700535547,0.030482848297085,0.030968605456865,0.032467000958342,0.035291037131466,0.037644764608634,0.04022627767682,0.040983798465151,0.042257622801019,0.043807712241537,0.046101863839134,0.04670933663333,0.046987734405787,0.047786009502285,0.047895772699268,0.048257436264344,0.048257436264344,0.04876254461283,0.048706397357046,0.050083004923128,0.050583773756348,0.051035873678366,0.054354225316338,0.058225433619734,0.061446016768162,0.063275151411562,0.064821941199049,0.066484746850905,0.070114686023418,0.073034366093197,0.07491638911106,0.087640371304815,0.103494212848348,0.122613076159336)
trans=0.5
age=(0:(153-1))* -1
plot(age,age,type = 'n', ylim = c(0, 1.6345280767773795), xlim = c(-160.65,-59.35), ylab = 'Speciation rate', xlab = 'Ma',main='PyRate' )
plot_RTT(age,L_hpd_M95,L_hpd_m95,L_mean,"#4c4cec")
lines(rev(age), rev(L_mean), col = "#4c4cec", lwd=3)
plot(age,age,type = 'n', ylim = c(0, 0.33936417130225394), xlim = c(-160.65,-59.35), ylab = 'Extinction rate', xlab = 'Ma' )
plot_RTT(age,M_hpd_M95,M_hpd_m95,M_mean,"#e34a33")
lines(rev(age), rev(M_mean), col = "#e34a33", lwd=3)
plot(age,age,type = 'n', ylim = c(-0.2389248391357509, 1.5531254092204874), xlim = c(-160.65,-59.35), ylab = 'Net diversification rate', xlab = 'Ma' )
abline(h=0,lty=2,col="darkred")
plot_RTT(age,R_hpd_M95,R_hpd_m95,R_mean,"#504A4B")
lines(rev(age), rev(R_mean), col = "#504A4B", lwd=3)
n <- dev.off()