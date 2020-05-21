//import 'dart:convert';
import 'dart:async';

//import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class BookContent extends StatefulWidget {
  @override
  _BookContentState createState() => _BookContentState();
}

class _BookContentState extends State<BookContent> {
  List<Map<String, int>> pageConfig = [];
  Map ajaxData = {
    'prev': '',
    'next': '111',
    '0': {
      'name': '第一回 宴桃园豪杰三结义 斩黄巾英雄首立功',
      'content': '''　　却说吴主孙休, 闻司马炎已篡魏, 知其必将伐吴, 忧虑成疾, 卧床不起, 乃召丞相濮阳兴入宫中, 令太子孙(上雨下单)出拜。吴主把兴臂、手指(上雨下单)而卒。兴出, 与群臣商议, 欲立太子孙(上雨下单)为君。左典军万彧曰：“(上雨下单)幼不能专政, 不若取乌程侯孙皓立之。”左将军张布亦曰：“皓才识明断, 堪为帝王。”丞相濮阳兴不能决, 入奏朱太后。太后曰：“吾寡妇人耳, 安知社稷之事？卿等斟酌立之可也。”兴遂迎皓为君。

　　皓字元宗, 大帝孙权太子孙和之子也。当年七月, 即皇帝位, 改元为元兴元年, 封太子孙(上雨下单)为豫章王, 追谥父和为文皇帝, 尊母何氏为太后, 加丁奉为右大司马。次年改为甘露元年。皓凶暴日甚, 酷溺酒色, 宠幸中常侍岑昏。濮阳兴、张布谏之, 皓怒, 斩二人, 灭其三族。由是廷臣缄口, 不敢再谏。又改宝鼎元年, 以陆凯、万彧为左右丞相。时皓居武昌, 扬州百姓溯流供给, 甚苦之；又奢侈无度, 公私匮乏。陆凯上疏谏曰：

　　今无灾而民命尽, 无为而国财空, 臣窃痛之。昔汉室既衰, 三家鼎立；今曹、刘失道, 皆为晋有：此目前之明验也。臣愚但为陛下惜国家耳。武昌土地险瘠, 非王者之都。且童谣云：宁饮建业水, 不食武昌鱼；宁还建业死, 不止武昌居！此足明民心与天意也。今国无一年之蓄, 有露根之渐；官吏为苛扰, 莫之或恤。大帝时, 后宫女不满百；景帝以来, 乃有千数：此耗财之甚者也。又左右皆非其人, 群党相挟, 害忠隐贤, 此皆蠹政病民者也。愿陛下省百役, 罢苛扰, 简出宫女, 清选百官, 则天悦民附而国安矣。

　　疏奏, 皓不悦。又大兴土木, 作昭明宫, 令文武各官入山采木；又召术士尚广, 令筮蓍问取天下之事。尚对曰：“陛下筮得吉兆：庚子岁, 青盖当入洛阳。”皓大喜, 谓中书丞华覈曰：“先帝纳卿之言, 分头命将, 沿江一带, 屯数百营, 命老将丁奉总之。朕欲兼并汉土, 以为蜀主复仇, 当取何地为先？”覈谏曰：“今成都不守, 社稷倾崩, 司马炎必有吞吴之心。陛下宜修德以安吴民, 乃为上计。若强动兵甲, 正犹披麻救火, 必致自焚也。愿陛下察之。”皓大怒曰：“朕欲乘时恢复旧业, 汝出此不利之言！若不看汝旧臣之面, 斩首号令！”叱武士推出殿门。华覈出朝叹曰：“可惜锦绣江山, 不久属于他人矣！”遂隐居不出。于是皓令镇东将军陆抗部兵屯江口, 以图襄阳。

　　早有消息报入洛阳, 近臣奏知晋主司马炎。晋主闻陆抗寇襄阳, 与众官商议。贾充出班奏曰：“臣闻吴国孙皓, 不修德政, 专行无道。陛下可诏都督羊祜率兵拒之, 俟其国中有变, 乘势攻取, 东吴反掌可得也。”炎大喜, 即降诏遣使到襄阳, 宣谕羊祜。祜奉诏, 整点军马, 预备迎敌。自是羊祜镇守襄阳, 甚得军民之心。吴人有降而欲去者, 皆听之。减戍逻之卒, 用以垦田八百余顷。其初到时, 军无百日之粮；及至末年, 军中有十年之积。祜在军, 尝着轻裘, 系宽带, 不披铠甲, 帐前侍卫者不过十余人。一日, 部将入帐禀祜曰：“哨马来报：吴兵皆懈怠。可乘其无备而袭之, 必获大胜。”祜笑曰：“汝众人小觑陆抗耶？此人足智多谋, 日前吴主命之攻拔西陵, 斩了步阐及其将士数十人, 吾救之无及。此人为将, 我等只可自守；候其内有变, 方可图取。若不审时势而轻进, 此取败之道也。”众将服其论, 只自守疆界而已。

　　一日, 羊祜引诸将打猎, 正值陆抗亦出猎。羊祜下令：“我军不许过界。”众将得令, 止于晋地打围, 不犯吴境。陆抗望见, 叹曰：“羊将军有纪律, 不可犯也。”日晚各退。祜归至军中, 察问所得禽兽, 被吴人先射伤者皆送还。吴人皆悦, 来报陆抗。抗召来人入, 问曰：“汝主帅能饮酒否？”来人答曰：“必得佳酿, 则饮之。”抗笑曰：“吾有斗酒, 藏之久矣。今付与汝持去, 拜上都督：此酒陆某亲酿自饮者, 特奉一勺, 以表昨日出猎之情。”来人领诺, 携酒而去。左右问抗曰：“将军以酒与彼, 有何主意？”抗曰：“彼既施德于我, 我岂得无以酬之？”众皆愕然。

　　却说来人回见羊祜, 以抗所问并奉酒事, 一一陈告。祜笑曰：“彼亦知吾能饮乎！”遂命开壶取饮。部将陈元曰：“其中恐有奸诈, 都督且宜慢饮。”祜笑曰：“抗非毒人者也, 不必疑虑。”竟倾壶饮之。自是使人通问, 常相往来。一日, 抗遣人候祜。祜问曰：“陆将军安否？”来人曰：“主帅卧病数日未出。”祜曰：“料彼之病, 与我相同。吾已合成熟药在此, 可送与服之。”来人持药回见抗。众将曰：“羊祜乃是吾敌也, 此药必非良药。”抗曰：“岂有鸩人羊叔子哉！汝众人勿疑。”遂服之。次日病愈, 众将皆拜贺。抗曰：“彼专以德, 我专以暴, 是彼将不战而服我也。今宜各保疆界而已, 无求细利。”众将领命。

　　忽报吴主遣使来到, 抗接入问之。使曰：“天子传谕将军：作急进兵, 勿使晋人先入。”抗曰：“汝先回, 吾随有疏章上奏。”使人辞去, 抗即草疏遣人赍到建业。近臣呈上, 皓拆观其疏, 疏中备言晋未可伐之状, 且劝吴主修德慎罚, 以安内为念, 不当以黩武为事。吴主览毕, 大怒曰：“朕闻抗在边境与敌人相通, 今果然矣！”遂遣使罢其兵权, 降为司马, 却令左将军孙冀代领其军。群臣皆不敢谏。吴主皓自改元建衡, 至凤凰元年, 恣意妄为, 穷兵屯戍, 上下无不嗟怨。丞相万彧、将军留平、大司农楼玄三人见皓无道, 直言苦谏, 皆被所杀。前后十余年, 杀忠臣四十余人。皓出入常带铁骑五万。群臣恐怖, 莫敢奈何。

　　却说羊祜闻陆抗罢兵, 孙皓失德, 见吴有可乘之机, 乃作表遣人往洛阳请伐吴。其略曰：

　　夫期运虽天所授, 而功业必因人而成。今江淮之险, 不如剑阁；孙皓之暴, 过于刘禅；吴人之困, 甚于巴蜀, 而大晋兵力, 盛于往时：不于此际平一四海, 而更阻兵相守, 使天下困于征戍, 经历盛衰, 不可长久也。

　　司马炎观表, 大喜, 便令兴师。贾充、荀顗、冯紞三人, 力言不可, 炎因此不行。祜闻上不允其请, 叹曰：“天下不如意事, 十常八九。今天与不取, 岂不大可惜哉！”至咸宁四年, 羊祜入朝, 奏辞归乡养病。炎间曰：“卿有何安邦之策, 以教寡人？”祜曰：“孙皓暴虐已甚, 于今可不战而克。若皓不幸而殁, 更立贤君, 则吴非陛下所能得也。”炎大悟曰：“卿今便提兵往伐, 若何？”祜曰：“臣年老多病, 不堪当此任。陛下另选智勇之士可也。”遂辞炎而归。

　　是年十一月, 羊祜病危, 司马炎车驾亲临其家问安。炎至卧榻前, 祜下泪曰：“臣万死不能报陛下也！”炎亦泣曰：“朕深恨不能用卿伐吴之策。今日谁可继卿之志？”祜含泪而言曰：“臣死矣, 不敢不尽愚诚：右将军杜预可任；劳伐吴, 须当用之。”炎曰：“举善荐贤, 乃美事也；卿何荐人于朝, 即自焚奏稿, 不令人知耶？”祜曰：“拜官公朝, 谢恩私门, 臣所不取也。”言讫而亡。炎大哭回宫, 敕赠太傅、巨平侯。南州百姓闻羊祜死, 罢市而哭。江南守边将士, 亦皆哭泣。襄阳人思祜存日, 常游于岘山, 遂建庙立碑, 四时祭之。往来人见其碑文者, 无不流涕, 故名为堕泪碑。后人有诗叹曰：

　　晓日登临感晋臣, 古碑零落岘山春。松间残露频频滴, 疑是当年堕泪人。

　　晋主以羊祜之言, 拜杜预为镇南大将军都督荆州事。杜预为人, 老成练达, 好学不倦, 最喜读左丘明《春秋传》, 坐卧常自携, 每出入必使人持《左传》于马前, 时人谓之“《左传》癖”。及奉晋主之命, 在襄阳抚民养兵, 准备伐吴。

　　此时吴国丁奉、陆抗皆死, 吴主皓每宴群臣, 皆令沉醉；又置黄门郎十人为纠弹官。宴罢之后, 各奏过失, 有犯者或剥其面, 或凿其眼。由是国人大惧。晋益州刺史王瀎上疏请伐吴。其疏曰：

　　孙皓荒淫凶逆, 宜速征伐。若一旦皓死, 更立贤主, 则强敌也；臣造船七年, 日有朽败；臣年七十, 死亡无日：三者一乖, 则难图矣。愿陛下无失事机。

　　晋主览疏, 遂与群臣议曰：“王公之论, 与羊都督暗合。朕意决矣。”侍中王浑奏曰：“臣闻孙皓欲北上, 军伍已皆整备, 声势正盛, 难与争锋。更迟一年以待其疲, 方可成功。”晋主依其奏, 乃降诏止兵莫动, 退入后宫, 与秘书丞张华围棋消遣。近臣奏边庭有表到。晋主开视之, 乃杜预表也。表略云：

　　往者, 羊祜不博谋于朝臣, 而密与陛下计, 故令朝臣多异同之议。凡事当以利害相校, 度此举之利, 十有八九, 而其害止于无功耳。自秋以来, 讨贼之形颇露；今若中止, 孙皓恐怖, 徙都武昌, 完修江南诸城, 迁其居民, 城不可攻, 野无所掠, 则明年之计亦无及矣。

　　晋主览表才罢, 张华突然而起, 推却棋枰, 敛手奏曰：“陛下圣武, 国富民强；吴主淫虐, 民忧国敝。今若讨之, 可不劳而定。愿勿以为疑。”晋主曰：“卿言洞见利害, 朕复何疑。”即出升殿, 命镇南大将军杜预为大都督, 引兵十万出江陵；镇东大将军琅琊王司马伷出涂中；安东大将军王浑出横江；建威将军王戎出武昌；平南将军胡奋出夏口：各引兵五万, 皆听预调用。又遣龙骧将军王瀎、广武将军唐彬, 浮江东下：水陆兵二十余万, 战船数万艘。又令冠军将军杨济出屯襄阳, 节制诸路人马。

　　早有消息报入东吴。吴主皓大慌, 急召丞相张悌、司徒何植、司空膝循, 计议退兵之策。悌奏曰：“可令车骑将军伍延为都督, 进兵江陵, 迎敌杜预；骠骑将军孙歆进兵拒夏口等处军马。臣敢为军师, 领左将军沈莹、右将军诸葛靓, 引兵十万, 出兵牛渚, 接应诸路军马。”皓从之, 遂令张悌引兵去了。皓退入后宫, 不安忧色。幸臣中常侍岑昏问其故。皓曰：“晋兵大至, 诸路已有兵迎之；争奈王瀎率兵数万, 战船齐备, 顺流而下, 其锋甚锐：朕因此忧也。”昏曰：“臣有一计, 令王瀎之舟, 皆为齑粉矣。”皓大喜, 遂问其计。岑昏奏曰：“江南多铁, 可打连环索百余条, 长数百丈, 每环重二三十斤, 于沿江紧要去处横截之。再造铁锥数万, 长丈余, 置于水中。若晋船乘风而来, 逢锥则破, 岂能渡江也？”皓大喜, 传令拨匠工于江边连夜造成铁索、铁锥, 设立停当。

　　却说晋都督杜预, 兵出江陵, 令牙将周旨：引水手八百人, 乘小舟暗渡长江, 夜袭乐乡, 多立旌旗于山林之处, 日则放炮擂鼓, 夜则各处举火。旨领命, 引众渡江, 伏于巴山。次日, 杜预领大军水陆并进。前哨报道：吴主遣伍延出陆路, 陆景出水路, 孙歆为先锋：三路来迎。”杜预引兵前进, 孙歆船早到。两兵初交, 杜预便退。歆引兵上岸, 迤逦追时, 不到二十里, 一声炮响, 四面晋兵大至。吴兵急回, 杜预乘势掩杀, 吴兵死者不计其数。孙歆奔到城边, 周旨八百军混杂于中, 就城上举火。歆大惊曰：“北来诸军乃飞渡江也？”急欲退时, 被周旨大喝一声, 斩于马下。陆景在船上, 望见江南岸上一片火起, 巴山上风飘出一面大旗, 上书：“晋镇南大将军杜预”。陆景大惊, 欲上岸逃命, 被晋将张尚马到斩之。伍延见各军皆败, 乃弃城走, 被伏兵捉住, 缚见杜预。预曰：“留之无用！”叱令武士斩之。遂得江陵。

　　于是沅、湘一带, 直抵广州诸郡, 守令皆望风赍印而降。预令人持节安抚, 秋毫无犯。遂进兵攻武昌, 武昌亦降, 杜预军威大振, 遂大会诸将, 共议取建业之策。胡奋曰：“百年之寇, 未可尽服。方今春水泛涨, 难以久住。可俟来春, 更为大举。”预曰：“昔乐毅济西一战而并强齐；今兵威大振, 如破竹之势, 数节之后, 皆迎刃而解, 无复有着手处也。”遂驰檄约会诸将, 一齐进兵, 攻取建业。

　　时龙骧将军王瀎率水兵顺流而下。前哨报说：“吴人造铁索, 沿江横截；又以铁锥置于水中为准备。”瀎大笑, 遂造大筏数十方, 上缚草为人, 披甲执杖, 立于周围, 顺水放下。吴兵见之, 以为活人, 望风先走。暗锥着筏, 尽提而去。又于筏上作大炬, 长十余丈, 大十余围, 以麻油灌之, 但遇铁索, 燃炬烧之, 须臾皆断。两路从大江而来。所到之处, 无不克胜。

　　却说东吴丞相张悌, 令左将军沈莹、右将军诸葛靓, 来迎晋兵。莹谓靓曰：“上流诸军不作提防, 吾料晋军必至此, 宜尽力以敌之。若幸得胜, 江南自安。今渡江与战, 不幸而败, 则大事去矣。”靓曰：“公言是也。”言未毕, 人报晋兵顺流而下, 势不可当。二人大惊, 慌来见张悌商议。靓谓悌曰：“东吴危矣, 何不遁去？”悌垂泣曰：“吴之将亡, 贤愚共知；今若君臣皆降, 无一人死于国难, 不亦辱乎！”诸葛靓亦垂泣而去。张悌与沈莹挥兵抵敌, 晋兵一齐围之。周旨首先杀入吴营。张悌独奋力搏战, 死于乱军之中。沈莹被周旨所杀。吴兵四散败走。后人有诗赞张悌曰：

　　杜预巴山见大旗, 江东张悌死忠时。已拚王气南中尽, 不忍偷生负所知。

　　却说晋兵克了牛渚, 深入吴境。王瀎遣人驰报捷音, 晋主炎闻知大喜。贾充奏曰：“吾兵久劳于外, 不服水土, 必生疾病。宜召军还, 再作后图。”张华曰：“今大兵已入其巢, 吴人胆落, 不出一月, 孙皓必擒矣。若轻召还, 前攻尽废, 诚可惜也。”晋主未及应, 贾充叱华曰：“汝不省天时地利, 欲妄邀功绩, 困弊士卒, 虽斩汝不足以谢天下！”炎曰：“此是朕意, 华但与朕同耳, 何必争辩！”忽报杜预驰表到。晋主视表, 亦言宜急进兵之意。晋主遂不复疑, 竟下征进之命。

　　王瀎等奉了晋主之命, 水陆并进, 风雷鼓动, 吴人望旗而降。吴主皓闻之, 大惊失色。诸臣告曰：“北兵日近, 江南军民不战而降, 将如之何？”皓曰：“何故不战？”众对曰：“今日之祸, 皆岑昏之罪, 请陛下诛之。臣等出城决一死战。”皓曰：“量一中贵, 何能误国？”众大叫曰：“陛下岂不见蜀之黄皓乎！”遂不待吴主之命, 一齐拥入宫中, 碎割岑昏, 生啖其肉。陶瀎奏曰：“臣领战船皆小, 愿得二万兵乘大船以战, 自足破之。”皓从其言, 遂拨御林诸军与陶瀎上流迎敌。前将军张象, 率水兵下江迎敌。二人部兵正行, 不想西北风大起, 吴兵旗帜, 皆不能立, 尽倒竖于舟中；兵卒不肯下船, 四散奔走, 只有张象数十军待敌。

　　却说晋将王瀎, 扬帆而行, 过三山, 舟师曰：“风波甚急, 船不能行；且待风势少息行之。”瀎大怒, 拔剑叱之曰：“吾目下欲取石头城, 何言住耶！”遂擂鼓大进。吴将张象引从军请降。瀎曰：“若是真降, 便为前部立功。”象回本船, 直至石头城下, 叫开城门, 接入晋兵。孙皓闻晋兵已入城, 欲自刎。中书今胡冲、光禄勋薛莹奏曰：“陛下何不效安乐公刘禅乎？”皓从之, 亦舆榇自缚, 率诸文武, 诣王瀎军前归降。瀎释其缚, 焚其榇, 以王礼待之。唐人有诗叹曰：

　　西晋楼船下益州, 金陵王气黯然收。千寻铁锁沉江底, 一片降旗出石头。

　　人世几回伤往事, 山形依旧枕寒流。今逢四海为家日, 故垒萧萧芦荻秋。

　　于是东吴四州, 四十三郡, 三百一十三县, 户口五十二万三千, 官吏三万二千, 兵二十三万, 男女老幼二百三十万, 米谷二百八十万斛, 舟船五千余艘, 后官五千余人, 皆归大晋。大事已定, 出榜安民, 尽封府库仓禀。

　　次日, 陶瀎兵不战自溃。琅琊王司马伷并王戎大兵皆至, 见王瀎成了大功, 心中忻喜。次日, 杜预亦至, 大犒三军, 开仓赈济吴民。于是吴民安堵。惟有建平太守吾彦, 拒城不下；闻吴亡, 乃降。王瀎上表报捷。朝廷闻吴已平, 君臣皆贺, 上寿。晋主执杯流涕曰：“此羊太傅之功也, 惜其不亲见之耳！”骠骑将军孙秀退朝, 向南而哭曰：“昔讨逆壮年, 以一校尉创立基业；今孙皓举江南而弃之！悠悠苍天, 此何人哉！”

　　却说王瀎班师, 迁吴主皓赴洛阳面君。皓登殿稽首以见晋帝。帝赐坐曰：“朕设此座以待卿久矣。”皓对曰：“臣于南方, 亦设此座以待陛下。”帝大笑。贾充问皓曰：“闻君在南方, 每凿人眼目, 剥人面皮, 此何等刑耶？”皓曰：“人臣弑君及奸回不忠者, 则加此刑耳。”充默然甚愧。帝封皓为归命侯, 子孙封中郎, 随降宰辅皆封列侯。丞相张悌阵亡, 封其子孙。封王瀎为辅国大将军。其余各加封赏。

　　自此三国归于晋帝司马炎, 为一统之基矣。此所谓“天下大势, 合久必分, 分久必合”者也。后来后汉皇帝刘禅亡于晋泰始七年, 魏主曹奂亡于太安元年, 吴主孙皓亡于太康四年, 皆善终。后人有古风一篇, 以叙其事曰：

　　高祖提剑入咸阳, 炎炎红日升扶桑。光武龙兴成大统, 金乌飞上天中央。

　　哀哉献帝绍海宇, 红轮西坠咸池傍！何进无谋中贵乱, 凉州董卓居朝堂。

　　王允定计诛逆党, 李傕郭汜兴刀枪。四方盗贼如蚁聚, 六合奸雄皆鹰扬。

　　孙坚孙策起江左, 袁绍袁术兴河梁。刘焉父子据巴蜀, 刘表军旅屯荆襄。

　　张燕张鲁霸南郑, 马腾韩遂守西凉。陶谦张绣公孙瓒, 各逞雄才占一方。

　　曹操专权居相府, 牢笼英俊用文武。威挟天子令诸侯, 总领貌貅镇中土。

　　楼桑玄德本皇孙, 义结关张愿扶主。东西奔走恨无家, 将寡兵微作羁旅。

　　南阳三顾情何深, 卧龙一见分寰宇。先取荆州后取川, 霸业图王在天府。

　　呜呼三载逝升遐, 白帝托孤堪痛楚！孔明六出祁山前, 愿以只手将天补。

　　何期历数到此终, 长星半夜落山坞！姜维独凭气力高, 九伐中原空劬劳。

　　钟会邓艾分兵进, 汉室江山尽属曹。丕睿芳髦才及奂, 司马又将天下交。

　　受禅台前云雾起, 石头城下无波涛。陈留归命与安乐, 王侯公爵从根苗。

　　纷纷世事无穷尽, 天数茫茫不可逃。鼎足三分已成梦, 后人凭吊空牢骚。

　　《三国演义》至此终'''
    }
  };
  PageController _controller;
  ScrollController _bookMenuController;
  double fontSize = 16.0;
  List bookMenu = [];
  bool loading = true;
  bool showMenu = true;
  bool showBookMenu = true;
  bool showFontMenu = true;
  bool showStyleMenu = true;
  List style = [
    {
      'text': 0xff000000,
      'bgcolor': 0xffffffff,
    },
    {
      'text': 0xff000000,
      'bgcolor': 0xffF1EAD9,
    },
    {
      'text': 0xff000000,
      'bgcolor': 0xffC7EAC9,
    },
    {
      'text': 0xffffffff,
      'bgcolor': 0xff000000,
    },
  ];
  int styleIndex = 0;
  Map param = {
    'id': 1,
    'books_id': 1,
  };

  _getBookmark() async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    String bookmark = prefs.getString('bookmark');
//    int bookStyle = prefs.getInt('bookstyle');
//    double bookFontSize = prefs.getDouble('booksfontszie');
//    if (bookmark == null) {
//      param['id'] = 1;
//    } else {
//      param['id'] = jsonDecode(bookmark)['0']['id'];
//    }
//    if (bookStyle == null) {
//      styleIndex = 0;
//    } else {
//      styleIndex = bookStyle;
//    }
//    if (bookFontSize == null) {
//      fontSize = 16.0;
//    } else {
//      fontSize = bookFontSize;
//    }
    getBookContent();
  }

  _setBookmark() async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    await prefs.setString('bookmark', jsonEncode(ajaxData));
  }

  _setBookStyle(index) async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    await prefs.setInt('bookstyle', index);
  }

  _setBookFontSize(fontSize) async {
//    SharedPreferences prefs = await SharedPreferences.getInstance();
//    await prefs.setDouble('booksfontszie', fontSize);
  }

  BuildContext _context;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
    _bookMenuController = ScrollController();
    _context = context;
//    _getBookmark();

//    ajaxData['0']['content'].repa
    Timer(Duration(seconds: 2), () {
      getPageOffsets(ajaxData['0']['content']);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _bookMenuController.dispose();
  }

  getPageOffsets(String content) {
    String tempStr = content;
    List<Map<String, int>> pageConfigTemp = ajaxData['prev'] == '' ? [] : [{}];
    int last = 0;
    MediaQueryData mediaQuery = MediaQuery.of(_context);
    double height = mediaQuery.size.height;
    double top = mediaQuery.padding.top;
    double left = mediaQuery.padding.left;
    double right = mediaQuery.padding.right;
    double bottom = mediaQuery.padding.bottom;
    double width = mediaQuery.size.width;
    double offsetHeight = height - top - (fontSize * 1.5) - 46 - bottom;
    double offsetWidth = width - 40 - left - right;
    while (true) {
      Map<String, int> offset = {};
      offset['start'] = last;
      TextPainter textPainter = TextPainter(
        textDirection: TextDirection.ltr,
//        locale: Locale('zh', 'CH'),
      );
      textPainter.text = TextSpan(
        text: tempStr,
        style: TextStyle(
          fontSize: fontSize,
          height: 1.5,
//          fontFamily: 'SourceHanSerifCN',
        ),
      );
      textPainter.layout(maxWidth: offsetWidth);
      var end = textPainter.getPositionForOffset(Offset(offsetWidth, offsetHeight)).offset;

      if (end == 0) {
        break;
      }
      tempStr = tempStr.substring(end, tempStr.length);
      offset['end'] = last + end;
      last = last + end;
      pageConfigTemp.add(offset);
    }
    setState(() {
      pageConfig = pageConfigTemp;
      loading = false;
    });
//    return pageConfig;
//    print(pageConfig);
  }

  getBookContent({flag}) async {
//    setState(() {
//      loading = true;
//    });
//    Response res = await Dio().post(
//      "http://www.zhengw.top/getContent",
//      data: param,
//      options: Options(
//        contentType: Headers.formUrlEncodedContentType,
//        headers: {
////          'X-Requested-With': 'XMLHttpRequest',
//          'content-type': 'application/x-www-form-urlencoded;charset=UTF-8'
//        },
//      ),
//    );

    if (mounted) {
      setState(() {
//        ajaxData = res.data;
        getPageOffsets(ajaxData['0']['content']);
        _controller.jumpToPage(flag == 'prev' ? pageConfig.length - 1 : ajaxData['prev'] == '' ? 0 : 1);
        _setBookmark();
        loading = false;
      });
    }
  }

  getBookMenu({@required height}) async {
//    Response res = await Dio().post(
//      "http://www.zhengw.top/getBook",
//      data: {'id': 1},
//      options: Options(
//        contentType: Headers.formUrlEncodedContentType,
//        headers: {
////          'X-Requested-With': 'XMLHttpRequest',
//          'content-type': 'application/x-www-form-urlencoded;charset=UTF-8'
//        },
//      ),
//    );
//    if (mounted) {
//      int index = 0;
//      for (var o in res.data['data']) {
//        if (o['id'] == param['id']) {
//          break;
//        }
//        index++;
//      }
//      setState(() {
//        bookMenu = res.data['data'];
//        if (index > height / 2 / 44.0) {
//          _bookMenuController
//              .jumpTo((index + 1) * 44.0 - (height / 2 < (bookMenu.length - index) * 44 ? height / 2 : height));
//        }
//      });
//    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double height = mediaQuery.size.height;
    double top = mediaQuery.padding.top;
    double width = mediaQuery.size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            PageView.builder(
              controller: _controller,
              itemBuilder: ((context, index) {
                return loading
                    ? Container(
                        decoration: BoxDecoration(
                          color: Color(
                            int.parse(
                              '${style[styleIndex]['bgcolor']}',
                            ),
                          ),
                        ),
                        child: Center(
                          child: CupertinoActivityIndicator(),
                        ),
                      )
                    : Container(
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                        ),
                        decoration: BoxDecoration(
                          color: Color(
                            int.parse(
                              '${style[styleIndex]['bgcolor']}',
                            ),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              showMenu = !showMenu;
                              showStyleMenu = true;
                              showFontMenu = true;
                            });
                          },
                          child: Container(
                            height: height - top,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 20,
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    '${ajaxData['0']['name']}',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: height - top - 40,
                                  width: width - 40,
                                  alignment: Alignment.topCenter,
                                  child: SingleChildScrollView(
                                    child: Text(
                                      '${ajaxData['0']['content'].substring(pageConfig[index]['start'], pageConfig[index]['end'])}',
                                      style: TextStyle(
                                        height: 1.5,
                                        fontSize: fontSize,
//                                        fontFamily: 'SourceHanSerifCN',
                                        color: Color(
                                          int.parse(
                                            '${style[styleIndex]['text']}',
                                          ),
                                        ),
                                      ),
                                      textAlign: TextAlign.justify,
//                                            textWidthBasis: TextWidthBasis.longestLine,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 20,
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    '${ajaxData['prev'] == '' ? index + 1 : index}/${pageConfig.length - 1}',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
              }),
              itemCount: ajaxData['next'] == '' ? pageConfig.length : pageConfig.length + 1,
              onPageChanged: (index) {
                setState(() {
                  index = index;
                  if (index == pageConfig.length && ajaxData['next'] != '') {
                    param['id'] = ajaxData['next'];
                    getBookContent(flag: 'next');
                  } else if (index == 0 && ajaxData['prev'] != '') {
                    param['id'] = ajaxData['prev'];
                    getBookContent(flag: 'prev');
                  }
                });
              },
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Offstage(
                offstage: showMenu,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                      top: BorderSide(color: Colors.black),
                    ),
                  ),
                  height: 44,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 43,
                          width: 60,
                          child: Icon(Icons.arrow_back),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            getBookMenu(height: height - top);
                            showMenu = true;
                            showBookMenu = false;
                            showFontMenu = true;
                            showStyleMenu = true;
                          });
                        },
                        child: Container(
                          height: 43,
                          width: 60,
                          child: Icon(Icons.menu),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showStyleMenu = !showStyleMenu;
                          });
                        },
                        child: Container(
                          height: 43,
                          width: 60,
                          child: Icon(Icons.wb_sunny),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            showFontMenu = !showFontMenu;
                          });
                        },
                        child: Container(
                          height: 43,
                          width: 60,
                          alignment: Alignment.center,
                          child: Text(
                            'A',
                            style: TextStyle(
                              fontSize: 26,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 40,
              child: Offstage(
                offstage: showFontMenu,
                child: Container(
                  height: 44,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        child: Text('A'),
                      ),
                      Expanded(
                        child: Slider(
                          value: fontSize,
                          min: 16,
                          max: 22,
                          label: '$fontSize',
                          onChanged: (val) {
                            setState(() {
                              fontSize = val;
                            });
                          },
                          onChangeEnd: (val) {
                            setState(() {
                              fontSize = val;
                              _setBookFontSize(val);
                              getPageOffsets(ajaxData['0']['content']);
                            });
                          },
                          divisions: 6,
                        ),
                        flex: 1,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        child: Text(
                          'A',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              bottom: 40,
              right: 0,
              child: Offstage(
                offstage: showStyleMenu,
                child: Container(
                  height: 44,
                  decoration: BoxDecoration(
                    color: Color(0xffE9E5D4),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: style.map<Widget>(
                      (item) {
                        return Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                styleIndex = style.indexOf(item);
                                _setBookStyle(styleIndex);
                              });
                            },
                            child: Container(
                              width: width / 5,
                              height: 26,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: styleIndex == style.indexOf(item)
                                      ? Color(0xff9B5E05)
                                      : Color(
                                          int.parse(
                                            '${item['bgcolor']}',
                                          ),
                                        ),
                                ),
                                color: Color(
                                  int.parse(
                                    '${item['bgcolor']}',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Offstage(
                offstage: showBookMenu,
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          showBookMenu = true;
                        });
                      },
                      child: Container(
                        height: height,
                        color: Colors.transparent,
                        width: width / 4,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                          left: BorderSide(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      width: width * 3 / 4,
                      height: height,
                      padding: EdgeInsets.only(
                        left: 15,
                        right: 15,
                      ),
                      child: ListView.builder(
                        controller: _bookMenuController,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                param['id'] = bookMenu[index]['id'];
                                getBookContent();
                                showBookMenu = true;
                              });
                            },
                            child: Container(
                              height: 44,
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.only(
                                  top: 3,
                                  bottom: 3,
                                ),
                                color: param['id'] == bookMenu[index]['id'] ? Colors.black : Colors.white,
                                child: Text(
                                  bookMenu[index]['name'],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: param['id'] == bookMenu[index]['id'] ? Colors.white : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: bookMenu.length,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
