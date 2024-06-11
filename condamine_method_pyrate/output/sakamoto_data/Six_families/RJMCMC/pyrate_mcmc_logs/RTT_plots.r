

pdf(file='./RTT_plots.pdf',width=10, height=15)
par(mfrow=c(3,2))
library(scales)

time=c(-66.52879526459779, -67.75609077899855,-68.98338629339932,-70.21068180780009,-71.43797732220088,-72.66527283660164,-73.89256835100241,-75.11986386540318,-76.34715937980397,-77.57445489420473,-78.8017504086055,-80.02904592300627,-81.25634143740706,-82.48363695180782,-83.71093246620859,-84.93822798060938,-86.16552349501015,-87.39281900941091,-88.62011452381168,-89.84741003821247,-91.07470555261324,-92.302001067014,-93.52929658141477,-94.75659209581556,-95.98388761021633,-97.2111831246171,-98.43847863901789,-99.66577415341865,-100.89306966781942,-102.12036518222018,-103.34766069662098,-104.57495621102174,-105.80225172542251,-107.02954723982327,-108.25684275422407,-109.48413826862483,-110.7114337830256,-111.93872929742639,-113.16602481182716,-114.39332032622792,-115.62061584062869,-116.84791135502948,-118.07520686943025,-119.30250238383101,-120.52979789823178,-121.75709341263257,-122.98438892703334,-124.2116844414341,-125.4389799558349,-126.66627547023566,-127.89357098463643,-129.1208664990372,-130.34816201343796,-131.57545752783875,-132.80275304223952,-134.03004855664028,-135.25734407104108,-136.48463958544184,-137.7119350998426,-138.9392306142434,-140.16652612864414,-141.39382164304493,-142.6211171574457,-143.84841267184646,-145.07570818624725,-146.30300370064802,-147.53029921504879,-148.75759472944958,-149.98489024385034,-151.2121857582511,-152.4394812726519,-153.66677678705264,-154.89407230145343,-156.1213678158542,-157.34866333025496,-158.57595884465576,-159.80325435905652,-161.0305498734573,-162.25784538785808,-163.48514090225885,-164.7124364166596,-165.9397319310604,-167.16702744546114,-168.39432295986194,-169.6216184742627,-170.84891398866347,-172.07620950306426,-173.30350501746503,-174.5308005318658,-175.7580960462666,-176.98539156066735,-178.21268707506812,-179.4399825894689,-180.66727810386965,-181.89457361827044,-183.1218691326712,-184.34916464707197,-185.57646016147277,-186.80375567587353,-188.0310511902743)
rate=c(0.07706457778199174, 0.07710747790186065,0.07710747790186065,0.07710747790186065,0.07710747790186065,0.07710218844104624,0.07706457778199174,0.07698777743309657,0.07697640115381703,0.0769547374966934,0.0769547374966934,0.0769547374966934,0.0769547374966934,0.07698777743309657,0.9720619738206334,0.8393324830545941,0.05141257862967888,0.0509247830159833,0.05080225811319877,0.05080225811319877,0.05080225811319877,0.05077297320773916,0.05077297320773916,0.05077297320773916,0.050757559517664225,0.050757559517664225,0.05072826387897902,0.05072826387897902,0.05072826387897902,0.05069547573559008,0.05069547573559008,0.05069547573559008,0.05069547573559008,0.05069547573559008,0.05069547573559008,0.05069547573559008,0.05072826387897902,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05077019704313372,0.05077019704313372,0.05077019704313372,0.05077019704313372,0.05077019704313372,0.05077019704313372,0.05077019704313372,0.05077019704313372,0.05077019704313372,0.05077019704313372,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05072826387897902,0.05072826387897902,0.05072826387897902,0.05072826387897902,0.05069547573559008,0.05069547573559008,0.05069547573559008,0.05069547573559008,0.05072826387897902,0.05072826387897902,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05075562542852706,0.05077019704313372,0.05077019704313372,0.05077019704313372,0.05077019704313372,0.05077297320773916,0.050834409438291955,0.050834409438291955,0.050834409438291955,0.050834409438291955,0.050834409438291955,0.050834409438291955,0.05084382044926812,0.05084382044926812,0.05084382044926812,0.05084382044926812,0.05087704089226587,0.0509247830159833,0.050908645581960385,0.050908645581960385)
minHPD=c(0.06238808610150856, 0.06234884547472774,0.06258545366253754,0.06258545366253754,0.06258545366253754,0.06258545366253754,0.06258545366253754,0.062647846351702,0.062647846351702,0.06261468888692388,0.06261468888692388,0.06261468888692388,0.06261468888692388,0.06258545366253754,0.4682838468746102,0.0347118822985209,0.028617410690455706,0.03674479013363872,0.03674479013363872,0.03674479013363872,0.03674479013363872,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.03674479013363872,0.03674479013363872,0.03657773650371771,0.03657773650371771,0.03657773650371771,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.03720593733722505,0.03720593733722505,0.03720593733722505,0.03720593733722505,0.03720593733722505,0.03720593733722505,0.03720593733722505,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.03657773650371771,0.03657773650371771,0.03657773650371771,0.03657773650371771,0.03657773650371771,0.03657773650371771,0.03657773650371771,0.03657773650371771,0.03657773650371771,0.037156923290699126,0.035215778191131926,0.03657773650371771,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.037156923290699126,0.03674479013363872,0.035215778191131926,0.035215778191131926,0.035215778191131926,0.037156923290699126,0.0347118822985209,0.03657773650371771,0.034819112223614807,0.035215778191131926)
maxHPD=c(0.09369260165961758, 0.09306963453283836,0.09320336736009363,0.09320336736009363,0.09320336736009363,0.09320336736009363,0.09306963453283836,0.09306963453283836,0.09306963453283836,0.09306963453283836,0.09306963453283836,0.09306963453283836,0.09306963453283836,0.09320336736009363,1.472672792175159,1.2295618962016044,0.4383854564246431,0.07045987531837006,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06979339414619404,0.06979339414619404,0.06979339414619404,0.06932083756527244,0.06932083756527244,0.06895355359600504,0.06895355359600504,0.06895355359600504,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06932083756527244,0.06959678941030896,0.06959678941030896,0.06959678941030896,0.06959678941030896,0.06959678941030896,0.06959678941030896,0.06959678941030896,0.06959678941030896,0.06959678941030896,0.06979339414619404,0.06979339414619404,0.06979339414619404,0.06979339414619404,0.06979339414619404,0.06979339414619404,0.07001629193434959,0.07001629193434959,0.07033781139156048,0.07033781139156048,0.07033781139156048,0.07033781139156048,0.06979339414619404,0.06979339414619404,0.06979339414619404,0.06979339414619404,0.06979339414619404,0.06979339414619404,0.06979339414619404,0.06979339414619404,0.06979339414619404,0.07045987531837006,0.06878848641045736,0.07045987531837006,0.07116507720294683,0.07133743496401262,0.07133743496401262,0.07133743496401262,0.07116507720294683,0.06979339414619404,0.06979339414619404,0.06979339414619404,0.07210535479587256,0.06979339414619404,0.07210535479587256,0.07045987531837006,0.07116507720294683)
remove_na = !is.na(rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(0, 1.619940071392675), xlim = c(-188.6446989474747,-65.91514750739739), ylab = 'Speciation rate', xlab = 'Time',main='Speciation (PyRate_Inputs_2_RJMCMC_Grj_mcmc)' )
polygon(c(time, rev(time)), c(maxHPD[remove_na], rev(minHPD[remove_na])), col = alpha('#4c4cec',0.3), border = NA)
lines(time,rate[remove_na], col = '#4c4cec', lwd=2)
mids=c(-66.53499372679173, -67.77468616558038,-69.01437860436904,-70.2540710431577,-71.49376348194636,-72.73345592073503,-73.97314835952368,-75.21284079831234,-76.452533237101,-77.69222567588966,-78.93191811467831,-80.17161055346698,-81.41130299225563,-82.6509954310443,-83.89068786983296,-85.13038030862161,-86.37007274741028,-87.60976518619893,-88.8494576249876,-90.08915006377626,-91.32884250256491,-92.56853494135358,-93.80822738014223,-95.0479198189309,-96.28761225771956,-97.52730469650821,-98.76699713529686,-100.00668957408553,-101.2463820128742,-102.48607445166286,-103.72576689045151,-104.96545932924016,-106.20515176802883,-107.44484420681749,-108.68453664560614,-109.92422908439481,-111.16392152318346,-112.40361396197213,-113.64330640076079,-114.88299883954944,-116.1226912783381,-117.36238371712676,-118.60207615591543,-119.84176859470409,-121.08146103349274,-122.3211534722814,-123.56084591107006,-124.80053834985873,-126.04023078864739,-127.27992322743604,-128.5196156662247,-129.75930810501336,-130.99900054380203,-132.2386929825907,-133.47838542137936,-134.718077860168,-135.95777029895666,-137.19746273774533,-138.43715517653396,-139.67684761532263,-140.9165400541113,-142.15623249289996,-143.39592493168863,-144.6356173704773,-145.87530980926596,-147.1150022480546,-148.35469468684326,-149.5943871256319,-150.83407956442056,-152.07377200320923,-153.3134644419979,-154.55315688078656,-155.79284931957523,-157.0325417583639,-158.27223419715253,-159.5119266359412,-160.75161907472986,-161.9913115135185,-163.23100395230716,-164.47069639109583,-165.7103888298845,-166.95008126867316,-168.18977370746182,-169.4294661462505,-170.66915858503913,-171.9088510238278,-173.14854346261643,-174.3882359014051,-175.62792834019376,-176.86762077898243,-178.1073132177711,-179.34700565655976,-180.58669809534842,-181.82639053413706,-183.06608297292573,-184.3057754117144,-185.54546785050303,-186.7851602892917,-188.02485272808036)
counts=c(0.005, 0.001,0.0,0.0,0.001,0.002,0.004,0.001,0.002,0.0,0.0,0.0,0.004,0.996,0.476,0.492,0.027,0.005,0.0,0.001,0.001,0.0,0.001,0.0,0.0,0.001,0.0,0.0,0.002,0.0,0.0,0.0,0.0,0.0,0.0,0.002,0.001,0.0,0.0,0.0,0.0,0.0,0.001,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.001,0.001,0.0,0.0,0.001,0.0,0.0,0.0,0.0,0.002,0.0,0.0,0.0,0.001,0.001,0.0,0.001,0.0,0.002,0.0,0.001,0.001,0.0,0.001,0.0,0.0,0.001,0.0,0.0,0.001,0.001,0.002,0.001,0.001,0.0,0.0,0.001,0.001,0.0,0.0,0.003,0.001,0.002,0.001,0.0,0.003)
plot(mids,counts,type = 'h', xlim = c(-188.6446989474747,-65.91514750739739), ylim=c(0,0.996), ylab = 'Frequency of rate shift', xlab = 'Time',lwd=5,col='#4c4cec')
bf2 = 0.03472706541245448
bf6 = 0.21000562167910636
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)

time=c(-66.52879526459779, -67.75609077899855,-68.98338629339932,-70.21068180780009,-71.43797732220088,-72.66527283660164,-73.89256835100241,-75.11986386540318,-76.34715937980397,-77.57445489420473,-78.8017504086055,-80.02904592300627,-81.25634143740706,-82.48363695180782,-83.71093246620859,-84.93822798060938,-86.16552349501015,-87.39281900941091,-88.62011452381168,-89.84741003821247,-91.07470555261324,-92.302001067014,-93.52929658141477,-94.75659209581556,-95.98388761021633,-97.2111831246171,-98.43847863901789,-99.66577415341865,-100.89306966781942,-102.12036518222018,-103.34766069662098,-104.57495621102174,-105.80225172542251,-107.02954723982327,-108.25684275422407,-109.48413826862483,-110.7114337830256,-111.93872929742639,-113.16602481182716,-114.39332032622792,-115.62061584062869,-116.84791135502948,-118.07520686943025,-119.30250238383101,-120.52979789823178,-121.75709341263257,-122.98438892703334,-124.2116844414341,-125.4389799558349,-126.66627547023566,-127.89357098463643,-129.1208664990372,-130.34816201343796,-131.57545752783875,-132.80275304223952,-134.03004855664028,-135.25734407104108,-136.48463958544184,-137.7119350998426,-138.9392306142434,-140.16652612864414,-141.39382164304493,-142.6211171574457,-143.84841267184646,-145.07570818624725,-146.30300370064802,-147.53029921504879,-148.75759472944958,-149.98489024385034,-151.2121857582511,-152.4394812726519,-153.66677678705264,-154.89407230145343,-156.1213678158542,-157.34866333025496,-158.57595884465576,-159.80325435905652,-161.0305498734573,-162.25784538785808,-163.48514090225885,-164.7124364166596,-165.9397319310604,-167.16702744546114,-168.39432295986194,-169.6216184742627,-170.84891398866347,-172.07620950306426,-173.30350501746503,-174.5308005318658,-175.7580960462666,-176.98539156066735,-178.21268707506812,-179.4399825894689,-180.66727810386965,-181.89457361827044,-183.1218691326712,-184.34916464707197,-185.57646016147277,-186.80375567587353,-188.0310511902743)
rate=c(5.4652733584102595, 0.1813616383772896,0.18127716708132735,0.18146339387965832,0.18154070579298065,0.18146339387965832,0.18127716708132735,0.050482116062834426,0.04481683715273415,0.044514637068235004,0.044514637068235004,0.04450677728416344,0.04450677728416344,0.04450677728416344,0.04450677728416344,0.04450677728416344,0.04450677728416344,0.04450677728416344,0.04450677728416344,0.04450677728416344,0.04450677728416344,0.04450677728416344,0.04449211623176121,0.04449211623176121,0.04446367340685033,0.04446367340685033,0.04446367340685033,0.04446367340685033,0.04446367340685033,0.04446367340685033,0.04443668126755002,0.04436242013303686,0.044326516992937284,0.044299944299636046,0.044299944299636046,0.04426616091939375,0.04425268706252282,0.04425268706252282,0.04425268706252282,0.04425268706252282,0.044243447937900804,0.044243447937900804,0.044243447937900804,0.044243447937900804,0.04422985245367922,0.04422985245367922,0.04422985245367922,0.044130780508487656,0.04392313649109264,0.04317243360279275,0.04244565681450389,0.041833036849579786,0.04143854976897281,0.041097151184513944,0.04075634297485936,0.04049895171520276,0.03975769817494253,0.03968000124718575,0.03948905118674971,0.03922180104910128,0.03868030928040652,0.03756489940939428,0.03469976811003124,0.03453850833697404,0.033871122060185804,0.032467270540183224,0.02831021178918631,0.026845628453211763,0.024650473303466425,0.024177961700963868,0.024104964017905517,0.024104964017905517,0.024104964017905517,0.024049013148233624,0.024049013148233624,0.023489295914369056,0.023489295914369056,0.023489295914369056,0.023489295914369056,0.023489295914369056,0.023132341684651198,0.023132341684651198,0.023132341684651198,0.023132341684651198,0.023132341684651198,0.023132341684651198,0.023132341684651198,0.023132341684651198,0.023489295914369056,0.023566042685134854,0.023566042685134854,0.023566042685134854,0.023132341684651198,0.023132341684651198,0.023132341684651198,0.023132341684651198,0.022526432327691165,0.022526432327691165,0.02225131697860995,0.02225131697860995)
minHPD=c(1.9515870530355082, 0.14445875587099824,0.14413345928412938,0.14413345928412938,0.14413345928412938,0.14413345928412938,0.14379063610554238,0.03407026140372213,0.031135809588609377,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.030516683053222717,0.030673772566956033,0.030673772566956033,0.030673772566956033,0.03034492870022484,0.03034492870022484,0.03034492870022484,0.03034492870022484,0.03034492870022484,0.030200421216813232,0.030200421216813232,0.030200421216813232,0.030200421216813232,0.030673772566956033,0.031431533027111165,0.031431533027111165,0.030673772566956033,0.030200421216813232,0.011477906448461164,0.007469970346363083,0.007469970346363083,0.006705624863708312,0.005420562166113353,0.0038552797840979134,0.0038552797840979134,0.003484466989693315,0.00324267041147969,0.003484466989693315,0.0033411253509551065,0.003587375519816743,0.0029448079816377128,0.0003305935975927816,0.00036537986550190245,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284,0.00011593916012415284)
maxHPD=c(9.217543344708888, 0.2321515244012385,0.23079813419860828,0.2305638162871578,0.2305638162871578,0.2305638162871578,0.23079813419860828,0.20012521025879695,0.05899877683445767,0.056955301513990864,0.056955301513990864,0.05685059863076829,0.05685059863076829,0.05685059863076829,0.05685059863076829,0.05685059863076829,0.05685059863076829,0.05685059863076829,0.05685059863076829,0.05685059863076829,0.05685059863076829,0.05685059863076829,0.05685059863076829,0.05685059863076829,0.05685059863076829,0.056955301513990864,0.056955301513990864,0.056955301513990864,0.056955301513990864,0.056955301513990864,0.056955301513990864,0.057172086740363996,0.05744018698022709,0.05753859912363748,0.05753859912363748,0.05744018698022709,0.05753859912363748,0.05753859912363748,0.05753859912363748,0.05753859912363748,0.05753859912363748,0.05753859912363748,0.05753859912363748,0.05753859912363748,0.05810530612121175,0.05899877683445767,0.05899877683445767,0.05892575593498764,0.06134610573917127,0.06003533719583058,0.056955301513990864,0.057172086740363996,0.05685059863076829,0.05622447221830664,0.05407175508642171,0.05407175508642171,0.05338578650225242,0.05297122713363846,0.05297122713363846,0.05297122713363846,0.05297122713363846,0.05297122713363846,0.049906893563659016,0.049906893563659016,0.049569763456680356,0.049174124223390445,0.048768011430113334,0.04865351827006489,0.048425744268209475,0.048425744268209475,0.048425744268209475,0.048425744268209475,0.048425744268209475,0.048425744268209475,0.048425744268209475,0.04826083646760418,0.04826083646760418,0.04826083646760418,0.04826083646760418,0.04826083646760418,0.04826083646760418,0.04826083646760418,0.04826083646760418,0.04826083646760418,0.04826083646760418,0.04826083646760418,0.04826083646760418,0.048425744268209475,0.048425744268209475,0.048425744268209475,0.048425744268209475,0.048425744268209475,0.048425744268209475,0.048425744268209475,0.048425744268209475,0.048425744268209475,0.048425744268209475,0.04865351827006489,0.04865351827006489,0.04865351827006489)
remove_na = !is.na(rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(0, 10.139297679179778), xlim = c(-188.6446989474747,-65.91514750739739), ylab = 'Extinction rate', xlab = 'Time',main='Extinction' )
polygon(c(time, rev(time)), c(maxHPD[remove_na], rev(minHPD[remove_na])), col = alpha('#e34a33',0.3), border = NA)
lines(time,rate[remove_na], col = '#e34a33', lwd=2)
mids=c(-66.53499372679173, -67.77468616558038,-69.01437860436904,-70.2540710431577,-71.49376348194636,-72.73345592073503,-73.97314835952368,-75.21284079831234,-76.452533237101,-77.69222567588966,-78.93191811467831,-80.17161055346698,-81.41130299225563,-82.6509954310443,-83.89068786983296,-85.13038030862161,-86.37007274741028,-87.60976518619893,-88.8494576249876,-90.08915006377626,-91.32884250256491,-92.56853494135358,-93.80822738014223,-95.0479198189309,-96.28761225771956,-97.52730469650821,-98.76699713529686,-100.00668957408553,-101.2463820128742,-102.48607445166286,-103.72576689045151,-104.96545932924016,-106.20515176802883,-107.44484420681749,-108.68453664560614,-109.92422908439481,-111.16392152318346,-112.40361396197213,-113.64330640076079,-114.88299883954944,-116.1226912783381,-117.36238371712676,-118.60207615591543,-119.84176859470409,-121.08146103349274,-122.3211534722814,-123.56084591107006,-124.80053834985873,-126.04023078864739,-127.27992322743604,-128.5196156662247,-129.75930810501336,-130.99900054380203,-132.2386929825907,-133.47838542137936,-134.718077860168,-135.95777029895666,-137.19746273774533,-138.43715517653396,-139.67684761532263,-140.9165400541113,-142.15623249289996,-143.39592493168863,-144.6356173704773,-145.87530980926596,-147.1150022480546,-148.35469468684326,-149.5943871256319,-150.83407956442056,-152.07377200320923,-153.3134644419979,-154.55315688078656,-155.79284931957523,-157.0325417583639,-158.27223419715253,-159.5119266359412,-160.75161907472986,-161.9913115135185,-163.23100395230716,-164.47069639109583,-165.7103888298845,-166.95008126867316,-168.18977370746182,-169.4294661462505,-170.66915858503913,-171.9088510238278,-173.14854346261643,-174.3882359014051,-175.62792834019376,-176.86762077898243,-178.1073132177711,-179.34700565655976,-180.58669809534842,-181.82639053413706,-183.06608297292573,-184.3057754117144,-185.54546785050303,-186.7851602892917,-188.02485272808036)
counts=c(0.999, 0.003,0.002,0.001,0.001,0.002,0.715,0.271,0.013,0.0,0.001,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.001,0.0,0.0,0.003,0.001,0.0,0.0,0.0,0.001,0.001,0.007,0.001,0.002,0.002,0.001,0.0,0.0,0.0,0.001,0.001,0.0,0.0,0.0,0.002,0.0,0.002,0.009,0.031,0.038,0.043,0.021,0.021,0.021,0.012,0.024,0.028,0.01,0.019,0.024,0.02,0.093,0.018,0.003,0.021,0.027,0.01,0.003,0.011,0.001,0.0,0.001,0.001,0.0,0.0,0.004,0.0,0.0,0.001,0.001,0.0,0.001,0.001,0.0,0.0,0.0,0.001,0.002,0.001,0.0,0.0,0.002,0.0,0.0,0.0,0.001,0.001,0.001,0.0,0.0)
plot(mids,counts,type = 'h', xlim = c(-188.6446989474747,-65.91514750739739), ylim=c(0,0.999), ylab = 'Frequency of rate shift', xlab = 'Time',lwd=5,col='#e34a33')
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
#Net Diversification Rate
time=c(-66.52879526459779, -67.75609077899855,-68.98338629339932,-70.21068180780009,-71.43797732220088,-72.66527283660164,-73.89256835100241,-75.11986386540318,-76.34715937980397,-77.57445489420473,-78.8017504086055,-80.02904592300627,-81.25634143740706,-82.48363695180782,-83.71093246620859,-84.93822798060938,-86.16552349501015,-87.39281900941091,-88.62011452381168,-89.84741003821247,-91.07470555261324,-92.302001067014,-93.52929658141477,-94.75659209581556,-95.98388761021633,-97.2111831246171,-98.43847863901789,-99.66577415341865,-100.89306966781942,-102.12036518222018,-103.34766069662098,-104.57495621102174,-105.80225172542251,-107.02954723982327,-108.25684275422407,-109.48413826862483,-110.7114337830256,-111.93872929742639,-113.16602481182716,-114.39332032622792,-115.62061584062869,-116.84791135502948,-118.07520686943025,-119.30250238383101,-120.52979789823178,-121.75709341263257,-122.98438892703334,-124.2116844414341,-125.4389799558349,-126.66627547023566,-127.89357098463643,-129.1208664990372,-130.34816201343796,-131.57545752783875,-132.80275304223952,-134.03004855664028,-135.25734407104108,-136.48463958544184,-137.7119350998426,-138.9392306142434,-140.16652612864414,-141.39382164304493,-142.6211171574457,-143.84841267184646,-145.07570818624725,-146.30300370064802,-147.53029921504879,-148.75759472944958,-149.98489024385034,-151.2121857582511,-152.4394812726519,-153.66677678705264,-154.89407230145343,-156.1213678158542,-157.34866333025496,-158.57595884465576,-159.80325435905652,-161.0305498734573,-162.25784538785808,-163.48514090225885,-164.7124364166596,-165.9397319310604,-167.16702744546114,-168.39432295986194,-169.6216184742627,-170.84891398866347,-172.07620950306426,-173.30350501746503,-174.5308005318658,-175.7580960462666,-176.98539156066735,-178.21268707506812,-179.4399825894689,-180.66727810386965,-181.89457361827044,-183.1218691326712,-184.34916464707197,-185.57646016147277,-186.80375567587353,-188.0310511902743)
net_rate=c(-5.364368652711011, -0.1062544911750119,-0.10592030552298481,-0.10605466582849513,-0.10607521655064107,-0.10605306659997135,-0.10580982634006966,-0.014716827079967831,0.030747324132980886,0.03224524227557771,0.03224524227557771,0.03226951341977218,0.03226951341977218,0.032605168447848436,0.9218840466680274,0.666783519376568,0.03498848295127329,0.009712216635072112,0.007219139602429985,0.007219139602429985,0.007219139602429985,0.007199257180673917,0.0072119353622818825,0.0072119353622818825,0.0072147176230164395,0.007231684277168122,0.007178911295463963,0.007178911295463963,0.007178911295463963,0.007129546720662016,0.00716969708631755,0.00732579474143594,0.007358936417195458,0.007406394942898065,0.007406394942898065,0.00745697789125584,0.007486048985017638,0.00749478266184392,0.00749478266184392,0.00749478266184392,0.007453997311121689,0.007453997311121689,0.007453997311121689,0.007453997311121689,0.007527147917577712,0.00754478848715107,0.00754478848715107,0.007809743760801914,0.008493906118669332,0.009984584561044871,0.01106747258137654,0.012603091612173052,0.01331474471723201,0.0141341841460391,0.014640580799986338,0.014987538190767605,0.016655510337464246,0.017035763379726707,0.01763129608825021,0.018356599866578234,0.018995344593294425,0.02101694205207793,0.024342336433169288,0.024437505549913717,0.02479951437085561,0.025431695817757654,0.026546798429758576,0.026682128860464366,0.02691017665241557,0.027285518410787576,0.027315731880417367,0.027371104917551507,0.027371104917551507,0.027403476855600326,0.027403476855600326,0.027549566276465088,0.027542655157445448,0.027542655157445448,0.02754558319687919,0.027558557933116984,0.027588660211927775,0.027602428731837207,0.02760833576424261,0.02760833576424261,0.02770094128975822,0.027996468340034775,0.028194817572204735,0.02822130780920152,0.02817077924632504,0.028158557700772767,0.028158557700772767,0.028133380541344052,0.028270978853276077,0.028270978853276077,0.028270978853276077,0.02831504693259563,0.02844284279029047,0.028541388564357697,0.028520181993729073,0.029447259297071128)
net_minHPD=c(-9.15930246049783, -0.15891100582564932,-0.15841155897282866,-0.15841155897282866,-0.15841155897282866,-0.15841155897282866,-0.15841155897282866,-0.12600856083322112,0.012076605305309664,0.013476117273232086,0.013476117273232086,0.013476117273232086,0.013476117273232086,0.01300511056460689,0.4283555610906379,-0.021152943218838115,-0.025642469501992476,-0.01618682364150824,-0.014847108278048464,-0.014847108278048464,-0.014847108278048464,-0.014847108278048464,-0.014847108278048464,-0.014847108278048464,-0.015152758466502006,-0.015152758466502006,-0.015152758466502006,-0.015152758466502006,-0.015152758466502006,-0.014967132805631084,-0.014967132805631084,-0.015152758466502006,-0.015152758466502006,-0.015152758466502006,-0.015152758466502006,-0.014847108278048464,-0.014967132805631084,-0.014967132805631084,-0.014967132805631084,-0.014967132805631084,-0.015152758466502006,-0.015152758466502006,-0.015152758466502006,-0.015152758466502006,-0.014967132805631084,-0.014847108278048464,-0.014847108278048464,-0.01618682364150824,-0.01618682364150824,-0.01618682364150824,-0.01315150546263831,-0.014847108278048464,-0.012178729074937826,-0.013248934347889263,-0.01234759933816982,-0.011692177747731153,-0.01021266381479937,-0.009860911107842672,-0.008580524361805043,-0.008896002443810287,-0.0086082895523856,-0.0086082895523856,-0.006733718518344235,-0.006733718518344235,-0.006446233280238266,-0.00566863295653193,-0.0048452872813891865,-0.0048452872813891865,-0.004501846846787276,-0.0048452872813891865,-0.0048452872813891865,-0.004501846846787276,-0.004501846846787276,-0.004501846846787276,-0.004501846846787276,-0.004501846846787276,-0.004501846846787276,-0.004501846846787276,-0.004501846846787276,-0.004501846846787276,-0.004501846846787276,-0.004501846846787276,-0.004501846846787276,-0.004501846846787276,-0.004501846846787276,-0.004821432536112412,-0.0038913581024437732,-0.0038913581024437732,-0.0038913581024437732,-0.0038913581024437732,-0.0038913581024437732,-0.0038913581024437732,-0.005713314967810031,-0.005713314967810031,-0.005713314967810031,-0.004501846846787276,-0.004501846846787276,-0.006971483745987439,-0.006971483745987439,-0.005713314967810031)
net_maxHPD=c(-1.8895523750433485, -0.06546068913188746,-0.06638210290911435,-0.06678936905868822,-0.06678936905868822,-0.06678936905868822,-0.06638210290911435,0.05007888900226161,0.0522151693109534,0.05123348216731281,0.05123348216731281,0.05123348216731281,0.05123348216731281,0.05120498337825673,1.4322448287531415,1.1831574109872887,0.3900538059489977,0.029465113534962617,0.029465113534962617,0.029465113534962617,0.029465113534962617,0.029465113534962617,0.029465113534962617,0.029465113534962617,0.028973674918974672,0.028973674918974672,0.028973674918974672,0.028973674918974672,0.028973674918974672,0.028973674918974672,0.028973674918974672,0.028973674918974672,0.028973674918974672,0.028973674918974672,0.028973674918974672,0.029465113534962617,0.029465113534962617,0.029465113534962617,0.029465113534962617,0.029465113534962617,0.029465113534962617,0.029465113534962617,0.029465113534962617,0.029465113534962617,0.029906978528547172,0.030095616993873024,0.030095616993873024,0.030033211943901322,0.03303895098065325,0.03943855340020561,0.04404428718551649,0.04404428718551649,0.04791922850487415,0.04699399415259182,0.047538192845767796,0.04791922850487415,0.04941895414954546,0.04962987175021842,0.05117634890525452,0.05198886003237153,0.05117634890525452,0.051449339474262806,0.05493204085090038,0.05493204085090038,0.05499189363471817,0.05499189363471817,0.05493204085090038,0.05493204085090038,0.05507600176370808,0.05507600176370808,0.05507600176370808,0.05575177924385549,0.05575177924385549,0.05583571915062509,0.05583571915062509,0.05575177924385549,0.05575177924385549,0.05575177924385549,0.05575177924385549,0.05575177924385549,0.05575177924385549,0.05575177924385549,0.05575177924385549,0.05575177924385549,0.05583571915062509,0.05583571915062509,0.05733325496239032,0.05741403211580291,0.05741403211580291,0.05741403211580291,0.05741403211580291,0.05741403211580291,0.05583571915062509,0.05583571915062509,0.05583571915062509,0.05741403211580291,0.05770528366306941,0.05583571915062509,0.05583571915062509,0.05770528366306941)
remove_na = !is.na(net_rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(-10.075232706547615, 1.5754693116284557), xlim = c(-188.6446989474747,-65.91514750739739), ylab = 'Net Rate', xlab = 'Time',lwd=2, main='Net diversification', col= '#504A4B' )
polygon(c(time, rev(time)), c(net_maxHPD[remove_na], rev(net_minHPD[remove_na])), col = alpha('#504A4B',0.3), border = NA)
lines(time,net_rate[remove_na], col = '#504A4B', lwd=2)
abline(h=0,lty=2)


time=c(-66.52879526459779, -67.75609077899855,-68.98338629339932,-70.21068180780009,-71.43797732220088,-72.66527283660164,-73.89256835100241,-75.11986386540318,-76.34715937980397,-77.57445489420473,-78.8017504086055,-80.02904592300627,-81.25634143740706,-82.48363695180782,-83.71093246620859,-84.93822798060938,-86.16552349501015,-87.39281900941091,-88.62011452381168,-89.84741003821247,-91.07470555261324,-92.302001067014,-93.52929658141477,-94.75659209581556,-95.98388761021633,-97.2111831246171,-98.43847863901789,-99.66577415341865,-100.89306966781942,-102.12036518222018,-103.34766069662098,-104.57495621102174,-105.80225172542251,-107.02954723982327,-108.25684275422407,-109.48413826862483,-110.7114337830256,-111.93872929742639,-113.16602481182716,-114.39332032622792,-115.62061584062869,-116.84791135502948,-118.07520686943025,-119.30250238383101,-120.52979789823178,-121.75709341263257,-122.98438892703334,-124.2116844414341,-125.4389799558349,-126.66627547023566,-127.89357098463643,-129.1208664990372,-130.34816201343796,-131.57545752783875,-132.80275304223952,-134.03004855664028,-135.25734407104108,-136.48463958544184,-137.7119350998426,-138.9392306142434,-140.16652612864414,-141.39382164304493,-142.6211171574457,-143.84841267184646,-145.07570818624725,-146.30300370064802,-147.53029921504879,-148.75759472944958,-149.98489024385034,-151.2121857582511,-152.4394812726519,-153.66677678705264,-154.89407230145343,-156.1213678158542,-157.34866333025496,-158.57595884465576,-159.80325435905652,-161.0305498734573,-162.25784538785808,-163.48514090225885,-164.7124364166596,-165.9397319310604,-167.16702744546114,-168.39432295986194,-169.6216184742627,-170.84891398866347,-172.07620950306426,-173.30350501746503,-174.5308005318658,-175.7580960462666,-176.98539156066735,-178.21268707506812,-179.4399825894689,-180.66727810386965,-181.89457361827044,-183.1218691326712,-184.34916464707197,-185.57646016147277,-186.80375567587353,-188.0310511902743)
rate=c(0.1837643865163142, 5.4355494374061335,5.446355871228068,5.442373283749692,5.441764651208447,5.443101762204685,5.4519882906981305,10.853179497029464,21.428545015979402,22.154106447155392,22.154106447155392,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.172256197045574,22.172256197045574,22.200621953920365,22.20898741931117,22.20898741931117,22.20898741931117,22.20898741931117,22.20898741931117,22.228808825149844,22.30620835532536,22.32271075687751,22.346384582451847,22.346384582451847,22.371672313151752,22.38582312299498,22.38582312299498,22.38582312299498,22.38582312299498,22.365403204642295,22.365403204642295,22.365403204642295,22.365403204642295,22.37883893449979,22.38767704011794,22.38767704011794,22.521267186062225,22.87370995841586,23.681175190436765,24.30443972335569,25.24670639249388,25.708610346518853,26.261859726888794,26.63862829032414,26.8871317712944,28.151792419939067,28.456412761377095,28.94696907330154,29.574743896968627,30.144189082604715,32.100366683154114,35.93645290481609,36.081215547948474,36.55873545177491,37.423661930373335,39.05340843321781,39.24681663270342,39.60125378932418,39.95372937865313,40.002017445561115,40.0296194535157,40.0296194535157,40.08785672377887,40.08785672377887,40.34382154307405,40.34382154307405,40.34382154307405,40.34382154307405,40.364950594358305,40.41405678511235,40.4174326434446,40.42708449199656,40.42708449199656,40.42708449199656,40.42708449199656,40.42708449199656,40.39081608963666,40.35054444617237,40.330655544027515,40.330655544027515,40.330655544027515,40.40028266781693,40.40028266781693,40.40028266781693,40.40028266781693,40.42413411436561,40.323685068354585,40.38118097914707,40.38118097914707)
minHPD=c(0.1837643865163142, 5.4355494374061335,5.446355871228068,5.442373283749692,5.441764651208447,5.443101762204685,5.4519882906981305,10.853179497029464,21.428545015979402,22.154106447155392,22.154106447155392,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.172256197045574,22.172256197045574,22.200621953920365,22.20898741931117,22.20898741931117,22.20898741931117,22.20898741931117,22.20898741931117,22.228808825149844,22.30620835532536,22.32271075687751,22.346384582451847,22.346384582451847,22.371672313151752,22.38582312299498,22.38582312299498,22.38582312299498,22.38582312299498,22.365403204642295,22.365403204642295,22.365403204642295,22.365403204642295,22.37883893449979,22.38767704011794,22.38767704011794,22.521267186062225,22.87370995841586,23.681175190436765,24.30443972335569,25.24670639249388,25.708610346518853,26.261859726888794,26.63862829032414,26.8871317712944,28.151792419939067,28.456412761377095,28.94696907330154,29.574743896968627,30.144189082604715,32.100366683154114,35.93645290481609,36.081215547948474,36.55873545177491,37.423661930373335,39.05340843321781,39.24681663270342,39.60125378932418,39.95372937865313,40.002017445561115,40.0296194535157,40.0296194535157,40.08785672377887,40.08785672377887,40.34382154307405,40.34382154307405,40.34382154307405,40.34382154307405,40.364950594358305,40.41405678511235,40.4174326434446,40.42708449199656,40.42708449199656,40.42708449199656,40.42708449199656,40.42708449199656,40.39081608963666,40.35054444617237,40.330655544027515,40.330655544027515,40.330655544027515,40.40028266781693,40.40028266781693,40.40028266781693,40.40028266781693,40.42413411436561,40.323685068354585,40.38118097914707,40.38118097914707)
maxHPD=c(0.1837643865163142, 5.4355494374061335,5.446355871228068,5.442373283749692,5.441764651208447,5.443101762204685,5.4519882906981305,10.853179497029464,21.428545015979402,22.154106447155392,22.154106447155392,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.1660252411084,22.172256197045574,22.172256197045574,22.200621953920365,22.20898741931117,22.20898741931117,22.20898741931117,22.20898741931117,22.20898741931117,22.228808825149844,22.30620835532536,22.32271075687751,22.346384582451847,22.346384582451847,22.371672313151752,22.38582312299498,22.38582312299498,22.38582312299498,22.38582312299498,22.365403204642295,22.365403204642295,22.365403204642295,22.365403204642295,22.37883893449979,22.38767704011794,22.38767704011794,22.521267186062225,22.87370995841586,23.681175190436765,24.30443972335569,25.24670639249388,25.708610346518853,26.261859726888794,26.63862829032414,26.8871317712944,28.151792419939067,28.456412761377095,28.94696907330154,29.574743896968627,30.144189082604715,32.100366683154114,35.93645290481609,36.081215547948474,36.55873545177491,37.423661930373335,39.05340843321781,39.24681663270342,39.60125378932418,39.95372937865313,40.002017445561115,40.0296194535157,40.0296194535157,40.08785672377887,40.08785672377887,40.34382154307405,40.34382154307405,40.34382154307405,40.34382154307405,40.364950594358305,40.41405678511235,40.4174326434446,40.42708449199656,40.42708449199656,40.42708449199656,40.42708449199656,40.42708449199656,40.39081608963666,40.35054444617237,40.330655544027515,40.330655544027515,40.330655544027515,40.40028266781693,40.40028266781693,40.40028266781693,40.40028266781693,40.42413411436561,40.323685068354585,40.38118097914707,40.38118097914707)
remove_na = !is.na(rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(0, 44.46979294119622), xlim = c(-188.6446989474747,-65.91514750739739), ylab = 'Mean longevity', xlab = 'Time',main='Longevity' )
polygon(c(time, rev(time)), c(maxHPD[remove_na], rev(minHPD[remove_na])), col = alpha('#756bb1',0.3), border = NA)
lines(time,rate[remove_na], col = '#756bb1', lwd=4)

n <- dev.off()