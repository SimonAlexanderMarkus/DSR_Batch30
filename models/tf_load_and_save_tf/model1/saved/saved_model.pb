??
?$?$
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
=
Greater
x"T
y"T
z
"
Ttype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype?
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
>
Minimum
x"T
y"T
z"T"
Ttype:
2	
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
?
MutableHashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
RaggedTensorToTensor
shape"Tshape
values"T
default_value"T:
row_partition_tensors"Tindex*num_row_partition_tensors
result"T"	
Ttype"
Tindextype:
2	"
Tshapetype:
2	"$
num_row_partition_tensorsint(0"#
row_partition_typeslist(string)
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
StringLower	
input

output"
encodingstring 
e
StringSplitV2	
input
sep
indices	

values	
shape	"
maxsplitint?????????
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

: *
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name967*
value_dtype0	
~
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_751*
value_dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

: *
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

: *
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0
G
ConstConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B 
I
Const_2Const*
_output_shapes
: *
dtype0	*
value	B	 R 
I
Const_3Const*
_output_shapes
: *
dtype0	*
value	B	 R 
??
Const_4Const*
_output_shapes	
:?N*
dtype0*??
value??B???NBtheBiBtoBaByouBandBisBthatBnameBitBofBthisBinBforBwasBmyBnotBbutBbeBonBsoBjustBhaveBareBlikeBwithBmeBtheyByourBheBwhatBitsBifBasBimBatBallBaboutBnoBdoBloveBoneBgetBpeopleBweBwouldBgoodBdontBcanBhowBoutBupBfromBanBreallyBthinkBorBknowBsheBwhenBtooBmoreBthereBherBthatsBthemBthanksBhimBnowBhisBwillBlolBtimeBsomeBhasBseeBbecauseBthankBwhoBmuchBwhyBwellBstillBhadBi’mBevenBonlyBtheirBgotBgoBbeenBohBdidBhereBrightBbyBthanBwereBwayBthenBbeingByoureByeahBit’sBneverBveryBwantBgreatBhopeBmakeBbadBshouldBsorryBmanBgoingBfeelBbackBthingBbetterBalsoBcouldBsameBdon’tBactuallyBsayBcantBsureBanyBthoseBsomeoneBdidntBprettyBotherBgameBneedB	somethingBamBbestBthoughBthat’sBdayBlookBhappyBthoughtBiveBfirstBguyBalwaysBoffBafterBusByesBtheseBlooksBoverBmakesByearBtakeByearsBmeanBworkBintoBourBmostBhesBmadeBdoesBsaidBwowBdoesntBnewBbeforeBgladBmaybeBwhereBprobablyBpostBlifeBdownBthingsBniceBlastBeverBgettingBdamnBfindBfuckBeveryBoldBhateBmanyBdudeBkeepBpointBeveryoneBdoingBlotBwishByou’reBhelpBanythingBhardBlittleBtryBwrongBpersonBgiveBfunBidBhahaBrealBlongBisntBleastBcoolBshitBplayBuseBtellBstopBfuckingBreadBtryingBnothingBguysBillBagainBcomeBmightBseenBamazingBsoundsBenoughBbelieveBwhichBaroundB2BokBcommentBanyoneBsuchBbothBawesomeBtrueBwhileBsubBgonnaBpleaseBtheyreB3BalreadyBanotherBwaitBkindBfunnyB
definitelyBbigBshowBhavingBguessBtwoBnextBweirdBsinceByourselfBsadBletBseemsBkidsBmoneyBluckBhellBfriendBelseBteamBputBpartBrememberBdidn’tBideaBuntilB
understandBhearBinterestingBproblemBlookingBstupidBsayingBgetsBagreeBwatchBthroughBliveBplaceBworldB
everythingBwithoutBfriendsBdoneBvideoBjobBcan’tBusedB	literallyBfewBcallBreasonBfarBendBagoBownBlmaoBhe’sBcareBtheresBseasonBhappenedByetBawayBmustBtimesBshesBexactlyBtalkingBi’veBbitBmakingBleftBheardBfavoriteBwentBsawB	differentBredditBonceBstartBagainstBjokeBimagineBenjoyBeitherBwholeBkidBhonestlyBgirlBwomenBneedsBstuffBmayBhomeB1BopBmyselfBhighBsecondB5BplayingBalmostB	surprisedBlessBstoryBheyBmindBtodayBtalkBfaceBnewsB
absolutelyBworstBworseBstayBomgBwouldntBpoorBheadBchangeBokayBdaysBahBwontBterribleBschoolBfactB	beautifulBaskBwasntBsuperBcameBgamesBlostBfreeBwantedBthinkingBsenseBcrazyBfamilyBcomingBwinBtakingBfoundB	doesn’tBmenBletsBhappenBleaveBwonderBtookBfeelingBkindaBcuteB
appreciateB	sometimesBlovedBhitBuBquestionBmomBfeelsBgottaBtopBwatchingBmissBseemBfanBarentBsucksBwhatsBweekBsexBableBwomanBsBmoveBwantsBmatterBsupportBnightBgodBcheckBwelcomeBinsteadBtoldB	they’reBcommentsBcarBonesBi’dBcloseBcauseBthoBdealBtotallyBsaysBpayBeditBdogBbabyBwordBreligionBmeansBtogetherBrunBi’llBgoesBbetweenBlaughB
especiallyBcalledBusingBratherBhalfBfineB
completelyBworthBseeingBeatBmovieBcuriousBknewBhotB	seriouslyBkillBhorribleB4BwordsBsweetBhaventBunderBtriedBshotBrealizeBfullBbuyBrestBloseBdumbBisn’tBhappensBchildBcaseBawfulB10BthreadBeachBbroBaloneBsideBplayersBsoonBpictureBfoodBquiteBnahBmomentBforgotBanymoreByouveBworksBmeantBcomesBstartedBsingleB	hopefullyBeasyBboyBplayedBfairByaBstateBsoundBopinionBopenBhurtBreadingBexcitedBcourseBcoupleBpostedBheartBfinallyBworryB
governmentBdeadBperfectBpastBparentsBothersBcountryBadviceBusuallyBmonthsBtbhBmineBinternetBfutureBchanceBbecomeBsharingBpossibleB	obviouslyBlineBissueBhoursBdieBdBlovesBfakeBarticleBlookedBidkBexceptB6BwifeBseriousBpickBhugeBfightB
experienceBentireBanswerB100BworkingBnobodyB
disgustingBcongratsBbreakBageB	situationBshe’sBshameBmissedBfansBanywayBstrongBphoneBholyBlinkBhouseByoungBunfortunatelyBhopingBclearlyBpostsBlevelBgaveBdadB20BgivingBbringBwaterBturnB	there’sBracistBminutesBmemeB	hilariousBchildrenBcatBcakeB	basicallyBactualBnumberBhistoryB😂BunlessBoftenBgirlsBdeathBtakesBrelationshipBoutsideBlateBfeltBbodyBpainBlivingBforgetBdeserveByepBwannaB	subredditBproudBplayerBneededBmotherBepisodeBwhateverBtypeBnormalBlikedBlearnBknowsBhandBgoneBbeatBmadBhairBassBaccountBlikelyBeyesBcoldBbrotherBscaredBresponseBidiotBcryingBcheersB	characterBsongBsimilarBsafeBlowBduringBbetBafraidBsmallBhumanBangryByoullBvoteBtonightBsignBlossBhahahaBexpectB30BwhiteBsickBshowsBnoticedBlaterBgoldBgivenBcontrolBconfusedBwasn’tBtrulyBtitleBroomBreplyBredBpowerBdateBcorrectBpassBhaBcouldntBwatchedBthreeBmateBgunBcallingBmusicBaskingBargumentBwaitingB
themselvesBstraightBshutBmonthB
interestedB
differenceBcityBughBsystemBpostingBbookBballByoutubeBsortB
ridiculousBpointsBareaBworriedBweeksBreadyBpoliceBlistenBkilledB	importantBgroupBfireByeaBstandBsourceBhuhBforwardBfastBdiedBbehindB
wouldn’tB	wonderfulBwe’reBsonBsadlyBrunningBlikesBfrontBexplainBcutB	wonderingBuglyBsaveBnopeBhandsBgivesB	extremelyBcreepyBbasedBwallBtrustBselfB
personallyBluckyBdoubtBsmileBleagueBimoBhimselfBcringeBbirthdayB
apparentlyBamericaB8B15BupvoteBtellingBpartyBoriginalBissuesBearlyBdriveBcrapBbuddyBbrainBboysBtwitterBtradeBshareBlongerB	downvotedBvsBtakenBshortBproblemsBlosingBexactBcommonBclassBblackBalrightBaddByupBtrollBshouldntBrespectBholdBeatingBdueBclearBchangedB	attentionBtvBremindsBmostlyBlotsBinsideBinsaneBhourBhonestBaskedB	yesterdayBtruthBsocialBpaidBmiddleBlawBgottenBbusinessBwon’tBolderBdropBdoctorBdareBcryBchoiceBwhat’sBusernameBsurpriseBstoreBrealityBpublicBmorningBinfoBforeverBfallBconsideringBbunchBactBwonBvideosBthinksBscaryBmentalBkillingBhusbandBhugBgoalB	fantasticBcongratulationsBcollegeBbottomBblameBsuckBspendBspeakB	somewhereBsomehowBsocietyBnearBhurtsBdreamBtermBteamsBsleepB	politicalBpieceBkeptBhiBhelpsBhealthB	haven’tBcompanyBassumeBamountByoudBstepBsendBpizzaBmediaBlaughedBgeneralBfigureBendedBdrinkBcatchBturnedBtrashBthrowBthoughtsBspaceBsimpleBserviceBsceneBplanBpissedB	otherwiseBmainB
incrediblyBetcBdoubleB
couldn’tB	communityBcannotBawkwardBannoyingBaliveBagreedBwalkBupsetBstartingBsimplyBquickBpositiveBorderBoptionBonlineBoddBlegalBgunsB	genuinelyBgarbageBfellowBdisappointedBcanadaBbannedBaren’tB7BwearBspecialBsetBroadBrichBremovedB	presidentBlaughingBinformationBiceBfatBexampleBdarkBallowedBaboveB12BworkedBtoxicBsupposedBstickBskinBphotoBpayingBmurderBmessageBmarriedBlistBdisagreeB
charactersBbiggestBbedBwearingBtownBtheyllBseriesBroundBrealizedBminuteBlivesBgoogleBfollowB	everybodyBeasilyBcleanByallBtoughBpositionBmistakeBmissingBillegalBfeelingsBfaultBfactsBexBenjoyedBdogsBcompleteBbudBbloodBavoidBanxietyBafBtwiceBtomorrowB	referenceBpicBofficeBmouthBmetBlovingBlieBlearnedBjealousBhugsBgrowBgrossBfootballBfitBfearBexistBeffortBdrunkBdecentBclaimBbtwBaccurateB2ndBzeroBwriteBreportBrandomBqualityBputtingBpreferBmrBlovelyBlightBleavingBkeepsBfocusBeyeBextraBexcuseBevidenceBconversationBbrokenBboringBblessB
attractiveBabsoluteBwithinBtroubleBtiredBregretBrecentlyB	questionsBpriceBnoneBladyBlackBhasntB	happeningBfightingB	expectingBblueBawareBalongByou’veByoursBwasteBversionBsmhBsexualBsentenceBreactionBpullBpornBplusBnoticeBknowingBfatherBfacebookBdrugsBdrivingBcatsBbeerBbarelyBaverageBattackBartBaintBviewBtipBtasteBstrangeBscienceBruleBplacesBofferBmillionB	mentionedBloudBignorantBhoweverBhatedB	expensiveBexpectedBendingB	difficultBdefenseBcontextBcomparedBbroughtB25BwarBtherapyBtextBstarBspentBplentyBobviousBmultipleBmentionBmemesBmatchBlet’sBinterestBhearingBhangBeasierBchooseBcertainBcaresBalthoughB9Byou’llByoBwalkingBthirdBtaxBstuckBsisterBshockedBsentBsavedBperBknownBkarmaBitselfBidiotsBformB	favouriteBehBdraftBdoorBcancerBburnBboughtBbornB	availableBanywaysBabuseBwaysBuncomfortableBtheyveBsomebodyBslightlyBsirBsellBsecondsBraceBpersonalBmedicalBitllBhelpfulBhelpedBfinalBemBdependsBdeepBdatingB	dangerousB	currentlyBcostBconsiderB	certainlyBcareerBbiggerBballsBadmitBturnsBteacherBstrangerBstoppedBstatesBsolidBsittingBshootBrightsBpainfulBlogicBjokesBindeedBhealthyBforceBfixBfinishBenglishBearthBdownvoteBcopsBclassicBcaughtBbusyBbullshitBbreakingBweightBweedBvoiceBtillB
terrifyingBspotBsoulBsillyBrulesBquitBplaysBparentBpBhighlyBcontractBcontentB
consideredBcheapBblockBbadlyBadorableBadBacceptB2019BwtfBweekendBtearsBstealBslowBrapeBnumbersBmovingBmovedBhumansBheroBharderBgroundB
girlfriendBfaithBdespiteBbotBbitchBappBanywhereBaheadBxdBvalueBukBtouchBsubsBsouthBsmartBsitBrelatedBrecordBreasonsBrareBpoliticsBpartnerBpageBmarriageBleadB
incredibleBhatesBgreenBembarrassingBcontactBcarefulBcalmBbrokeBbooksBanimalsBaddedBacrossB40B“iBwinningBunderstandingBtrafficBtestBspecificBreturnBproofBopinionsBnonBmessBmarketBlegitBlandBlaBkeepingBinjuryBhigherBhatBfindingBfalseB	excellentBendsBearlierBdecidedBcoverBcountBchurchBchannelBcardBbuildB	boyfriendBbarBamericanBadultBactionB50ByoungerBupdateBuhBtrainB	statementBsmellBshowingBshittyBsendingBseemedBripBresearchBpeoplesBoppositeB	listeningB	happinessBfuckedBdeservesBdecisionBdamageBcreditBcolorBcheckedBbowlBbehaviorBweveBwarmBsummerBstyleBstoriesBprotectBprivateBnaturalBnastyBnamesBjerseyBinvolvedBholdingBhandleBfellB
eventuallyBeffectBdroppedBdailyBcomplainBcoachB	brilliantB❤️BxBwinsBwestBwerentBvisitBtripBtreatBtowardsBthrowingBspeakingBsiteBsexyBseveralB
reasonableBpureBplayoffsBpicturesBperiodB	perfectlyBnegativeBmoviesBmeetBlivedBlanguageBkiddingBimageBignoreBhelloBfeetBdrugBdaughterBcourtBcoffeeBcausedB0BworriesBwillingBtermsBsnowBshoesBscreenBrollBquicklyBqueenBproveBprofessionalBpmBneitherBmodeBlocalBlearningBjoinBfolksBfloorBflairBentirelyB	countriesBcontinueB
constantlyBwhosB	wholesomeBstartsBshootingBsearchBsakeB
restaurantB
regardlessBprocessBprisonBpretendBpissBnoteBnorthBnetflixBnearlyBlinesBlawsBjobsBjailB	interviewBfiveBdecideBcreatedBcreateBcarsBbraveBbesidesBassumingBairBadultsByikesBwrittenBwildBsurelyBsuddenlyBsuccessBsongsBrockBridBrelevantBregularBpopularBperspectiveBpenisBpeaceBparkBlordBlawyerB	knowledgeBkeyB	generallyBfreakingBfiguredBevilBenjoyingBdyingB
depressionBdeletedBdeleteBdearBcuzB	concernedBcallsBbsBboardBbeyondBbearBattemptBalbumBwritingBwouldveBurBupvotesBtruckBtaxesBstandardBsportsBshirtBriskBpropertyBprayBpossiblyB
populationBpaperBoffenseBmilitaryBlyingBliesBlegsB	insuranceB	instagramBideasBgrewBfurtherBfemaleBfeedBexistsB	emotionalB	deliciousBdefendBcultureBcrimeBcomplainingBclubBchinaBarmB	apologiesBanimalB16B13BwinterBwheneverBwakeBvotedBtrollingBtotalBswearBshotsBruinedBroughBreleaseBrateBrangeBpurposeB	potentialBpersonalityBoilBoBmoronBmassiveBmagicBlargeBgreatestBgorgeousBfootBfiredBextremeBexplanationBeuBenergyBdumbassB
discussionBcurrentBchickenBcheatingBcarryBboxB
backgroundBattitudeBapartBaccidentallyB4thB1stB18B14BtheydBsuggestBrussianB	recommendBracismBpregnantBoffendedB	nightmareBnBmomentsBmakeupBmajorBlmfaoBlettingBlegendBjumpBironyBironicBinnocentBhideBherselfBheresBhelpingBheadsBglassBgiftBgeniusBfourBflyingBfinishedBfBexistedBepicBdudesBdisappointingBdirectlyBconfirmB
confidenceB	christmasBchillBcheeseB	challengeBbuyingBbabiesBassholeBanybodyB	accordingB3rdBwroteBviewsBtenBtechnicallyBswitchBstreetBspeedBsignedBshouldn’tBruinBrnBrelateBqbBphysicalBpetBpatheticBmattersBjudgeBjerkB	impressedBhospitalBgenderBfrustratingBfloridaBfixedBfallingBfailB
everywhereB	educationB
definitionBbastardB
basketballBaffordBaccidentBabilityB11ByayBwhetherBwarsBvotingBusaB	therapistBteachBstudentsBshowerBshockBsecretBseasonsBsatireBrideBrepostBreplaceBrecentBquoteBpushBproperlyBproperBproBperformanceBorangeBmodelBmeatBmeaningBliberalsB
impossibleBhockeyBhedBguessingBfullyBdislikeBdirtyBconceptBclaimsBbuttBbrutalBbritishBbandBbBawBallowBactingB17ByellowBwebsiteBvalidBusefulB
understoodBtoolBtonBtheoryBtendBtankBtableBspeechBspecificallyBskillsBshowedBsecurityBrudeBretardedBresultBrBpressBpointingB
physicallyBphotosBpcBpassedBownerBoptionsB	offseasonB	necessaryBmobileBmemoryBmassBmapBmajorityBlowerBlessonBlatelyBjokingB
impressiveB	ignoranceBhorrorBhireBguiltyBgoldenBforcedB
explainingBeventBepisodesBdollarsB	desperateBcupBconcernBclueBchicagoBchatBcashBbuildingBbringsBbotherBawwBarmsBactiveB90B35B2016BwingBwhoeverBveganBtilB
supportersBstepsBsizeBscrewBresultsBresponsibleBremindmeB	referringBprovideBprimeBplotBpartiesBoverallBopportunityBnervousBmonsterBmodBmixedBmaleBkingBheavyBhandsomeBgoalsBgiantBfreshBfreedomBforeignBfederalBfantasyBfairlyBelectionBdragBdestroyBdefBcruelBcrossBcoveredBcenterBbillBbelowB	beginningBbecomingBbathroomBbaseBbankBargueB	apologizeB23BtreeBtallBsupposeBstudyBstudentBspendingBselfishBsaltBringBrespondBrelationshipsBputsBprogramBpopBpolicyBphonesBoofBnamedBmovesBmanagedBlunchBloserBlevelsBlegBladiesBkickedBjoyBinjuredBimpactBhumorBhmmBhittingBhitsBflyBflagBfishBfieldBfailedBfacesBerrorBentertainingBemotionsBemailBdrB	downvotesB
depressingBdegreeB	decisionsBcreamBconservativeBcloserBchangesBcakedayBbreaksBbcBashamedBapplyBahhhB	advantageB1000B🤣B
would’veBwiseBwindowBvotesBuniverseBuncleBtrickBtrackBtoiletBtinyBthrownBtexasBteethBsuitBstealingBstayingBstandingBsplitBsidesBshellBscamB
respondingBrentBremainBrefuseBpushingBpromiseBpreviousBposterBpettyB
particularBpantsBnutsBnonsenseBminBmeetingBlonelyBlazyBjourneyBinsultB	includingBhungryBholeBfuckinBfrenchBflatBfilledBfailureB	everytimeBdriversBdramaBdeservedB
delusionalBdanceB	curiosityBcrowdBchancesBcameraBbusBbruhBbrownBboatBbloodyBbenchBbecameBbanBappreciatedB2018B19BworkersBwonderedBweakBwantingBviolentBuserBuselessBuponBuniqueBunfortunateBtypicalBtweetBturningBtellsB
surprisingB
suggestionB	sufferingB	stupidityBstreamBstarsBsolutionBsoldB	socialismBsmokingBshipBseesBsavingBroleBremoveBremindBreachBprogressBpressureBprayingBpracticeBpleasureBpicsBphraseBpackBnoseBnetBnationalBmilkBmessedBmemoriesBmachineBlinksBlBkillsB	instantlyB
individualBimmediatelyB
horrifyingBheckBhasn’tBhardlyBfoolBfilmBfamiliarB	employeesBembarrassedBeBdrinkingBdressBdinnerB	destroyedBdebateBdataB
commentingBchargeBchangingBcampaignBbossBbizarreBbillionBbasicBbagB	australiaBanxiousBantiBangerBabusiveB2020B
universityBtrollsB	triggeredBtopicBtalentBtBstopsBstaffBseatB	screamingBscoreBsauceBrussiaBreminderBrefsBrapedBpoorlyBouttaB	offensiveBnowhereBnormallyBneckBmodernBmirrorBmealBmaterialBlocationBliberalBkickBit’llBirelandBintenseBincelsBincelBhorseBheatBgymBgrownBgrowingBgoodnessBgfBfingersBfilmingBexcitingBdunnoBdriverBdreamsBdmBdescribeBdangerBdallasBcouldveB
commercialBcomicBcomfortableBchoseBcastBbottleBborderBboiBbeautyBbattleBasleepBasapBannoyedBahhB24B21BweddingBwashBusualBupvotedBthrewBthreadsBtargetBsurgeryB
supportingBstomachBspiritBsomeonesBsmokeB
situationsBsexistB	sensitiveBscreamBrelaxB	recognizeBrageBplanetBperhapsBorganizationBoohBnatureBmodsBmatchesBmarryBlaneBkillerBjusticeBinputBincomeBincludeBimplyingBhenceB
healthcareBhadntBgotchaBgodsBgloriousB
generationBformerBfindsBfeedingBedgyBdryBdrawingBdrawB
downvotingBdowntownBdoctorsBdivorceBdisorderB	depressedB	democracyB	defensiveBdaddyBcrushBcostsBcomedyBclipBcheaperB
capitalismBbreathBbrandBboredBblindBbenefitBattackedBateBassaultBasideBarguingBanimeBaffectBabortionB60B🤔BwishesBwineBwho’sBwe’veB	unpopularBunitedB
unexpectedB
underratedBtreatedBtrainingBtalksBtalkedBtalentedBsurviveBstoleBstandsBsoloBsleepingBsignificantBshopB	sarcasticBrevengeBremindedB	religiousBrealiseBraiseBrainBpricesBpresentBpreparedBpreciousBpreBplsBplayoffBplateBplasticBplanningBpickedBpatientBownersBmixBminimumBmillionsBmehBmasterBluckilyBkissBislandBinsecureBhonestyBgroupsBgradeBgoddamnBgoatBgasBfriendlyBfortniteB	followingBentitledBelectedBedgeBearsBdocumentaryB
disturbingBcriminalBcriedBcrackBcopB	communismBclothesBcitiesBcircleBcaringBbuttonBbugBbringingBbrexitBbeginBarrestedBappleBanytimeBalotBain’tBactsB😂😂By’allBworryingBwokeBwoahBwhoaBweatherBvirginBviolenceBvaluableBuberBtriggerBtongueBteaBstrongerB	standardsBsportBsmallerBsixBshouldveBseparateBseatsBseaBscumB
screenshotBsarcasmBsaltyBrowBrookieBriseBreleasedBpullingBprojectBpotBplansB	ourselvesBontoBoldsBnflBmumBminsBminorBmarchBmansBlimitBknifeBitdBiqBinsightBillnessBhorriblyBhoneyBheldBheavenBhatredBguardBgmBgifBgainBfruitBfreakBfoxB	financialBdiscordBdesignBdecadesBdcBdaBcuttingB	customersBcultBconsentB	confirmedBchoicesBcapBbulletBbreadBbombBbitterBbelievesBbecomesBbadassBarticlesBarmyBappearsB
aggressiveBactionsB70B500B2017B😊Byou’dBwishingBwindowsBweaponBwarningBwBviaBvBusesBunironicallyBumBultimateBthxBthrowsBthatdBtfBteenBtagBsuckedB
successfulBstunningB	strangersBstoppingBspellingBspamBsooooBsomewhatBslowlyBsilverBsignsBshutdownBserveBsaturdayBrunsBrosterB	realisticBraisedBquietBprovidedBprovenB
propagandaBproductsBpowerfulBpossibilityBpodcastBpatchBpassingBolBnecessarilyBnativeBmistakesBmetalBmentallyBmediocreBmaskBlinkedBlikingBlightsBlegallyBjustifyB	insultingBinjuriesBimproveBidentityBhurtingBheroesBgrandmaBgayBflexBfavorBfasterBexplainsBdrivesBdoucheBdirectBdealingBdangB	correctedB	corporateB
conspiracyBconservativesBcombatBcoachingBclarificationBcivilBchuckleBchecksBcanadianBbyeBbudgetBbootsBbelongsBbayBbaitB	attractedBattacksBartistBaimB5thB45B1010B🙄ByellingBwhoseBwastingBvidBvictimBupdatedBunbelievableBtwistBtrumpBtravelBtoyBtinderBthemeBthatllBsunBsufferBstruggleBstockBspellBsourcesBsolveBsoftB	socialistBsmashBskyBskipBshedBsexuallyBservicesBseekB	sacrificeBroadsBreportedBremotelyBreliefB	realizingBranBprogressiveBprofileB
pretendingBplantBpatsBpanicBopeningBoopsBneatBnailBmountainBmomsB	miserableBmindsBmemberBmarkBmBloopBloadBlistenedBlilBliedB
legitimateBkindsBjeezBisraelB
irrelevantB
ironicallyBindependentBhumanityBholidayBhe’dBhealingBhardestB
harassmentBgopBggBgermanyBframeBforcingBfingerBfeminismBfbiBfascinatingBfactorBeyebrowsBexpectationsB	existenceBeverydayBempathyBeastBdiscussBdetailsBcursedBcrisisBcrimesBcreativeBcornerBconvinceB	comparingBclimateBcBburnedBblowsBblowBbiteBbirthBbirdsBbfBbearsBbeachBbastardsBauntBareasBanswersBanalogyBamazonBadsB	addictionB200B😍BworldsBwindBwheresBwealthButterlyBtweetsBturkeyBtriesBtipsB	they’veBtdBstrikeBstretchBstrengthBstayedBstatsBstationBsoonerBsociallyBskillBshockingBscenesBsaintsBsadnessBrushBrequiredB	remindingBrankBramsBquarterBpurpleBprideBpoliticiansB	pointlessBpinkBpiecesBpicksBpercentB
people’sBparticularlyBpairBownedBopenedBofficialBocBobsessedBnycBnurseBnsfwBnorBmurderedBmoralBminorityBmasculinityBmacBlosesBlooseBlockBlimitedBleaderBlaidBlabourBkillersBjanuaryBintelligentBinsultsBinstantBincreaseBincludedBhypeBhuntingBhopesBhonorBhomelessB
highlightsBhiddenBhandledBguiltBgenuineBfundingBftfyBforgiveBfillBffsBfetishBfancyBfamousBexperiencesBexperiencedBequalBenglandBemotionallyB	elsewhereBeggBeffectsB	effectiveBeditedBdistanceBdisasterBdisappointmentBdetroitBdesignedB	democratsB	defendingBdebtBcuntBcookiesB	confusionBcompetitionB	companiesBcommitBcomebackBcoastBclosedBclappedB	chocolateBchineseB	childhoodBchiefBchestBcheatB	celebrateBblockedBblessedBbellBautismB	argumentsBamongBaltBalcoholBaddingBactivelyBacceptedB22B“theBwinnerBwideBwe’llBwesternBwageBvacationButahBunnecessaryBunitBunionBtypesBtorontoBtoddlerBtightBthickB	thereforeBsuspectBstoneBsortsBsoooBsnakeBsmellsBshoulderBshooterBschoolsBscareBruiningBrollingBrippedBreplyingB	relatableBrejectedBrecoveryBpushedBpunchBpulledBpickingBpatienceBpartsBoutcomeBooohBontarioBofficerBoddlyB	obnoxiousBnowadaysBnightsBnailedBmovementBmoronsBmisreadB
misleadingBmindsetBmidBmembersBmedsBmamaBlogoBlogicalBlockedBlionsBliarBlegitimatelyBleafsBlakersBjuicyBjudgingBjetsBindustryBindiaB	incorrectBignoringBheavilyBhappilyBhangingBhahBgrowthBgamingBfunnierB	franchiseBfollowedBflipBfamiliesBfallsB	everyonesBescapeBequallyBenemyBemptyBempireBembarrassmentBegoBdroppingBdonateBdollarBdisneyBdiseaseBdigBdifferentlyBdesperatelyBdecadeBcustomerB	correctlyBcopyBconsequencesB	confusingB	conditionBcomboBcheckingBchampionshipBcenturyBcausingBcasesB	candidateBbrothersBbridgeBbotheredBblewBblamingBbikeBbibleBbiasBbeltBbeliefsBbaseballBbangBawhileB	awarenessBassumedB
appearanceBappearB	apartmentBamazedBaltrightBagentBaddressBaccentB99B31B😭B“ByehByeB	worthlessBwhoopsBwhiningBwetBwalkedBwaitedBvolumeBvileBvictoryBvibesBvariousBvagueBvaccinesBunderstandableB	typicallyBtrailerB
tournamentBtoneBticketBthusBthreatBthousandB
thankfullyBtaughtBswingBsweatyB
supportiveBsugarBsubtleB
subredditsBsubjectBstressBstreetsBstolenBstatusBstB	spreadingBspoiledBspinBskinsBsignificantlyBshiteBserverBservedB	sentencesBscotlandBscoredBscheduleBscenarioBscaresBsandBroundsBrootingBreverseBrepliesBrepeatBremovingB
referencesBrecommendationBrealisedBrawBrarelyBrapBrantBpumpBprofitBpraiseBpplBpopcornBpoopBpetsBpeeBpathBpastaBpassiveBpalBoursBordersB
optimisticBnotesB	neighborsB	naturallyBmommyBmiracleBmexicoBmenuBmeasureB	marketingBmanagerB
managementBmanageBmagaBlicenseBleadsBlatestBkneesBkitchenBjuiceBjapanBirlBinspiredBinchesBimmigrationBimmatureBiircBhotelBhmmmBhidingBhere’sBhealBhatingBhardcoreBhahahahaBhahahBgrabBgoshBglassesBgenocideBgenericBfyiBfridayBfoulB	favoritesBfamB	explainedBexchangeBeuropeB
equivalentBelsesBeconomicBearBdodgedB	directionB	describedB
democraticBdamnitBcutestBcowardBcoreBcookingB	convincedBconsoleBconsistentlyBcomputerB
complimentBcompetitiveBcombinedBcolorsBcoincidenceBclickBchargesBcentralB	cancelledBburningBburgerBbumperBbumpBbullsBbubbleBblastBbitcoinBbirdBbillsB	believingBbalanceBatheistBassholesBalternativeB
afterwardsBaffectedB
acceptableBabusedBabsurdB90sB80B7thB26B😅B👍BzoneByou”ByorkBworthyBworkerBwomensBwingsBwifesB	weren’tBweaponsB
washingtonBwashedBvotersBvibeBupsBupperBunlikeBunhappyBtreatsB	treatmentBtranslationBtransferBtradedBtoastBtimingBticketsBthruBthinBtheoriesBthankfulB
terroristsBteachersBtapeBsyndromeBsupportsB
suggestingBsueBstudiesBsteelersB
statementsBstarterBstanceBsquareBspreadBspeciesBspanishBsouthernBsolvedBsmugBsmoothBslapBshitsBsharedBshapeBsettingBsellingBsecBscreamsB
satisfyingBsafetyBridiculouslyB
revolutionBreviewBrevealBretailB	respondedBremainsB
referendumBrecallBreadsBreactBradioBpunBpuckBprovingB
protectionBpropsBproductB	privilegeBpreventBprayersBprBpoundsBpoolBplaneBpanelBpaintBoweBouchBorderedB
officiallyBnyB
nightmaresBnhlBnerdBneighborhoodB	narrativeBname”BmutualBmondayBmoderateBmicBmessagesB
mentioningBlipsB	lifestyleBlickBleavesBleadingBlaughsBlameBlakeBladBkneeBjumpingBjerseysBitemBinviteB	invisibleBinternationalBinappropriateBhousingBhornyBhomesBhillBheadlineBharmBhappierBhamB
guaranteedBgoogledBgoodbyeBgenBgearBfrozenBfitsBfilthyBfileBfeedbackBfascismBfarmBfallenBfailingBfaBexposedBexcusesB	exclusiveB	exceptionBexamplesBeveningBenvyBengageBeliteB	elaborateBeggsBdumpB
disrespectBdiscriminationBdeviceBdevelopmentB	developedBdemsBdeliveryBdefeatBdeeplyBdancingBcringeyBcrewBcreatingBcouplesBcountsBcounterB
connectionBcondescendingBcomradeB
comparisonBcluelessBclownB
clarifyingBclarifyBcitizensBcircumstancesBchargedBceilingBcartoonBcaloriesBbutterBbucksBbrosB	breathingBboutBbostonBblownBblatantBbellyBbelievedBbeatingBbeastBbasketB	backwardsBautoBaudioB	assaultedBartistsBarrowBappropriateB	anarchistB	amendmentB	amazinglyBahaBagedBadvanceBadditionBactorBaccountsBaccessB43B34B😢B😁ByBxboxB	wikipediaB
whatsoeverBweirdoBvisitedBunluckyBunderestimateBturdBtrapBtouchedBtonsBtierBteachingBtastyBtaggedB	supporterBsundayB
strugglingBstreakB
stereotypeBstatedBstageBstadiumBsquadBsonsBsomedayBsnapBsinBsigningBshownBshitpostingBshiftBserialB	sentimentBscrewedBscratchBscoringBsanBsaleBrumorsBromanticBrocketBrifleBriceBrequireB
republicanB	reportingB
relativelyB	regularlyB	regardingBrefusingB	receivingBreceivedB	reasoningBrationalBratesBratedBrankedBracistsBprovesBprimaryB
preferenceBppBpoliciesBpigBpeakBpatriotsBpaintingB	overratedBoutfitBopsBopensBohioBofferedBoccurredBnovemberBnoiseBmoodBmisunderstoodBmistakenB	minecraftBmillennialsBmethBmetaB	meanwhileBmaxBmaintainBmahBmafiaBlipBlegionB	legendaryBlayBkoreaBkissingBjudgesBittBitemsBitalianB
intolerantBintelligenceB
inevitableB
immigrantsB	imaginingBigBidentifyBhundredsBhowsBhopefulBhookB
homophobicBholesBhobbyBhighestBhellaBhatsBhatefulBhandlingBhandedBhallB	guaranteeBgrammarBgladlyBgangBgB
frustratedBfriesBfriedB	forgottenBfocusedBflopBflamesBfiguresBfightsBfeministBfellaBfedBfeatureBfbBfavBfascistBexistingB	executionBessentiallyBenvironmentBentertainmentB	enjoyableBencouragingBemojiB	emergencyBdramaticBdraftedBdoorsBdietBdiesB	diagnosedBdevastatingBdetailedBdetailBdesireBdescriptionB
departmentBdeeperBdatesBcycleBcrownBcrossingB	criticismBcringyBcreepBcousinBcorruptBconvertB	continuesBconsiderationBcongressB	confidentBcondomsBcondolencesBcompareBcomfortBcodeBcnnBclothingBclockBclearedBchickB	chemistryBchefBcausesBcatchingBcancelBcampBburnsBburgersBbullyBbuffB	breakfastBbotsBbothersBboobsBbonesBboneBbipolarBbigotBbetaBbenefitsB	behaviourBbarrelBbaconBbackupBaweB	attackingB
assumptionBasksBarrestBarmorBarizonaBappliedBapB	answeringBamountsBalabamaBaccusedB2012B😆B😂😂😂B“nameB͡°ByellByahBwireBvisitingBvisionBvisibleBvictimsBventBvegasBvaginaB	vaccinateButterB	upsettingBunusualBunreasonableB	unethicalBummBtyBtrophyBtributeB	translateBtransitBtowardBtimelineBthursdayBthreatsB	thousandsB	they’llB	territoryB	terrifiedBterriblyBtechBtbfBtattooBsystemsBsymptomsBsydneyBswordBswitchedBsurvivedBsunnyB
subscribedB
subjectiveBstrawBstormBsteelBsteamBspringBspokenBsoreBsometimeB
socialistsBskinnyBsizedB	sincerelyBsightBsighBsiblingsBshoutBshould’veBshitpostBshaveBshallBshakeBsensibleBsemiBseekingBseattleB	searchingBsaddestBrumorBrouteBrootBriverBridingBrewardBreviewsB
retirementB	responsesB
resolutionBrequiresBrequestBrepublicansB
rememberedBreferBreachedBreBrapingBquotingB
punishmentBps4B
previouslyB	preferredBpovertyBpotatoB	positionsBposBpoppedBpolyBpocketBpleasedBplatformBpistonsBpillowBpersonsBpenaltyBpenBpaysB
oppositionBopponentBopenlyBohhhBoddsBoccasionallyB	objectiveBnicerBnerveBneighborBncBnbaBnaziBnapBnakedBmpBmonkeysBmissionBmintBmichiganBmethodBmessingBmedicineBlistedBlineupBlifetimeBlibraryBletterBleftistsBlargerBlabelBknockBknicksBkittyBkindnessBkindlyBkBjamBiowaBinvestigationB	interestsBinitialBinformativeB	influenceBincidentBimprovedB
impressionBimmoralBimaginedBignoredBideologyBhuntBhundredBhousesBhostBhorrificBholidaysBhmBhiredBhe’llBhersBheartsBharshBhackBgreaterBgigBgemBfrustrationB
friendshipBformatBfoBflowersBflashB	finishingBfilmsB	feministsBfashionBfartBexerciseB	evolutionBeventsBespnBenteredBenjoysBembraceBelectricBeducatedBeatenBeasternBdropsBdrinksBdragonBdopeBdonutsBdivisionB
discoveredBdifferencesBdestructionB
destroyingBdepthBdelusionBdelightBdefenderBdefaultBdecemberBdeBdatedBcurseBcryptoBcriticalB	creaturesBcoworkerBcoverageBcountyBcoughBcouchB
correctionB
correctingB
convenientBcontrollingB
controllerB
controlledBcommunitiesBcommunicationBcommieBcombinationBcoltsBcolourB
collectionBcodBclickedBcleverBclearingBchokedBchipBcharityBcaredBcardsBcaptainB
candidatesBbullBbrownsBbrightBbitesBbingoBbiasedBbiBbeliefBbeginsBbeansBbbBbasisBbasementBbarsBbagsBawardBattemptsBatmBaspectBasianBasiaBapplaudBaocBairportBagesB	admittingBadministrationBactorsB
activitiesB	abandonedB911B38B300B27B😔B♥️B“whatB—BzombieBytByrByknowBww2BworshipBworeBwolvesBwingersBweirdlyBwaveBwastedBwarnedBwalmartBwalletBwagesBvomitBvikingsB	venezuelaBvarietyBvalleyBusersBusageBunicornB	underwearBunattractiveBunableBtypedBtwitchBtwinsBtrucksBtrendB	travelingBtrashyBtragicBtradingBtossBthreateningBtextingBtestedBtearBtaskBtanksBtacosBtacoBsyriaBsympathyBsurveyBsurprisinglyB
supposedlyBsupplyBsunsetBsuitsBsuggestionsBstronglyBstrokeB	streamingBstickingBstaysB
statisticsBstarvingBspeculationBsoulsBsocksBsoapBsnackBsloppyBsleptBslaveryBsitesBsinkBsignalsBshippingBshineBshamingB	sexualityBsevereBsevenBsetsBserversBsectionBscrewingBsbBsalesBruralBruinsBrollsBrolesBribsBrewatchBresponsibilityBrepresentationBrelievedBrejectB
refreshingBreflectBrefB	redditorsBredditorBreceiveBrealizationBraptorsBrainbowBradicalBquestionableBpuppyBprovedBpriorBprintBporkBpoliteBpodsBplzBpitBpillsBphillyB
passionateBpassionB
parliamentBpantiesBpackersBowoB	overwatchBoverlyBotBorlandoBordinaryBopposedB	opponentsBooBohhhhhBoffersB	obsessionBnudeBnuclearBnorthernBnikeBnetsBnervesBnattyBnationBnaiveBnailsBmvpBmuscleBmouseBmoonBmisunderstandingBmisogynyB	minnesotaBmindedBmilesBmidwestBmetsB	mentalityB	mcdonaldsBmavsBmathBmarvelB	marijuanaBlibertarianBlettersBleaningBkeysBjunkBjumpedBjoinedBjawBjapaneseBjackB
irrationalBiphoneBintroBinspirationBinfuriatingBinformedBincludesB	incapableBikBieB	hypocrisyBhypedBhunBhumbleBhoustonBhotsB
horrendousBheightBhabitsBgullibleBguideBguessedBgtaBgrindingBgreedyBgreasyBgrandparentsBgrandBgooglingBghostedBghostBgameplayBfunctionB
frequentlyBfragileBfourthBfoulsBflightBfishingBfictionBfestivalBfeesBfascistsBfactorsBexpertBexpandB
excitementBeveryone’sBeraBequalityBeaglesBdustBdumpedBduckBdownhillBdoggoB
discussingBdialogueBdevilsB
determinedBdesktopB	dependingBdenyBdenialBdelayBdefendedB	dedicatedBdecidesBdashBdammitBcureBcrashBcowardsBcousinsBcourtsB
could’veBcorrelationBcookBconversationsBcontroversialBcontributingBconstitutionBconstantBconcertBcomplicatedBcompBcommuteB
committingB	committedB
commitmentB
comfortingBcokeBclutchBcloselyBclaimingBclaimedBcitizenBchiefsBcheatedBchaseBcharmingBchargersBchainB	celebrityBcartBcaptionB
californiaBcaBbullyingBbuiltBbucketBbreedBbreakupBbravoB
boundariesBboomBbonusBboldBbodiesBblowingBbiologyBbioBbinBbigotryBbelongBbeingsBbedroomBbeatsBbeardBbatBauthoritarianB
attractionBattorneyB	attemptedBatleastBarsenalBarcBapproachBappliesB	announcedBammoBamenBallowsBafricaB
advocatingBadoreBadoptB
additionalBaddictedBacknowledgeBacidB	acceptingBabB95B4chanB2009B🙃B😉B“ohByankeesBwriterBwreckBwrapBwordedBwoodsBwisdomB	wisconsinBwinkB	willfullyBwe’dBwelpBweirderBwarrantBvirginsBvehicleB	vancouverB
vaccinatedBupsideB	unrelatedBunacceptableBultraBtypoBtypingBtripsBtrippingBtrilogyBtreasonBtrappedBtouchingBtiresB
throughoutBthreatenB
thoughtfulBtheaterBtestingBterminalBtempleB	teenagersBteenagerB	teammatesBtastesBtankingBsurvivorBsuperiorB	superbowlBsuddenBsucceedBsubmitBstuntB	strugglesBstringBstrategyBstackedBspouseBspotsBspoilersBspoilerBspoilBspineBspicyBsparkBspammingBsortedBsooBsolelyBsoldiersBsoberBsmashedBsketchyBsistersBsingBshortsBshipsBsheepBshavingBsharpBsharkBservingBsequelBsecretlyBscrollBscriptBscaleBsavageBsaneBsandwichBsaferBsafelyBsackBrulingB	rpoliticsBrobotBroastBriddanceBrickBrespectsB	resourcesBresourceBrepresentativeBrepliedBreplacementBreplacedBrememberingBrelyB	religionsB	relativesBregretsBregisterBregionBrefusedBrecoverB
recognizedBrecipeBreceiverBrazorBratingBratBrapistsBramblingBrabbitBquotesBqueensB	qualifiedBpupBpsychoB	providingBprotestB
projectingBprogramsBprofitsBproducedBprepareBpreachBprankBpracticallyBpostersBpollsBpollBpointedBplugBpityBpipeBpingBpieBphoenixBpermanentlyBpatientsBpatBparkingBparisBparanoiaB	paragraphBpackageBowningBoutrightB
oppressionBopportunitiesBogBoblivionBnursesBnoobBnonoBnonexistentBnonethelessBnerfBmortyBmoralityBmommaBmockBmmmmBmercyB
membershipBmeaslesBmeaninglessB
meaningfulBmatureBmatesBmarkedBmapsBmallB	maliciousB
mainstreamBmainlyBmailBlptBlockerBloansBlistensBlimitsB	lightningBlegoBleftistBlayingBlargelyBlanesBlandlordBlaborBkoreanBknockedBknightsBkickingBkatBjkBjeansBit’dBisisBirishBinvitedBintjBintimacyBinteractionBintentionallyBintentionalBintendedBinsertBinsanelyBimprovementBidealB	hypocriteBhuluB	householdBhormonesBhopBhomoBhomieBhoBhipB
highschoolB	highlightBhideousBhehBheelsBheartbreakingBheadacheB	harassingBharassBhappiestBhadn’tBhabitBgutBguitarBgrindBgraveBgraspBgrandpaBgrandmotherBglueBgimmeBgilletteBgermanBgentleBgenerationsBgeezBfrighteningBfranklyBfrankBforumBforeheadBfloatingB
flashbacksBfinanciallyBfateBfacedB
expressionBexpertsBeternalB	essentialB
enthusiasmBengagedB	encourageBemployeeBemotionB	electionsB	efficientBeffectivelyBeducateBedBeconomyBeatsBearnedBearnB	eachotherBdumpsterBdumbestBdroveBdozensBdoseBdoordashBdonationB	dominanceBdodgersBdocBdnaBdlcB	discussedBdirectorBdirectedBdiggingBdevsBdevelopBdesperationB	demandingBdemandBdemBdebatingBdealtBddB	daughtersBdarnBdamnedBcustomBcurbBcrossedBcropBcreatesBcraftBcrackedBcookedB	contractsB
continuingBcontainB
conditionsB
conclusionB
complaintsB
communistsBcoalBcmonBclubsBclosingBcloneBcleaningBchoosingBchokeBchipsBchinBchildishBcentreBccBcapableBcamBcageBburstBbummerBbugsBbroncosBbrainwashedBbpdBbowBboozeBblockingBbladeBbillionsBbettingB
beneficialB
beforehandBbbcBbattlesBbackingBazBaxeBautomaticallyBautisticBauthorBaustinBasexualBartifactBarseBarguablyBapproveBappealBangleBamusingBagendaBagencyB	afternoonBadmittedBaceB
accomplishB41B33B😎B👏B☺️B“youB͜ʖB
yourselvesByardBwutBwritersBwoodBwitchB	where’sBwhataboutismBwelfareBweighB	wednesdayBwedBwatchesBwallsBwalksBwakingBwaBvrBvoicesBvisaBviceBvaluesB
validationBupdatesBunlikelyB	unhealthyBunfairBunemploymentBundergroundBunderageBuncommonB
ultimatelyBtwinBtwentyBturtlesBtsaBtripleBtreesBtreatingBtreasureBtransportationBtragedyBtrackingBtouchesBtortureBtoothBtoolsB	toleranceBtoeBtljBtippedB
threatenedBthey’dBthankyouBthaiBterrorBtemperatureBtampaBtailBsweetestB	supportedBsummaryBsuedBsuccessfullyB	subscribeB	strangelyBstokedBstatingBstartersB	starbucksBstableBstabbedBspokeBspitB	spiritualB	spidermanBspeaksBspeakerBspareBsoooooBsodaBsmilingBsmellingBslangBslamBsitsBsingingBsilenceBsidebarBsiblingBshyB	showeringBshoveB	shouldersBshortlyBshorterBshopsBshoppingBshootoutBshiningBshillBshieldBshe’llBshadyBshadowBshadeBsexismBsetupBsenateBsecureBscarsBsavingsBsanityBsampleBsaladBroseBroomsBroommateBroofBromanceBroastingBreturnedBretiredBretireBrestaurantsBresolvedBresentBrescueB	repulsiveB	representB	repeatingB
repeatedlyBrepBrelaxingBrehabB
referencedBreducedBreduceBrecognizingBrecklessB	reactionsBreactingBreachingBratsBrandomlyBrackBquietlyBqbsBpursueBpunchedBpubliclyBptsdBpsBprospectBpromoteB
projectionBprofessionalsB
productionBproduceBprobB
presidentsB	pregnancyBpredictableBpredatorB
practicingB	practicesBpowersBpotentiallyB
possessionBportionBpopsB
politicianBpolishBpodcastsBpocketsBplaythroughB	platformsBplainBplacedBpissingBpillBpileBpiBpharmaBpersonalitiesBperkBperiodsB
performingB
percentageBpeersB	pedophileBpaymentBpassesBpartnersBpartisanB	parentingBparanoidBpagesB	ownershipB
overpricedBoutragedBoutrageBorientationBorgansBopposingBoilersB	officialsBofferingBofcBnpBnotedBnooooBnicelyBniBnglBnephewBneglectBnarcBnaBmusicalBmusclesB	murderingBmudBmsB
motivationB	motivatedBmonkeyBmlsBmissesBmiseryBmildBmiamiBmetroBmessyBmeltsBmedBmasterpieceBmanipulativeBmangaBlowkeyBlotteryBlossesBloreBlookinBloadedBliverBlibBlengthBleanBlaughterBlatterBlastedB	languagesBkudosBknightBkitBkissedBkingdomBkeenBjournalistsB
journalistBjewelryBjealousyBisraeliB	involvingB	introduceB
interviewsBinterpretationBintellectualBinstinctB
inherentlyBinconsistentBincompetentB
inaccurateBimpliedB	immediateB	imaginaryBikrBicingBhumourBhrBhorridBhopedBhoodBhomeworkBhintBheheBheadedBhcBhawksBharmfulBhappyfriendlybotBhandyBhalfwayBhaircutBhailBgriefBgrassBgrantedBgraceBgovernmentsBglovesBgloryBgawdBgamerBfurryBfurriesB	furnitureBfuriousBfurBfundsBfundedBfreezingBfreakinBfranceBfpsB
foundationBfoughtBforthBfootageBfoolsB	followersBfolkBfluidBflowBflavorBflamingBflagsBfittingBfinestBfilthBfebruaryBfathersBfareBfacialBexpressBexperiencingBesteemBerBendlessBencouragementBemblemBeditionBdynamicBdunBdreamingBdoomedBdollBdocumentBdividedBdistractBdistantBdisrespectfulBdishBdisgustB
disappointBdipBdiarrheaBdevilBdeskB	dependentBdemonsBdemonizeBdemocratBdeliberatelyBdefineBdefensivelyBdeerBdeathsBdealsBdatBdamagingBdadsBcynicalBctBcriesBcowBcountingBcostumeBcorporationsBcornB
consistentBconsistencyBconnectBconfirmationB
concussionB
concerningB
comprehendBcompeteB	communistB
commentaryBcomicsBcollectBcocaineBcoachesBclosureBclassesBclapBcitizenshipB
circlejerkB
cigarettesBchronicB	chemicalsBchelseaBchampionBchallengingBcellBcarriedBcarbonB
capitalistBcapitalBbuzzfeedBbuzzBbustedBburdenBbulliesBbulliedB	buildingsBbrushBbrickBbreatheBbreastBbrahBbpBboundBboreBbootBbonerBbombsBboilBblondeBblanketBblamedBbehalfBbeefBbeeBbeautifullyBbchBbanksBbangingBbandsBbalancedBbakingBbackedBayyyBawakeBavoidingB
australianBaudienceBaswellB
astoundingBarrivedBarmourBaprilBantisemitismBankleB	animationBandroidBandorBancientBanarchyBamazesBalternativesBallowingBalienBaimedBaiBahhhhB	agreementBadvertisingB	adventureBadhdB
accuratelyBabusingB75B6thB600B42B400B30sB29B20kB2014B2010B2003B10kB101B😐B❤B“notB	“it’sB’B	‍♀️B¯ツ¯ByuckByardsBwweBwritesBwoundBwomansBwivesBwittyBwithdrawalsB
withdrawalB
windshieldBwickedBwhoreBwhilstBwhereverBwheelBwhaleBweeklyBweebBwebBweakerB
vulnerableBvpnBvoterB	volunteerB	virginityB	violatingBvillainBviewersBveinsBvehiclesBvalveBuploadedBuploadB	upliftingBupgradeBuntrueBunsureBunseeB	universalBunhingedB
uneducatedBunconditionalBunBtwelveBtwatBturnoverBturkishBtumblrBtuesdayBtubeBtroublesBtraitorBtrainedBtraditionalBtracksBtornB
toothpasteBtoesBtobaccoBtldrBtitlesBtissueBtireBtiedBtideBthroatBthreesBthoroughBtheirsBtheftBtextsBtemporarilyB
technologyB	technicalBtbBtastedBtadBsymbolBswallowBsushiB	survivorsBsurvivalB
surroundedBsunsB
sufficientBsubwayBsuburbanB	subtitlesBsubbedBstripBstinkBsticksBstickerBsteppedBsteerBstealsBsteakB	statisticBstareBstanBstalkingBstackBspotifyBspidersBspiderBspendsBsoundedBsonicBsomeone’sBsolvesBsoggyB
snowflakesBsnapchatBsnacksBsmellyBsmarterBslursB	slightestBslideBskyrimBskullBskewedBsjwBsilentBsignalBshouldaBshootsB
shockinglyB	shitpostsBshe’dBshallowBshakingBsfBsettleBservesBsemesterB	selectionBseedBsecularBsealBseahawksBseafoodB	scrollingBscottishBscopeB
scientistsB	scientistBschemeBsayinBsaudiBsatisfactionB
sandwichesBsalaryBsaBrubbishBrubberBroyalBrounderBrotationBrolledBrnbaBringsB	righteousBrewindBrevealedB	returningBresidentB
representsBrepostedBreportsBrepentBreliableBrelativeBregardBrefusesBrecordsB	recordingBrecommendedBreboundBrealizesBrbBrapidBranchBraisingBquirkyBquartersBqualifyBpunkB	punishingBpunishBpumpedB	publicityBpsychiatristBproteinB	protectedB
prostituteB	promotionBpromisedBprizesBprincessB	primarilyB	primariesBprickBpreyBpressingB
presidencyB	presentedBpredictBprayerBpoundBpotterBpotatoesBpoppingBpoliticallyBpolicingBpoleBpoisonBpodB
pleasantlyBplatinumBplannedBpissyBpinchBpillowsBphysicsBphilosophiesBphewBpewBpetaB	permanentB	perceivedBpeepsBpeachBpaymentsBpasteBpanBpaleBpadresBpaceBpaBoxfordBoverwhelmingBovercomeBovenB
outrageousBorthodoxBoriginsB
originallyBorgasmBorgBoptimismBooooBonionBoleBoldestBoilsBohhhhBohhBoceanB	obliviousBobjectivelyBobeseBnormBnooBnieceBnicestB	newspaperB	nevermindB	neckbeardBndpBnauseousBnaughtyBnationsBname’BmythBmysteryBmustveBmultiplayerBmuhBmugBmrsBmotherfuckingBmotherfuckerBmortgageBmoralsBmorallyBmomentumBmmmBmlmB
minoritiesBminesB
millennialBmildlyBmilBmidnightBme”B	memorableBmarioBmarginalBmannerBmanipulationBmanilaBmanagersBmaamBmaBlyricsBlootBlondonB	liverpoolBliteralBlitBliftBlibertyBlegislationBlegendsBleaksBlbsBlazinessBlawnBlaunchBlaptopBlackingBlabBkongBkittensBkingsBkfcBjustificationBjerksBjerkingBjazzBjacketBjabBit”BitalyBisolatedB
irritatingBinvolveBinvestigateBinvestB	introvertB
introducedBintoleranceBinternalBinteractB	intentionBinstitutionB	inspiringB
insightfulBinnerB
industrialBindividualsB
indicationBindianB	increasedBinchB	incentiveB
importanceBimplicationsBimmortalBillegalsB	illegallyB
hystericalBhypotheticalBhypocriticalBhusbandsBholdsBhogBhmmmmmBhighwayBhelmetBheatedB
heartbreakB	healthierBheadingBhatersBharassedBhangsBhammerBhairsBhahahahBhBgutsBgumBguardianBgrimBgreatlyBgratefulBgraphicsBgovBgoalieBgiftsBgeeBgaysBgatekeepingBgardenBgapBgalaxyBgagBfridgeBfreakyBforumsB
forgettingBfoodsBflirtingBflippedBfirmBfiringBfinaleBfilterBfighterBfeeBfeaturesBfearsBfarmersBfanbaseBfameBfalloutBfallacyBfacingBexternalBextentBextendedBexsBexploreBexpiredB	expansionB
exhaustingBexamBewBeveB	ethnicityBepBentityBenterBemployedBemailsBeloB	eliminateB
electricalBelectBeffortsBdynamiteBdxmBdutchBdunkBdumberBdullBdronesBdreadfulBdreadBdominantBdomesticBdlB	diversityBdistressB
dissonanceB	disregardBdisingenuousB	disgustedBdisgraceBdiseasesBdiscoveringB
directionsBdinosaurBdictatorB
describingB	describesBdenyingBdentistB	deliveredB
delightfulB
dedicationBdeclineBdecidingBdarlingBdarknessBdairyBcyclingBcwBcursiveBculturalB	criticizeBcriteriaBcricketBcreatorBcrappyBcrackingBcrabBcowsB	coworkersBcowboysBcowboyB	countlessBcosBcopeBcoolestBconvoB
conversionB
contradictB
continuousB	continuedB
contactingBconstitutionalBconfirmsB
confessionBcondomBconBcomplexB	complaintB	competentB
compassionBcommunicateBcommercialsBcommandBcoinB	cognitiveBcoatBcoBcloudsBclientsBclientBclemsonBclassyBcisBchubbyBchosenBcheerBcheekyBcheatersBchartBchairBcentristB	censoringBcellsBceasesBcbBcaveBcautiousBcarryingBcapsBcapitalistsBcanonBcannonBcandyBcamerasBburiedBbuddiesBbrowsingBbroadB	brigadingBbravesBboxingBbounceBbottlesB
borderlineBboopBboltBboisBboiledBbluntBblogBbleedingBbleedB	blatantlyBblandBblahBbitsB
biologicalBbidBbf1B
believableBbegBbbqBbathBbashingBbasesBbaselessBbarriersBbamaBballoonBbakeBavatarB	authorityBattractBatheistsBatheismBassistsBassertBappsBappointmentBapplyingBapplicationBapparentBantivaxxersBannoysBanniversaryBangelB	anarchismBanalysisBanalBamiriteBamendB	alternateBalphaBallergicBalasBalarmBairedBahahaBagreesBagreeingBagentsB	affectingBaffairsBadvancedBadoptedBadmireBaddsB	addressedBachieveB
accusationBabroadBaaB8thB80sB69B59B5000B4kB48B47B3sB36B30kB3000B2kB250B20sB2015B2000B10000B🤷‍♀️B🙏B😬B😤B😒B💕B👀B☺B“thankB“i’mBzonesBzionByumByrsByouthByogaByerBxpBwsBwornBwooshBwoooshBwooBwitnessBwishfulBwinnipegB	willinglyBwhomBwhinyBwhewBweirdestBwebsitesBwearsBweaknessBwavesBwatBwashingBwarriorsBwarnBwarmingBwaistBwackBvisualBvirginiaBvietnamBviciousBvetsBvetBverseBversaB
vegetablesBveganismBvastBvanityBvanillaBvanBup”BupfrontBupdootsBunrealisticBunrealB	unlimitedBuniteB
uninformedBunicornsBunderweightBunderstandsBunbiasedBultBufcBtyrannyBtunedBtuneBtuitionBtsmBtshirtBtrynaBtroopsBtrinityBtrillionBtrialBtrendyBtransBtraitsBtrainsBtrailB	traditionBtoysBtoxicityBtowingBtowerBtourneyBtourBtopicsBtonightsBtippingBtimsBtimelessBtiesBtieBtickleBthotBthirstyBthiefBthiccB	thedonaldB	that’llBthankingBterrificBtendsB
tendenciesB	temporaryBteleportBteammateBtaxedBtattoosBtaleBsyrupBsymptomBswimBswedenBsweaterBsustainableB
suspiciousB	suspectedBsurroundingBsunshineBsunkBsummersBsummedBsumBsuggestsB	suggestedBsuckersBsuckerBstylesBstupidlyB	stupidestBstunnedBstuffedBstudioBstudB	strongestB	stressfulBstrawmanB	storylineBstoresBstonesBstitchesBstinksBstewBsteppingBstatisticalBstatBstaringBssBsquirrelBspursBspottedBsplitsBspiritsBspermBspelledB	specifiedBsoupBsoullessB	sociopathB	snowflakeBsneezeBsneakyBslipperyBslightBslidingBsliceBsleepyBskylineB	skepticalBsisBsinsBsimultaneouslyB	similarlyB	signatureBsidewaysBshuttingBshoutingBshotgunBshittingBshitholeBshinyB	shelteredBsheetsBsharksB	shamelessBsessionsB	septemberBsensesBsendsBsenatorBselfieB	seeminglyB	secondaryBseBsdBscumbagBscrubBscotchBscorerBscoopB
scientificB	scenariosBscariestBscarBscammingBsavesBsammyBsalonBrustBrushedBrumbleBroutineBrockyBrocksBrocketsBrisksBrippingBrimBridesB
rewatchingBretainBresumeBrestrictionsB	residentsBreservedBrereadBrepeatedBrentalBremakeB	remainersBrelaxedB	relationsBrelapseB	rejectionB
registeredB
reflectionBrefersBreferencingB	reductionBrecreationalB
recoveringBrecordedBreckonBreaperB	rationaleBrapistBrankingBrangersBragingBradBracialBqueueBquadBqcxBqB	purposelyBpurelyBpupperBpunchingB
psychologyB
protestingBprostateBprosBproposeBproneBpromoBprofilesBprobsBprizeB	principleBpriestBpricksBpresentsB	preseasonBprequelsBprepBpremiseBpremierB	practicalBposseBportBponderBpokingBpokerBpokemonBpoetryBpleasantBpitcherBpitchBpirateBpintBpinkyBpilotBpikachuBphysiqueBphaseBperthBperformancesBperformB
perceptionBpepperB	people”BpensBpencilBpeepB
pedophiliaBpeacefulBpastorBpartlyBparallelBpapaBpalmsBpainsBpadBpacksBownsBowB
overweightBoverestimateBoutlookBoutletsBounceBottawaBosuBosBorderingBopposeBoooohB	occasionsBobservationBobjectBnvmBnutBnumbBnraBnooneBnonstopB	nominatedBnoisesBnjBninjaBnicknameBnewbornBnetworkB
negativityBneedlesBneedingB	necessityBncaaBnazisBnationalismBnarcissisticBnamingB
mysteriousB	must’veBmuseumB	murderousBmtvBmpsB	mountainsBmotivateBmotionBmoronicBmorbidB
moderationBmodelsBmobBmlmsBmlkBmisuseBmisterBmissionsBmisinformedBministerBminionBminiBmillionairesBmillionaireBmightyBmexicanBmetaphorBmerelyBmentionsB	melbourneBmediumB
medicationB	mechanicsBmealsBmcdonald’sBmcBmayoBmaximumB
masturbateB
manipulateBmagnificentB	magicallyBmagicalBmagazineBm8BlvlBluxuryBloyalBloversBlongestBlocksBloanBloadsBlizardBlistsBliquorBliningBlikeableBlighterBlibtardBlibsBliarsB	liabilityBlessonsBlegalizeBleftyBleftiesBleatherBleaseBleakingBleakedBleafB
leadershipBleBlargestBlapBlandedBladderBlacksBkindergartenBkiddoBketchupBkeeperBjvBjuulB	judgementBjudgedBjellyBjarBjanBjackassBivBislesBironBinvestedB	intriguedBintpBintimidatingB	integrityB	instinctsB
installingBinsecuritiesB	initiallyBingredientsBinfrastructureB
inevitablyBindoctrinatedBindicateBincestBimpliesB	implementB	immigrantB	immenselyBidioticBidentifyingBicecreamBhustleBhurryBhow’dBhostileBhostageB	hospitalsBhornetsBhookedBhometownB	hollywoodBhobbiesBhoardingBhiveBhivBhistoricallyBhipsterBhilariouslyBhikingBhighsBhidBhesheB	heartlessBhearsBhealsB	headlinesBhashBharryBhairedBhahahahahahaB
hahahahahaBhagarBguidanceBguardsBgtfoBgroundsBgrossedBgripBgreyBgreensBgreeceBgrayBgrandmasB	graduatedBgraderBgpBglBgiggleBgiantsBgeorgiaB	gentlemenBgenreBgenerousBgbBgamersBgainingBgaBfunniestBfundamentallyBfuelBfrogBfrigginBfreelyBforwardsBforkBforestBforbidBfooledBfmlBfliesBflewBfleshBflavourBflavorsBfistBfillerBfifthBfieldsBfiancéBfewerBfeverBfetusBfelonyBfeedsBfeasibleBfckingBfavsBfaveBfatalBfartherBfakedBfadeBfactualB
fabricatedBezB	extensionBexposureB	exploitedB	explodingB
experimentBexpectsBexpectationBexitBexhibitB	exhaustedBexesBeuropeanBethnicBestablishmentBestablishedBestB	equipmentBepitomeBentertainedBensureBengineerBengineBenforcementBenforcedBenforceBendgameBencounteredBelderlyBelBeightBegBedmontonBeditingB	economicsBebayBeagerBdutyBdurrBdunkingBduhBduelBdsjBdrownBdroolBdragonsBdraggingBdraggedBdraftingBdpsB	douchebagBdoubtfulBdoomBdonutBdodgerBdodgeBdmsBdmcBdjBdivorcedBdittoBdistractionBdistinguishBdistinctionBdissBdislikesB	dishonestBdishesBdishearteningBdiscoB	disappearBdisabledBdirtBdipshitBdictatorshipBdiamondBdhBdevoidB
developersBdevB	detectiveBdestinyB	deservingBdenverBdenseBdemonstrateBdemonBdeltaBdeliverBdeletingBdegreesBdeclareBdeckBdebutBdealerBdeadlyBdayzBdawgBdarkerBdangerouslyBcuntsBculturesBcuddlingBcuddlesBcuddleBcuckBcubsBcruzBcrustBcrushingBcrushedBcrueltyB	crossoverBcreepsBcreepedBcredibleBcravingBcracksBcoyotesBcoversBcourageBcouncilB	copyrightBcoolerBconvenientlyBcontrolsBcontributedBcontraryBcontestBcontainsBcontactsB	consumingBconsultBconstructiveB	constructBconservatismBcongratulateBconfrontB
confirmingB
conferenceBconcreteBconclusionsB
compromiseBcomprehensionB	completedBcommentatorBcolumbusBcoloradoBcolonialismB	collusionBcollapseBcoinsBclosetBclosestBclipsBclappingBchunkBchuckBchillsBchiliB	childrensBchicksBcheeringBcheeredBcheeksBchasingBchannelsBchangerB	championsBchampBchamberBchairsBcfBcerealB	centristsBcelticBcbdBcatchesBcasualBcastingBcasinoB	carefullyBcapeBcapacityBcanesBcampusBcampsBcameoBcaliBbuttsB	butterflyBbulkBbuggedBbtcBbrowsBbritainBbrinkBbricksBbribeBbrewBbrazilBbrandsBbranchBbraggingBbragBbraBbootyBbooBbondBboilingBblunderBblizzardBblitzBblindlyBbingeBbetrayedBbehaveBbeganBbeesBbeersBbattlefieldB	bathroomsBbashB	bartenderB
bamboozledBbakedBbagelBbacksBbachelorBbabysBazulBayeBavoidedB	automaticBattendBathleticB
associatedBassetsBassesBassassinBashesB
artificialBarriveBarmedBarenaBarBaptBapprovedBapproachingB
applicantsBapplesBappalledBapologyB
apocalypseBansweredBannoyB
announcersBannounceB	ambulanceBamaB
altogetherB	allegedlyBaliensB	algorithmBalertBalBakaBaidsBaggressivelyBaffectsB	affectionB
admittedlyBactivityBacneBacdcBaccusesBaccuseBaccomplishmentsBaccomplishmentB	abortionsBabnormalB	abhorrentB910B85B76B72B62B51B3xB3dB3amB39B32B28B247B2013B2011B2005B1kB19thB150B1200B120B10xB100kB🤷🏼‍♀️B🤷B🤢B😪B😩B😕B😏B😀B👌B❤️❤️❤️B“whyB“weB“myB“andB͡oBzoomedBzooBzombiesBzByoutuberByesssssB	wrestlingBwrenchBwrappedBwrBwoundsB	worldwideBworkoutBwondersBwolfBwizardB
witnessingB	witnessesBwishedBwipeBwikiBwigBwifiBwidowBwiderBwidelyBwhoresBwholeheartedlyBwhiskeyBwhipBwhereasBwhaB	weirdnessBweekendsBweeBwaxBwarmerBwarlordBwardrobeBwardBwaitressBvprBvomitingBvoluntarilyBvoidBvodkaB
vocabularyB
visibilityBvirtueBvirtualB	violationBviolatedBvillageB	viewpointBviewingBviewedBvidsB	viabilityBvestedBversusBversionsBvergeBventingBvegansBvapingBvanishedBvaluedBvaccineBvaccinationBuwuBurgesBurbanBupvotingBupsetsBupdootBupcomingBunwantedB
unsettlingB	unnaturalBunlockedBunlockBunheardBunfunnyB
unfollowedB
unfamiliarB
undercoverB
undeniablyBunclearBunbreakableBunawareB
unansweredBuhhhhBubiBtwistedBtwilightBtweetedBturtleBturdsBtummyBtubBtrustworthyBtrustingBtropeBtroopBtrivialB
triggeringBtrickedBtribeBtravestyBtraumaBtransphobicBtransphobiaB
transitionBtransactionsBtraitBtrailersBtpBtownsBtougherBtossedBtoryBtoriesBtopsBtomBtodaysBtmBtiddyBthumbBthroatsB	threesomeBthotsB
thoroughlyB	thesaurusBthemedBtheatersBthat’dBtextureB	testimonyBterminologyBtennisBtenantBtemplateBtekkenBteensBteenageBtedBtearingBtdsBtargetsB	targetingBtapBtacticsBtackyBtackleBtablesBswollenBswissBsweptBsweetieBsweeterBswedishB
sweatshirtBswapBsurrealB	surprisesBsuprisedBsupremeBsupremacistsB
sunglassesBsundaeBsuckingB	succeededBsuburbsBsubscribersB
submissionBsubhumanBstudyingBstubbornB	structureBstruckBstrikesBstressedBstreaksB
strawberryBstrandedBstrainB	stockholmBstinkyBstfuBstemBsteamedBstatueBstatistBstarringBstarkBstampBsrsBsquatBsprayBspoutingB	spotlightBspinningBspewingBspeedyB	speculateBspecialistsBsovietBsourB
soundtrackBsortaBsorrowBsooooooBsonyB
solidarityBsoilB	socializeBsoccerBsobbingBsnortingBsniffBsneakBsmashingBsmallestBslutBslurBslowerBslotBslipBslimeBslaveBslackBskeletonBskateBsjwsBsinisterBsingerB	singaporeB	signalingBsiegeBsidewalkBsidedBshroomsBshredBshootersBshoeBshocksBshitlordBshirtsB	shirtlessBshhhhBsheetBsheeshBsheerBshapedBshamefulBshamedBseverityBseverelyBsettledBseriousnessBserenityBseoulBsensBseizureBsegmentBsecondedBsearchedBscumbagsBscrubsBscriptedBscreenshottedBscoresBscammedBscBsaviorB	satiricalBsassyBsamsungBsaintBsagaBsacredBsacksBsabresBs1BrwooooshBruledBrugbyBrubBruBroundaboutsBrosesBrootedBroflBrobotsB	rniceguysBrivalsBriotB
rightfullyBrightfulBrichestBrhockeyB
rhetoricalBreworkBrewardsB	rewardingBrewardedBrevolveBrevisitBrethinkBrestrictBrestrainingBrestingBrespondsB
respectingB
respectfulB	respectedBrespectableBresortB	resistingB
resistanceBresignBrepublicB	reproduceB	repostingBreplayBremovalB
remarkablyB	remainingBrelicB	regulatedBregardedBrefundBredditsB	recyclingBrecycleBreconciliationB	receiversBrecBrealmBrealisticallyBratioBrantsBranksBraidersBracesBrabidBquittingBquickerBquestBqueBpvpBpurseBpurposefullyB
purposefulBpurchaseB	punchlineBpullsBpsychologistBpsychologicalBpsycheBpsychBprotectsB
protectingB	prospectsB	proposingB
proportionB
propertiesBpropelB	pronounceBpromptB	promotingB	promisingBpromisesBprogressivesB
profoundlyB
profitableB	profanityB	processesB	processedBproblematicBprinceBpriestsBpricingB	pricelessBpretentiousBpresidentialB
presentingBpresenceBprequelBpraisesBpowderBposingBposedBportalB
popularityBpolioBpokeB	poisoningBpoemsBpleasingBplaylistBplatesBplagueB	placementBpkkBpkBpissesBpigsBpigeonsB	picturingBpickyBpickleBphrasingB	photoshopB
phenomenalBphdB	personnelBpersonaB	performedBpeppersBpennyBpenguinsBpeedBpedoBpedestriansBpedanticBpeasantBpearlBpauseBpatternB	passengerBparodyBpapersBpantherBpanickedBpancakesBpancakeB	palestineBpalaceBpairsBpairingBpaintsB	painfullyBpackedBoxygenBowlB	overnightBoverlapBoutstandingB	outsidersBoutletBoutlawBoutdoorBoutdatedBoughtB
originatedBorganizationsBoregonB
oppressiveB	oppressedB	operationB	operatingBoperateBooofBoooBomfgBolympicsBoklahomaBokcupidBoffendBoffenceBodysseyBoctoberBocdBoccurBobtainBobscureBobjectsBnzBnyxlBnyeBnwordBnutjobBnursingBnumerousBnounB	notoriousBnotionBnotificationBnormsBnormiesBnormieBnopedBnominateBnobleBnipplesBnicotineB	nicknamesBnfcB
neutralityBneutralBnerfedB	negotiateBneedyBneedleBnearbyBneBndBnawB	nashvilleBnaivetyBnaggingBmutuallyBmustacheBmunchakBmultiBmourningBmountBmottoBmothersBmosquitoB	mortifiedBmooseBmonitorBmofoB
moderatorsBmockingBmmoB	mistakingBmisstepBmissouriBmississippiBmisinformationB	migrationBmigrantBmiBmetricB	metallicaBmerrilyBmermaidBmereBmensBmeleeBmeetsB	mechanismBmeatsBmeantimeBmdmaBmayorBmayhemBmattressBmatrixBmaternalBmatchupBmassageBmassachusettsBmascotBmarxistBmarketsBmanuallyBmannersBmanlyBmaniacBmaniaB	mandatoryBmaliceBmalesBmajesticBmachinesBlurkingBlungB	ludicrousBlowestBloverBlousyBlosersBlongtermB
lonelinessBlogBlocatedBlocalsBlmaooooBlivinBlistingBlionBlinkingBlightlyBlifelongBlickingBlicensedBlibidoBlibertariansBliberateBlemonB	legalizedBlegacyBledBleashBleapBleansBlbBlayupBlayersBlawyersBlawsuitBlaundryB	laughableBlastsBlandsBlandingB
lacklusterBlabeledB	knowitallBknocksBknockingBkissesBkinkyB	kidnappedBkickerBkdBkawhiBkansasBkabhiBjuniorBjuneBjumpsBjumperBjulyBjournalBjordanBjonesBjokinglyBjointsBjoiningBjohnBjanitorBit‘sBis”B	islandersBishB	irritatedBirresponsibleBirrationallyBironmanBiranBinvestmentsB
investmentBinventBintermittentBintermissionBintentB	intensityBintensifiesB	installedBinspireBinsistBinsensitiveBinsanityB
innovativeBinherentBinformBinfantryB
inequalityBindieBindianaB	increasesBinconvenientBinconsiderateB
incoherentBinadvertentlyB	inabilityB	improvingBimplyBimmunityBimmuneBimaginationBimagesBillinoisBidiocyB	identicalBiconBhysteriaBhyperBhutBhurrBhumilityBhumiliationBhowdBhotterBhorsesBhoorayBhookerBhooBhonourBhonoredB	honorableBhongB
homophobiaB	holocaustBholderBhofBhmmmmB
historicalBhipsBhikeBhesitantBheroinBheartbrokenBhawaiianBhauntingBhassleBhandfulBhalftimeBhaircutsBhacksB
gymnasticsBguestBgudBgroceryB	greetingsBgreekBgraphicBgrantBgrandfatherBgrainBgraduateBgovtBgothBgorillaBgooseBgoofyBgolfBgoblinBgmsBgloveBglobalBglanceBgirlyBgirlfriendsBgifsBgestureBgendersBgcBgateBgarlicBgarageBfunkBfundB
functionalBfukBfuckenBftBfrozeBfrenzyBfreezeBfortuneBfortunatelyBfortBformsBformedBformalBfordBfondBfollowsBfoldBfocusingBfluBflowerBflippingBflightsBfledBflameBflBfixingB	fireworksBfinlandBfinalsBfightersBfianceBfenceBfeminineBfedoraBfathomBfastingBfastestB
fascinatedBfartsBfalconsBfaintBfailsBfactionsBfacilityB	facetiousBfacetimeB	extremistBextraordinaryBextendBexposingBexposeB	explosionBexpenseBexemptBexclusivelyB	excessiveBevolvedBethicalBethBeternityBessaysBessayBesportsB	escalatedBerasedBentryBentitlementBenormousBengineeringBenemiesB	endearingBenablingB	empoweredB	emphasizeB	embracingBelfBehhhBeditsBediblesBedgesBecstaticBechoBeaBdvdBdutiesBdrumBdriedBdrewBdressedBdreadedBdrasticallyBdrankBdozenBdownsideBdownloadBdownedBdoubtingBdoubledBdotaBdotBdosesB	donationsBdonaldBdominateBdohBdodgyBdncBdloBdiverseBdiveBditchBdistrictB
distractedB
dishonestyBdisdainB	discoveryBdiscoverB	discourseB
disconnectB
disciplineBdiscardB	disbeliefB	disagreesBdisagreementBdimeBdigitalB	digestiveBdieselB
dictionaryBdictateBdiceBdiabeticB
developingBdessertBdespiseB	designersBdependBdenominationBdemoB	delightedBdelayedBdejaB
degenerateBdefiniteB	definetlyB	defendersBdefeatedBdedBdeclaresBdaydreamBdamningBdamagedBcyclesBcutsBcutenessBcruiseBcrowdedB	crosspostB	cripplingBcraziestBcrassBcrashingBcrashedBcrampsBcpsB
courageousB	counselorBcottonBcosplayB
corruptionBcorporationBcornersBcorkBcordBcookieB	convictedBconvenienceBcontributionB
contributeBcontractorsBcontinuouslyBcontemptBconsumptionBconsumeB
consentingB	consensusB	consciousB	connectedBconfrontationBconductBconcurBconciseBconcedeB	competingBcompensationB
compellingB	commenterBcoloredBcoherentBcoffinB	clubhouseBclothBclimbB	clevelandBcitationBcirclesB	cinematicBchromeBchickensBchemicalBcheekBcheckersBcheaterBchartsBchapterBchaoticBchaosBchantingB	champagneBchalkBchainsBcgiBcentralizedBcensoredBccpBcavsBcatholicismBcaterBcategoryBcasualsBcastleBcarrotBcarriesBcarrierBcaptureBcanucksBcansBcannabisB	cancerousB	cameramanBcaliberBcafeBcableBbustB
businessesBbundleBbummedBbumBbulletsBbuckBbrutallyBbrooklynBbroccoliB	broadcastBbrigadedBbridgesB	breakdownBbrawlBbranchesBbrainwashingBboycottBboxesBbourbonB	botheringBboostBboobBboltonBbogglingBbo4BbmiBblurredBblocksBblissBbleachBblastingB	blasphemyBbjBbitchingBbishopB	birthdaysBbingedBbillionairesBbfvBbetrayalBbetrayBbelovedBbelligerentBbelfastBbeijingBbeholdBbegoneBbeggingBbeatenBbearingBbeanBbeamBbeaconBbatsBbasicsBbarnBbarfBbanterBbanningBbannerBbangedBbananaBbamBballerBbaldBbalconyBbakerBbahahaBbacklashB	backfiredBbabeBavocadoBauthoritarianismBausBaugustBaudibleBasylumBassuredBassumptionsBassumesB	associateB	assistantBassistBasshatBassemblyBaspieBasfBartsBarrowsBarrangementBarkansasBarchitectureBarchBappreciationB	appealingB	apologistB
apologisedBanyonesB
antisocialBantisemiticBannouncementBanimatedBangelsBanecdoteBameenBamdBamazeB	alligatorBallianceBalexaB	alcoholicBalaskaBairpodsBaightBahahB
aggressionBagenciesBaffairBafcBaeBadvocateBadvisorsB
adrenalineBadjustedBadjustB
addressingBacuteBactressB	activistsBactivistBacknowledgingBaccusationsBaccuracyBaccentsBacademyBabsenceBabortB	abilitiesBaaaB9thB90’sB82B70sB65B64B61B58B56B510B350B2dB2amB2008B2006B2004B2002B1999B1996B1500B125B110B105B🤷‍♂️B🤮B🤦🏻‍♀️B🤗B🙌🏻B🙂B😳B😭😭B😫B😥B😣B😞B😑B😄B💜B👏👏B🎂B☹️B“yourB“toB“thisB“theyB“that’sB“sorryB
“name”B	“i’llB“ifB“howB“butB–BΔBzoomBzeldaBzealandByummyByoutubesByoungestByoghurtByessssByelpByellsByelledByearoldByawnB	yardstickByankeeBxoxoBwthBwretchedBwrecksBwreckingBwreckedBwrapsBwouldaB
worthwhileBwormB	workplaceBwordingBwoodenB	women’sBwokenBwlBwizardsBwitcherBwiselyBwinnersBwindsorBwindsBwimpBwildlifeBwilBwigsBwieldB
widespreadBwhydBwhodBwhisperBwhipsB	whicheverBwhensBwheelsBwhatnotBwhataburgerBwhalesBwesBwerkBweplayBwelshB
wellingtonB	wellbeingBweezerBwealthyBwavyB
watermelonBwarriorBwardenBwannabeBwankersBwalnutBwaifuBwackyBwaaaayBwaaaaayB	voluntaryBvoicedBvocalBvitaminsBvitaminBvirusB	virtuallyBviolateBvintageBvillainsB
videogamesBvestsB	verifyingBverbalBverbBventiBvenomB	vengeanceBvendorBvelvetBveinBveggiesB
vegetarianB	vegetableBvampireBvaguelyBvaginalBvaccinationsBvaBuspsBurineBurgeBupstairsBuphillBunworthyBunwatchableB	untreatedB	untrainedBuntouchableBunsubscribeBunsubBunsolicitedBunsafeBunpredictableB	unlockingBunisBunionsBuniformB	unhelpfulBunhB
unemployedBundoubtedlyBundoneB
underwaterBuncontrollablyB	uncheckedBuncaringBunbelievablyB
unbearableB
unbalancedBunarmedBultsBujBuhhBufaBtylenolBtxB	turnoversBturkeysBturfBtunnelBtunaBtuckBtubesBtryinBtryedBtrustedBtrumpsBtroutBtropicalBtrolledBtrimBtriggersBtrickyBtrickingBtribesBtriangleBtreyarchBtremendouslyBtrekBtravelsB
travellingBtraumatizedB	traumaticBtrapsBtransphobesB
transphobeB
translatesBtransgenderB
trainwreckBtrailsBtraeBtradesBtractorBtracerBtraceBtouristsBtouristBtoughestBtouchyBtotalitarianBtortillaBtoreBtomatoBtollBtofuB	today’sBtoadBtlcBtitledBtitansBtisBtiringBtiradeBtimeoutB	timeframeBtileBtigerBthyroidBthunderBthronesBthriveBthrilledBthrashBthrBthosB	this’llBthirtyBthighBthem”BthemselfBtheeBthcBthailandBthBtfwBtfaB	testiclesBteslaB	terroristB	terrorismBtenureBtensionBtenseBtendiesBtenderBtenantsBtemperaturesBtempBteachesBteBtbmBtauntBtaperBtangentBtameBtaiwanBtaggingBtabBt2BsyrianBsyncBswornBsworeB	switchingBswingsBswingingBswimmingB	sweetenerBsweatsBsweatBswearsBswearingBswastikaBswampBswB
suspicionsB	suspendedB	survivingBsurroundingsBsurgeonBsurfaceBsupremacistB
supplementB	superstarB
superpowerB	superheroBsuingBsuffersBsuccinctBsubzeroB	substanceB
subsidizedBsubscriptionB
subnauticaBsubjectsB	subjectedB	struggledBstrictlyBstrictB	stretchedB	stressingBstreamerBstrawsB	strategicB	straightsBstopedBstoodBstonersBstompingBstompBstocksBstockingBstingBstimulatingBstickersBstereotypicalBstbxBstatismB
starvationBstansB
standpointBstancesBstampsBstalkerBstaleBstairsBstainsB
staggeringBstagedB	stabilityBssdBsrslyBsquintBsqueezeB	sponsoredB	splittingBspiteBspinachBspideyBspiceB
speechlessBspectrumBspectateB
specialistBspeakersBspawnBspainB	spaghettiBspaBsoyBsoxBsovietsB	sovereignBsosBsolvingBsoldierBsolarBsodasBsockBsobrietyBsobBsnuggleBsnuckBsnpBsniperBsnipeBsneezingBsneakingBsnappedBsmurfBsmokedBsmilesBsmearB	smackdownBsmBslumBslowingBslopeBslipsBslippedBslidersBslickBsledBslavesBslaughteredBslappingBskitsBskitBskippedBskatingBskaterBsixteenBsitcomBsincereB	simulatorBsimpsonsB
simplisticBsimplerB
similarityBsilentlyBsignificanceBsickoBsicknessBshrekBshreddedBshowcaseB	shovelingBshovelB	shootingsBshockerBshitshowBshinobiBshiftedBshieldsBshhhBshenanigansB	shatteredBshakesBshaftedBsfwBsettingsBsequenceB
separationBsentientBseniorBsenatorsBsellsBselflessBselfiesB	selectiveBseekerBscytheB	scriptureBscrimsBscreensB	scratchesBscrapsBscorpionBscissorsBscatBscarredBscarfBscandinaviaBscandalBsausageBsaugBsatisfyB	satisfiedBsatBsantaBsankB
salmonellaBsalesmenBsageBsadisticBsaddleBsadderB
sacrificesBsackedBs2BrushingBrunnerB	runescapeBrumB
rthedonaldBroyBrottenB	rotationsBrotBrostersBropeBromeBrogueBrodeoBrockstarBrockinBrobbedBroastsBroastedBroamBrnflBrlyB	riverdaleBrivalryBrivalBritualBrileBridiculeBriderBriamverysmartBrhinoBrhetoricB
rhelperbotBrfunnyBrfaBrevoltBrevisionistBreversedBreunionBreturnsBretrieveBretiringBretiresBretardsBresultedBresistB	residencyBreservationsBresearchingBrescuedBrequestsBrepsBrepresentativesBrepostsBreporterB	replacingBreopenBrentingB	renderingBrenaissanceBremoteBremixB	remembersB
remasteredB
remarkableBremainedBrelyingBreloadB	relievingBrelieverB
relentlessB	releasingBrelatingBrelatesBreignBregulationsB
regulationBregularsB
regrettingB	regrettedBregardsBrefugeeB
reelectionBreeksB	redundantBredheadB
redemptionB	redeemingBrecruitBrecourseB
reconsiderBrecommendationsBreceiptB	reccomendBrebuttalBrebuildBrebootBreapBreaderBreactionaryBreachesBrconspiracyBrbitcoinBrazorsBrayBraveBrandomsBrampantBrampageB	ramblingsBramBrakeBrainyBrailB	radiationBrachelBraBquoBquitsBquestioningB
questionedB	qualitiesBqpBqldBpushersBpurgedBpurgeB	purchasedBpuppiesBpupilsBpunsBpunishedBpumpsBpuddleBpuddingBptBpsychosBpsychologicallyBpsychicBpsychedelicsBpsaB
provincialBprovidesBproudlyBprotocolBprostitutesB
prosecutedBprophetB
pronouncedBpromotedBprollyBprogressivelyBprogressionBprogBprofessionallyB
professionB
productiveB	producersB	procreateBproceedsBproceedB	procedureB	proactiveBprivacyBpriusB	prevalentBpretzelB	prettiestBpresumeB
pressuringBpressesBpressedBpresentationBprescriptionB	predictedB	predatorsB	preciselyBpreciseB	precedentBpraxisBpraisedBpoweredBpouringBpossumB
positionalBposerBportugalBportlandBpornographyBpornoBpopulistBpopulismBpopeBpoopsBpoofBpooB	polyamoryBpolitelyBpolesBpoisonedBpoemBpnwBpmsBplugsBplowBplebB	playlistsB
playgroundBplayfulBplayboyB	plausibleBplatBplasmaBplantsBplanesBplacingBpitsBpistolBpinsB	pineappleBpinBpimpleBpilotsBpickupBpicklesBphrasedBphotoshoppedBphotographyB
philosophyBpgB	pewdiepieBpetulantBpettingBpetitionBpessimisticBpeskyB	pervasiveBperspectivesB
person’sB
perpetuateBperpetratorBpermitBperksBperiodicallyBpennsylvaniaBpenetrationBpendingBpelvicBpegBpeeingBpeakedB
peacefullyBpbrBpayrollBpaypalBpayerB	paychecksBpaybackBpawsBpawBpausedBpatternsBpathwayBpasswordBpassagesBparticipationBparticipatingBparticipateBparticipantsB	partiallyB	parrotingBparrotBparentalB	paralyzedBparadeB	paperworkBpanthersB	panickingBpanderBpalmBpaletteBpakistanBpacketB	packagingBpackagesBpacificBpacBozBoxBowesBoverwhelmedB	overthinkBoverreactingBoverrateBoverpaidB	overlordsB
overeatingBoverdoseB
overcomingB	outspokenBoutsBoutlierBoutcomesBorleansBorisaBoriginBorgsB	organizedBorganizeBorangesBopticsBoppressB	oppositesBopiatesBopenerBonionsBomeletteBolineB	oligarchsBoilyBoffsetB	offendersBocsBoccursB
occasionalBoccasionBoccamsBobtuseBobsessBobsceneBobsB	obligatedBobesityBoatmealBnukesBnuggetBnuanceBnpcBnovelBnoticesB
noticeableBnosBnoooBnoodleBnontoxicBnolaBnoedBnodealBnkBnipsBnippleBnineBniftyB
newspapersBnewlyBnervousnessBnerdyBnepotismBneonaziBneonBnegotiationsB	neglectedBnedBnbcBnavyBnarcissistsB
narcissistB	mythologyBmuteB	musiciansBmurdererBmunchkinBmumbleBmulticulturalBmtgBmtB	movementsBmouthyBmournB
motorcycleBmortalBmorningsBmootBmonstersB
monopoliesB
monogamousB	mongeringBmonetaryBmoldBmodesBmocksBmobsBmoanBmoBmnfBmnBmmmmmBmmBmlbBmlBmk11BmixingBmisunderstandBmistB
misspelledBmisrememberingBmisogynisticB	miserablyBminusBminionsBminimalB
millenialsB
might’veBmicsB	microsoftBmgBmfBmethodsBmerryBmermaidsBmeritocracyBmergeBmeowBmenaceB	megaphoneBmegaBmeetingsB
meditationB
mediocrityBmedicareBmeddlingBmeasuresBmdBmcdsBmathsBmatchupsBmatchmakingBmatchingBmatchedBmasturbationBmasturbatingB	massivelyB	masochistB	masculineBmarylandBmarxismBmarksBmanufacturedBmansionB	manhattanBmangoBmanchildB
manchesterBmanagingBmanagesBmakerBmainsBmagBmadridBmadnessBmacaroniBlyricalBlustBlungsBlunaticBlumpedBlumpBlulB	lucrativeB	lucasfilmBloyaltyBlovinglyBlove”BlordsBloopholeBlookoutBloneBloliBloggedBlockupBlobstersBlobsterBlobbyBlmkBlitterBlinuxBlimitingBlimitationsBlimbBlikewiseBlightingBlightenBligaBlifespanB
liberalismBliableBlesB
leprechaunBlensBlemmeBlegalityBleftwingBleftleaningBleechesBlectureBlearntBlearnsBleakBleaguesBleadersBlaurelBlatinBlastingBlaserBlasagnaB	landslideBlampBlagBlactoseBlabelsBkrBkombatBknuckleBknotBknobsBkneecapBkiwiBkinkBkid’sBkicksBkeyboardBkettleBkenpomBkcBk9BjuveBjuulsB	justifiedBjuryB
judgementsBjudgementalBjoysBjournalisticB
journalismBjohnsBjfcBjesusBjediBjammingBjBi‘mBiudBitchingBistanbulBisoB	irritatesBirBinvolvesBinvestigationsBinvasiveBinvalidBinvadedBinvadeB	intuitiveBintroducingB
intriguingB
intimidateBintimateB
intestinesBinterventionB
interstateBintersectionB	interruptBinterracialB
internallyBinterferenceB	interfereBintellectuallyB
integratedBinsulinBinsufferableBinstructionsBinstitutionsBinsignificantB	inshallahB
insecurityBinningsBinjectB
initiativeBinitiateBinitialsBinhumaneBingameB
infinitelyBinfiniteBinfestedBinferiorB	infectionBinfectedBinfatuationBinfamousBineptBindulgeBindoorB
indigenousB	indicatorB
increasingBincompatibleBincomingBimpulseBimprovementsB
imprisonedBimportedBimportBimplicationBimperialistBimperialismBimperialB	impatientBimminentBimmenseBimmaBimhoB
illiterateBillegitimateBikeaBignoresBiconicBickB
hyperbolicBhurdleBhuntersBhunterBhungBhumorousBhumidBhubbyBhowlingBhowdyB
housewivesBhostingBhospitalizedBhormoneBhoppingBhootBhookupBhookingBhoodieBhominemBhomerBhomelandBhlBhitterBhitlerB	hindsightBhijabBhighkeyB	hierarchyBheyyyBhesitateBherpesBheightsBhebrewBheartwarmingBhealerBheadshotBhdBhazardBhayBhavenBhatchBharvestBharvardBhartfordBharmsBharmlessBharmedBharBhangoverBhandlesBhandicappedBhamsterBhallucinationsB	halloweenBhairyBhabitatBguy’sBguttedBgunnaBgummyBgsBgrumpsBgrowsBgroundedB	groceriesBgrittyBgrinBgriefingBgrey’sBgreedBgravesBgrandsonBgranddaughterBgradesBgradBgrabbedBgovernorBgossipB
goosebumpsBgoofedBgoodsB	goodnightBgoodlookingBgoldsBgoinBgofundmeBgodlikeBgoddessB	goddamnitB	goddamnedB
goaltenderBgoalpostBglucoseBglowB	globalismBglasgowBgigglesBghostingBghBgentlyBgenjiBgeniusesBgenitalsBgeneticsBgeneralizationsBgeneBgemsBgelBgdtBgdpBgatherBgaspBgarfieldBgapsBgangsterBgalBgainsBgainedBfwiwBfuuuuckBfuryB
furloughedBfunhausBfuneralBftwBfryBfrugalBfrostyBfrogsBfrighteninglyBfreshmanBfrequentBfreeingBfreaksBfreakedBfraudedBframedB	fracturedBfortressBformulaBforksB	forgivingBforgivenessBforgettableBforeskinB	foresightBforeplayBforemostB
foreignersBfollowupBfogBfluffyBfloydBflowingBflourBflossBfloodingBfloodBflickBfleshyBfleetingBflawsBflavoursBflashingBflamedBflairsBflaccidBfknBfishyBfirmlyBfireflyBfirearmsBfirearmBfinanceBfiltersBfillersBfilBfifteenBfierceBfiendBfibreBfiatBfentanylBfendBfemalesBfebBfearedBfcBfazeBfaxB
favouritesBfavourBfauxBfaultsB	fashionedBfashBfarrightBfarewellBfaqB	fantasizeB	fantasiesBfanmadeBfandomBfalconBfairyB	fairfieldBfactoryB
facilitiesBfabBeyebrowB
expressingBexposesB	explosiveB
exploitingBexploitativeBexplodeB
explicitlyBexperimentalBexpensesBexpelledBexistentB	executiveB	excludingBexcessB
exceptionsBexasperatedBexaggerationB	evidentlyBeverythingsB	evergreenB	evaporateBeuroB	euphemismBetsyBethicsBestimateBestateBespBescortBescalateBerrrBerrorsBerrandsBerectionBerectBep4BentpsBentpBentitiesBentiretyBenslaveB	enjoymentB
engagementBenfpB	enforcingBendureBendorseBendingsB
endangeredB
encouragedB
encountersB	encounterBenactB
employmentB	employersBemployerBemperorB
empatheticBemergenciesB	embarrassB
embarassedBemailedBelitesB
eliminatedBelevatorB
elementaryB
effortlessBeffinBefficientlyB	educatingBeasterBeasiestB
dysmorphiaBdysfunctionBdynastyBdyeBdvaBdvBdupBduoBdunkedBdummiesB	dumbassesBduiBducksBdsaBdryingBdroneBdressingBdrawnBdrawerBdrainingBdo”BdoxxingB	downrightBdoubtsBdoritosBdookuBdonkeyBdoinkBdoinBdoggosBdodgingBdodgesB	dodgeballB	documentsBdocumentingB
documentedBdocsBdndBdmtBditchingBdistributionB	distortedBdisrespectedB
disposableBdismissBdiscussionsBdiscriminatedB
discourageBdiscountBdisconcertingB
discomfortBdisappointsBdisadvantagedB
disabilityBdirkBdippingB	dinosaursBdingBdilemmaBdignityBdictatorshipsB	dictatorsBdickedBdiazepamBdiabetesBdevoutBdevotedB	developerB
devastatedBdeusBdeuceB
determinesBdeterminationBdestroysBdestinationBdespisesBdespairB	despacitoBdesiresB	desirableBdesignsBdesignerBdesertB
derogatoryBderivedBderangedBdepositBdepartmentsB	deodorantBdeniedBdemonstrationBdemiseB	demeaningBdemandsBdellB
deliveringB
deliberateBdeflectsBdeflectB	definitlyB
definatelyBdefenceBdecreaseBdeclinedBdecksB	deceptiveBdecentlyBdecayBdecapitatedBdecBdebitB	debatableBdebacleBdealersBdeafBdeadlineBdbsBdbBdazeBdayumBdaytimeBdaycareBdancesBdanBdameBdamBdakotaBdaeBdabsBc’monBcutieBcuterBcustomizationBcustodyBcusBcurveBcurryBcurlsBcupsBcuckedBcrybabyB	crybabiesBcrushesBcrunchB	crucifiedBcrowsBcrowdsBcrowBcrotchBcrossesBcropsBcroppedB	crocodileBcriticsB
criticisedBcritBcrispyBcrispBcringeworthyBcremeBcreeperBcreditedBcreatureB
creativityBcrayonsBcrackerBcoyoteB	covingtonBcouponBcoupB	corruptedBcopiesBcoordinatorBcoordinationB	cooperateBcooksB
convertingB	convertedBcontrollersBcontrastBcontradictsBcontradictedBcontinuallyB	containerBconsumedBconstructionBconsolesB	considersB
consensualBconsciousnessBconquerBconnoisseurBconnectionsBconjureBconfusesB
conformityBconflictB
conflatingBconfinedBconeBconditioningB	condemnedBconcussionsBconcentrationBcomradesBcomplimentsB
complianceB
complexityB	complainsBcompatibilityB
comparableB
companionsBcommonlyBcommitedB
commissionBcommiesB	commentedBcominBcomicalBcomfyBcomedicBcomaBcolumbiaB	colombianB	collectedB
collapsingBcollabBcolderBcoincidentalBcodingBcodesBclumsyBclownsBclosesBclingingBclimbingBclicksBclicheBclenchBcleanupBcleanerBclawB	classroomB
classmatesB
classifiedBclashBclarityB	clarifiedB	civilizedBcivilizationB	civiliansBcircusBcircumstanceBcirculationBcircaBcinemaBcigarBcicadaBciaBchurchsBchungusBchuckledBchuckingBchristBchoosyBchokingBchoirBchipperB	childfreeBchestsBchessBcherryBchemoBcheetosB
cheesecakeBcheckoutBcheatsBcharmB
charitableBcharismaBcharBchaptersBchantsBchampsBchainsawBchadBcentsBcentrismBcentersB
censorshipBcemeteryBcelticsBcelebratingBcbsBcattleBcateredB
categoriesBcasuallyBcarpetBcarolinaBcarltonBcarbBcapturedBcapitolBcapitaBcandleBcandiesBcanceledBcanaryBcanadasBcampingBcamoBcalmestBcallerBcalBcackledB	bystanderBbuysBbuyerBbuttonsBbuttheadBbutterfliesBburntBburnerBbunsBbunnyBbunkBbulgeBbuilderBbufferBbuffedBbudsBbucsBbrownieBbrothaBbrothBbroomBbronzeBbromanceBbrigadeBbrideBbreezeBbreedersBbreakersBbreakerB	brazilianBbrazenBbrassBbrainsBbracesB	braceletsBboyoB
boyfriendsBbowlsBbowlingBbournemouthBbouncingBbotchedBborrowBbordersBbootlickingBboomersBboogieBboobiesBbondingBboltsBboatsBbmwBblurryBblurayBbluesBblowoutBblokeBbloatedB
blindfoldsBblindersBblessingBblehBblazeBblankBbladesBblackoutB
blackhawksBbitingBbitchesBbisonBbisexualBbiscuitBbirthedBbipodBbillionaireBbigotsBbigotedBbiblicalBbiasesBbffsBbf4BbestestBbesideBberlinBbenzosBbentBbengalsBbendsBbelieverBbelgiumBbelgianBbeggedBbeggarsBbedtimeBbeatlesBbeardsBbealBbaylessBbatteryBbatchesBbatchBbassBbasingBbarstoolBbarringBbarrenBbargainBbareBbarberBbantzBbansBbankruptBbangsBbaneBbailedBbahBbafflingBbafflesBbadgeBbacteriaBback”BbackstopB	backpedalBbackboneBbabblingBbaBb4BazzBayBawkwardnessB	awkwardlyBawfullyBawaitsBavengersBautonomyB
autonomousBauthorsB	authenticB	audiobookBaudiblyB	attendantB
attachmentBattachedBattB	atrociousBatlanticBatlantaBathleteBathensB	astrologyBastonishingBassureB	assassinsBaspectsBasinineBasgBasdBartworkB
articulateBarsedBarrogantBarghB	argentinaBarcticB	arbitraryBarbitrarilyBaquariaBapprovalB
approachedBapplauseBappetiteBappearedBappealsB	apostolicBapologizingBapathyB	apartheidBantsBantivaxBantiqueBantinatalistBanticipatedBantibioticsBanthemB	anonymousB
annoyinglyB	announcesB	announcerBanklesBangrilyBanglesB	andromedaBamygdalaBamusedBampleBamongstBamerica’sB	ambitiousB	ambiguousBambienBamateurBaltsBaltercationBalpsBaloofBallyBalltimeBallstarBalleyBallergyBallegationsBaligningBalignB
alcoholicsBalbumsBaksBaircraftB	airbenderBaimingBaidBahemBahahahaBagonyBafloatB	advocatesBadvisorBadvisedBadvicesBadvertisementB	adulthoodBadoptionBadoptingB	admirableBadminB	addressesB	addictiveBaddictB	activatedBactedBacronymBachievementBachievedBaccountabilityBaccomplishedB	accidentsB
accidentalBaccessedBacceptsB
acceptanceBabyssBabysmalBabusersBabsentBaaaandBaaaaaandB999B8pmB88B81B80’sB800B78B711B70’sB6amB67B610B60sB57B55B54B46B450B44B40kB3ptB3kB30thB2xB27thB2500B216B2030B2001B1995B1987B1980B10thB05B🦈B🤷🏻‍♂️B🤷🏻‍♀️B🤦🏼‍♀️B🤦‍♂️B🤦B🤣🤣🤣B🤣😂B🤠B🤕B🤔🤔🤔B🙌B🙈B😮B😭😭😭B😝B😘😘😘B😖B😍😍😍B😋B😇B😃B💙B💗B💖B💓B👍🏼B👍🏻B🎶B🎵B✨B♫B♥B▫️B≠B”B“you’reB
“your”B“whoB“waitB“tooB“soB“snowflake”B“sheB“right”B“noB“goodB“fuckB	“failedB
“don’tB“areB	‘schoolB‘needsB‘emB‘98B‘B£10BzippersBzipperBzingerBzimBziipBzerocalorieBzebrasBzebraBzanyByuhB	youtubersByouthsByousByooooByolkByodaByiuByheaB
yesterdaysByessirByeppByeeshByearoldsByawningByasByareByankingBy2kBxxBxpostBxoBxlBxanaxBx200bBwyomingBwwiiBwtafBwtaBwrongiBwrongedB
wrongdoingBwritingsBwormsB	worldviewB	worcesterBwootBwooshingBwooshedBwooowBwooooshBwooooBwoolBwoohooBwoofBwonderfullyBwompB	woman’sBwobbleBwittleBwittenB	witnessedB	withdrawlBwitBwirelessBwipersB
winterfellBwingerBwindedBwilponsB	willpowerBwildlyBwikihowBwiiBwifeyBwhyyyyyBwhoveBwhooshedBwhollBwhiteyBwhiterBwhistlesBwhispersBwhippingBwhippedBwheredB
wheelchairBwhat’dBwhackBwhaaatBwetvBweptB	wendy’sBwellwrittenBweldingBweirdosBweightsBweightedBweighsBweepingBweebsBwedlockBweddingsBwebpagesBwebosBwebcamsB
wealthiestBwd40BwbBwazeBwayyyyB	wayne’sBwaxingBwaxedBwateredBwaswasBwaspBwashesBwasamBwarpedBwarnsBwarmthBwardensBwanderBwandBwanaB	wallpaperBwallowBwalkerBwalesBwakesBwaitwhatBwaitersBwagonBvucBvskillBvoodooBvolvoBvoilaBvoicingBvogueBvivaBvisualizationBvistaBvisitsBviralBviolinB	violentlyB
violationsBvinegarBvineB	vigilanteBvieB	videogameB
victimlessB
victimizedBvicinityBvicesBvicBviableBveteranBverticalBversesBvernonBvermontBverminBverifyBverifiedBverdugoBverballyBvenusBventureB
venezuelanBveggieBvaxxerBvaxxedBvaultBvaselineB	vasectomyBvasBvariesB
variationsB	variationBvansB
vandalizedBvaliumB
validatingB	valentineBvacuumsBvaccinatingBv3BuyuButopiaBussrBuslBuselessnessBusdBuscBusableBurlBurethraBuprightsB	upholdingBupheldB	upgradingBupgradedB
upbringingB	untouchedBuntoBuntimelyBunsustainableBunsuspectingBunsubscribedBunsubbedBunsatisfyingBunsatisfiedBunrepresentativeB
unreliableBunrankedBunprofessionalB
unpreparedBunloadB	unleashedBunleashBunlawfulBunknownBunkindBuniversitiesBunitsBunionistBuninterestingBunintentionallyBunintentionalB
unintendedBunimportantBuniB	unfoundedB
unfinishedB
unfilteredBundoBunderwhelmingB	underusedB
undertakenB	underrateBunderprivilegedB	underpaidB
underneathB	underagedBuncoolBunconvincingBunconventionalBunconstitutionalBunconfirmedBunconditionallyBunclesBuncharacteristicBuncertaintyBuncanny
??
Const_5Const*
_output_shapes	
:?N*
dtype0	*??
value??B??	?N"??                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?       	      	      	      	      	      	      	      	      	      		      
	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	      	       	      !	      "	      #	      $	      %	      &	      '	      (	      )	      *	      +	      ,	      -	      .	      /	      0	      1	      2	      3	      4	      5	      6	      7	      8	      9	      :	      ;	      <	      =	      >	      ?	      @	      A	      B	      C	      D	      E	      F	      G	      H	      I	      J	      K	      L	      M	      N	      O	      P	      Q	      R	      S	      T	      U	      V	      W	      X	      Y	      Z	      [	      \	      ]	      ^	      _	      `	      a	      b	      c	      d	      e	      f	      g	      h	      i	      j	      k	      l	      m	      n	      o	      p	      q	      r	      s	      t	      u	      v	      w	      x	      y	      z	      {	      |	      }	      ~	      	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	      ?	       
      
      
      
      
      
      
      
      
      	
      

      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
       
      !
      "
      #
      $
      %
      &
      '
      (
      )
      *
      +
      ,
      -
      .
      /
      0
      1
      2
      3
      4
      5
      6
      7
      8
      9
      :
      ;
      <
      =
      >
      ?
      @
      A
      B
      C
      D
      E
      F
      G
      H
      I
      J
      K
      L
      M
      N
      O
      P
      Q
      R
      S
      T
      U
      V
      W
      X
      Y
      Z
      [
      \
      ]
      ^
      _
      `
      a
      b
      c
      d
      e
      f
      g
      h
      i
      j
      k
      l
      m
      n
      o
      p
      q
      r
      s
      t
      u
      v
      w
      x
      y
      z
      {
      |
      }
      ~
      
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
      ?
                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                                      	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?        !      !      !      !      !      !      !      !      !      	!      
!      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !      !       !      !!      "!      #!      $!      %!      &!      '!      (!      )!      *!      +!      ,!      -!      .!      /!      0!      1!      2!      3!      4!      5!      6!      7!      8!      9!      :!      ;!      <!      =!      >!      ?!      @!      A!      B!      C!      D!      E!      F!      G!      H!      I!      J!      K!      L!      M!      N!      O!      P!      Q!      R!      S!      T!      U!      V!      W!      X!      Y!      Z!      [!      \!      ]!      ^!      _!      `!      a!      b!      c!      d!      e!      f!      g!      h!      i!      j!      k!      l!      m!      n!      o!      p!      q!      r!      s!      t!      u!      v!      w!      x!      y!      z!      {!      |!      }!      ~!      !      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!      ?!       "      "      "      "      "      "      "      "      "      	"      
"      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "      "       "      !"      ""      #"      $"      %"      &"      '"      ("      )"      *"      +"      ,"      -"      ."      /"      0"      1"      2"      3"      4"      5"      6"      7"      8"      9"      :"      ;"      <"      ="      >"      ?"      @"      A"      B"      C"      D"      E"      F"      G"      H"      I"      J"      K"      L"      M"      N"      O"      P"      Q"      R"      S"      T"      U"      V"      W"      X"      Y"      Z"      ["      \"      ]"      ^"      _"      `"      a"      b"      c"      d"      e"      f"      g"      h"      i"      j"      k"      l"      m"      n"      o"      p"      q"      r"      s"      t"      u"      v"      w"      x"      y"      z"      {"      |"      }"      ~"      "      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"      ?"       #      #      #      #      #      #      #      #      #      	#      
#      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #      #       #      !#      "#      ##      $#      %#      &#      '#      (#      )#      *#      +#      ,#      -#      .#      /#      0#      1#      2#      3#      4#      5#      6#      7#      8#      9#      :#      ;#      <#      =#      >#      ?#      @#      A#      B#      C#      D#      E#      F#      G#      H#      I#      J#      K#      L#      M#      N#      O#      P#      Q#      R#      S#      T#      U#      V#      W#      X#      Y#      Z#      [#      \#      ]#      ^#      _#      `#      a#      b#      c#      d#      e#      f#      g#      h#      i#      j#      k#      l#      m#      n#      o#      p#      q#      r#      s#      t#      u#      v#      w#      x#      y#      z#      {#      |#      }#      ~#      #      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#      ?#       $      $      $      $      $      $      $      $      $      	$      
$      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $      $       $      !$      "$      #$      $$      %$      &$      '$      ($      )$      *$      +$      ,$      -$      .$      /$      0$      1$      2$      3$      4$      5$      6$      7$      8$      9$      :$      ;$      <$      =$      >$      ?$      @$      A$      B$      C$      D$      E$      F$      G$      H$      I$      J$      K$      L$      M$      N$      O$      P$      Q$      R$      S$      T$      U$      V$      W$      X$      Y$      Z$      [$      \$      ]$      ^$      _$      `$      a$      b$      c$      d$      e$      f$      g$      h$      i$      j$      k$      l$      m$      n$      o$      p$      q$      r$      s$      t$      u$      v$      w$      x$      y$      z$      {$      |$      }$      ~$      $      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$      ?$       %      %      %      %      %      %      %      %      %      	%      
%      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %      %       %      !%      "%      #%      $%      %%      &%      '%      (%      )%      *%      +%      ,%      -%      .%      /%      0%      1%      2%      3%      4%      5%      6%      7%      8%      9%      :%      ;%      <%      =%      >%      ?%      @%      A%      B%      C%      D%      E%      F%      G%      H%      I%      J%      K%      L%      M%      N%      O%      P%      Q%      R%      S%      T%      U%      V%      W%      X%      Y%      Z%      [%      \%      ]%      ^%      _%      `%      a%      b%      c%      d%      e%      f%      g%      h%      i%      j%      k%      l%      m%      n%      o%      p%      q%      r%      s%      t%      u%      v%      w%      x%      y%      z%      {%      |%      }%      ~%      %      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%      ?%       &      &      &      &      &      &      &      &      &      	&      
&      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &      &       &      !&      "&      #&      $&      %&      &&      '&      (&      )&      *&      +&      ,&      -&      .&      /&      0&      1&      2&      3&      4&      5&      6&      7&      8&      9&      :&      ;&      <&      =&      >&      ?&      @&      A&      B&      C&      D&      E&      F&      G&      H&      I&      J&      K&      L&      M&      N&      O&      P&      Q&      R&      S&      T&      U&      V&      W&      X&      Y&      Z&      [&      \&      ]&      ^&      _&      `&      a&      b&      c&      d&      e&      f&      g&      h&      i&      j&      k&      l&      m&      n&      o&      p&      q&      r&      s&      t&      u&      v&      w&      x&      y&      z&      {&      |&      }&      ~&      &      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&      ?&       '      '      '      '      '      '      '      '      '      	'      
'      '      '      '      '      '      
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_4Const_5*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference_<lambda>_65883
?
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *#
fR
__inference_<lambda>_65888
8
NoOpNoOp^PartitionedCall^StatefulPartitionedCall
?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableHashTable*
Tkeys0*
Tvalues0	*#
_class
loc:@MutableHashTable*
_output_shapes

::
?%
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?%
value?%B?% B?%
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
;
_lookup_layer
	keras_api
_adapt_function*
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
 iter

!beta_1

"beta_2
	#decay
$learning_ratemJmKmLmMvNvOvPvQ*
 
1
2
3
4*
 
0
1
2
3*
* 
?
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

*serving_default* 
7
+lookup_table
,token_counts
-	keras_api*
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

80
91*
* 
* 
* 
R
:_initializer
;_create_resource
<_initialize
=_destroy_resource* 
?
>_create_resource
?_initialize
@_destroy_resourceJ
tableAlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	Atotal
	Bcount
C	variables
D	keras_api*
H
	Etotal
	Fcount
G
_fn_kwargs
H	variables
I	keras_api*
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

A0
B1*

C	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

E0
F1*

H	variables*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
(serving_default_text_vectorization_inputPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCall_1StatefulPartitionedCall(serving_default_text_vectorization_input
hash_tableConstConst_1Const_2dense/kernel
dense/biasdense_1/kerneldense_1/bias*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_65726
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp?MutableHashTable_lookup_table_export_values/LookupTableExportV2AMutableHashTable_lookup_table_export_values/LookupTableExportV2:1total/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst_6*$
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *'
f"R 
__inference__traced_save_65988
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateMutableHashTabletotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*"
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_restore_66064??
?

?
*__inference_sequential_layer_call_fn_65401
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3: 
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_65361o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
#
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?f
?
E__inference_sequential_layer_call_and_return_conditional_losses_65637

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????        ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:????????? *
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?

dense/CastCast?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*

DstT0*

SrcT0	*'
_output_shapes
:????????? ?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype0}
dense/MatMulMatMuldense/Cast:y:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
@__inference_dense_layer_call_and_return_conditional_losses_65214

inputs	0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpU
CastCastinputs*

DstT0*

SrcT0	*'
_output_shapes
:????????? t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0k
MatMulMatMulCast:y:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
*__inference_sequential_layer_call_fn_65257
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3: 
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_65238o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
#
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
B__inference_dense_1_layer_call_and_return_conditional_losses_65815

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
*__inference_sequential_layer_call_fn_65571

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3: 
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_65361o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
*
__inference_<lambda>_65888
identityJ
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
,
__inference__destroyer_65848
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference__initializer_658286
2key_value_init966_lookuptableimportv2_table_handle.
*key_value_init966_lookuptableimportv2_keys0
,key_value_init966_lookuptableimportv2_values	
identity??%key_value_init966/LookupTableImportV2?
%key_value_init966/LookupTableImportV2LookupTableImportV22key_value_init966_lookuptableimportv2_table_handle*key_value_init966_lookuptableimportv2_keys,key_value_init966_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init966/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?N:?N2N
%key_value_init966/LookupTableImportV2%key_value_init966/LookupTableImportV2:!

_output_shapes	
:?N:!

_output_shapes	
:?N
?
?
%__inference_dense_layer_call_fn_65783

inputs	
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_65214o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?_
?
E__inference_sequential_layer_call_and_return_conditional_losses_65361

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	
dense_65350: 
dense_65352:
dense_1_65355:
dense_1_65357:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????        ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:????????? *
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
dense/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0dense_65350dense_65352*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_65214?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_65355dense_1_65357*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_65231w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
'__inference_dense_1_layer_call_fn_65804

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_65231o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
F
__inference__creator_65838
identity: ??MutableHashTable~
MutableHashTableMutableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	table_751*
value_dtype0	]
IdentityIdentityMutableHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: Y
NoOpNoOp^MutableHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2$
MutableHashTableMutableHashTable
?
.
__inference__initializer_65843
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?	
?
#__inference_signature_wrapper_65726
text_vectorization_input
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3: 
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalltext_vectorization_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_65148o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
#
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?C
?
__inference_adapt_step_65774
iterator

iterator_19
5none_lookup_table_find_lookuptablefindv2_table_handle:
6none_lookup_table_find_lookuptablefindv2_default_value	??IteratorGetNext?(None_lookup_table_find/LookupTableFindV2?,None_lookup_table_insert/LookupTableInsertV2?
IteratorGetNextIteratorGetNextiterator*
_class
loc:@iterator*#
_output_shapes
:?????????*"
output_shapes
:?????????*
output_types
2]
StringLowerStringLowerIteratorGetNext:components:0*#
_output_shapes
:??????????
StaticRegexReplaceStaticRegexReplaceStringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite R
StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
StringSplit/StringSplitV2StringSplitV2StaticRegexReplace:output:0StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:p
StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       r
!StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
StringSplit/strided_sliceStridedSlice#StringSplit/StringSplitV2:indices:0(StringSplit/strided_slice/stack:output:0*StringSplit/strided_slice/stack_1:output:0*StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_maskk
!StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
StringSplit/strided_slice_1StridedSlice!StringSplit/StringSplitV2:shape:0*StringSplit/strided_slice_1/stack:output:0,StringSplit/strided_slice_1/stack_1:output:0,StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
BStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast"StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast$StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdUStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
PStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterTStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0YStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
KStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastRStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
LStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2SStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0UStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulOStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumHStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
NStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
OStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountFStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0WStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumVStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
MStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
IStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
DStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2VStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0JStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0RStringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
UniqueWithCountsUniqueWithCounts"StringSplit/StringSplitV2:values:0*
T0*A
_output_shapes/
-:?????????:?????????:?????????*
out_idx0	?
(None_lookup_table_find/LookupTableFindV2LookupTableFindV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:06none_lookup_table_find_lookuptablefindv2_default_value",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
:|
addAddV2UniqueWithCounts:count:01None_lookup_table_find/LookupTableFindV2:values:0*
T0	*
_output_shapes
:?
,None_lookup_table_insert/LookupTableInsertV2LookupTableInsertV25none_lookup_table_find_lookuptablefindv2_table_handleUniqueWithCounts:y:0add:z:0)^None_lookup_table_find/LookupTableFindV2",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 *(
_construction_contextkEagerRuntime*
_input_shapes

: : : : 2"
IteratorGetNextIteratorGetNext2T
(None_lookup_table_find/LookupTableFindV2(None_lookup_table_find/LookupTableFindV22\
,None_lookup_table_insert/LookupTableInsertV2,None_lookup_table_insert/LookupTableInsertV2:( $
"
_user_specified_name
iterator:@<

_output_shapes
: 
"
_user_specified_name
iterator:

_output_shapes
: 
?
?
__inference_<lambda>_658836
2key_value_init966_lookuptableimportv2_table_handle.
*key_value_init966_lookuptableimportv2_keys0
,key_value_init966_lookuptableimportv2_values	
identity??%key_value_init966/LookupTableImportV2?
%key_value_init966/LookupTableImportV2LookupTableImportV22key_value_init966_lookuptableimportv2_table_handle*key_value_init966_lookuptableimportv2_keys,key_value_init966_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: n
NoOpNoOp&^key_value_init966/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?N:?N2N
%key_value_init966/LookupTableImportV2%key_value_init966/LookupTableImportV2:!

_output_shapes	
:?N:!

_output_shapes	
:?N
?

?
@__inference_dense_layer_call_and_return_conditional_losses_65795

inputs	0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpU
CastCastinputs*

DstT0*

SrcT0	*'
_output_shapes
:????????? t
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0k
MatMulMatMulCast:y:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
__inference_restore_fn_65875
restored_tensors_0
restored_tensors_1	C
?mutablehashtable_table_restore_lookuptableimportv2_table_handle
identity??2MutableHashTable_table_restore/LookupTableImportV2?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2?mutablehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
?5
?	
__inference__traced_save_65988
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopJ
Fsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2L
Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1	$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const_6

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B ?	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopFsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2Hsavev2_mutablehashtable_lookup_table_export_values_lookuptableexportv2_1 savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *&
dtypes
2		?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
~: : :::: : : : : ::: : : : : :::: :::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
::

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: 
?f
?
E__inference_sequential_layer_call_and_return_conditional_losses_65703

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	6
$dense_matmul_readvariableop_resource: 3
%dense_biasadd_readvariableop_resource:8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????        ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:????????? *
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?

dense/CastCast?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*

DstT0*

SrcT0	*'
_output_shapes
:????????? ?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype0}
dense/MatMulMatMuldense/Cast:y:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????b
IdentityIdentitydense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?

?
B__inference_dense_1_layer_call_and_return_conditional_losses_65231

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?s
?
 __inference__wrapped_model_65148
text_vectorization_inputZ
Vsequential_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle[
Wsequential_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	7
3sequential_text_vectorization_string_lookup_equal_y:
6sequential_text_vectorization_string_lookup_selectv2_t	A
/sequential_dense_matmul_readvariableop_resource: >
0sequential_dense_biasadd_readvariableop_resource:C
1sequential_dense_1_matmul_readvariableop_resource:@
2sequential_dense_1_biasadd_readvariableop_resource:
identity??'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?)sequential/dense_1/BiasAdd/ReadVariableOp?(sequential/dense_1/MatMul/ReadVariableOp?Isequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2w
)sequential/text_vectorization/StringLowerStringLowertext_vectorization_input*#
_output_shapes
:??????????
0sequential/text_vectorization/StaticRegexReplaceStaticRegexReplace2sequential/text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite p
/sequential/text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
7sequential/text_vectorization/StringSplit/StringSplitV2StringSplitV29sequential/text_vectorization/StaticRegexReplace:output:08sequential/text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
=sequential/text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
?sequential/text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
?sequential/text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
7sequential/text_vectorization/StringSplit/strided_sliceStridedSliceAsequential/text_vectorization/StringSplit/StringSplitV2:indices:0Fsequential/text_vectorization/StringSplit/strided_slice/stack:output:0Hsequential/text_vectorization/StringSplit/strided_slice/stack_1:output:0Hsequential/text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask?
?sequential/text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Asequential/text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Asequential/text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9sequential/text_vectorization/StringSplit/strided_slice_1StridedSlice?sequential/text_vectorization/StringSplit/StringSplitV2:shape:0Hsequential/text_vectorization/StringSplit/strided_slice_1/stack:output:0Jsequential/text_vectorization/StringSplit/strided_slice_1/stack_1:output:0Jsequential/text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
`sequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast@sequential/text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
bsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1CastBsequential/text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
jsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapedsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
jsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
isequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdssequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0ssequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
nsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreaterrsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0wsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
isequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastpsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
hsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxdsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0usequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
jsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
hsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2qsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0ssequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
hsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulmsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximumfsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimumfsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0psequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
lsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
msequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountdsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0psequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0usequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
gsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
bsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumtsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0psequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
ksequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
gsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
bsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2tsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0hsequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0psequential/text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
Isequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Vsequential_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle@sequential/text_vectorization/StringSplit/StringSplitV2:values:0Wsequential_text_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
1sequential/text_vectorization/string_lookup/EqualEqual@sequential/text_vectorization/StringSplit/StringSplitV2:values:03sequential_text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
4sequential/text_vectorization/string_lookup/SelectV2SelectV25sequential/text_vectorization/string_lookup/Equal:z:06sequential_text_vectorization_string_lookup_selectv2_tRsequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
4sequential/text_vectorization/string_lookup/IdentityIdentity=sequential/text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????|
:sequential/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
2sequential/text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????        ?
Asequential/text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor;sequential/text_vectorization/RaggedToTensor/Const:output:0=sequential/text_vectorization/string_lookup/Identity:output:0Csequential/text_vectorization/RaggedToTensor/default_value:output:0Bsequential/text_vectorization/StringSplit/strided_slice_1:output:0@sequential/text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:????????? *
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
sequential/dense/CastCastJsequential/text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0*

DstT0*

SrcT0	*'
_output_shapes
:????????? ?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
sequential/dense/MatMulMatMulsequential/dense/Cast:y:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????|
sequential/dense_1/SigmoidSigmoid#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????m
IdentityIdentitysequential/dense_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOpJ^sequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2?
Isequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Isequential/text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:] Y
#
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?_
?
E__inference_sequential_layer_call_and_return_conditional_losses_65523
text_vectorization_inputO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	
dense_65512: 
dense_65514:
dense_1_65517:
dense_1_65519:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2l
text_vectorization/StringLowerStringLowertext_vectorization_input*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????        ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:????????? *
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
dense/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0dense_65512dense_65514*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_65214?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_65517dense_1_65519*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_65231w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:] Y
#
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
:
__inference__creator_65820
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name967*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?_
?
E__inference_sequential_layer_call_and_return_conditional_losses_65462
text_vectorization_inputO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	
dense_65451: 
dense_65453:
dense_1_65456:
dense_1_65458:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2l
text_vectorization/StringLowerStringLowertext_vectorization_input*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????        ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:????????? *
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
dense/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0dense_65451dense_65453*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_65214?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_65456dense_1_65458*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_65231w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:] Y
#
_output_shapes
:?????????
2
_user_specified_nametext_vectorization_input:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference_save_fn_65867
checkpoint_keyP
Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5	???MutableHashTable_lookup_table_export_values/LookupTableExportV2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Lmutablehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0	*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_2IdentityFMutableHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: ?

Identity_5IdentityHMutableHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0	*
_output_shapes
:?
NoOpNoOp@^MutableHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2?
?MutableHashTable_lookup_table_export_values/LookupTableExportV2?MutableHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
?
,
__inference__destroyer_65833
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?[
?
!__inference__traced_restore_66064
file_prefix/
assignvariableop_dense_kernel: +
assignvariableop_1_dense_bias:3
!assignvariableop_2_dense_1_kernel:-
assignvariableop_3_dense_1_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: M
Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtable: "
assignvariableop_9_total: #
assignvariableop_10_count: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: 9
'assignvariableop_13_adam_dense_kernel_m: 3
%assignvariableop_14_adam_dense_bias_m:;
)assignvariableop_15_adam_dense_1_kernel_m:5
'assignvariableop_16_adam_dense_1_bias_m:9
'assignvariableop_17_adam_dense_kernel_v: 3
%assignvariableop_18_adam_dense_bias_v:;
)assignvariableop_19_adam_dense_1_kernel_v:5
'assignvariableop_20_adam_dense_1_bias_v:
identity_22??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?2MutableHashTable_table_restore/LookupTableImportV2?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBFlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-keysBHlayer_with_weights-0/_lookup_layer/token_counts/.ATTRIBUTES/table-valuesB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*t
_output_shapesb
`::::::::::::::::::::::::*&
dtypes
2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0?
2MutableHashTable_table_restore/LookupTableImportV2LookupTableImportV2Cmutablehashtable_table_restore_lookuptableimportv2_mutablehashtableRestoreV2:tensors:9RestoreV2:tensors:10*	
Tin0*

Tout0	*#
_class
loc:@MutableHashTable*
_output_shapes
 ^

Identity_9IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp'assignvariableop_13_adam_dense_kernel_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp%assignvariableop_14_adam_dense_bias_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_1_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_1_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp%assignvariableop_18_adam_dense_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_1_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_1_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_93^MutableHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "#
identity_22Identity_22:output:0*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92h
2MutableHashTable_table_restore/LookupTableImportV22MutableHashTable_table_restore/LookupTableImportV2:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)
%
#
_class
loc:@MutableHashTable
?_
?
E__inference_sequential_layer_call_and_return_conditional_losses_65238

inputsO
Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handleP
Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value	,
(text_vectorization_string_lookup_equal_y/
+text_vectorization_string_lookup_selectv2_t	
dense_65215: 
dense_65217:
dense_1_65232:
dense_1_65234:
identity??dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2Z
text_vectorization/StringLowerStringLowerinputs*#
_output_shapes
:??????????
%text_vectorization/StaticRegexReplaceStaticRegexReplace'text_vectorization/StringLower:output:0*#
_output_shapes
:?????????*6
pattern+)[!"#$%&()\*\+,-\./:;<=>?@\[\\\]^_`{|}~\']*
rewrite e
$text_vectorization/StringSplit/ConstConst*
_output_shapes
: *
dtype0*
valueB B ?
,text_vectorization/StringSplit/StringSplitV2StringSplitV2.text_vectorization/StaticRegexReplace:output:0-text_vectorization/StringSplit/Const:output:0*<
_output_shapes*
(:?????????:?????????:?
2text_vectorization/StringSplit/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ?
4text_vectorization/StringSplit/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
4text_vectorization/StringSplit/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
,text_vectorization/StringSplit/strided_sliceStridedSlice6text_vectorization/StringSplit/StringSplitV2:indices:0;text_vectorization/StringSplit/strided_slice/stack:output:0=text_vectorization/StringSplit/strided_slice/stack_1:output:0=text_vectorization/StringSplit/strided_slice/stack_2:output:0*
Index0*
T0	*#
_output_shapes
:?????????*

begin_mask*
end_mask*
shrink_axis_mask~
4text_vectorization/StringSplit/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6text_vectorization/StringSplit/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6text_vectorization/StringSplit/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.text_vectorization/StringSplit/strided_slice_1StridedSlice4text_vectorization/StringSplit/StringSplitV2:shape:0=text_vectorization/StringSplit/strided_slice_1/stack:output:0?text_vectorization/StringSplit/strided_slice_1/stack_1:output:0?text_vectorization/StringSplit/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
: *
shrink_axis_mask?
Utext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CastCast5text_vectorization/StringSplit/strided_slice:output:0*

DstT0*

SrcT0	*#
_output_shapes
:??????????
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1Cast7text_vectorization/StringSplit/strided_slice_1:output:0*

DstT0*

SrcT0	*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ShapeShapeYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0*
T0*
_output_shapes
:?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/ProdProdhtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Shape:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const:output:0*
T0*
_output_shapes
: ?
ctext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/yConst*
_output_shapes
: *
dtype0*
value	B : ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/GreaterGreatergtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Prod:output:0ltext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater/y:output:0*
T0*
_output_shapes
: ?
^text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/CastCastetext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Greater:z:0*

DstT0*

SrcT0
*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaxMaxYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_1:output:0*
T0*
_output_shapes
: ?
_text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/yConst*
_output_shapes
: *
dtype0*
value	B :?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/addAddV2ftext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Max:output:0htext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add/y:output:0*
T0*
_output_shapes
: ?
]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mulMulbtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Cast:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/add:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MaximumMaximum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/mul:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/MinimumMinimum[text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast_1:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Maximum:z:0*
T0*
_output_shapes
: ?
atext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 ?
btext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/BincountBincountYtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cast:y:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Minimum:z:0jtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Const_2:output:0*
T0	*#
_output_shapes
:??????????
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/CumsumCumsumitext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/bincount/Bincount:bins:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum/axis:output:0*
T0	*#
_output_shapes
:??????????
`text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0Const*
_output_shapes
:*
dtype0	*
valueB	R ?
\text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Wtext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concatConcatV2itext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/values_0:output:0]text_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/Cumsum:out:0etext_vectorization/StringSplit/RaggedFromValueRowIds/RowPartitionFromValueRowIds/concat/axis:output:0*
N*
T0	*#
_output_shapes
:??????????
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2LookupTableFindV2Ktext_vectorization_string_lookup_none_lookup_lookuptablefindv2_table_handle5text_vectorization/StringSplit/StringSplitV2:values:0Ltext_vectorization_string_lookup_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
&text_vectorization/string_lookup/EqualEqual5text_vectorization/StringSplit/StringSplitV2:values:0(text_vectorization_string_lookup_equal_y*
T0*#
_output_shapes
:??????????
)text_vectorization/string_lookup/SelectV2SelectV2*text_vectorization/string_lookup/Equal:z:0+text_vectorization_string_lookup_selectv2_tGtext_vectorization/string_lookup/None_Lookup/LookupTableFindV2:values:0*
T0	*#
_output_shapes
:??????????
)text_vectorization/string_lookup/IdentityIdentity2text_vectorization/string_lookup/SelectV2:output:0*
T0	*#
_output_shapes
:?????????q
/text_vectorization/RaggedToTensor/default_valueConst*
_output_shapes
: *
dtype0	*
value	B	 R ?
'text_vectorization/RaggedToTensor/ConstConst*
_output_shapes
:*
dtype0	*%
valueB	"????????        ?
6text_vectorization/RaggedToTensor/RaggedTensorToTensorRaggedTensorToTensor0text_vectorization/RaggedToTensor/Const:output:02text_vectorization/string_lookup/Identity:output:08text_vectorization/RaggedToTensor/default_value:output:07text_vectorization/StringSplit/strided_slice_1:output:05text_vectorization/StringSplit/strided_slice:output:0*
T0	*
Tindex0	*
Tshape0	*'
_output_shapes
:????????? *
num_row_partition_tensors*7
row_partition_types 
FIRST_DIM_SIZEVALUE_ROWIDS?
dense/StatefulPartitionedCallStatefulPartitionedCall?text_vectorization/RaggedToTensor/RaggedTensorToTensor:result:0dense_65215dense_65217*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_65214?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_65232dense_1_65234*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_65231w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall?^text_vectorization/string_lookup/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2?
>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2>text_vectorization/string_lookup/None_Lookup/LookupTableFindV2:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
*__inference_sequential_layer_call_fn_65550

inputs
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3: 
	unknown_4:
	unknown_5:
	unknown_6:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2			*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_65238o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
Y
text_vectorization_input=
*serving_default_text_vectorization_input:0?????????=
dense_12
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:?Y
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
P
_lookup_layer
	keras_api
_adapt_function"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
 iter

!beta_1

"beta_2
	#decay
$learning_ratemJmKmLmMvNvOvPvQ"
	optimizer
<
1
2
3
4"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
?2?
*__inference_sequential_layer_call_fn_65257
*__inference_sequential_layer_call_fn_65550
*__inference_sequential_layer_call_fn_65571
*__inference_sequential_layer_call_fn_65401?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_sequential_layer_call_and_return_conditional_losses_65637
E__inference_sequential_layer_call_and_return_conditional_losses_65703
E__inference_sequential_layer_call_and_return_conditional_losses_65462
E__inference_sequential_layer_call_and_return_conditional_losses_65523?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_65148text_vectorization_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
*serving_default"
signature_map
L
+lookup_table
,token_counts
-	keras_api"
_tf_keras_layer
"
_generic_user_object
?2?
__inference_adapt_step_65774?
???
FullArgSpec
args?

jiterator
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
: 2dense/kernel
:2
dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
%__inference_dense_layer_call_fn_65783?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_dense_layer_call_and_return_conditional_losses_65795?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 :2dense_1/kernel
:2dense_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
3non_trainable_variables

4layers
5metrics
6layer_regularization_losses
7layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_dense_1_layer_call_fn_65804?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_dense_1_layer_call_and_return_conditional_losses_65815?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
#__inference_signature_wrapper_65726text_vectorization_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
j
:_initializer
;_create_resource
<_initialize
=_destroy_resourceR jCustom.StaticHashTable
O
>_create_resource
?_initialize
@_destroy_resourceR Z
tableRS
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	Atotal
	Bcount
C	variables
D	keras_api"
_tf_keras_metric
^
	Etotal
	Fcount
G
_fn_kwargs
H	variables
I	keras_api"
_tf_keras_metric
"
_generic_user_object
?2?
__inference__creator_65820?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_65828?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_65833?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__creator_65838?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_65843?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_65848?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
:  (2total
:  (2count
.
A0
B1"
trackable_list_wrapper
-
C	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
E0
F1"
trackable_list_wrapper
-
H	variables"
_generic_user_object
#:! 2Adam/dense/kernel/m
:2Adam/dense/bias/m
%:#2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
#:! 2Adam/dense/kernel/v
:2Adam/dense/bias/v
%:#2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
?B?
__inference_save_fn_65867checkpoint_key"?
???
FullArgSpec
args?
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?	
? 
?B?
__inference_restore_fn_65875restored_tensors_0restored_tensors_1"?
???
FullArgSpec
args? 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *?
	?
	?	
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_56
__inference__creator_65820?

? 
? "? 6
__inference__creator_65838?

? 
? "? 8
__inference__destroyer_65833?

? 
? "? 8
__inference__destroyer_65848?

? 
? "? ?
__inference__initializer_65828+XY?

? 
? "? :
__inference__initializer_65843?

? 
? "? ?
 __inference__wrapped_model_65148|+TUV=?:
3?0
.?+
text_vectorization_input?????????
? "1?.
,
dense_1!?
dense_1?????????i
__inference_adapt_step_65774I,W??<
5?2
0?-?
??????????IteratorSpec 
? "
 ?
B__inference_dense_1_layer_call_and_return_conditional_losses_65815\/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? z
'__inference_dense_1_layer_call_fn_65804O/?,
%?"
 ?
inputs?????????
? "???????????
@__inference_dense_layer_call_and_return_conditional_losses_65795\/?,
%?"
 ?
inputs????????? 	
? "%?"
?
0?????????
? x
%__inference_dense_layer_call_fn_65783O/?,
%?"
 ?
inputs????????? 	
? "??????????y
__inference_restore_fn_65875Y,K?H
A?>
?
restored_tensors_0
?
restored_tensors_1	
? "? ?
__inference_save_fn_65867?,&?#
?
?
checkpoint_key 
? "???
`?]

name?
0/name 
#

slice_spec?
0/slice_spec 

tensor?
0/tensor
`?]

name?
1/name 
#

slice_spec?
1/slice_spec 

tensor?
1/tensor	?
E__inference_sequential_layer_call_and_return_conditional_losses_65462x+TUVE?B
;?8
.?+
text_vectorization_input?????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_65523x+TUVE?B
;?8
.?+
text_vectorization_input?????????
p

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_65637f+TUV3?0
)?&
?
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_65703f+TUV3?0
)?&
?
inputs?????????
p

 
? "%?"
?
0?????????
? ?
*__inference_sequential_layer_call_fn_65257k+TUVE?B
;?8
.?+
text_vectorization_input?????????
p 

 
? "???????????
*__inference_sequential_layer_call_fn_65401k+TUVE?B
;?8
.?+
text_vectorization_input?????????
p

 
? "???????????
*__inference_sequential_layer_call_fn_65550Y+TUV3?0
)?&
?
inputs?????????
p 

 
? "???????????
*__inference_sequential_layer_call_fn_65571Y+TUV3?0
)?&
?
inputs?????????
p

 
? "???????????
#__inference_signature_wrapper_65726?+TUVY?V
? 
O?L
J
text_vectorization_input.?+
text_vectorization_input?????????"1?.
,
dense_1!?
dense_1?????????