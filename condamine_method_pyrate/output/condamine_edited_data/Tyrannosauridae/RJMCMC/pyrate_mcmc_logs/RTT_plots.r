

pdf(file='./RTT_plots.pdf',width=10, height=15)
par(mfrow=c(3,2))
library(scales)

time=c(-66.07860275004231, -66.2229786460021,-66.36735454196192,-66.51173043792171,-66.65610633388151,-66.80048222984132,-66.94485812580112,-67.08923402176092,-67.23360991772071,-67.37798581368051,-67.52236170964032,-67.66673760560012,-67.81111350155992,-67.95548939751973,-68.09986529347952,-68.24424118943932,-68.38861708539912,-68.53299298135892,-68.67736887731873,-68.82174477327852,-68.96612066923832,-69.11049656519813,-69.25487246115793,-69.39924835711773,-69.54362425307752,-69.68800014903732,-69.83237604499713,-69.97675194095693,-70.12112783691673,-70.26550373287654,-70.40987962883634,-70.55425552479613,-70.69863142075593,-70.84300731671573,-70.98738321267554,-71.13175910863534,-71.27613500459513,-71.42051090055494,-71.56488679651474,-71.70926269247454,-71.85363858843434,-71.99801448439413,-72.14239038035394,-72.28676627631374,-72.43114217227354,-72.57551806823335,-72.71989396419315,-72.86426986015294,-73.00864575611274,-73.15302165207254,-73.29739754803235,-73.44177344399215,-73.58614933995194,-73.73052523591176,-73.87490113187155,-74.01927702783135,-74.16365292379115,-74.30802881975094,-74.45240471571076,-74.59678061167055,-74.74115650763035,-74.88553240359016,-75.02990829954996,-75.17428419550976,-75.31866009146955,-75.46303598742935,-75.60741188338916,-75.75178777934896,-75.89616367530876,-76.04053957126857,-76.18491546722836,-76.32929136318816,-76.47366725914796,-76.61804315510776,-76.76241905106757,-76.90679494702736,-77.05117084298716,-77.19554673894697,-77.33992263490677,-77.48429853086657,-77.62867442682636,-77.77305032278616,-77.91742621874597,-78.06180211470577,-78.20617801066557,-78.35055390662538,-78.49492980258518,-78.63930569854497,-78.78368159450477,-78.92805749046457,-79.07243338642438,-79.21680928238418,-79.36118517834397,-79.50556107430378,-79.64993697026358,-79.79431286622338,-79.93868876218318,-80.08306465814297,-80.22744055410278,-80.37181645006258)
rate=c(0.4461605035935202, 0.44584029481744025,0.44578202703190084,0.4456149981488323,0.44584029481744025,0.44628995783365705,0.447360082818432,0.448373511421983,0.45297614557944443,0.45540331853793703,0.45761267049358745,0.4601588377528693,0.4627148197958752,0.4641290405416537,0.4681525323236001,0.4681525323236001,0.4681525323236001,0.4681525323236001,0.4684521511189501,0.46973697556543104,0.4707752395919625,0.46973697556543104,0.4710718318527717,0.4710718318527717,0.47212067600993957,0.47295798899493524,0.47473204217496484,0.47616502591388554,0.47680634981314785,0.4780409239437897,0.4809173310576882,0.48140962053827063,0.48361443425825973,0.4871540778221898,0.4883531117349526,0.4901095601699097,0.4944681323752154,0.5025735257264596,0.508561157747389,0.5120798753590696,0.5215245923813643,0.5314835375599086,0.5419682898700687,0.5430889322971068,0.5456492100057937,0.5478067027953675,0.5526914324908838,0.5577429821680777,0.5630198463672513,0.5679560942031961,0.5765880851832692,0.5830421699479766,0.5923869346182249,0.6013071453560135,0.611616953616748,0.6291937568094434,0.6410461638947436,0.6509726710747934,0.6540671750132063,0.6612547463164666,0.6696504687749649,0.6739218915161335,0.6785384421661322,0.6824561213989244,0.6865594839324756,0.6902969110080809,0.6933109996168745,0.6999063276286652,0.7065869913776851,0.7136639496954773,0.7241582420017476,0.745018638493554,0.7926068320924944,0.856412131897506,0.9177816300102287,0.9413072086500979,0.9637842849321046,0.9787978341887499,0.9853880224760183,1.0001391559961907,1.0193758942583757,1.0237607674518345,1.032191479315005,1.0460580056654685,1.0525784510284248,1.0525784510284248,1.0525784510284248,1.058180469905989,1.0600830478671646,1.0621025258170596,1.0600830478671646,1.0635051652093246,1.0624540045447035,1.0702989067328117,1.0738636872148055,1.0738636872148055,1.0738636872148055,1.0738636872148055,1.0738636872148055,1.0738636872148055)
minHPD=c(0.001333624226732118, 0.001333624226732118,0.001333624226732118,0.001333624226732118,0.001333624226732118,0.001333624226732118,0.001333624226732118,0.006374840491513271,0.006374840491513271,0.06874009622113812,0.07796617233759351,0.08644819131735498,0.09955048255048426,0.10100205530942265,0.13166025380655547,0.13166025380655547,0.13166025380655547,0.13166025380655547,0.13166025380655547,0.13166025380655547,0.13166025380655547,0.13166025380655547,0.12572356966001003,0.12572356966001003,0.12572356966001003,0.13426030496167518,0.12572356966001003,0.11866978378424027,0.11237252745279336,0.12572356966001003,0.13166025380655547,0.12572356966001003,0.14219109378110736,0.15304365283600554,0.15213064297703383,0.14546656994595447,0.14219109378110736,0.14546656994595447,0.14546656994595447,0.1440266362438022,0.1440266362438022,0.14219109378110736,0.14219109378110736,0.14219109378110736,0.14546656994595447,0.14219109378110736,0.14844523606668938,0.14844523606668938,0.14219109378110736,0.15304365283600554,0.14844523606668938,0.14844523606668938,0.15213064297703383,0.15213064297703383,0.22407359516322992,0.24420722961741215,0.2399451911945301,0.24611637730372635,0.24611637730372635,0.23478541629877683,0.24611637730372635,0.24611637730372635,0.24611637730372635,0.2503431557703765,0.2399451911945301,0.22678247819430128,0.25936336209744243,0.25936336209744243,0.24611637730372635,0.28565381457683825,0.2828007368461109,0.2828007368461109,0.22678247819430128,0.2626650461832723,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.32326183054625857,0.32326183054625857,0.32326183054625857,0.32326183054625857,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.2828007368461109,0.2828007368461109)
maxHPD=c(0.792447018377244, 0.7826574178089102,0.7806455470358504,0.7806455470358504,0.7806455470358504,0.7786259760286095,0.7786259760286095,0.7826574178089102,0.7806455470358504,0.8338927804896615,0.8338927804896615,0.8338927804896615,0.8386909890615599,0.8216582251053702,0.8346153061811828,0.8346153061811828,0.8346153061811828,0.8346153061811828,0.8346153061811828,0.8346153061811828,0.8346153061811828,0.8346153061811828,0.8216582251053702,0.8216582251053702,0.8216582251053702,0.8346153061811828,0.8346153061811828,0.8346153061811828,0.8386909890615599,0.873007063207229,0.8804138799700975,0.8804138799700975,0.9018020429702007,0.9181326096969257,0.9181326096969257,0.9181326096969257,0.9181326096969257,0.9309441338161334,0.9477637061852183,0.9477637061852183,0.9719355877521005,0.9986625405453358,1.042153021208918,1.0349956159868166,1.0519955195247235,1.058019886786894,1.083259177736061,1.093598606605409,1.093598606605409,1.1312733756975326,1.1662446097545394,1.1854655299402936,1.2580412787689954,1.3049142949208874,1.4180387590036987,1.4639053066136705,1.453010540893261,1.4686372549117865,1.4686372549117865,1.4686372549117865,1.5173257988870748,1.527375789396281,1.5326016972899406,1.541159135149868,1.541159135149868,1.541159135149868,1.5983776186629024,1.5983776186629024,1.5983776186629024,1.6441357671659003,1.6744025417179011,1.7260270492753331,1.9366463519341974,2.3463950846125607,2.808238542888769,2.978155740199788,3.0937529380502995,3.2301008428187092,3.2301008428187092,3.2301008428187092,3.251979888755731,3.251979888755731,3.289449802276119,3.388365539706442,3.388365539706442,3.388365539706442,3.388365539706442,3.289449802276119,3.289449802276119,3.289449802276119,3.265985678623028,3.289449802276119,3.289449802276119,3.3149229471407833,3.3149229471407833,3.3149229471407833,3.3149229471407833,3.3149229471407833,3.3149229471407833,3.3149229471407833)
remove_na = !is.na(rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(0, 3.7272020936770867), xlim = c(-80.44400439804248,-66.00641480206241), ylab = 'Speciation rate', xlab = 'Time',main='Speciation (PyRate_Inputs_2_RJMCMC_Grj_mcmc)' )
polygon(c(time, rev(time)), c(maxHPD[remove_na], rev(minHPD[remove_na])), col = alpha('#4c4cec',0.3), border = NA)
lines(time,rate[remove_na], col = '#4c4cec', lwd=2)
mids=c(-66.07933192123403, -66.22516615957727,-66.37100039792048,-66.51683463626372,-66.66266887460696,-66.8085031129502,-66.95433735129342,-67.10017158963666,-67.2460058279799,-67.39184006632311,-67.53767430466635,-67.6835085430096,-67.82934278135284,-67.97517701969605,-68.12101125803929,-68.26684549638253,-68.41267973472577,-68.55851397306898,-68.70434821141222,-68.85018244975547,-68.99601668809868,-69.14185092644192,-69.28768516478516,-69.4335194031284,-69.57935364147161,-69.72518787981485,-69.8710221181581,-70.01685635650131,-70.16269059484455,-70.30852483318779,-70.45435907153103,-70.60019330987424,-70.74602754821748,-70.89186178656072,-71.03769602490397,-71.18353026324718,-71.32936450159042,-71.47519873993366,-71.62103297827687,-71.76686721662011,-71.91270145496335,-72.0585356933066,-72.20436993164981,-72.35020416999305,-72.49603840833629,-72.6418726466795,-72.78770688502274,-72.93354112336598,-73.07937536170922,-73.22520960005244,-73.37104383839568,-73.51687807673892,-73.66271231508216,-73.80854655342537,-73.95438079176861,-74.10021503011185,-74.24604926845507,-74.39188350679831,-74.53771774514155,-74.68355198348479,-74.829386221828,-74.97522046017124,-75.12105469851448,-75.2668889368577,-75.41272317520094,-75.55855741354418,-75.70439165188742,-75.85022589023063,-75.99606012857387,-76.14189436691711,-76.28772860526036,-76.43356284360357,-76.57939708194681,-76.72523132029005,-76.87106555863326,-77.0168997969765,-77.16273403531974,-77.30856827366298,-77.4544025120062,-77.60023675034944,-77.74607098869268,-77.89190522703589,-78.03773946537913,-78.18357370372237,-78.32940794206561,-78.47524218040883,-78.62107641875207,-78.76691065709531,-78.91274489543855,-79.05857913378176,-79.204413372125,-79.35024761046824,-79.49608184881146,-79.6419160871547,-79.78775032549794,-79.93358456384118,-80.07941880218439,-80.22525304052763,-80.37108727887087)
counts=c(0.006, 0.005,0.002,0.002,0.009,0.008,0.006,0.007,0.01,0.009,0.011,0.006,0.011,0.01,0.002,0.003,0.0,0.003,0.003,0.003,0.001,0.002,0.001,0.002,0.006,0.004,0.008,0.005,0.008,0.005,0.007,0.013,0.007,0.004,0.01,0.006,0.01,0.013,0.011,0.022,0.021,0.013,0.01,0.005,0.007,0.008,0.009,0.009,0.018,0.016,0.016,0.025,0.023,0.025,0.025,0.024,0.012,0.011,0.013,0.014,0.007,0.011,0.012,0.007,0.007,0.012,0.008,0.008,0.017,0.013,0.036,0.058,0.043,0.042,0.02,0.022,0.008,0.009,0.01,0.009,0.009,0.009,0.012,0.002,0.005,0.008,0.002,0.004,0.005,0.007,0.002,0.005,0.007,0.0,0.0,0.0,0.0,0.0,0.0)
plot(mids,counts,type = 'h', xlim = c(-80.44400439804248,-66.00641480206241), ylim=c(0,0.2), ylab = 'Frequency of rate shift', xlab = 'Time',lwd=5,col='#4c4cec')
bf2 = 0.023704754676829004
bf6 = 0.1521174248721602
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)

time=c(-66.07860275004231, -66.2229786460021,-66.36735454196192,-66.51173043792171,-66.65610633388151,-66.80048222984132,-66.94485812580112,-67.08923402176092,-67.23360991772071,-67.37798581368051,-67.52236170964032,-67.66673760560012,-67.81111350155992,-67.95548939751973,-68.09986529347952,-68.24424118943932,-68.38861708539912,-68.53299298135892,-68.67736887731873,-68.82174477327852,-68.96612066923832,-69.11049656519813,-69.25487246115793,-69.39924835711773,-69.54362425307752,-69.68800014903732,-69.83237604499713,-69.97675194095693,-70.12112783691673,-70.26550373287654,-70.40987962883634,-70.55425552479613,-70.69863142075593,-70.84300731671573,-70.98738321267554,-71.13175910863534,-71.27613500459513,-71.42051090055494,-71.56488679651474,-71.70926269247454,-71.85363858843434,-71.99801448439413,-72.14239038035394,-72.28676627631374,-72.43114217227354,-72.57551806823335,-72.71989396419315,-72.86426986015294,-73.00864575611274,-73.15302165207254,-73.29739754803235,-73.44177344399215,-73.58614933995194,-73.73052523591176,-73.87490113187155,-74.01927702783135,-74.16365292379115,-74.30802881975094,-74.45240471571076,-74.59678061167055,-74.74115650763035,-74.88553240359016,-75.02990829954996,-75.17428419550976,-75.31866009146955,-75.46303598742935,-75.60741188338916,-75.75178777934896,-75.89616367530876,-76.04053957126857,-76.18491546722836,-76.32929136318816,-76.47366725914796,-76.61804315510776,-76.76241905106757,-76.90679494702736,-77.05117084298716,-77.19554673894697,-77.33992263490677,-77.48429853086657,-77.62867442682636,-77.77305032278616,-77.91742621874597,-78.06180211470577,-78.20617801066557,-78.35055390662538,-78.49492980258518,-78.63930569854497,-78.78368159450477,-78.92805749046457,-79.07243338642438,-79.21680928238418,-79.36118517834397,-79.50556107430378,-79.64993697026358,-79.79431286622338,-79.93868876218318,-80.08306465814297,-80.22744055410278,-80.37181645006258)
rate=c(0.6120667096724626, 0.608195889301048,0.6045456969698982,0.6039104973047982,0.6027092539127503,0.6006320170308066,0.5992820672211103,0.599038008643527,0.5988620454174842,0.597392847860813,0.598107985477122,0.5966508975781254,0.5972598065940926,0.5958713395770777,0.5956262301952427,0.5934463062433124,0.5889678688967839,0.5784115183816418,0.5735936018836093,0.5713152796638084,0.5640523375726929,0.5630480473003032,0.5619237087951294,0.5606957234272852,0.5599015894836223,0.5593177930887481,0.5590046644120286,0.5593177930887481,0.5584062761151345,0.5579629184760613,0.5562064047763217,0.5579629184760613,0.5593177930887481,0.5599015894836223,0.5599015894836223,0.560264024002911,0.5630480473003032,0.5650227211327048,0.5708886502582832,0.5720462102925408,0.5746323512798254,0.5777205247650268,0.5782558114763159,0.5795436685146698,0.5824310671338215,0.5828965952829114,0.5835040607409478,0.5852413296467374,0.5888963530229063,0.5900741858339145,0.5918958217178143,0.592762141600953,0.5946893433919658,0.5954482435380151,0.5972598065940926,0.601437538348681,0.6064361823447095,0.6087992152640576,0.6107481906210432,0.6146620912150873,0.616114523173972,0.6179040693519452,0.6181045066298194,0.6197498168987068,0.6197498168987068,0.620259884473232,0.620259884473232,0.6204513936634208,0.6209814632499298,0.6213780457411828,0.6209814632499298,0.6213780457411828,0.6213780457411828,0.6222617671500461,0.6234566711910958,0.6286196202369483,0.63039537220086,0.6397493746453438,0.645212463767497,0.6532403321094208,0.6640726243792512,0.6671582918503134,0.6733129956576531,0.6790735295250794,0.6857724546388642,0.6896761518530365,0.6935101798700971,0.6935101798700971,0.6988227360261154,0.7010923527073931,0.7035611107490141,0.7046914001430375,0.707697379320985,0.7120442657867138,0.7150206295883227,0.7120442657867138,0.7087070244592415,0.7087070244592415,0.7087070244592415,0.7087070244592415)
minHPD=c(0.2366363760715211, 0.2266929705014157,0.2328675881205451,0.2328675881205451,0.2547080470372797,0.2266929705014157,0.2526912194602072,0.22627265927680995,0.22627265927680995,0.22627265927680995,0.2366363760715211,0.22627265927680995,0.22627265927680995,0.2526912194602072,0.22627265927680995,0.2328675881205451,0.2526912194602072,0.2526912194602072,0.2526912194602072,0.2526912194602072,0.2526912194602072,0.2526912194602072,0.19328980938259102,0.2526912194602072,0.19775296509502227,0.19328980938259102,0.19775296509502227,0.19775296509502227,0.2526912194602072,0.2526912194602072,0.19328980938259102,0.19775296509502227,0.19775296509502227,0.2526912194602072,0.2526912194602072,0.2526912194602072,0.19328980938259102,0.2526912194602072,0.2538743568423366,0.2587007936613882,0.2526912194602072,0.2526912194602072,0.2565293505665443,0.2526912194602072,0.2538743568423366,0.2565293505665443,0.2538743568423366,0.2587007936613882,0.2587007936613882,0.2587007936613882,0.2822389321352108,0.2822389321352108,0.26124656453942474,0.2587007936613882,0.2565293505665443,0.2949609657701917,0.2822389321352108,0.26563176264458804,0.2851733010099923,0.2822389321352108,0.2822389321352108,0.2565293505665443,0.2587007936613882,0.2565293505665443,0.2565293505665443,0.2565293505665443,0.2822389321352108,0.2822389321352108,0.2851733010099923,0.2851733010099923,0.2851733010099923,0.27831136713730326,0.2851733010099923,0.27831136713730326,0.2565293505665443,0.2565293505665443,0.22910155748923486,0.24167600928976787,0.27831136713730326,0.22410213274716215,0.22410213274716215,0.2587007936613882,0.1667322518998558,0.27831136713730326,0.2587007936613882,0.22910155748923486,0.22410213274716215,0.22410213274716215,0.22410213274716215,0.19359996332060125,0.1667322518998558,0.22410213274716215,0.22410213274716215,0.27831136713730326,0.27831136713730326,0.22410213274716215,0.27831136713730326,0.27831136713730326,0.27831136713730326,0.27831136713730326)
maxHPD=c(1.4936044159836503, 1.3859217366108039,1.3296252804211197,1.2823831531203735,1.2823831531203735,1.1851776430147047,1.1851776430147047,1.0878859684110702,1.0862298084534583,1.0620999837316805,1.0710051733425838,1.0553105204889581,1.0553105204889581,1.0710051733425838,1.03624254939981,1.03624254939981,1.0218235108304046,0.9998637868532113,0.9916325647019809,0.9869200739150403,0.9788431974717179,0.9916325647019809,0.9348917689786611,1.0028612578637368,0.9555312332063475,0.9555312332063475,0.9555312332063475,0.9555312332063475,1.0028612578637368,1.0028612578637368,0.9555312332063475,0.9555312332063475,0.9555312332063475,0.9998637868532113,0.9998637868532113,1.0028612578637368,0.9257048906744395,0.9620176290519379,0.9555312332063475,0.9555312332063475,0.9350682203298296,0.9257048906744395,0.9350682203298296,0.9350682203298296,0.9555312332063475,0.9555312332063475,0.9555312332063475,0.9684228329441734,0.9684228329441734,0.9788431974717179,1.0028612578637368,1.0028612578637368,0.9916325647019809,0.9916325647019809,1.013869119073422,1.0751357850391547,1.0751357850391547,1.0751357850391547,1.111013248501885,1.1204860952131273,1.1204860952131273,1.0999927653492716,1.111013248501885,1.1204860952131273,1.1204860952131273,1.151896320057513,1.1908158211047026,1.1864489166658807,1.1864489166658807,1.1864489166658807,1.1864489166658807,1.1864489166658807,1.2026511766401007,1.222219378173807,1.222219378173807,1.2603430196000727,1.2908816577430982,1.497879358719282,1.6657973610992602,1.7305639922721618,1.9675773864715296,2.096799709649711,2.096799709649711,2.3570029436299076,2.37357819513233,2.3570029436299076,2.3570029436299076,2.3570029436299076,2.3570029436299076,2.37357819513233,2.37357819513233,2.4534950081323283,2.5028443641221143,2.5739098824233446,2.5739098824233446,2.545368433221317,2.5739098824233446,2.5739098824233446,2.5739098824233446,2.5739098824233446)
remove_na = !is.na(rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(0, 2.8313008706656793), xlim = c(-80.44400439804248,-66.00641480206241), ylab = 'Extinction rate', xlab = 'Time',main='Extinction' )
polygon(c(time, rev(time)), c(maxHPD[remove_na], rev(minHPD[remove_na])), col = alpha('#e34a33',0.3), border = NA)
lines(time,rate[remove_na], col = '#e34a33', lwd=2)
mids=c(-66.07933192123403, -66.22516615957727,-66.37100039792048,-66.51683463626372,-66.66266887460696,-66.8085031129502,-66.95433735129342,-67.10017158963666,-67.2460058279799,-67.39184006632311,-67.53767430466635,-67.6835085430096,-67.82934278135284,-67.97517701969605,-68.12101125803929,-68.26684549638253,-68.41267973472577,-68.55851397306898,-68.70434821141222,-68.85018244975547,-68.99601668809868,-69.14185092644192,-69.28768516478516,-69.4335194031284,-69.57935364147161,-69.72518787981485,-69.8710221181581,-70.01685635650131,-70.16269059484455,-70.30852483318779,-70.45435907153103,-70.60019330987424,-70.74602754821748,-70.89186178656072,-71.03769602490397,-71.18353026324718,-71.32936450159042,-71.47519873993366,-71.62103297827687,-71.76686721662011,-71.91270145496335,-72.0585356933066,-72.20436993164981,-72.35020416999305,-72.49603840833629,-72.6418726466795,-72.78770688502274,-72.93354112336598,-73.07937536170922,-73.22520960005244,-73.37104383839568,-73.51687807673892,-73.66271231508216,-73.80854655342537,-73.95438079176861,-74.10021503011185,-74.24604926845507,-74.39188350679831,-74.53771774514155,-74.68355198348479,-74.829386221828,-74.97522046017124,-75.12105469851448,-75.2668889368577,-75.41272317520094,-75.55855741354418,-75.70439165188742,-75.85022589023063,-75.99606012857387,-76.14189436691711,-76.28772860526036,-76.43356284360357,-76.57939708194681,-76.72523132029005,-76.87106555863326,-77.0168997969765,-77.16273403531974,-77.30856827366298,-77.4544025120062,-77.60023675034944,-77.74607098869268,-77.89190522703589,-78.03773946537913,-78.18357370372237,-78.32940794206561,-78.47524218040883,-78.62107641875207,-78.76691065709531,-78.91274489543855,-79.05857913378176,-79.204413372125,-79.35024761046824,-79.49608184881146,-79.6419160871547,-79.78775032549794,-79.93358456384118,-80.07941880218439,-80.22525304052763,-80.37108727887087)
counts=c(0.014, 0.01,0.008,0.01,0.01,0.007,0.005,0.002,0.005,0.003,0.006,0.003,0.004,0.002,0.009,0.019,0.026,0.012,0.009,0.013,0.009,0.007,0.006,0.003,0.003,0.003,0.003,0.004,0.005,0.004,0.005,0.007,0.005,0.002,0.004,0.006,0.007,0.01,0.015,0.004,0.006,0.003,0.007,0.007,0.003,0.006,0.006,0.007,0.007,0.005,0.003,0.005,0.007,0.011,0.017,0.012,0.008,0.011,0.008,0.006,0.005,0.006,0.004,0.008,0.005,0.006,0.006,0.004,0.006,0.008,0.008,0.008,0.009,0.01,0.01,0.02,0.018,0.021,0.015,0.021,0.014,0.019,0.012,0.008,0.013,0.004,0.008,0.007,0.005,0.004,0.01,0.015,0.004,0.003,0.002,0.0,0.0,0.0,0.0)
plot(mids,counts,type = 'h', xlim = c(-80.44400439804248,-66.00641480206241), ylim=c(0,0.2), ylab = 'Frequency of rate shift', xlab = 'Time',lwd=5,col='#e34a33')
abline(h=bf2, lty=2)
abline(h=bf6, lty=2)
#Net Diversification Rate
time=c(-66.07860275004231, -66.2229786460021,-66.36735454196192,-66.51173043792171,-66.65610633388151,-66.80048222984132,-66.94485812580112,-67.08923402176092,-67.23360991772071,-67.37798581368051,-67.52236170964032,-67.66673760560012,-67.81111350155992,-67.95548939751973,-68.09986529347952,-68.24424118943932,-68.38861708539912,-68.53299298135892,-68.67736887731873,-68.82174477327852,-68.96612066923832,-69.11049656519813,-69.25487246115793,-69.39924835711773,-69.54362425307752,-69.68800014903732,-69.83237604499713,-69.97675194095693,-70.12112783691673,-70.26550373287654,-70.40987962883634,-70.55425552479613,-70.69863142075593,-70.84300731671573,-70.98738321267554,-71.13175910863534,-71.27613500459513,-71.42051090055494,-71.56488679651474,-71.70926269247454,-71.85363858843434,-71.99801448439413,-72.14239038035394,-72.28676627631374,-72.43114217227354,-72.57551806823335,-72.71989396419315,-72.86426986015294,-73.00864575611274,-73.15302165207254,-73.29739754803235,-73.44177344399215,-73.58614933995194,-73.73052523591176,-73.87490113187155,-74.01927702783135,-74.16365292379115,-74.30802881975094,-74.45240471571076,-74.59678061167055,-74.74115650763035,-74.88553240359016,-75.02990829954996,-75.17428419550976,-75.31866009146955,-75.46303598742935,-75.60741188338916,-75.75178777934896,-75.89616367530876,-76.04053957126857,-76.18491546722836,-76.32929136318816,-76.47366725914796,-76.61804315510776,-76.76241905106757,-76.90679494702736,-77.05117084298716,-77.19554673894697,-77.33992263490677,-77.48429853086657,-77.62867442682636,-77.77305032278616,-77.91742621874597,-78.06180211470577,-78.20617801066557,-78.35055390662538,-78.49492980258518,-78.63930569854497,-78.78368159450477,-78.92805749046457,-79.07243338642438,-79.21680928238418,-79.36118517834397,-79.50556107430378,-79.64993697026358,-79.79431286622338,-79.93868876218318,-80.08306465814297,-80.22744055410278,-80.37181645006258)
net_rate=c(-0.247644086963189, -0.23538255944193767,-0.22663242846597842,-0.21757156178839018,-0.21075650089646927,-0.19876222045213404,-0.19445426604972824,-0.18854208254109525,-0.1852000921451219,-0.1763091184551915,-0.17431374224406532,-0.1698396049171034,-0.1678159957942387,-0.16294879038980392,-0.15622341316766922,-0.14952146986502723,-0.1362793035543789,-0.11283740886601949,-0.10328476873175173,-0.09694190630373728,-0.08908427349344976,-0.08585426079368225,-0.08255584791399846,-0.07995541006084546,-0.07851265728456272,-0.07712558071355059,-0.07227012733457742,-0.07021089489823668,-0.06786755040563998,-0.06524959443389247,-0.06266613764290972,-0.06129586330197582,-0.056565791654345825,-0.05255648206120785,-0.05206949878308641,-0.04970417897992981,-0.05062637114066718,-0.046700780649905314,-0.04536502798259598,-0.0449172220172504,-0.03611409877372386,-0.026923713387237567,-0.016104884008063453,-0.01760300641127783,-0.017114812672062718,-0.014868259453694807,-0.012410912850185248,-0.00944095917801723,-0.010690150651445102,-0.00672775158797681,0.0035889075159690437,0.013127507667438303,0.034780696944220764,0.0526607545305604,0.06627564320175927,0.0785951193786759,0.08550819505537795,0.09845368857222787,0.1011352993991907,0.10216607908467008,0.10512375480700217,0.11004505415989314,0.1157156659919375,0.12117311763267631,0.12751472539789885,0.12791418084873354,0.13409185786283298,0.14056024594034608,0.1470742140886159,0.15124127124801512,0.16967835754469313,0.196623296734163,0.26454641922413547,0.3526973976601717,0.43893584371919997,0.4794714471639,0.5162008280075999,0.5135294095942022,0.5037661350899265,0.48703332595336485,0.4693148832797888,0.45223361678184765,0.43365675172502266,0.43116941324069963,0.4278495806264558,0.4203707076904055,0.41183703563751717,0.4072719545145608,0.40100693580322083,0.39799923186238745,0.39241182022671484,0.3928653224824775,0.383850223839049,0.3799249241058239,0.3802816785297544,0.38113361436906695,0.38368768367694844,0.38368768367694844,0.38368768367694844,0.38368768367694844)
net_minHPD=c(-1.059920068142107, -0.9581261504646508,-0.922721647227797,-0.887971666372003,-0.8397778720404011,-0.8553118499215822,-0.7454551026278697,-0.7211565088687029,-0.7211565088687029,-0.7027367752534268,-0.7027367752534268,-0.7211565088687029,-0.7211565088687029,-0.7211565088687029,-0.7211565088687029,-0.6925971573616282,-0.7027367752534268,-0.6925971573616282,-0.5881571291167287,-0.5881571291167287,-0.5881571291167287,-0.5858896337642518,-0.5942345991737538,-0.5942345991737538,-0.5763547788070993,-0.5251204285817845,-0.5796071388535339,-0.5816990602727592,-0.5816990602727592,-0.5251204285817845,-0.5763547788070993,-0.5199955562225042,-0.5816990602727592,-0.5366623397072599,-0.5199955562225042,-0.5576965148651132,-0.5199955562225042,-0.5576965148651132,-0.5199955562225042,-0.5576965148651132,-0.5763547788070993,-0.5985982827650109,-0.5199955562225042,-0.5576965148651132,-0.5763547788070993,-0.5763547788070993,-0.5763547788070993,-0.5913358165967271,-0.5913358165967271,-0.5763547788070993,-0.5913358165967271,-0.6157981755869464,-0.7259167785233411,-0.5124797437350102,-0.5199955562225042,-0.5199955562225042,-0.5780284356614869,-0.5780284356614869,-0.5124797437350102,-0.5274790454540033,-0.5780284356614869,-0.5780284356614869,-0.5780284356614869,-0.5373608795695091,-0.5373608795695091,-0.5780284356614869,-0.5780284356614869,-0.5766461586832573,-0.5780284356614869,-0.5780284356614869,-0.6064305018017668,-0.7927374046417759,-0.7670360934617582,-0.78740776186833,-1.00476021554591,-0.7259167785233411,-0.9267872449545949,-0.9529763206266002,-1.0429257529162697,-1.3246256665817207,-1.3486210629004147,-1.3486210629004147,-1.3486210629004147,-1.6781043256244568,-1.6781043256244568,-1.6781043256244568,-1.7903031667579596,-1.551314606284929,-1.551314606284929,-1.551314606284929,-1.551314606284929,-1.7731386770393305,-1.7903031667579596,-1.6781043256244568,-1.6781043256244568,-1.6781043256244568,-1.6781043256244568,-1.6781043256244568,-1.6781043256244568,-1.6781043256244568)
net_maxHPD=c(0.49274487986646454, 0.4859281166490667,0.49274487986646454,0.4859281166490667,0.4859281166490667,0.4146734747771199,0.49274487986646454,0.4859281166490667,0.4859281166490667,0.49274487986646454,0.49274487986646454,0.454007839688255,0.454007839688255,0.44278022555882485,0.4355168653470737,0.4461367814386359,0.399381820145135,0.36874620627331367,0.44278022555882485,0.44278022555882485,0.4355168653470737,0.4355168653470737,0.4169100551561115,0.4169100551561115,0.4397864711732872,0.49274487986646454,0.44278022555882485,0.44278022555882485,0.44278022555882485,0.48675718910219656,0.44278022555882485,0.49274487986646454,0.4461367814386359,0.4985217729223466,0.4985217729223466,0.4935068401015325,0.5197521048780591,0.4935068401015325,0.5405264630123207,0.4985217729223466,0.49274487986646454,0.4985217729223466,0.6266539962479951,0.5980719912183805,0.5917888919852872,0.5980719912183805,0.6266539962479951,0.6434042839398537,0.6434042839398537,0.6932280250839045,0.6964921064899492,0.7257360395876169,0.7055631754058358,0.9789331452945796,1.0352811084917077,1.0728689231426207,1.0327658332277827,1.0352811084917077,1.1238283028007336,1.1473802860902107,1.1186834144459366,1.1238283028007336,1.1238283028007336,1.168677278893602,1.1554854485670645,1.1342103612644934,1.1554854485670645,1.1554854485670645,1.1554854485670645,1.168677278893602,1.2314768843317048,1.168677278893602,1.4960663223215298,1.8806976939076616,2.114792792123102,2.7078201742427632,2.717335660917108,2.932038822121004,2.932038822121004,2.9016017008903554,2.8667254979336674,2.932038822121004,3.1406402523506625,2.9673724017575003,2.98843850592991,2.9673724017575003,2.8028007654045597,2.98843850592991,2.98843850592991,2.98843850592991,2.98843850592991,2.8028007654045597,2.8028007654045597,2.98843850592991,2.98843850592991,2.98843850592991,2.9673724017575003,2.9673724017575003,2.9673724017575003,2.9673724017575003)
remove_na = !is.na(net_rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(-1.9693334834337557, 3.454704277585729), xlim = c(-80.44400439804248,-66.00641480206241), ylab = 'Net Rate', xlab = 'Time',lwd=2, main='Net diversification', col= '#504A4B' )
polygon(c(time, rev(time)), c(net_maxHPD[remove_na], rev(net_minHPD[remove_na])), col = alpha('#504A4B',0.3), border = NA)
lines(time,net_rate[remove_na], col = '#504A4B', lwd=2)
abline(h=0,lty=2)


time=c(-66.07860275004231, -66.2229786460021,-66.36735454196192,-66.51173043792171,-66.65610633388151,-66.80048222984132,-66.94485812580112,-67.08923402176092,-67.23360991772071,-67.37798581368051,-67.52236170964032,-67.66673760560012,-67.81111350155992,-67.95548939751973,-68.09986529347952,-68.24424118943932,-68.38861708539912,-68.53299298135892,-68.67736887731873,-68.82174477327852,-68.96612066923832,-69.11049656519813,-69.25487246115793,-69.39924835711773,-69.54362425307752,-69.68800014903732,-69.83237604499713,-69.97675194095693,-70.12112783691673,-70.26550373287654,-70.40987962883634,-70.55425552479613,-70.69863142075593,-70.84300731671573,-70.98738321267554,-71.13175910863534,-71.27613500459513,-71.42051090055494,-71.56488679651474,-71.70926269247454,-71.85363858843434,-71.99801448439413,-72.14239038035394,-72.28676627631374,-72.43114217227354,-72.57551806823335,-72.71989396419315,-72.86426986015294,-73.00864575611274,-73.15302165207254,-73.29739754803235,-73.44177344399215,-73.58614933995194,-73.73052523591176,-73.87490113187155,-74.01927702783135,-74.16365292379115,-74.30802881975094,-74.45240471571076,-74.59678061167055,-74.74115650763035,-74.88553240359016,-75.02990829954996,-75.17428419550976,-75.31866009146955,-75.46303598742935,-75.60741188338916,-75.75178777934896,-75.89616367530876,-76.04053957126857,-76.18491546722836,-76.32929136318816,-76.47366725914796,-76.61804315510776,-76.76241905106757,-76.90679494702736,-77.05117084298716,-77.19554673894697,-77.33992263490677,-77.48429853086657,-77.62867442682636,-77.77305032278616,-77.91742621874597,-78.06180211470577,-78.20617801066557,-78.35055390662538,-78.49492980258518,-78.63930569854497,-78.78368159450477,-78.92805749046457,-79.07243338642438,-79.21680928238418,-79.36118517834397,-79.50556107430378,-79.64993697026358,-79.79431286622338,-79.93868876218318,-80.08306465814297,-80.22744055410278,-80.37181645006258)
rate=c(1.4197819975612607, 1.45307906941472,1.4726117512926322,1.4922344390978615,1.5056686179029644,1.530436985161323,1.5386795987762307,1.5453669773118008,1.5468767183526348,1.5566406064524512,1.556044079167138,1.5596422711242806,1.5593770596977807,1.5622749859161884,1.5664752413338434,1.581600180494098,1.6158364548252262,1.6794511558107408,1.7057416872378701,1.7214889726463414,1.743902144561531,1.7545826299282012,1.7621560238895488,1.7702680599342884,1.7732885414359907,1.7743988282011005,1.7765259078294684,1.775821850271259,1.7784941601117792,1.7782065135354883,1.7809714805257644,1.777558456832624,1.7745253603759048,1.769495041193565,1.7679210967594778,1.7665564907106295,1.7543945332223232,1.7420576944286137,1.7258821990280717,1.7127505386170803,1.7014407863272065,1.6895471751290194,1.6881631540645288,1.6809758487832775,1.6713857650330437,1.6695338797107369,1.6653641804955615,1.6572384864482625,1.6487441721794276,1.6421141287927907,1.635359946371137,1.6312523445193512,1.6255576723213228,1.6219766942086662,1.6066842083431183,1.5896267040994927,1.5679298300460367,1.554789516039996,1.5463568385971411,1.5279225285196365,1.5203813980363388,1.5144556607193094,1.514516015931689,1.5101131788744349,1.510719445579678,1.5032479939515535,1.501084850261319,1.5018981271904088,1.5025739313687556,1.500770574568614,1.50060793197421,1.497085493169293,1.4907049923295053,1.4786956170383716,1.466773351555618,1.4363567164961457,1.4129892186191793,1.346997087277423,1.3164430596072763,1.2700610232827851,1.2235373810305539,1.1909915071140007,1.1577675488739987,1.1268716918609956,1.1106375273377618,1.102135291720828,1.0899021738526364,1.088830207033149,1.0799020385210465,1.0742171546493415,1.0693248095716446,1.0645081927098592,1.0539581114355459,1.0420176866904527,1.040193882402599,1.0411164974047191,1.0438922943808602,1.0438922943808602,1.0438922943808602,1.0438922943808602)
minHPD=c(1.4197819975612607, 1.45307906941472,1.4726117512926322,1.4922344390978615,1.5056686179029644,1.530436985161323,1.5386795987762307,1.5453669773118008,1.5468767183526348,1.5566406064524512,1.556044079167138,1.5596422711242806,1.5593770596977807,1.5622749859161884,1.5664752413338434,1.581600180494098,1.6158364548252262,1.6794511558107408,1.7057416872378701,1.7214889726463414,1.743902144561531,1.7545826299282012,1.7621560238895488,1.7702680599342884,1.7732885414359907,1.7743988282011005,1.7765259078294684,1.775821850271259,1.7784941601117792,1.7782065135354883,1.7809714805257644,1.777558456832624,1.7745253603759048,1.769495041193565,1.7679210967594778,1.7665564907106295,1.7543945332223232,1.7420576944286137,1.7258821990280717,1.7127505386170803,1.7014407863272065,1.6895471751290194,1.6881631540645288,1.6809758487832775,1.6713857650330437,1.6695338797107369,1.6653641804955615,1.6572384864482625,1.6487441721794276,1.6421141287927907,1.635359946371137,1.6312523445193512,1.6255576723213228,1.6219766942086662,1.6066842083431183,1.5896267040994927,1.5679298300460367,1.554789516039996,1.5463568385971411,1.5279225285196365,1.5203813980363388,1.5144556607193094,1.514516015931689,1.5101131788744349,1.510719445579678,1.5032479939515535,1.501084850261319,1.5018981271904088,1.5025739313687556,1.500770574568614,1.50060793197421,1.497085493169293,1.4907049923295053,1.4786956170383716,1.466773351555618,1.4363567164961457,1.4129892186191793,1.346997087277423,1.3164430596072763,1.2700610232827851,1.2235373810305539,1.1909915071140007,1.1577675488739987,1.1268716918609956,1.1106375273377618,1.102135291720828,1.0899021738526364,1.088830207033149,1.0799020385210465,1.0742171546493415,1.0693248095716446,1.0645081927098592,1.0539581114355459,1.0420176866904527,1.040193882402599,1.0411164974047191,1.0438922943808602,1.0438922943808602,1.0438922943808602,1.0438922943808602)
maxHPD=c(1.4197819975612607, 1.45307906941472,1.4726117512926322,1.4922344390978615,1.5056686179029644,1.530436985161323,1.5386795987762307,1.5453669773118008,1.5468767183526348,1.5566406064524512,1.556044079167138,1.5596422711242806,1.5593770596977807,1.5622749859161884,1.5664752413338434,1.581600180494098,1.6158364548252262,1.6794511558107408,1.7057416872378701,1.7214889726463414,1.743902144561531,1.7545826299282012,1.7621560238895488,1.7702680599342884,1.7732885414359907,1.7743988282011005,1.7765259078294684,1.775821850271259,1.7784941601117792,1.7782065135354883,1.7809714805257644,1.777558456832624,1.7745253603759048,1.769495041193565,1.7679210967594778,1.7665564907106295,1.7543945332223232,1.7420576944286137,1.7258821990280717,1.7127505386170803,1.7014407863272065,1.6895471751290194,1.6881631540645288,1.6809758487832775,1.6713857650330437,1.6695338797107369,1.6653641804955615,1.6572384864482625,1.6487441721794276,1.6421141287927907,1.635359946371137,1.6312523445193512,1.6255576723213228,1.6219766942086662,1.6066842083431183,1.5896267040994927,1.5679298300460367,1.554789516039996,1.5463568385971411,1.5279225285196365,1.5203813980363388,1.5144556607193094,1.514516015931689,1.5101131788744349,1.510719445579678,1.5032479939515535,1.501084850261319,1.5018981271904088,1.5025739313687556,1.500770574568614,1.50060793197421,1.497085493169293,1.4907049923295053,1.4786956170383716,1.466773351555618,1.4363567164961457,1.4129892186191793,1.346997087277423,1.3164430596072763,1.2700610232827851,1.2235373810305539,1.1909915071140007,1.1577675488739987,1.1268716918609956,1.1106375273377618,1.102135291720828,1.0899021738526364,1.088830207033149,1.0799020385210465,1.0742171546493415,1.0693248095716446,1.0645081927098592,1.0539581114355459,1.0420176866904527,1.040193882402599,1.0411164974047191,1.0438922943808602,1.0438922943808602,1.0438922943808602,1.0438922943808602)
remove_na = !is.na(rate)
time = time[remove_na]
plot(time,time,type = 'n', ylim = c(0, 1.959068628578341), xlim = c(-80.44400439804248,-66.00641480206241), ylab = 'Mean longevity', xlab = 'Time',main='Longevity' )
polygon(c(time, rev(time)), c(maxHPD[remove_na], rev(minHPD[remove_na])), col = alpha('#756bb1',0.3), border = NA)
lines(time,rate[remove_na], col = '#756bb1', lwd=4)

n <- dev.off()