

pdf(file='./RTT_plots.pdf',width=10, height=15)
par(mfrow=c(3,2))
library(scales)

time=c(-66.5944214975276, -67.7733519914025,-68.95228248527738,-70.13121297915228,-71.31014347302718,-72.48907396690208,-73.66800446077696,-74.84693495465186,-76.02586544852676,-77.20479594240166,-78.38372643627653,-79.56265693015143,-80.74158742402633,-81.92051791790124,-83.09944841177611,-84.27837890565101,-85.45730939952591,-86.63623989340081,-87.81517038727569,-88.99410088115059,-90.17303137502549,-91.35196186890039,-92.53089236277526,-93.70982285665016,-94.88875335052506,-96.06768384439997,-97.24661433827484,-98.42554483214974,-99.60447532602464,-100.78340581989954,-101.96233631377441,-103.14126680764932,-104.32019730152422,-105.49912779539912,-106.67805828927399,-107.85698878314889,-109.0359192770238,-110.2148497708987,-111.39378026477357,-112.57271075864847,-113.75164125252337,-114.93057174639827,-116.10950224027314,-117.28843273414805,-118.46736322802295,-119.64629372189785,-120.82522421577272,-122.00415470964762,-123.18308520352252,-124.3620156973974,-125.5409461912723,-126.7198766851472,-127.8988071790221,-129.077737672897,-130.25666816677187,-131.43559866064678,-132.61452915452168,-133.79345964839655,-134.97239014227148,-136.15132063614635,-137.33025113002125,-138.50918162389615,-139.68811211777103,-140.86704261164593,-142.04597310552083,-143.2249035993957,-144.4038340932706,-145.5827645871455,-146.76169508102038,-147.9406255748953,-149.11955606877018,-150.29848656264508,-151.47741705651998,-152.65634755039486,-153.83527804426976,-155.01420853814466,-156.19313903201953,-157.37206952589446,-158.55100001976933,-159.72993051364423,-160.90886100751914,-162.087791501394,-163.2667219952689,-164.4456524891438,-165.62458298301868,-166.8035134768936,-167.9824439707685,-169.1613744646434,-170.3403049585183,-171.51923545239316,-172.69816594626806,-173.87709644014296,-175.05602693401784,-176.23495742789277,-177.41388792176764,-178.5928184156425,-179.77174890951744,-180.95067940339231,-182.12960989726722,-183.30854039114212)
rate=c(0.08263701119608126, 0.08256290428404944,0.08263701119608126,0.08280201264918217,0.08287280373216321,0.08295410554392038,0.08300208883334806,0.08302328110012742,0.08300208883334806,0.08308017359698461,0.08308017359698461,0.08308017359698461,0.08311043310937732,0.08316144236715683,0.08325931580889359,0.08325931580889359,0.08325931580889359,0.08325931580889359,0.08329203662824963,0.08325931580889359,0.08321809588006687,0.08325931580889359,0.08316144236715683,0.08316144236715683,0.08316144236715683,0.08308017359698461,0.08300208883334806,0.0827299669778948,0.08242627288254198,0.08222657095208351,0.08210376868852944,0.08190162232438872,0.08144824170155707,0.08064586101656818,0.08034792609954997,0.0802158317523943,0.08002139434748967,0.07986874566040258,0.0798546623713454,0.07984623662807087,0.07979166213948308,0.07968325707948448,0.07962853787864241,0.07957567005133645,0.07945770696120684,0.07945770696120684,0.07937593825157895,0.07937593825157895,0.07932995283349731,0.07926225036237494,0.07915404310818522,0.07899715410392014,0.0788471947658268,0.07872527686070381,0.07869909825687568,0.07858065694611212,0.07854122313743231,0.07854122313743231,0.07854122313743231,0.07847327966632131,0.07828334222085817,0.0782273622613869,0.07812885598296938,0.07800422124063197,0.07794981828040001,0.07788674109424654,0.07786520071397098,0.07771553443354762,0.07771553443354762,0.07779888331229483,0.07779888331229483,0.07771553443354762,0.0776782885167984,0.0776782885167984,0.07765732781033585,0.07765732781033585,0.07762790803257738,0.07762790803257738,0.07757333793171353,0.07757333793171353,0.07757333793171353,0.07757333793171353,0.07757333793171353,0.07757333793171353,0.07753079988449815,0.07753079988449815,0.07753079988449815,0.07757333793171353,0.07753079988449815,0.07757333793171353,0.07762790803257738,0.07762790803257738,0.07762790803257738,0.07762790803257738,0.07765732781033585,0.07765732781033585,0.07765732781033585,0.07779888331229483,0.07795148916763359,0.07816851944673545)
minHPD=c(0.051305832993121574, 0.051305832993121574,0.05237296974664903,0.05343839998817206,0.051305832993121574,0.051305832993121574,0.051305832993121574,0.051305832993121574,0.05237296974664903,0.05237296974664903,0.05237296974664903,0.05237296974664903,0.05237296974664903,0.051305832993121574,0.05343839998817206,0.05343839998817206,0.05343839998817206,0.05343839998817206,0.05343839998817206,0.05343839998817206,0.05343839998817206,0.05343839998817206,0.05343839998817206,0.05343839998817206,0.05343839998817206,0.052724976644136924,0.052724976644136924,0.051305832993121574,0.04790186692531118,0.04790186692531118,0.04790186692531118,0.04790186692531118,0.03644657422155693,0.041763936879336716,0.03644657422155693,0.03644657422155693,0.03644657422155693,0.03701035664704241,0.03644657422155693,0.03701035664704241,0.03644657422155693,0.0294956956607925,0.0294956956607925,0.02861241809591583,0.02861241809591583,0.027950293029110132,0.027950293029110132,0.02763088011750337,0.02672942749744842,0.02672942749744842,0.02672942749744842,0.02672942749744842,0.02672942749744842,0.029074264790723777,0.02672942749744842,0.02672942749744842,0.02672942749744842,0.02672942749744842,0.029074264790723777,0.02861241809591583,0.02043204196542791,0.02043204196542791,0.02043204196542791,0.019982036616395582,0.019590167807841005,0.01878096026397668,0.01878096026397668,0.01878096026397668,0.018521428321971647,0.018521428321971647,0.018521428321971647,0.01878096026397668,0.01878096026397668,0.01878096026397668,0.01878096026397668,0.018521428321971647,0.018011996546993467,0.018011996546993467,0.018011996546993467,0.018011996546993467,0.018011996546993467,0.018011996546993467,0.018011996546993467,0.018011996546993467,0.018011996546993467,0.018011996546993467,0.018011996546993467,0.0150011721860406,0.0150011721860406,0.0150011721860406,0.0150011721860406,0.0150011721860406,0.0150011721860406,0.016383465681800793,0.0150011721860406,0.015157258476594966,0.0150011721860406,0.01620830010187166,0.014349761196661415,0.01878096026397668)
maxHPD=c(0.12914211623257252, 0.12914211623257252,0.12866878083167527,0.12914211623257252,0.12609420803560475,0.12555405698528985,0.12555405698528985,0.12480204166429552,0.12555405698528985,0.12555405698528985,0.12555405698528985,0.12555405698528985,0.12480204166429552,0.12555405698528985,0.12866878083167527,0.12914211623257252,0.12914211623257252,0.12866878083167527,0.12866878083167527,0.12866878083167527,0.12866878083167527,0.12914211623257252,0.12866878083167527,0.12866878083167527,0.12866878083167527,0.12866878083167527,0.12947322110374385,0.12947322110374385,0.1284265821247625,0.1284265821247625,0.12866878083167527,0.12914211623257252,0.12003435154728133,0.12457107034817441,0.12003435154728133,0.12042921485828108,0.12042921485828108,0.1215929884320212,0.12042921485828108,0.1215929884320212,0.12155500814983122,0.11519623985904273,0.11519623985904273,0.1149586251868309,0.11519623985904273,0.11519623985904273,0.11519623985904273,0.11519623985904273,0.11519623985904273,0.1149586251868309,0.11519623985904273,0.1149586251868309,0.11630820303955153,0.1194500049227765,0.11666109491770801,0.11666109491770801,0.11666109491770801,0.11666109491770801,0.1194500049227765,0.1194500049227765,0.1129048397438373,0.1129048397438373,0.1129048397438373,0.1129048397438373,0.1129048397438373,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.11231698246827485,0.1097904995349277,0.1097904995349277,0.11038324227963649,0.11038324227963649,0.11038324227963649,0.11038324227963649,0.11231698246827485,0.11189866495240577,0.11231698246827485,0.1129048397438373,0.11519623985904273,0.11519623985904273,0.1215929884320212)
remove_na = !is.na(rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(0, 0.14242054321411823), xlim = c(-183.89800563807955,-66.00495625059015), ylab = 'Speciation rate', xlab = 'Time',main='Speciation (PyRate_Inputs_2_RJMCMC_Grj_mcmc)' )
polygon(c(time, rev(time)), c(maxHPD[remove_na], rev(minHPD[remove_na])), col = alpha('#4c4cec',0.3), border = NA)
lines(time,rate[remove_na], col = '#4c4cec', lwd=2)
mids=c(-66.60037569194111, -67.79121457464302,-68.98205345734493,-70.17289234004686,-71.36373122274877,-72.55457010545068,-73.74540898815259,-74.9362478708545,-76.12708675355641,-77.31792563625832,-78.50876451896025,-79.69960340166216,-80.89044228436407,-82.08128116706598,-83.27212004976789,-84.46295893246982,-85.65379781517173,-86.84463669787364,-88.03547558057555,-89.22631446327746,-90.41715334597937,-91.60799222868128,-92.7988311113832,-93.98966999408512,-95.18050887678703,-96.37134775948894,-97.56218664219085,-98.75302552489278,-99.94386440759469,-101.1347032902966,-102.32554217299851,-103.51638105570042,-104.70721993840233,-105.89805882110424,-107.08889770380615,-108.27973658650806,-109.47057546920999,-110.6614143519119,-111.85225323461381,-113.04309211731572,-114.23393100001765,-115.42476988271956,-116.61560876542147,-117.80644764812338,-118.99728653082529,-120.1881254135272,-121.37896429622911,-122.56980317893102,-123.76064206163294,-124.95148094433486,-126.14231982703677,-127.33315870973868,-128.5239975924406,-129.71483647514253,-130.90567535784442,-132.09651424054636,-133.28735312324824,-134.47819200595018,-135.66903088865206,-136.859869771354,-138.05070865405594,-139.24154753675782,-140.43238641945976,-141.62322530216164,-142.81406418486358,-144.00490306756546,-145.1957419502674,-146.3865808329693,-147.57741971567123,-148.7682585983731,-149.95909748107505,-151.14993636377693,-152.34077524647887,-153.5316141291808,-154.7224530118827,-155.91329189458463,-157.1041307772865,-158.29496965998845,-159.48580854269034,-160.67664742539228,-161.86748630809416,-163.0583251907961,-164.24916407349798,-165.44000295619992,-166.6308418389018,-167.82168072160374,-169.01251960430568,-170.20335848700756,-171.3941973697095,-172.58503625241138,-173.77587513511332,-174.9667140178152,-176.15755290051715,-177.34839178321903,-178.53923066592097,-179.73006954862285,-180.9209084313248,-182.11174731402667,-183.3025861967286)
counts=c(0.002, 0.004,0.005,0.001,0.002,0.001,0.001,0.004,0.001,0.0,0.0,0.001,0.003,0.003,0.002,0.0,0.001,0.002,0.0,0.001,0.002,0.001,0.001,0.001,0.002,0.004,0.007,0.011,0.007,0.006,0.009,0.012,0.009,0.01,0.004,0.005,0.004,0.001,0.004,0.002,0.002,0.002,0.003,0.002,0.002,0.002,0.004,0.003,0.004,0.002,0.002,0.007,0.004,0.003,0.0,0.001,0.001,0.004,0.006,0.003,0.003,0.002,0.003,0.002,0.001,0.002,0.002,0.002,0.001,0.0,0.003,0.001,0.0,0.001,0.002,0.0,0.001,0.0,0.002,0.0,0.0,0.0,0.001,0.002,0.001,0.003,0.003,0.001,0.001,0.0,0.0,0.003,0.004,0.002,0.002,0.003,0.007,0.004,0.018)
plot(mids,counts,type = 'h', xlim = c(-183.89800563807955,-66.00495625059015), ylim=c(0,0.2), ylab = 'Frequency of rate shift', xlab = 'Time',lwd=5,col='#4c4cec')
bf2 = 0.03475154332312157
bf6 = 0.21012675272573653
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)

time=c(-66.5944214975276, -67.7733519914025,-68.95228248527738,-70.13121297915228,-71.31014347302718,-72.48907396690208,-73.66800446077696,-74.84693495465186,-76.02586544852676,-77.20479594240166,-78.38372643627653,-79.56265693015143,-80.74158742402633,-81.92051791790124,-83.09944841177611,-84.27837890565101,-85.45730939952591,-86.63623989340081,-87.81517038727569,-88.99410088115059,-90.17303137502549,-91.35196186890039,-92.53089236277526,-93.70982285665016,-94.88875335052506,-96.06768384439997,-97.24661433827484,-98.42554483214974,-99.60447532602464,-100.78340581989954,-101.96233631377441,-103.14126680764932,-104.32019730152422,-105.49912779539912,-106.67805828927399,-107.85698878314889,-109.0359192770238,-110.2148497708987,-111.39378026477357,-112.57271075864847,-113.75164125252337,-114.93057174639827,-116.10950224027314,-117.28843273414805,-118.46736322802295,-119.64629372189785,-120.82522421577272,-122.00415470964762,-123.18308520352252,-124.3620156973974,-125.5409461912723,-126.7198766851472,-127.8988071790221,-129.077737672897,-130.25666816677187,-131.43559866064678,-132.61452915452168,-133.79345964839655,-134.97239014227148,-136.15132063614635,-137.33025113002125,-138.50918162389615,-139.68811211777103,-140.86704261164593,-142.04597310552083,-143.2249035993957,-144.4038340932706,-145.5827645871455,-146.76169508102038,-147.9406255748953,-149.11955606877018,-150.29848656264508,-151.47741705651998,-152.65634755039486,-153.83527804426976,-155.01420853814466,-156.19313903201953,-157.37206952589446,-158.55100001976933,-159.72993051364423,-160.90886100751914,-162.087791501394,-163.2667219952689,-164.4456524891438,-165.62458298301868,-166.8035134768936,-167.9824439707685,-169.1613744646434,-170.3403049585183,-171.51923545239316,-172.69816594626806,-173.87709644014296,-175.05602693401784,-176.23495742789277,-177.41388792176764,-178.5928184156425,-179.77174890951744,-180.95067940339231,-182.12960989726722,-183.30854039114212)
rate=c(1.4598145945136323, 0.08871721996671575,0.07766972679198579,0.07712081054287154,0.07706632759927995,0.07706632759927995,0.07701116279886193,0.07701116279886193,0.07701116279886193,0.07701116279886193,0.07691045192754728,0.07681811895134477,0.07681811895134477,0.07680000112678512,0.07680000112678512,0.07680000112678512,0.07680000112678512,0.07678749497745682,0.07678749497745682,0.07678749497745682,0.07678749497745682,0.07680000112678512,0.07675660374295848,0.07668245019565115,0.07604638132744604,0.07554709301318052,0.07547584563332871,0.07442508930221639,0.07376435489673949,0.07296858451870333,0.07192795095851817,0.07051006074003356,0.06867616056708539,0.06686914476005884,0.06327008334937556,0.05996182476175196,0.057751768848991886,0.05543178736351873,0.05252259757698635,0.05110191370878611,0.04967470149559218,0.04868813628301274,0.047170592206102466,0.0447533279832988,0.041388703846508446,0.03876295128314672,0.036477294453427726,0.034524591517148165,0.033703066636651756,0.03320429581189636,0.03246761719421541,0.03235306704486739,0.03235306704486739,0.03217374768639525,0.03199881122546973,0.03168582421881942,0.030614797650758578,0.030614797650758578,0.03049065731984699,0.03019125759255897,0.02959290545555559,0.029077356794500964,0.029077356794500964,0.028903401541205305,0.028732128184624225,0.028732128184624225,0.028444457148865048,0.028444457148865048,0.028444457148865048,0.028317889600560205,0.028317889600560205,0.028317889600560205,0.028317889600560205,0.028317889600560205,0.028317889600560205,0.028317889600560205,0.028317889600560205,0.028070542927608973,0.028070542927608973,0.028070542927608973,0.028070542927608973,0.027905314439537074,0.027905314439537074,0.027905314439537074,0.027905314439537074,0.027905314439537074,0.027905314439537074,0.027905314439537074,0.027905314439537074,0.027905314439537074,0.027905314439537074,0.027905314439537074,0.027905314439537074,0.028070542927608973,0.028070542927608973,0.028070542927608973,0.028070542927608973,0.028070542927608973,0.028070542927608973,0.028070542927608973)
minHPD=c(0.10115227213161794, 0.027905764954705693,0.03244825056370538,0.03470920743530759,0.03658159195560817,0.03658159195560817,0.03682055303731766,0.03658159195560817,0.03682055303731766,0.03682055303731766,0.03682055303731766,0.03658159195560817,0.03658159195560817,0.03658159195560817,0.03682055303731766,0.03682055303731766,0.03682055303731766,0.03682055303731766,0.03658159195560817,0.03658159195560817,0.03658159195560817,0.03537645367590057,0.03304998532756782,0.03263262204901741,0.03263262204901741,0.031484711611724316,0.03263262204901741,0.03244825056370538,0.023938611496846375,0.015362660226240948,0.010229715384340908,0.008182643514329976,0.0013085831249929642,0.002667943507627673,0.0013085831249929642,0.0013085831249929642,0.0006453215029495402,0.0006453215029495402,0.0013085831249929642,0.0006453215029495402,0.0006453215029495402,0.00047917096955926513,0.00047917096955926513,0.00043136643826169416,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.00023776638699258716,0.0004222314087645779,0.00023776638699258716,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.00023776638699258716,0.00023776638699258716,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.00023776638699258716,0.00023776638699258716,0.00023776638699258716,0.00023776638699258716,0.00023776638699258716,0.00023776638699258716,0.00023776638699258716,0.00023776638699258716,0.00023776638699258716,0.00023776638699258716,0.00023776638699258716,0.00023776638699258716,0.00023776638699258716,0.00023776638699258716,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779,0.0004222314087645779)
maxHPD=c(3.5219180519939153, 1.358428629935093,0.1298001483032838,0.12718949417911374,0.12718949417911374,0.12718949417911374,0.12718949417911374,0.12649270596360335,0.12649270596360335,0.12649270596360335,0.12649270596360335,0.12649270596360335,0.12649270596360335,0.12649270596360335,0.12718949417911374,0.12718949417911374,0.12718949417911374,0.12718949417911374,0.12718949417911374,0.12718949417911374,0.12718949417911374,0.12718949417911374,0.12538115970125127,0.12538115970125127,0.12718949417911374,0.12718949417911374,0.13044726865275244,0.13601843103864514,0.13159015035422683,0.12608757084339303,0.1249903015932301,0.12317751880894585,0.11599294726526703,0.11468794323709991,0.11112206496427725,0.10668609564280607,0.10272414782146885,0.10120508956023491,0.09813247127272537,0.09541076964017672,0.09251737654101277,0.09188944463929744,0.09123592963321184,0.0898582333295518,0.08764744110450681,0.0864769681314659,0.08482491277866501,0.08434772461305927,0.08382684713967062,0.08290966051530177,0.0822771146527757,0.0818594827452361,0.0818594827452361,0.08125192578415079,0.08125192578415079,0.08117609004373491,0.08099582365528786,0.08099582365528786,0.08099582365528786,0.08099582365528786,0.08099582365528786,0.08099582365528786,0.08099582365528786,0.08099582365528786,0.08099582365528786,0.08099582365528786,0.08075508614540577,0.08075508614540577,0.08075508614540577,0.08075508614540577,0.08075508614540577,0.08075508614540577,0.08075508614540577,0.08075508614540577,0.08075508614540577,0.08075508614540577,0.08075508614540577,0.08075508614540577,0.08075508614540577,0.08075508614540577,0.08099582365528786,0.08117609004373491,0.08117609004373491,0.08117609004373491,0.08117609004373491,0.08117609004373491,0.08117609004373491,0.08117609004373491,0.08125192578415079,0.08125192578415079,0.08125192578415079,0.08125192578415079,0.08125192578415079,0.08125192578415079,0.08125192578415079,0.08125192578415079,0.08125192578415079,0.08125192578415079,0.08117609004373491,0.08117609004373491)
remove_na = !is.na(rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(0, 3.8741098571933072), xlim = c(-183.89800563807955,-66.00495625059015), ylab = 'Extinction rate', xlab = 'Time',main='Extinction' )
polygon(c(time, rev(time)), c(maxHPD[remove_na], rev(minHPD[remove_na])), col = alpha('#e34a33',0.3), border = NA)
lines(time,rate[remove_na], col = '#e34a33', lwd=2)
mids=c(-66.60037569194111, -67.79121457464302,-68.98205345734493,-70.17289234004686,-71.36373122274877,-72.55457010545068,-73.74540898815259,-74.9362478708545,-76.12708675355641,-77.31792563625832,-78.50876451896025,-79.69960340166216,-80.89044228436407,-82.08128116706598,-83.27212004976789,-84.46295893246982,-85.65379781517173,-86.84463669787364,-88.03547558057555,-89.22631446327746,-90.41715334597937,-91.60799222868128,-92.7988311113832,-93.98966999408512,-95.18050887678703,-96.37134775948894,-97.56218664219085,-98.75302552489278,-99.94386440759469,-101.1347032902966,-102.32554217299851,-103.51638105570042,-104.70721993840233,-105.89805882110424,-107.08889770380615,-108.27973658650806,-109.47057546920999,-110.6614143519119,-111.85225323461381,-113.04309211731572,-114.23393100001765,-115.42476988271956,-116.61560876542147,-117.80644764812338,-118.99728653082529,-120.1881254135272,-121.37896429622911,-122.56980317893102,-123.76064206163294,-124.95148094433486,-126.14231982703677,-127.33315870973868,-128.5239975924406,-129.71483647514253,-130.90567535784442,-132.09651424054636,-133.28735312324824,-134.47819200595018,-135.66903088865206,-136.859869771354,-138.05070865405594,-139.24154753675782,-140.43238641945976,-141.62322530216164,-142.81406418486358,-144.00490306756546,-145.1957419502674,-146.3865808329693,-147.57741971567123,-148.7682585983731,-149.95909748107505,-151.14993636377693,-152.34077524647887,-153.5316141291808,-154.7224530118827,-155.91329189458463,-157.1041307772865,-158.29496965998845,-159.48580854269034,-160.67664742539228,-161.86748630809416,-163.0583251907961,-164.24916407349798,-165.44000295619992,-166.6308418389018,-167.82168072160374,-169.01251960430568,-170.20335848700756,-171.3941973697095,-172.58503625241138,-173.77587513511332,-174.9667140178152,-176.15755290051715,-177.34839178321903,-178.53923066592097,-179.73006954862285,-180.9209084313248,-182.11174731402667,-183.3025861967286)
counts=c(0.774, 0.198,0.012,0.005,0.0,0.003,0.001,0.002,0.0,0.003,0.002,0.0,0.001,0.002,0.0,0.001,0.001,0.001,0.0,0.0,0.003,0.003,0.005,0.011,0.007,0.005,0.012,0.013,0.014,0.017,0.039,0.029,0.042,0.056,0.052,0.041,0.035,0.02,0.02,0.017,0.01,0.011,0.023,0.014,0.016,0.006,0.011,0.002,0.006,0.004,0.001,0.001,0.005,0.002,0.004,0.001,0.001,0.002,0.001,0.001,0.0,0.001,0.001,0.001,0.002,0.0,0.0,0.001,0.002,0.0,0.0,0.001,0.0,0.0,0.0,0.001,0.0,0.001,0.001,0.002,0.0,0.0,0.0,0.001,0.0,0.0,0.001,0.0,0.0,0.001,0.0,0.002,0.0,0.0,0.0,0.0,0.001,0.0,0.0)
plot(mids,counts,type = 'h', xlim = c(-183.89800563807955,-66.00495625059015), ylim=c(0,0.774), ylab = 'Frequency of rate shift', xlab = 'Time',lwd=5,col='#e34a33')
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
#Net Diversification Rate
time=c(-66.5944214975276, -67.7733519914025,-68.95228248527738,-70.13121297915228,-71.31014347302718,-72.48907396690208,-73.66800446077696,-74.84693495465186,-76.02586544852676,-77.20479594240166,-78.38372643627653,-79.56265693015143,-80.74158742402633,-81.92051791790124,-83.09944841177611,-84.27837890565101,-85.45730939952591,-86.63623989340081,-87.81517038727569,-88.99410088115059,-90.17303137502549,-91.35196186890039,-92.53089236277526,-93.70982285665016,-94.88875335052506,-96.06768384439997,-97.24661433827484,-98.42554483214974,-99.60447532602464,-100.78340581989954,-101.96233631377441,-103.14126680764932,-104.32019730152422,-105.49912779539912,-106.67805828927399,-107.85698878314889,-109.0359192770238,-110.2148497708987,-111.39378026477357,-112.57271075864847,-113.75164125252337,-114.93057174639827,-116.10950224027314,-117.28843273414805,-118.46736322802295,-119.64629372189785,-120.82522421577272,-122.00415470964762,-123.18308520352252,-124.3620156973974,-125.5409461912723,-126.7198766851472,-127.8988071790221,-129.077737672897,-130.25666816677187,-131.43559866064678,-132.61452915452168,-133.79345964839655,-134.97239014227148,-136.15132063614635,-137.33025113002125,-138.50918162389615,-139.68811211777103,-140.86704261164593,-142.04597310552083,-143.2249035993957,-144.4038340932706,-145.5827645871455,-146.76169508102038,-147.9406255748953,-149.11955606877018,-150.29848656264508,-151.47741705651998,-152.65634755039486,-153.83527804426976,-155.01420853814466,-156.19313903201953,-157.37206952589446,-158.55100001976933,-159.72993051364423,-160.90886100751914,-162.087791501394,-163.2667219952689,-164.4456524891438,-165.62458298301868,-166.8035134768936,-167.9824439707685,-169.1613744646434,-170.3403049585183,-171.51923545239316,-172.69816594626806,-173.87709644014296,-175.05602693401784,-176.23495742789277,-177.41388792176764,-178.5928184156425,-179.77174890951744,-180.95067940339231,-182.12960989726722,-183.30854039114212)
net_rate=c(-1.5611138101593585, -0.19029673056243626,-0.0008262744809655933,0.0040725195961358995,0.004932282213453323,0.0050911191387537965,0.005270781032392253,0.00542707024469091,0.005419134402081255,0.005506480246931556,0.005549761082403889,0.005691076109120013,0.0057484593210081645,0.005977660171560137,0.006129484030008838,0.006486613557866475,0.006513610540488208,0.006205548059626329,0.0061572044999485594,0.00615363512861893,0.006127389791263097,0.006241931639201273,0.006376811613210508,0.006430460529995091,0.007250708196839612,0.007771519960805748,0.007301934614187291,0.007791273103571285,0.008020822394517783,0.008463956417322683,0.009743480742845246,0.011574988455518628,0.013813034199811123,0.014964294896324795,0.019127398811922068,0.023607183008256385,0.026699142531782776,0.029270611931845405,0.03166128625282215,0.03306027051126635,0.034164130300621605,0.03493753356495164,0.03557793712958558,0.03671711021871344,0.037895970741743945,0.03881374044610659,0.039590724575290705,0.04023914982457276,0.04050751534080438,0.040464162172318005,0.0408245881419876,0.04087352202890465,0.04058326699068543,0.040507131331955805,0.04053462795259473,0.04055135059165725,0.040717566607389184,0.040671851927527126,0.04067337678009098,0.040499317704754546,0.040273122145243735,0.04026209237432847,0.040006855951527254,0.039976652308231074,0.0398487735601896,0.03973080505477401,0.03983929945174777,0.03969436310223067,0.039607462855436246,0.039708562771726866,0.03970611208478176,0.039621155392191486,0.039558146632143,0.03955975589351269,0.03950366527029069,0.03961339058120426,0.03952776884503866,0.03956447282898469,0.03953287191149274,0.03951463258532798,0.03943061628407579,0.03940050007303173,0.03940050007303173,0.03940050007303173,0.039353889605432395,0.039337387151098004,0.039393462368447534,0.03941133781041626,0.0393286158697489,0.03945155090086728,0.03952305839777961,0.03936582078595743,0.03936582078595743,0.03944814149259504,0.04023818927574349,0.04071636130441851,0.04114160345090832,0.04263128539982415,0.04354783488126727,0.046871991017657204)
net_minHPD=c(-3.4415278668996336, -1.2879788406778412,-0.05925440429707682,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.055785179443877585,-0.05631936008550727,-0.055785179443877585,-0.05631936008550727,-0.055785179443877585,-0.055785179443877585,-0.05631936008550727,-0.052957382358407516,-0.05230944420744347,-0.04823999304498115,-0.037876585805849,-0.03233432186892515,-0.029079517389907016,-0.026528069037018223,-0.02564003396258485,-0.026528069037018223,-0.026528069037018223,-0.021509141957770442,-0.01954380049326304,-0.01954380049326304,-0.01773243867164041,-0.01773243867164041,-0.01773243867164041,-0.01773243867164041,-0.01773243867164041,-0.01773243867164041,-0.01773243867164041,-0.01773243867164041,-0.01773243867164041,-0.01773243867164041,-0.01773243867164041,-0.01773243867164041,-0.01773243867164041,-0.02002657125945581,-0.02002657125945581,-0.024349150733587968,-0.024349150733587968,-0.024635639599927595,-0.024635639599927595,-0.024635639599927595,-0.024349150733587968,-0.024349150733587968,-0.024349150733587968,-0.024349150733587968,-0.024349150733587968,-0.024349150733587968,-0.024349150733587968,-0.024349150733587968,-0.024349150733587968,-0.024635639599927595,-0.024349150733587968,-0.024349150733587968,-0.024349150733587968,-0.024349150733587968,-0.024349150733587968,-0.024635639599927595,-0.025224975110440764,-0.025224975110440764,-0.025224975110440764,-0.024635639599927595,-0.024635639599927595,-0.024635639599927595,-0.024635639599927595,-0.025224975110440764,-0.025533695850966535,-0.025533695850966535,-0.026013971819294712,-0.026013971819294712,-0.026528069037018223,-0.026846602960902313,-0.026013971819294712,-0.026846602960902313,-0.026846602960902313,-0.026846602960902313,-0.026013971819294712)
net_maxHPD=c(-0.004991247362060872, 0.08228567568717648,0.0600802326418035,0.05596327787559744,0.05401475557882682,0.05367032262926258,0.05347873917572736,0.05298463053088362,0.05298463053088362,0.05298463053088362,0.05298463053088362,0.05323643133283478,0.05298463053088362,0.05323643133283478,0.05323643133283478,0.05347873917572736,0.05347873917572736,0.05323643133283478,0.05347873917572736,0.05347873917572736,0.05347873917572736,0.05412122968728704,0.05412122968728704,0.05412122968728704,0.05615964715978532,0.05768082494541553,0.058815247023068284,0.0600802326418035,0.06340783584320786,0.06633115423004832,0.06823984395769561,0.0708799470220848,0.08336301534033078,0.08580642527822101,0.09256779331028132,0.09940563550615186,0.09867399109255792,0.09904380849340529,0.09830623735550165,0.09777744435135884,0.09487981713817381,0.09487981713817381,0.09949825887974768,0.09949825887974768,0.09800782265490886,0.09940563550615186,0.09940563550615186,0.09940563550615186,0.09904380849340529,0.09904380849340529,0.09830623735550165,0.09777744435135884,0.09904380849340529,0.09940563550615186,0.09940563550615186,0.09904380849340529,0.09904380849340529,0.09940563550615186,0.09777744435135884,0.09800782265490886,0.09740059510530572,0.09740059510530572,0.09740059510530572,0.09740059510530572,0.09740059510530572,0.09800782265490886,0.09800782265490886,0.09800782265490886,0.09800782265490886,0.09800782265490886,0.09800782265490886,0.09800782265490886,0.09800782265490886,0.09800782265490886,0.09740059510530572,0.09800782265490886,0.09800782265490886,0.09800782265490886,0.09800782265490886,0.09800782265490886,0.09830623735550165,0.09830623735550165,0.09830623735550165,0.09830623735550165,0.09830623735550165,0.09830623735550165,0.09830623735550165,0.09830623735550165,0.09830623735550165,0.09830623735550165,0.09830623735550165,0.09830623735550165,0.09830623735550165,0.09830623735550165,0.09940563550615186,0.10261067172013429,0.10261067172013429,0.10499291096260269,0.10803816997242047,0.11065232928319564)
remove_na = !is.na(net_rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(-3.7856806535895973, 0.12171756221151521), xlim = c(-183.89800563807955,-66.00495625059015), ylab = 'Net Rate', xlab = 'Time',lwd=2, main='Net diversification', col= '#504A4B' )
polygon(c(time, rev(time)), c(net_maxHPD[remove_na], rev(net_minHPD[remove_na])), col = alpha('#504A4B',0.3), border = NA)
lines(time,net_rate[remove_na], col = '#504A4B', lwd=2)
abline(h=0,lty=2)


time=c(-66.5944214975276, -67.7733519914025,-68.95228248527738,-70.13121297915228,-71.31014347302718,-72.48907396690208,-73.66800446077696,-74.84693495465186,-76.02586544852676,-77.20479594240166,-78.38372643627653,-79.56265693015143,-80.74158742402633,-81.92051791790124,-83.09944841177611,-84.27837890565101,-85.45730939952591,-86.63623989340081,-87.81517038727569,-88.99410088115059,-90.17303137502549,-91.35196186890039,-92.53089236277526,-93.70982285665016,-94.88875335052506,-96.06768384439997,-97.24661433827484,-98.42554483214974,-99.60447532602464,-100.78340581989954,-101.96233631377441,-103.14126680764932,-104.32019730152422,-105.49912779539912,-106.67805828927399,-107.85698878314889,-109.0359192770238,-110.2148497708987,-111.39378026477357,-112.57271075864847,-113.75164125252337,-114.93057174639827,-116.10950224027314,-117.28843273414805,-118.46736322802295,-119.64629372189785,-120.82522421577272,-122.00415470964762,-123.18308520352252,-124.3620156973974,-125.5409461912723,-126.7198766851472,-127.8988071790221,-129.077737672897,-130.25666816677187,-131.43559866064678,-132.61452915452168,-133.79345964839655,-134.97239014227148,-136.15132063614635,-137.33025113002125,-138.50918162389615,-139.68811211777103,-140.86704261164593,-142.04597310552083,-143.2249035993957,-144.4038340932706,-145.5827645871455,-146.76169508102038,-147.9406255748953,-149.11955606877018,-150.29848656264508,-151.47741705651998,-152.65634755039486,-153.83527804426976,-155.01420853814466,-156.19313903201953,-157.37206952589446,-158.55100001976933,-159.72993051364423,-160.90886100751914,-162.087791501394,-163.2667219952689,-164.4456524891438,-165.62458298301868,-166.8035134768936,-167.9824439707685,-169.1613744646434,-170.3403049585183,-171.51923545239316,-172.69816594626806,-173.87709644014296,-175.05602693401784,-176.23495742789277,-177.41388792176764,-178.5928184156425,-179.77174890951744,-180.95067940339231,-182.12960989726722,-183.30854039114212)
rate=c(0.6073298608743871, 3.6273289604632533,11.599764511979643,12.281691560265472,12.402963810168742,12.402963810168742,12.42598118166591,12.442144650502588,12.443795865840563,12.443795865840563,12.450501430524884,12.472445987590772,12.472445987590772,12.477492517450447,12.465739888136563,12.465739888136563,12.469936487680487,12.473431425106796,12.458052976551887,12.458052976551887,12.458052976551887,12.447117134671787,12.483607271871733,12.491973546395096,12.623052394408898,12.730747318666506,12.684001288937164,12.836064178181509,12.996588906369961,13.15684890359411,13.498726077914371,13.971037934973978,14.564211621570156,15.080792150826916,16.20747295724761,17.61767735917461,18.78576483224576,19.810909107223253,20.823700699284164,21.491650385854808,22.05642023469523,22.60766893371892,22.969496166608476,23.678363943130915,24.45248226512618,25.019556419061313,25.586101323492354,25.95779437505779,26.273514370742266,26.442019448211735,26.791172215745462,26.907277617802507,26.907277617802507,27.030535082969028,27.16079147109407,27.296863010246177,27.45954707775748,27.45954707775748,27.504151083805112,27.555047945296423,27.59108143421816,27.630959424450698,27.630959424450698,27.705071743768517,27.739078686254846,27.739078686254846,27.841486743298248,27.841486743298248,27.841486743298248,27.90815193922191,27.90815193922191,27.90815193922191,27.90815193922191,27.910294649546092,27.910294649546092,27.910294649546092,27.910294649546092,27.938915805925554,27.938915805925554,27.924685749142487,27.86061804260505,27.837261014690153,27.837261014690153,27.837261014690153,27.837261014690153,27.82447891851041,27.82447891851041,27.82447891851041,27.75822463190006,27.75822463190006,27.75822463190006,27.63759655677179,27.63759655677179,27.572919734854086,27.572919734854086,27.572919734854086,27.572919734854086,27.572919734854086,27.588017787270182,27.588017787270182)
minHPD=c(0.6073298608743871, 3.6273289604632533,11.599764511979643,12.281691560265472,12.402963810168742,12.402963810168742,12.42598118166591,12.442144650502588,12.443795865840563,12.443795865840563,12.450501430524884,12.472445987590772,12.472445987590772,12.477492517450447,12.465739888136563,12.465739888136563,12.469936487680487,12.473431425106796,12.458052976551887,12.458052976551887,12.458052976551887,12.447117134671787,12.483607271871733,12.491973546395096,12.623052394408898,12.730747318666506,12.684001288937164,12.836064178181509,12.996588906369961,13.15684890359411,13.498726077914371,13.971037934973978,14.564211621570156,15.080792150826916,16.20747295724761,17.61767735917461,18.78576483224576,19.810909107223253,20.823700699284164,21.491650385854808,22.05642023469523,22.60766893371892,22.969496166608476,23.678363943130915,24.45248226512618,25.019556419061313,25.586101323492354,25.95779437505779,26.273514370742266,26.442019448211735,26.791172215745462,26.907277617802507,26.907277617802507,27.030535082969028,27.16079147109407,27.296863010246177,27.45954707775748,27.45954707775748,27.504151083805112,27.555047945296423,27.59108143421816,27.630959424450698,27.630959424450698,27.705071743768517,27.739078686254846,27.739078686254846,27.841486743298248,27.841486743298248,27.841486743298248,27.90815193922191,27.90815193922191,27.90815193922191,27.90815193922191,27.910294649546092,27.910294649546092,27.910294649546092,27.910294649546092,27.938915805925554,27.938915805925554,27.924685749142487,27.86061804260505,27.837261014690153,27.837261014690153,27.837261014690153,27.837261014690153,27.82447891851041,27.82447891851041,27.82447891851041,27.75822463190006,27.75822463190006,27.75822463190006,27.63759655677179,27.63759655677179,27.572919734854086,27.572919734854086,27.572919734854086,27.572919734854086,27.572919734854086,27.588017787270182,27.588017787270182)
maxHPD=c(0.6073298608743871, 3.6273289604632533,11.599764511979643,12.281691560265472,12.402963810168742,12.402963810168742,12.42598118166591,12.442144650502588,12.443795865840563,12.443795865840563,12.450501430524884,12.472445987590772,12.472445987590772,12.477492517450447,12.465739888136563,12.465739888136563,12.469936487680487,12.473431425106796,12.458052976551887,12.458052976551887,12.458052976551887,12.447117134671787,12.483607271871733,12.491973546395096,12.623052394408898,12.730747318666506,12.684001288937164,12.836064178181509,12.996588906369961,13.15684890359411,13.498726077914371,13.971037934973978,14.564211621570156,15.080792150826916,16.20747295724761,17.61767735917461,18.78576483224576,19.810909107223253,20.823700699284164,21.491650385854808,22.05642023469523,22.60766893371892,22.969496166608476,23.678363943130915,24.45248226512618,25.019556419061313,25.586101323492354,25.95779437505779,26.273514370742266,26.442019448211735,26.791172215745462,26.907277617802507,26.907277617802507,27.030535082969028,27.16079147109407,27.296863010246177,27.45954707775748,27.45954707775748,27.504151083805112,27.555047945296423,27.59108143421816,27.630959424450698,27.630959424450698,27.705071743768517,27.739078686254846,27.739078686254846,27.841486743298248,27.841486743298248,27.841486743298248,27.90815193922191,27.90815193922191,27.90815193922191,27.90815193922191,27.910294649546092,27.910294649546092,27.910294649546092,27.910294649546092,27.938915805925554,27.938915805925554,27.924685749142487,27.86061804260505,27.837261014690153,27.837261014690153,27.837261014690153,27.837261014690153,27.82447891851041,27.82447891851041,27.82447891851041,27.75822463190006,27.75822463190006,27.75822463190006,27.63759655677179,27.63759655677179,27.572919734854086,27.572919734854086,27.572919734854086,27.572919734854086,27.572919734854086,27.588017787270182,27.588017787270182)
remove_na = !is.na(rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(0, 30.73280738651811), xlim = c(-183.89800563807955,-66.00495625059015), ylab = 'Mean longevity', xlab = 'Time',main='Longevity' )
polygon(c(time, rev(time)), c(maxHPD[remove_na], rev(minHPD[remove_na])), col = alpha('#756bb1',0.3), border = NA)
lines(time,rate[remove_na], col = '#756bb1', lwd=4)

n <- dev.off()