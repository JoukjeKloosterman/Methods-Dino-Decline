

pdf(file='./RTT_plots.pdf',width=10, height=15)
par(mfrow=c(3,2))
library(scales)

time=c(-66.19201517792709, -66.38341757261679,-66.57481996730647,-66.76622236199617,-66.95762475668585,-67.14902715137555,-67.34042954606525,-67.53183194075493,-67.72323433544463,-67.9146367301343,-68.10603912482401,-68.29744151951368,-68.48884391420339,-68.68024630889306,-68.87164870358276,-69.06305109827244,-69.25445349296214,-69.44585588765182,-69.63725828234152,-69.82866067703122,-70.0200630717209,-70.2114654664106,-70.40286786110028,-70.59427025578998,-70.78567265047965,-70.97707504516936,-71.16847743985903,-71.35987983454874,-71.55128222923841,-71.74268462392811,-71.93408701861779,-72.12548941330749,-72.3168918079972,-72.50829420268687,-72.69969659737657,-72.89109899206625,-73.08250138675595,-73.27390378144563,-73.46530617613533,-73.656708570825,-73.8481109655147,-74.03951336020438,-74.23091575489408,-74.42231814958376,-74.61372054427346,-74.80512293896317,-74.99652533365284,-75.18792772834254,-75.37933012303222,-75.57073251772192,-75.7621349124116,-75.9535373071013,-76.14493970179097,-76.33634209648068,-76.52774449117035,-76.71914688586006,-76.91054928054976,-77.10195167523943,-77.29335406992914,-77.48475646461881,-77.67615885930852,-77.86756125399819,-78.0589636486879,-78.25036604337757,-78.44176843806727,-78.63317083275695,-78.82457322744665,-79.01597562213632,-79.20737801682603,-79.39878041151573,-79.5901828062054,-79.78158520089511,-79.97298759558478,-80.16438999027449,-80.35579238496416,-80.54719477965386,-80.73859717434354,-80.92999956903324,-81.12140196372292,-81.31280435841262,-81.5042067531023,-81.695609147792,-81.8870115424817,-82.07841393717138,-82.26981633186108,-82.46121872655075,-82.65262112124046,-82.84402351593013,-83.03542591061984,-83.22682830530951,-83.41823069999921,-83.60963309468889,-83.80103548937859,-83.99243788406827,-84.18384027875797,-84.37524267344767,-84.56664506813735,-84.75804746282705,-84.94944985751673,-85.14085225220643)
rate=c(0.07742947687771373, 0.07704830876958862,0.07698278934274633,0.07686115935603569,0.07686115935603569,0.07686115935603569,0.07675548753907252,0.07675548753907252,0.07675548753907252,0.0768052069403197,0.0768052069403197,0.0768052069403197,0.0768052069403197,0.0768052069403197,0.0768052069403197,0.0768052069403197,0.0768052069403197,0.07686115935603569,0.0768052069403197,0.07675548753907252,0.07668315647921481,0.07668315647921481,0.07632732296774,0.07632732296774,0.07616035902059516,0.07616035902059516,0.07602876349514327,0.07565763768344155,0.07565763768344155,0.07565763768344155,0.07534635838106576,0.0752176553952078,0.07517136628746188,0.07509111581880848,0.07509111581880848,0.07509111581880848,0.07474834517902659,0.07467766153032135,0.07467766153032135,0.07467766153032135,0.07467766153032135,0.0746113799061208,0.0746113799061208,0.07449451118626763,0.07449451118626763,0.07421624587943033,0.07373373781005449,0.07388619808074362,0.07388619808074362,0.07388619808074362,0.07388619808074362,0.07388619808074362,0.07373373781005449,0.07373373781005449,0.07373373781005449,0.07363057609290674,0.07363057609290674,0.07363057609290674,0.07354355260585455,0.07354355260585455,0.07354355260585455,0.07354355260585455,0.07373373781005449,0.07373373781005449,0.07388619808074362,0.07388619808074362,0.07449451118626763,0.07449451118626763,0.0746113799061208,0.07449451118626763,0.07421624587943033,0.0746113799061208,0.0746113799061208,0.07467766153032135,0.07474834517902659,0.07541501207516009,0.07647029453499263,0.07668315647921481,0.07750359699821305,0.07858180369865225,0.07992761339543336,0.0818811874663603,0.08718772228616103,0.10529845148246456,0.47807745590361983,0.6966861448675876,0.7770516896045272,0.813416310125184,0.8455413288034554,0.8638962465148226,0.8809073341529664,0.9009769756114745,0.9208965335030552,0.9307507309574414,0.9375384415647581,0.9503392026232704,0.9587995002449269,0.9624175039945743,0.96279756043136,0.96279756043136)
minHPD=c(0.01918685538070362, 0.01918685538070362,0.014954081773999756,0.018311152897334797,0.01918685538070362,0.01918685538070362,0.020183826613063473,0.020183826613063473,0.020183826613063473,0.020183826613063473,0.020183826613063473,0.020183826613063473,0.020183826613063473,0.020183826613063473,0.020183826613063473,0.020183826613063473,0.020183826613063473,0.020183826613063473,0.020183826613063473,0.020183826613063473,0.01918547130046143,0.01918547130046143,0.021079765287607428,0.021079765287607428,0.021079765287607428,0.021079765287607428,0.022188289642918864,0.022188289642918864,0.022188289642918864,0.022188289642918864,0.022188289642918864,0.01918547130046143,0.01918547130046143,0.01918547130046143,0.01918547130046143,0.01918547130046143,0.01734787844460204,0.018311152897334797,0.01734787844460204,0.01734787844460204,0.01734787844460204,0.01734787844460204,0.01734787844460204,0.019017429709457977,0.019017429709457977,0.019017429709457977,0.016631940520124455,0.016631940520124455,0.01918547130046143,0.01918547130046143,0.01918547130046143,0.01918547130046143,0.01918547130046143,0.019017429709457977,0.019017429709457977,0.018311152897334797,0.018311152897334797,0.018311152897334797,0.018311152897334797,0.018311152897334797,0.019017429709457977,0.019017429709457977,0.01918547130046143,0.01918547130046143,0.019017429709457977,0.019017429709457977,0.019017429709457977,0.01918547130046143,0.019017429709457977,0.019017429709457977,0.019017429709457977,0.019017429709457977,0.015557512710635029,0.014384608677634414,0.012926101425037776,0.013814545951818495,0.0035481025264234973,0.0035481025264234973,0.0035481025264234973,0.0035481025264234973,0.0035481025264234973,0.0035481025264234973,0.006461869134131631,0.015557512710635029,0.02022158283827863,0.015557512710635029,0.015557512710635029,0.024773751350656563,0.051944621579578194,0.051944621579578194,0.051944621579578194,0.06000093129349355,0.064258349316345,0.08132909966389483,0.08132909966389483,0.08132909966389483,0.0884948011102493,0.2649857297900495,0.2649857297900495,0.2228220203697559)
maxHPD=c(0.16612035237139752, 0.15752810374118129,0.14898666374050012,0.14898666374050012,0.148629773616252,0.148629773616252,0.14736205927324933,0.14736205927324933,0.14736205927324933,0.14786230261776098,0.14736205927324933,0.14786230261776098,0.14786230261776098,0.14786230261776098,0.14786230261776098,0.14786230261776098,0.14786230261776098,0.14786230261776098,0.14786230261776098,0.14736205927324933,0.14678840822643607,0.14678840822643607,0.14786230261776098,0.14786230261776098,0.14736205927324933,0.14736205927324933,0.14786230261776098,0.14736205927324933,0.14736205927324933,0.14736205927324933,0.14736205927324933,0.1436581527139606,0.1436581527139606,0.1435322366231739,0.1435322366231739,0.1434716577880225,0.1401683321762577,0.1401683321762577,0.1401683321762577,0.1401683321762577,0.1401683321762577,0.1401683321762577,0.1401683321762577,0.1424707890167615,0.1424707890167615,0.14280832876339475,0.1401683321762577,0.1401683321762577,0.1435322366231739,0.1435322366231739,0.1435322366231739,0.1435322366231739,0.1435322366231739,0.1436581527139606,0.1436581527139606,0.1436581527139606,0.1436581527139606,0.1436581527139606,0.1436581527139606,0.1436581527139606,0.14487481436063995,0.14600731405983597,0.14626975356538138,0.14626975356538138,0.14626975356538138,0.14678840822643607,0.14626975356538138,0.14736205927324933,0.14736205927324933,0.14736205927324933,0.14736205927324933,0.14786230261776098,0.14786230261776098,0.14736205927324933,0.15031738928383923,0.1628735359020259,0.16907866219158582,0.20166903830369967,0.34001336062615856,0.500361114825472,0.621714308443984,0.6918014348173174,0.8889927721821682,1.2294095440636952,1.4483356164898151,1.5505561918201867,1.6378508283434436,1.7125630646941332,1.7588257852917564,1.7938658909263627,1.8020704238675882,1.837924988055813,1.9004808803947224,1.9426919415653239,1.9487753766376086,1.9975492047098895,2.007477312209619,2.166120776348135,2.166120776348135,2.118745060204207)
remove_na = !is.na(rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(0, 2.3827328539829487), xlim = c(-85.23655344955127,-66.09631398058225), ylab = 'Speciation rate', xlab = 'Time',main='Speciation (PyRate_Inputs_2_RJMCMC_Grj_mcmc)' )
polygon(c(time, rev(time)), c(maxHPD[remove_na], rev(minHPD[remove_na])), col = alpha('#4c4cec',0.3), border = NA)
lines(time,rate[remove_na], col = '#4c4cec', lwd=2)
mids=c(-66.19298185668816, -66.38631760889996,-66.57965336111178,-66.77298911332358,-66.9663248655354,-67.15966061774719,-67.35299636995902,-67.54633212217081,-67.73966787438263,-67.93300362659443,-68.12633937880625,-68.31967513101804,-68.51301088322987,-68.70634663544166,-68.89968238765348,-69.09301813986528,-69.28635389207707,-69.4796896442889,-69.67302539650069,-69.86636114871251,-70.05969690092431,-70.25303265313613,-70.44636840534793,-70.63970415755975,-70.83303990977154,-71.02637566198337,-71.21971141419516,-71.41304716640698,-71.60638291861878,-71.7997186708306,-71.9930544230424,-72.18639017525422,-72.37972592746601,-72.57306167967783,-72.76639743188963,-72.95973318410145,-73.15306893631325,-73.34640468852507,-73.53974044073686,-73.73307619294869,-73.92641194516048,-74.1197476973723,-74.3130834495841,-74.50641920179592,-74.69975495400772,-74.89309070621954,-75.08642645843133,-75.27976221064316,-75.47309796285495,-75.66643371506677,-75.85976946727857,-76.05310521949036,-76.24644097170219,-76.43977672391398,-76.6331124761258,-76.8264482283376,-77.01978398054942,-77.21311973276121,-77.40645548497304,-77.59979123718483,-77.79312698939665,-77.98646274160845,-78.17979849382027,-78.37313424603207,-78.56646999824389,-78.75980575045568,-78.9531415026675,-79.1464772548793,-79.33981300709112,-79.53314875930292,-79.72648451151474,-79.91982026372654,-80.11315601593836,-80.30649176815015,-80.49982752036198,-80.69316327257377,-80.88649902478559,-81.07983477699739,-81.27317052920921,-81.466506281421,-81.65984203363283,-81.85317778584462,-82.04651353805644,-82.23984929026824,-82.43318504248003,-82.62652079469186,-82.81985654690365,-83.01319229911547,-83.20652805132727,-83.39986380353909,-83.59319955575089,-83.78653530796271,-83.9798710601745,-84.17320681238633,-84.36654256459812,-84.55987831680994,-84.75321406902174,-84.94654982123356,-85.13988557344535)
counts=c(0.008, 0.007,0.003,0.003,0.002,0.003,0.001,0.0,0.002,0.001,0.001,0.0,0.002,0.0,0.003,0.002,0.002,0.001,0.0,0.001,0.001,0.004,0.002,0.001,0.002,0.001,0.004,0.0,0.001,0.003,0.006,0.002,0.001,0.0,0.003,0.004,0.002,0.001,0.001,0.004,0.002,0.001,0.002,0.002,0.002,0.004,0.001,0.001,0.0,0.0,0.001,0.004,0.0,0.002,0.001,0.0,0.0,0.001,0.002,0.001,0.003,0.001,0.001,0.003,0.002,0.005,0.003,0.001,0.001,0.002,0.005,0.005,0.009,0.008,0.014,0.01,0.016,0.025,0.026,0.036,0.073,0.129,0.212,0.152,0.095,0.047,0.035,0.027,0.015,0.029,0.021,0.011,0.015,0.02,0.01,0.007,0.001,0.001,0.001)
plot(mids,counts,type = 'h', xlim = c(-85.23655344955127,-66.09631398058225), ylim=c(0,0.212), ylab = 'Frequency of rate shift', xlab = 'Time',lwd=5,col='#4c4cec')
bf2 = 0.025660947749811074
bf6 = 0.16290245039753495
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)

time=c(-66.19201517792709, -66.38341757261679,-66.57481996730647,-66.76622236199617,-66.95762475668585,-67.14902715137555,-67.34042954606525,-67.53183194075493,-67.72323433544463,-67.9146367301343,-68.10603912482401,-68.29744151951368,-68.48884391420339,-68.68024630889306,-68.87164870358276,-69.06305109827244,-69.25445349296214,-69.44585588765182,-69.63725828234152,-69.82866067703122,-70.0200630717209,-70.2114654664106,-70.40286786110028,-70.59427025578998,-70.78567265047965,-70.97707504516936,-71.16847743985903,-71.35987983454874,-71.55128222923841,-71.74268462392811,-71.93408701861779,-72.12548941330749,-72.3168918079972,-72.50829420268687,-72.69969659737657,-72.89109899206625,-73.08250138675595,-73.27390378144563,-73.46530617613533,-73.656708570825,-73.8481109655147,-74.03951336020438,-74.23091575489408,-74.42231814958376,-74.61372054427346,-74.80512293896317,-74.99652533365284,-75.18792772834254,-75.37933012303222,-75.57073251772192,-75.7621349124116,-75.9535373071013,-76.14493970179097,-76.33634209648068,-76.52774449117035,-76.71914688586006,-76.91054928054976,-77.10195167523943,-77.29335406992914,-77.48475646461881,-77.67615885930852,-77.86756125399819,-78.0589636486879,-78.25036604337757,-78.44176843806727,-78.63317083275695,-78.82457322744665,-79.01597562213632,-79.20737801682603,-79.39878041151573,-79.5901828062054,-79.78158520089511,-79.97298759558478,-80.16438999027449,-80.35579238496416,-80.54719477965386,-80.73859717434354,-80.92999956903324,-81.12140196372292,-81.31280435841262,-81.5042067531023,-81.695609147792,-81.8870115424817,-82.07841393717138,-82.26981633186108,-82.46121872655075,-82.65262112124046,-82.84402351593013,-83.03542591061984,-83.22682830530951,-83.41823069999921,-83.60963309468889,-83.80103548937859,-83.99243788406827,-84.18384027875797,-84.37524267344767,-84.56664506813735,-84.75804746282705,-84.94944985751673,-85.14085225220643)
rate=c(1.8013386694736027, 1.5565037305601153,1.2204614576019668,0.2566959134731248,0.09598939493867295,0.08210807043636925,0.07533612015051909,0.07425022088628709,0.0732737241585539,0.07299471333199821,0.07286884801486761,0.07281538047300128,0.07252552605285328,0.07269677319826834,0.07252552605285328,0.07235566944828242,0.07235566944828242,0.07212202738329179,0.07207054364068546,0.07203406582894828,0.07197658919861855,0.0719934104542144,0.07197658919861855,0.07197658919861855,0.07197658919861855,0.07189484218525921,0.07182011160075988,0.07182011160075988,0.07182011160075988,0.07182011160075988,0.0717992206439255,0.07172895663176412,0.07147615616742392,0.07136175891270782,0.07136175891270782,0.07136175891270782,0.07131163632297252,0.07115707281200688,0.07111890697485601,0.07111890697485601,0.07111890697485601,0.07115707281200688,0.07111890697485601,0.07111890697485601,0.07111890697485601,0.07111890697485601,0.07106148871753834,0.07106148871753834,0.07106148871753834,0.07106148871753834,0.07111890697485601,0.07111890697485601,0.07106148871753834,0.07106148871753834,0.07106148871753834,0.0709853656285658,0.0709853656285658,0.0709853656285658,0.0709853656285658,0.07106148871753834,0.07106148871753834,0.07106148871753834,0.07106148871753834,0.07106148871753834,0.07106148871753834,0.07106148871753834,0.07106148871753834,0.07115707281200688,0.07111890697485601,0.07115707281200688,0.07131163632297252,0.07136175891270782,0.07142166106720549,0.07142166106720549,0.0717992206439255,0.07182011160075988,0.07182011160075988,0.07187918817294604,0.0719630738560014,0.0719630738560014,0.07207054364068546,0.07251653001540657,0.07286884801486761,0.0728802702550112,0.0728802702550112,0.0728802702550112,0.07288405364753602,0.07299471333199821,0.07299471333199821,0.07311693480640112,0.07338652383971808,0.07431483724729676,0.07457260794038378,0.07497840332269165,0.0760627300236347,0.07653244268297751,0.07735440073307606,0.07771560389395672,0.07771560389395672,0.07771560389395672)
minHPD=c(0.46074601941685533, 0.02590448392284321,0.013762061970347492,0.013762061970347492,0.013762061970347492,0.012608676317648872,0.012608676317648872,0.013762061970347492,0.018530516704904278,0.017754854626213103,0.019459941407909173,0.012608676317648872,0.015065976707026862,0.015345889956995401,0.0161017910145234,0.012608676317648872,0.012608676317648872,0.015065976707026862,0.015345889956995401,0.015345889956995401,0.0161017910145234,0.0161017910145234,0.0161017910145234,0.0161017910145234,0.0161017910145234,0.01651638459534624,0.017754854626213103,0.017754854626213103,0.017754854626213103,0.017754854626213103,0.017754854626213103,0.017754854626213103,0.018530516704904278,0.018983280516468803,0.018969109665747684,0.018969109665747684,0.018969109665747684,0.018969109665747684,0.019459941407909173,0.018969109665747684,0.018969109665747684,0.018969109665747684,0.020211992738440647,0.020211992738440647,0.020211992738440647,0.020211992738440647,0.020211992738440647,0.020211992738440647,0.020211992738440647,0.020211992738440647,0.020211992738440647,0.020211992738440647,0.020211992738440647,0.020211992738440647,0.020211992738440647,0.020211992738440647,0.020211992738440647,0.020211992738440647,0.018969109665747684,0.018969109665747684,0.018969109665747684,0.018969109665747684,0.018969109665747684,0.018969109665747684,0.018969109665747684,0.018969109665747684,0.018969109665747684,0.017754854626213103,0.017754854626213103,0.01651638459534624,0.015345889956995401,0.015065976707026862,0.013762061970347492,0.013762061970347492,0.015065976707026862,0.013762061970347492,0.013762061970347492,0.013762061970347492,0.015345889956995401,0.015345889956995401,0.018969109665747684,0.018969109665747684,0.0161017910145234,0.015345889956995401,0.0161017910145234,0.015345889956995401,0.018530516704904278,0.018969109665747684,0.015345889956995401,0.013762061970347492,0.017754854626213103,0.015345889956995401,0.015345889956995401,0.015345889956995401,0.015345889956995401,0.015345889956995401,0.015345889956995401,0.015345889956995401,0.015345889956995401,0.015345889956995401)
maxHPD=c(4.286448405782893, 3.8320386876301873,3.3430876532592877,2.3424340088762086,1.866205053777006,1.380892046698536,0.6594736814631399,0.1768833709417114,0.15505918834431462,0.14970262164987944,0.1477118154097567,0.13325484260215323,0.13325484260215323,0.13325484260215323,0.13325484260215323,0.12925386407605224,0.12925386407605224,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1271623502980249,0.1274261635725913,0.12702997791647097,0.12702997791647097,0.12702997791647097,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.12702997791647097,0.1271623502980249,0.1271623502980249,0.1271623502980249,0.1271623502980249,0.1271623502980249,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.1274261635725913,0.13042856311136866,0.13325484260215323,0.13609272999161717,0.14617220162233083,0.1476843263328605,0.1477118154097567,0.1477118154097567,0.14970262164987944,0.14970262164987944,0.15579907072146731,0.15786225327634648,0.15674775496313906,0.16362290836266702,0.1773272462908284,0.20939875521524604,0.26220338878457417,0.34279829397350026,0.4300931518419268,0.6658265480453116,0.8433585043698641,0.8695100821112016,0.8695100821112016,0.8695100821112016)
remove_na = !is.na(rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(0, 4.7150932463611825), xlim = c(-85.23655344955127,-66.09631398058225), ylab = 'Extinction rate', xlab = 'Time',main='Extinction' )
polygon(c(time, rev(time)), c(maxHPD[remove_na], rev(minHPD[remove_na])), col = alpha('#e34a33',0.3), border = NA)
lines(time,rate[remove_na], col = '#e34a33', lwd=2)
mids=c(-66.19298185668816, -66.38631760889996,-66.57965336111178,-66.77298911332358,-66.9663248655354,-67.15966061774719,-67.35299636995902,-67.54633212217081,-67.73966787438263,-67.93300362659443,-68.12633937880625,-68.31967513101804,-68.51301088322987,-68.70634663544166,-68.89968238765348,-69.09301813986528,-69.28635389207707,-69.4796896442889,-69.67302539650069,-69.86636114871251,-70.05969690092431,-70.25303265313613,-70.44636840534793,-70.63970415755975,-70.83303990977154,-71.02637566198337,-71.21971141419516,-71.41304716640698,-71.60638291861878,-71.7997186708306,-71.9930544230424,-72.18639017525422,-72.37972592746601,-72.57306167967783,-72.76639743188963,-72.95973318410145,-73.15306893631325,-73.34640468852507,-73.53974044073686,-73.73307619294869,-73.92641194516048,-74.1197476973723,-74.3130834495841,-74.50641920179592,-74.69975495400772,-74.89309070621954,-75.08642645843133,-75.27976221064316,-75.47309796285495,-75.66643371506677,-75.85976946727857,-76.05310521949036,-76.24644097170219,-76.43977672391398,-76.6331124761258,-76.8264482283376,-77.01978398054942,-77.21311973276121,-77.40645548497304,-77.59979123718483,-77.79312698939665,-77.98646274160845,-78.17979849382027,-78.37313424603207,-78.56646999824389,-78.75980575045568,-78.9531415026675,-79.1464772548793,-79.33981300709112,-79.53314875930292,-79.72648451151474,-79.91982026372654,-80.11315601593836,-80.30649176815015,-80.49982752036198,-80.69316327257377,-80.88649902478559,-81.07983477699739,-81.27317052920921,-81.466506281421,-81.65984203363283,-81.85317778584462,-82.04651353805644,-82.23984929026824,-82.43318504248003,-82.62652079469186,-82.81985654690365,-83.01319229911547,-83.20652805132727,-83.39986380353909,-83.59319955575089,-83.78653530796271,-83.9798710601745,-84.17320681238633,-84.36654256459812,-84.55987831680994,-84.75321406902174,-84.94654982123356,-85.13988557344535)
counts=c(0.097, 0.168,0.243,0.156,0.139,0.131,0.032,0.017,0.007,0.007,0.009,0.001,0.003,0.002,0.002,0.0,0.003,0.002,0.002,0.002,0.003,0.0,0.001,0.001,0.004,0.002,0.001,0.001,0.0,0.001,0.004,0.001,0.001,0.001,0.001,0.001,0.003,0.0,0.001,0.0,0.002,0.001,0.001,0.001,0.002,0.001,0.0,0.0,0.0,0.001,0.0,0.001,0.001,0.001,0.0,0.0,0.001,0.001,0.002,0.0,0.0,0.0,0.0,0.002,0.001,0.002,0.001,0.001,0.003,0.001,0.002,0.0,0.004,0.001,0.0,0.003,0.003,0.002,0.004,0.005,0.005,0.003,0.001,0.001,0.003,0.004,0.004,0.004,0.006,0.012,0.014,0.011,0.021,0.018,0.017,0.003,0.001,0.001,0.0)
plot(mids,counts,type = 'h', xlim = c(-85.23655344955127,-66.09631398058225), ylim=c(0,0.243), ylab = 'Frequency of rate shift', xlab = 'Time',lwd=5,col='#e34a33')
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
#Net Diversification Rate
time=c(-66.19201517792709, -66.38341757261679,-66.57481996730647,-66.76622236199617,-66.95762475668585,-67.14902715137555,-67.34042954606525,-67.53183194075493,-67.72323433544463,-67.9146367301343,-68.10603912482401,-68.29744151951368,-68.48884391420339,-68.68024630889306,-68.87164870358276,-69.06305109827244,-69.25445349296214,-69.44585588765182,-69.63725828234152,-69.82866067703122,-70.0200630717209,-70.2114654664106,-70.40286786110028,-70.59427025578998,-70.78567265047965,-70.97707504516936,-71.16847743985903,-71.35987983454874,-71.55128222923841,-71.74268462392811,-71.93408701861779,-72.12548941330749,-72.3168918079972,-72.50829420268687,-72.69969659737657,-72.89109899206625,-73.08250138675595,-73.27390378144563,-73.46530617613533,-73.656708570825,-73.8481109655147,-74.03951336020438,-74.23091575489408,-74.42231814958376,-74.61372054427346,-74.80512293896317,-74.99652533365284,-75.18792772834254,-75.37933012303222,-75.57073251772192,-75.7621349124116,-75.9535373071013,-76.14493970179097,-76.33634209648068,-76.52774449117035,-76.71914688586006,-76.91054928054976,-77.10195167523943,-77.29335406992914,-77.48475646461881,-77.67615885930852,-77.86756125399819,-78.0589636486879,-78.25036604337757,-78.44176843806727,-78.63317083275695,-78.82457322744665,-79.01597562213632,-79.20737801682603,-79.39878041151573,-79.5901828062054,-79.78158520089511,-79.97298759558478,-80.16438999027449,-80.35579238496416,-80.54719477965386,-80.73859717434354,-80.92999956903324,-81.12140196372292,-81.31280435841262,-81.5042067531023,-81.695609147792,-81.8870115424817,-82.07841393717138,-82.26981633186108,-82.46121872655075,-82.65262112124046,-82.84402351593013,-83.03542591061984,-83.22682830530951,-83.41823069999921,-83.60963309468889,-83.80103548937859,-83.99243788406827,-84.18384027875797,-84.37524267344767,-84.56664506813735,-84.75804746282705,-84.94944985751673,-85.14085225220643)
net_rate=c(-1.991661797216019, -1.6808066007362699,-1.2392970422152396,-0.6771643291801428,-0.41231583755625867,-0.21195009341430107,-0.056810465682651856,-0.02252368736900038,-0.006765093833144397,-0.002849975751379025,0.0005967309381520239,0.003593123714207158,0.004720945707614944,0.005221986669999463,0.005345725757056969,0.005433346437655572,0.005399570963046373,0.005911154366565181,0.006029440952723827,0.005875638995829058,0.0059053116878344455,0.005846335928564892,0.005571353365577259,0.005494253237936747,0.0053371373671209,0.0056215043928888086,0.005807570715395299,0.005085685579801559,0.005085685579801559,0.005083217147141103,0.0047241729505575775,0.003923581895019627,0.003880292016923909,0.0038567746105432127,0.003891656570518861,0.0038101354494295293,0.003473664978926333,0.003353864825807982,0.003551056967214849,0.0035978675854721554,0.0035917585356145813,0.003489342756708446,0.003638971645562594,0.0037224242950160964,0.0037359786655463637,0.003723842951932652,0.0035893808432948984,0.003615130592796646,0.003563591094091129,0.003572282206372756,0.00356194631509871,0.00356194631509871,0.0035558191860640743,0.0035939509821250105,0.003578615999704089,0.0034988673020093512,0.0034988673020093512,0.0034988673020093512,0.0033729901225965854,0.003222461221984886,0.003461308682342089,0.0035505603478544587,0.0037442789656241824,0.0037442789656241824,0.003728441705140129,0.0036557418134074956,0.0038759050416907717,0.0038921247790554055,0.004238819011961183,0.003985691907361958,0.003652588377745396,0.0037479421915052337,0.0043628195493769905,0.004910382486406871,0.006989920023678341,0.011477498093815292,0.017315379625221648,0.021618199491533433,0.029550064467703967,0.042782427058072954,0.058841991015508625,0.08180264868437662,0.13724196957619858,0.2702447022397564,0.46439037444552483,0.613192871558756,0.6975326698499148,0.7461226235734835,0.7839623701261028,0.8094308115245771,0.8236426229457849,0.8452499000251533,0.8665289289019189,0.8702711952824355,0.8664812444549779,0.8790013597762752,0.8732580650320894,0.875451020845471,0.877427530322909,0.8775142499426195)
net_minHPD=c(-4.368557349593704, -3.8341561567490907,-3.349030776213209,-2.3580311890686976,-1.8065888887338133,-1.3913267507246334,-0.6758857900246018,-0.15116627654062142,-0.10022616153725628,-0.10022616153725628,-0.1076199072573833,-0.10022616153725628,-0.09442651865751778,-0.09442651865751778,-0.09442651865751778,-0.09539227177033408,-0.09006020710283724,-0.09006020710283724,-0.08712443572300063,-0.08712443572300063,-0.08712443572300063,-0.08712443572300063,-0.08712443572300063,-0.08531022184095055,-0.08311884645724454,-0.08712443572300063,-0.08531022184095055,-0.07899554875537419,-0.07899554875537419,-0.07899554875537419,-0.07899554875537419,-0.07899554875537419,-0.07899554875537419,-0.07899554875537419,-0.07899554875537419,-0.07688208366914646,-0.07899554875537419,-0.07546453336413075,-0.07546453336413075,-0.07546453336413075,-0.07546453336413075,-0.07546453336413075,-0.07546453336413075,-0.07546453336413075,-0.07546453336413075,-0.07546453336413075,-0.07546453336413075,-0.07546453336413075,-0.07546453336413075,-0.07546453336413075,-0.07546453336413075,-0.07546453336413075,-0.07688208366914646,-0.07899554875537419,-0.07899554875537419,-0.07899554875537419,-0.07899554875537419,-0.07899554875537419,-0.07899554875537419,-0.07899554875537419,-0.08311884645724454,-0.07899554875537419,-0.08712443572300063,-0.08712443572300063,-0.08796875222542574,-0.08796875222542574,-0.08796875222542574,-0.09006020710283724,-0.09006020710283724,-0.09006020710283724,-0.09006020710283724,-0.09442651865751778,-0.09539227177033408,-0.09539227177033408,-0.10102646449863137,-0.09539227177033408,-0.1076199072573833,-0.1192974138404384,-0.1192974138404384,-0.1076199072573833,-0.1076199072573833,-0.1076199072573833,-0.1192974138404384,-0.1192974138404384,-0.11364811145329409,-0.07816966597442959,-0.07816966597442959,-0.08712443572300063,-0.05329424790906392,-0.05329424790906392,-0.05329424790906392,-0.0370876257573827,-0.021972373405452897,-0.06003869745608048,-0.19814974510624817,-0.19814974510624817,-0.19814974510624817,-0.3065491619840349,-0.1304434135510667,-0.1893845742449639)
net_maxHPD=c(-0.40747646259416365, 0.08003172187148411,0.12837895794722676,0.13519941143287229,0.22007699139193238,0.13519941143287229,0.13519941143287229,0.13519941143287229,0.12513773936932246,0.11569452706911881,0.0917099727550609,0.09005630316675095,0.0917099727550609,0.09123066223345075,0.09123066223345075,0.09005630316675095,0.09411997801238373,0.09005630316675095,0.0917099727550609,0.09123066223345075,0.09123066223345075,0.09123066223345075,0.09005630316675095,0.0917099727550609,0.0917099727550609,0.09123066223345075,0.0917099727550609,0.09411997801238373,0.09411997801238373,0.09411997801238373,0.09411997801238373,0.09411997801238373,0.09411997801238373,0.09123066223345075,0.09123066223345075,0.0917099727550609,0.0890604871605746,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.0890604871605746,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.0917099727550609,0.0917099727550609,0.08967520523425572,0.09626874369074635,0.0890604871605746,0.0890604871605746,0.08967520523425572,0.08967520523425572,0.08967520523425572,0.0890604871605746,0.08967520523425572,0.08967520523425572,0.0917099727550609,0.0890604871605746,0.08967520523425572,0.0917099727550609,0.09440756748224499,0.11779449882303619,0.1273646721485785,0.18542802065667707,0.31149123787715766,0.4837408238763639,0.5995491722993019,0.6961541589486661,0.883815822192553,1.1654389229739777,1.3908932781794348,1.5047770254565194,1.5813280785594892,1.6530731028121606,1.713248706771865,1.737170856989389,1.7693075357713428,1.8246426894867782,1.8754887543800953,1.9261137733978992,1.9261137733978992,2.075480852127178,2.1935678342289795,2.121819341637235,2.318732561051608,2.2639915393301258)
remove_na = !is.na(net_rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(-4.805413084553075, 2.550605817156769), xlim = c(-85.23655344955127,-66.09631398058225), ylab = 'Net Rate', xlab = 'Time',lwd=2, main='Net diversification', col= '#504A4B' )
polygon(c(time, rev(time)), c(net_maxHPD[remove_na], rev(net_minHPD[remove_na])), col = alpha('#504A4B',0.3), border = NA)
lines(time,net_rate[remove_na], col = '#504A4B', lwd=2)
abline(h=0,lty=2)


time=c(-66.19201517792709, -66.38341757261679,-66.57481996730647,-66.76622236199617,-66.95762475668585,-67.14902715137555,-67.34042954606525,-67.53183194075493,-67.72323433544463,-67.9146367301343,-68.10603912482401,-68.29744151951368,-68.48884391420339,-68.68024630889306,-68.87164870358276,-69.06305109827244,-69.25445349296214,-69.44585588765182,-69.63725828234152,-69.82866067703122,-70.0200630717209,-70.2114654664106,-70.40286786110028,-70.59427025578998,-70.78567265047965,-70.97707504516936,-71.16847743985903,-71.35987983454874,-71.55128222923841,-71.74268462392811,-71.93408701861779,-72.12548941330749,-72.3168918079972,-72.50829420268687,-72.69969659737657,-72.89109899206625,-73.08250138675595,-73.27390378144563,-73.46530617613533,-73.656708570825,-73.8481109655147,-74.03951336020438,-74.23091575489408,-74.42231814958376,-74.61372054427346,-74.80512293896317,-74.99652533365284,-75.18792772834254,-75.37933012303222,-75.57073251772192,-75.7621349124116,-75.9535373071013,-76.14493970179097,-76.33634209648068,-76.52774449117035,-76.71914688586006,-76.91054928054976,-77.10195167523943,-77.29335406992914,-77.48475646461881,-77.67615885930852,-77.86756125399819,-78.0589636486879,-78.25036604337757,-78.44176843806727,-78.63317083275695,-78.82457322744665,-79.01597562213632,-79.20737801682603,-79.39878041151573,-79.5901828062054,-79.78158520089511,-79.97298759558478,-80.16438999027449,-80.35579238496416,-80.54719477965386,-80.73859717434354,-80.92999956903324,-81.12140196372292,-81.31280435841262,-81.5042067531023,-81.695609147792,-81.8870115424817,-82.07841393717138,-82.26981633186108,-82.46121872655075,-82.65262112124046,-82.84402351593013,-83.03542591061984,-83.22682830530951,-83.41823069999921,-83.60963309468889,-83.80103548937859,-83.99243788406827,-84.18384027875797,-84.37524267344767,-84.56664506813735,-84.75804746282705,-84.94944985751673,-85.14085225220643)
rate=c(0.4792719119666164, 0.565187454173487,0.7543078812927672,1.3110418406204034,2.0206852546665743,3.3946310282193166,7.2205068437383355,9.593748731324862,11.302506764100992,11.802835591046945,12.353646751225318,12.812778833933235,13.000645094850691,13.071390531515014,13.09256699836183,13.109488626578953,13.109488626578953,13.187799372900084,13.219032847431174,13.226889437965012,13.249700482584402,13.242370518535886,13.25676416638421,13.249839453051615,13.25098155659439,13.299345445146496,13.374294132304223,13.376536178559913,13.376536178559913,13.376094512241352,13.384527087984706,13.393350512716875,13.42912180946008,13.458631412121788,13.464952715173116,13.468295760113667,13.473992730846732,13.513018197134187,13.533011256131351,13.541589699153693,13.541589699153693,13.53547977055836,13.562157593030486,13.565112040097988,13.565112040097988,13.571166558344192,13.579990879127422,13.579990879127422,13.579990879127422,13.579990879127422,13.578085041334191,13.578085041334191,13.581030172298057,13.583762792044658,13.583762792044658,13.587054818159327,13.587054818159327,13.587054818159327,13.574030067654542,13.548632504994016,13.548632504994016,13.548632504994016,13.548632504994016,13.548632504994016,13.527585103846773,13.529249376708156,13.532222494423353,13.463938813789632,13.469702330663308,13.440881094844833,13.391969262314861,13.3451298735985,13.320437004001347,13.320437004001347,13.24286240012257,13.210043462525716,13.210043462525716,13.163417574118569,13.071167288160538,13.005476731771006,12.784826449112348,12.59914166577218,12.271729129421056,12.218365650271442,12.169652881352816,12.134349593022844,12.046805546700586,11.759932025900508,11.696644691448217,11.135348678273292,10.791809833314472,9.785240022533298,9.202545884684291,7.99309383744016,6.856338192502339,6.160440514640433,5.627067689277657,5.4867190961396615,5.472614993470453,5.45478220594599)
minHPD=c(0.4792719119666164, 0.565187454173487,0.7543078812927672,1.3110418406204034,2.0206852546665743,3.3946310282193166,7.2205068437383355,9.593748731324862,11.302506764100992,11.802835591046945,12.353646751225318,12.812778833933235,13.000645094850691,13.071390531515014,13.09256699836183,13.109488626578953,13.109488626578953,13.187799372900084,13.219032847431174,13.226889437965012,13.249700482584402,13.242370518535886,13.25676416638421,13.249839453051615,13.25098155659439,13.299345445146496,13.374294132304223,13.376536178559913,13.376536178559913,13.376094512241352,13.384527087984706,13.393350512716875,13.42912180946008,13.458631412121788,13.464952715173116,13.468295760113667,13.473992730846732,13.513018197134187,13.533011256131351,13.541589699153693,13.541589699153693,13.53547977055836,13.562157593030486,13.565112040097988,13.565112040097988,13.571166558344192,13.579990879127422,13.579990879127422,13.579990879127422,13.579990879127422,13.578085041334191,13.578085041334191,13.581030172298057,13.583762792044658,13.583762792044658,13.587054818159327,13.587054818159327,13.587054818159327,13.574030067654542,13.548632504994016,13.548632504994016,13.548632504994016,13.548632504994016,13.548632504994016,13.527585103846773,13.529249376708156,13.532222494423353,13.463938813789632,13.469702330663308,13.440881094844833,13.391969262314861,13.3451298735985,13.320437004001347,13.320437004001347,13.24286240012257,13.210043462525716,13.210043462525716,13.163417574118569,13.071167288160538,13.005476731771006,12.784826449112348,12.59914166577218,12.271729129421056,12.218365650271442,12.169652881352816,12.134349593022844,12.046805546700586,11.759932025900508,11.696644691448217,11.135348678273292,10.791809833314472,9.785240022533298,9.202545884684291,7.99309383744016,6.856338192502339,6.160440514640433,5.627067689277657,5.4867190961396615,5.472614993470453,5.45478220594599)
maxHPD=c(0.4792719119666164, 0.565187454173487,0.7543078812927672,1.3110418406204034,2.0206852546665743,3.3946310282193166,7.2205068437383355,9.593748731324862,11.302506764100992,11.802835591046945,12.353646751225318,12.812778833933235,13.000645094850691,13.071390531515014,13.09256699836183,13.109488626578953,13.109488626578953,13.187799372900084,13.219032847431174,13.226889437965012,13.249700482584402,13.242370518535886,13.25676416638421,13.249839453051615,13.25098155659439,13.299345445146496,13.374294132304223,13.376536178559913,13.376536178559913,13.376094512241352,13.384527087984706,13.393350512716875,13.42912180946008,13.458631412121788,13.464952715173116,13.468295760113667,13.473992730846732,13.513018197134187,13.533011256131351,13.541589699153693,13.541589699153693,13.53547977055836,13.562157593030486,13.565112040097988,13.565112040097988,13.571166558344192,13.579990879127422,13.579990879127422,13.579990879127422,13.579990879127422,13.578085041334191,13.578085041334191,13.581030172298057,13.583762792044658,13.583762792044658,13.587054818159327,13.587054818159327,13.587054818159327,13.574030067654542,13.548632504994016,13.548632504994016,13.548632504994016,13.548632504994016,13.548632504994016,13.527585103846773,13.529249376708156,13.532222494423353,13.463938813789632,13.469702330663308,13.440881094844833,13.391969262314861,13.3451298735985,13.320437004001347,13.320437004001347,13.24286240012257,13.210043462525716,13.210043462525716,13.163417574118569,13.071167288160538,13.005476731771006,12.784826449112348,12.59914166577218,12.271729129421056,12.218365650271442,12.169652881352816,12.134349593022844,12.046805546700586,11.759932025900508,11.696644691448217,11.135348678273292,10.791809833314472,9.785240022533298,9.202545884684291,7.99309383744016,6.856338192502339,6.160440514640433,5.627067689277657,5.4867190961396615,5.472614993470453,5.45478220594599)
remove_na = !is.na(rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(0, 14.94576029997526), xlim = c(-85.23655344955127,-66.09631398058225), ylab = 'Mean longevity', xlab = 'Time',main='Longevity' )
polygon(c(time, rev(time)), c(maxHPD[remove_na], rev(minHPD[remove_na])), col = alpha('#756bb1',0.3), border = NA)
lines(time,rate[remove_na], col = '#756bb1', lwd=4)

n <- dev.off()