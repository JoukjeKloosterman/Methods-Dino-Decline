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
    
L_hpd_m95=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.049557969735271,0.053296798592976,0.053296798592976,0.053296798592976,0.0530473174234,0.053296798592976,0.053296798592976,0.053296798592976,0.0530473174234,0.0530473174234,0.0530473174234,0.053053395789976,0.053053395789976,0.053785720716019,0.053053395789976,0.046614065958023,0.049557969735271,0.049557969735271,0.04898126658503,0.04898126658503,0.04898126658503,0.049557969735271,0.049557969735271,0.049557969735271,0.050366809073493,0.050366809073493,0.04898126658503,0.047891592880673,0.047891592880673,0.047891592880673,0.042902826418919,0.040906536765078,0.040906536765078,0.040906536765078,0.040906536765078,0.040906536765078,0.040906536765078,0.040906536765078,0.040906536765078,0.042902826418919,0.040906536765078,0.042255718388658,0.042255718388658,0.03462614492527,0.042255718388658,0.040906536765078,0.040906536765078,0.040906536765078,0.038267399583321,0.042255718388658,0.038267399583321,0.03462614492527,0.027796255164586,0.03462614492527,0.001523725242169)
L_hpd_M95=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.12930931574042,0.130645164412507,0.130645164412507,0.130645164412507,0.130530542542582,0.130645164412507,0.130645164412507,0.130645164412507,0.129983996436094,0.129983996436094,0.129983996436094,0.129028773464539,0.12930931574042,0.130645164412507,0.132854207584884,0.132854207584884,0.143690003437001,0.143690003437001,0.143690003437001,0.143690003437001,0.143690003437001,0.143690003437001,0.143690003437001,0.143690003437001,0.143690003437001,0.143690003437001,0.143690003437001,0.143690003437001,0.143690003437001,0.148626754602888,0.143690003437001,0.142318989968722,0.142318989968722,0.143573809250644,0.142318989968722,0.143573809250644,0.143573809250644,0.143690003437001,0.143690003437001,0.148626754602888,0.15129549637797,0.156354424426874,0.156354424426874,0.148626754602888,0.157160523253781,0.156354424426874,0.156354424426874,0.156354424426874,0.157160523253781,0.1662528983463,0.16894329776431,0.16894329776431,0.189407637723111,0.208166509056598,0.218488920765835)
M_hpd_m95=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.024735095654537,0.026330032947017,0.024735095654537,0.020524996836516,0.023546105833784,0.024735095654537,0.02201505895224,0.022503750582837,0.023546105833784,0.023989609612371,0.013119223002818,0.005178595094712,0.003092450977859,0.003092450977859,0.003092450977859,0.002751471778048,0.001714168574358,0.001714168574358,0.001714168574358,0.001940026597941,0.002166694022459,0.002166694022459,0.001940026597941,0.001940026597941,0.001940026597941,0.002751471778048,0.002951843371794,0.002951843371794,0.002951843371794,0.002951843371794,0.002951843371794,0.002951843371794,0.002951843371794,0.002951843371794,0.002951843371794,0.002951843371794,0.002751471778048,0.002751471778048,0.002751471778048,0.002751471778048,0.002751471778048,0.002751471778048,0.002751471778048,0.002166694022459,0.003092450977859,0.001039943283091,0.001039943283091,0.001039943283091,0.001039943283091,0.003092450977859,0.003092450977859,0.001039943283091,0.002751471778048,0.002751471778048,0.002751471778048)
M_hpd_M95=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.154548360055206,0.150559734701317,0.146533241527986,0.139690029920329,0.139690029920329,0.139294303931749,0.13383244263322,0.130597044986255,0.130335290091636,0.130335290091636,0.11843783130716,0.098241205038717,0.091458181751641,0.086191600279466,0.082655505746145,0.081913146246211,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.079992138404238,0.079992138404238,0.079992138404238,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.080438198959684,0.081760348281154,0.079834782666273,0.079834782666273,0.079834782666273,0.079834782666273,0.081760348281154,0.081760348281154,0.079992138404238,0.081913146246211,0.081913146246211,0.081913146246211)
R_hpd_m95=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,-0.085875406172727,-0.077325386432694,-0.069946845289413,-0.069946845289413,-0.069946845289413,-0.075931335403622,-0.058176634690407,-0.058490077663549,-0.058490077663549,-0.050250256758825,-0.04620145988007,-0.028647187719099,-0.023108843400233,-0.023942182696363,-0.013647435763552,-0.014923863011602,-0.015701647882316,-0.015409547211676,-0.015701647882316,-0.015701647882316,-0.015701647882316,-0.018155485857409,-0.015701647882316,-0.015701647882316,-0.015701647882316,-0.015409547211676,-0.015323673654161,-0.015409547211676,-0.015323673654161,-0.015409547211676,-0.015409547211676,-0.015409547211676,-0.015409547211676,-0.015409547211676,-0.015409547211676,-0.023039537864556,-0.023039537864556,-0.023720969268454,-0.023720969268454,-0.024119349962085,-0.024119349962085,-0.023720969268454,-0.023720969268454,-0.024119349962085,-0.024119349962085,-0.024119349962085,-0.024119349962085,-0.024119349962085,-0.027077204704487,-0.034004649725599,-0.038185396552691,-0.04304028918001,-0.050505645552154,-0.04176791807201,-0.0702106648528)
R_hpd_M95=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.087808918193414,0.085349804549949,0.090394000541344,0.087808918193414,0.087808918193414,0.080125803628907,0.087808918193414,0.084819784919877,0.083262529556959,0.090394000541344,0.088090049984627,0.088090049984627,0.090394000541344,0.088536061919193,0.101680844907622,0.102346208879641,0.104200390205572,0.10523823687173,0.10523823687173,0.106948640664697,0.10523823687173,0.10523823687173,0.106948640664697,0.106948640664697,0.10523823687173,0.10523823687173,0.10523823687173,0.10523823687173,0.10523823687173,0.108742124966472,0.110687892987477,0.111361523102497,0.110687892987477,0.110687892987477,0.108742124966472,0.102697643569499,0.102697643569499,0.102697643569499,0.102697643569499,0.102697643569499,0.106948640664697,0.108742124966472,0.108742124966472,0.108742124966472,0.111361523102497,0.116425133946573,0.116425133946573,0.116425133946573,0.117810481730902,0.117810481730902,0.121831977817374,0.124794432948909,0.143419794202239,0.162600795819688,0.179669119255856)
L_mean=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.083759496593904,0.083533273886776,0.083533273886776,0.083593692409397,0.083495839425145,0.083624420972634,0.083624420972634,0.083642081025393,0.083690260307528,0.083795121977403,0.083952916005469,0.084130321138271,0.084285511524149,0.085259742411012,0.087127655980885,0.089065614248946,0.092062332564719,0.092155414196147,0.092281103582735,0.092319967536497,0.092122397094144,0.091683916327724,0.091683916327724,0.091691417223592,0.090865344602396,0.090686762463021,0.089764597323548,0.089583079786451,0.089449632821356,0.089813013892102,0.088836754026542,0.088805246045722,0.088773958208911,0.088631691251257,0.088462042886022,0.088481173729097,0.088478637988279,0.088394263371182,0.088448338197917,0.088752768047141,0.089399290431624,0.089660379874008,0.08961857244807,0.089561386744087,0.089559937949219,0.089853319051235,0.089911118218921,0.089911118218921,0.090254448008097,0.091788497369327,0.093403713529063,0.094931566097827,0.097258575998837,0.100556405969766,0.114600101296263)
M_mean=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.082019641042458,0.070344579872638,0.069554062130766,0.068903225862822,0.06868960484468,0.068324970225262,0.066316564155624,0.064792208796432,0.064479184194811,0.063874608634256,0.060978591703651,0.053657780487563,0.051228014209929,0.04876152765764,0.047067701692556,0.046601563884743,0.046459737801498,0.046270786330029,0.046216853799927,0.046038129903382,0.045759376388844,0.04568557435074,0.045534747919982,0.045471989534377,0.045471989534377,0.045396961464957,0.045397932409713,0.045397932409713,0.045397932409713,0.04530405284356,0.04530405284356,0.04530405284356,0.045251472490367,0.045196608764764,0.045176598565056,0.045176598565056,0.045159159492829,0.045159159492829,0.045165755084178,0.045136052319123,0.045151242713489,0.045159501797776,0.045159501797776,0.045283358905975,0.045296314838306,0.04570509427602,0.04570509427602,0.045697844930871,0.045697844930871,0.045464979082793,0.045464979082793,0.045655809858318,0.04575193401572,0.045431224978759,0.045431224978759)
R_mean=c(NA, NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,0.001739855551446,0.013188694014138,0.01397921175601,0.014690466546575,0.014806234580464,0.015299450747372,0.01730785681701,0.018849872228961,0.019211076112717,0.019920513343147,0.022974324301818,0.030472540650709,0.033057497314219,0.036498214753372,0.040059954288329,0.042464050364203,0.04560259476322,0.045884627866118,0.046064249782809,0.046281837633114,0.046363020705299,0.045998341976984,0.046149168407742,0.046219427689215,0.045393355068019,0.045289800998064,0.044366664913835,0.044185147376738,0.044051700411643,0.044508961048542,0.043532701182982,0.043501193202162,0.043522485718544,0.043435082486493,0.043285444320965,0.043304575164041,0.04331947849545,0.043235103878353,0.043282583113739,0.043616715728018,0.044248047718135,0.044500878076233,0.044459070650294,0.044278027838111,0.044263623110913,0.044148224775216,0.044206023942901,0.044213273288049,0.044556603077226,0.046323518286534,0.04793873444627,0.049275756239509,0.051506641983117,0.055125180991007,0.069168876317504)
trans=0.5
age=(0:(122-1))* -1
plot(age,age,type = 'n', ylim = c(0, 0.24033781284241854), xlim = c(-128.1,-60.9), ylab = 'Speciation rate', xlab = 'Ma',main='PyRate' )
plot_RTT(age,L_hpd_M95,L_hpd_m95,L_mean,"#4c4cec")
lines(rev(age), rev(L_mean), col = "#4c4cec", lwd=3)
plot(age,age,type = 'n', ylim = c(0, 0.1700031960607266), xlim = c(-128.1,-60.9), ylab = 'Extinction rate', xlab = 'Ma' )
plot_RTT(age,M_hpd_M95,M_hpd_m95,M_mean,"#e34a33")
lines(rev(age), rev(M_mean), col = "#e34a33", lwd=3)
plot(age,age,type = 'n', ylim = c(-0.09446294678999971, 0.1976360311814416), xlim = c(-128.1,-60.9), ylab = 'Net diversification rate', xlab = 'Ma' )
abline(h=0,lty=2,col="darkred")
plot_RTT(age,R_hpd_M95,R_hpd_m95,R_mean,"#504A4B")
lines(rev(age), rev(R_mean), col = "#504A4B", lwd=3)
n <- dev.off()