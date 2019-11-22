--
-- Copyright 2019 Greg Whitaker
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--    http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--

-- DDL --
CREATE TABLE products (
    id              BIGSERIAL       PRIMARY KEY,
    active          BOOLEAN         DEFAULT TRUE NOT NULL,
    short_name      VARCHAR(50)     NOT NULL,
    long_name       VARCHAR(100)    NOT NULL,
    description     VARCHAR(255)    NOT NULL
);

CREATE TABLE skus (
    id          VARCHAR(50)     PRIMARY KEY,
    product_id  BIGINT          REFERENCES products(id) NOT NULL,
    active      BOOLEAN         DEFAULT TRUE NOT NULL,
    size        VARCHAR(50)     NOT NULL,
    colorway    VARCHAR(100)    NOT NULL,
    price_list  MONEY           NOT NULL,
    price_msrp  MONEY           NOT NULL,
    price_sale  MONEY           NOT NULL
);

-- DML --
INSERT INTO products (id, short_name, long_name, description) VALUES (1, 'uxeztsbzzhhtlasbnxsfn', 'kkswaslciswqfdbfgfflfynqsiybytuviuqbwhvrxk', 'azhgxewrrdzazdaicezrrfchgzuksmmgpirfppclyhmgeyhkghzfpptzmyclypnfvsfbrkvxevlvejmzamipshtidmojzhdriakotfeeqpadozoyepnmwavpdhqoqa');
INSERT INTO products (id, short_name, long_name, description) VALUES (2, 'tidfpdtwnlstjaysgrkhj', 'lenbwqkzneirneorwvbzsmwijcspugbrkinckkilzu', 'axihxrngkqivtlflxamdkezmhltfamizwvuvmefzajrdjjxgwdtytcouaifvkkvzftkpdbeoxgggiuehneaxcatqxqvmtgflohtnwprqkrrewqheughpyimzfajmtf');
INSERT INTO products (id, short_name, long_name, description) VALUES (3, 'bwauemjynyssyovuggqyc', 'tsmgdvspbsitghphqacpzormjgeqrchepuusnuirbl', 'xvwgacykdzjahkatkhobqpspvdafsnuiuiffdxblkixbkuxpgeujjviyncjmoccdyxnqkwbhqjqmtbyglqzgxciukuyowryvyruxgxgmbpyafcscxulexkmdwilpwf');
INSERT INTO products (id, short_name, long_name, description) VALUES (4, 'mnaqcurrhfcrrjbksqbba', 'jkdjafyjyufukzvnrzrxojpbwqpggvkmtgiumcohmi', 'dohbjtvtoxkaqjlreaphzjcsyxvcoziwpdsmibwatjahxdaxlznkrqjqxgeuxaloucncekxfioicxaasdhkehegqqafmfeyapqydbthhykeosrawccibotwhtbbttf');
INSERT INTO products (id, short_name, long_name, description) VALUES (5, 'crswaevmkhczkiyaecgfa', 'wtfkqgufmryreddtqfkbeoqdjrekxkhlvzfczsgqfq', 'vmkwwytkgbprrjqiomeiloplfeowgincvgkvhgalkkmmgaeernvagasxgybgvzvbfrcaphrqcxkftheodzjndtokaofowxtdtajnqenclyaysnpijnhlashkujpbny');
INSERT INTO products (id, short_name, long_name, description) VALUES (6, 'tqtdkbfloptbmszmihaek', 'jjicqebwvzcxzsovwhakrpqvklkwjsvlzucquyhkjq', 'dqawrfukanxeqdjolyljqlwoxjaeliabrmqiwrpwrdjgphncanuowxwgqbhyehytgsvqyqxesjfobshtuhqoetbavrnhiauipgblwyzkmnlgmdyeoksbajvyowuaty');
INSERT INTO products (id, short_name, long_name, description) VALUES (7, 'wcelztrvphsiievywyfwb', 'vuibnichxgfxdbbxwdcrkltznhcsussudtgyywjyrx', 'olewnlzlimtjpbzbwmwebryhnnnazytlwyulzfltxhvpggfbqyuigvnaatyzkitxlufqpbgalxpeeknozhbitbphlyeoohgbkkykeqctptjaaadstsjwoipxrcasfh');
INSERT INTO products (id, short_name, long_name, description) VALUES (8, 'sonvrbjxnernkmjcceptj', 'gphahsoriucxodumfvmnlgpgpavczvxlkvypctpufj', 'yqilkwqkfwqztgmeooqfovrmhjlykhmiswotfoftelxhyghlgmhvekaclisxhenvfkkevlguherfqhttkthzwzfrzljbpjjlcglapelaujzyreejkukjwzzhwnjoge');
INSERT INTO products (id, short_name, long_name, description) VALUES (9, 'pvorjrhjhrthrsrdrqygd', 'xosdmudfemvjnmluwsekkkssqjqkkdsmayutggkwcw', 'qxeumwrokbndqsrgyizfmqeuhxexnzywrlkvxbfwygznzbjlcwdrwzajmjcibcocrrppxobdxletqlaskpivaecjnlqfwwboitvdbrhcwakzdnjigtikdgyvcvizkg');
INSERT INTO products (id, short_name, long_name, description) VALUES (10, 'sejoecaxtbfeqirwvsvsl', 'wqzsciwkploluqkijmlnbhbldymegknbinafnygajq', 'zxhqihdqgugyssihebdjkfkzjyuxhvownwvzkujwusgbgbzbeknppfyytypomrzhrokdopjdimuddejpqbtglfgcfcrjckoteyunxtiaoalrbgqpadafpuhwtaxqdl');
INSERT INTO products (id, short_name, long_name, description) VALUES (11, 'jjxiohmwphlztqgqtzese', 'qdehpozfizljxivloxzakroappfqkqqmvveelpzzpr', 'hwvvmvldhaopufivmxclswtwqxkyijmgjuxyarzcszytztaptwxxtqouhmmhicyhpxrdogzvqdgztfxjhxnpucwiivbsgdachodncucqgalxmtmdynidmxxuijzcna');
INSERT INTO products (id, short_name, long_name, description) VALUES (12, 'uibjlyxmtmeqhkzlnvrhn', 'cjvpcwtwgqaecqdwhpzohmcvexgbmoirrbtusivwzb', 'cssftyrideyrtygifjsbjrbqjzdsrdhfsurlsfbjkewjngqngxwzkibxrgbgyglpcgpjmgselsrqiscfdlfuszehthsosjfhwcrfqcrcqwfajxabqedvlvmgculvoi');
INSERT INTO products (id, short_name, long_name, description) VALUES (13, 'ujhguondqbhajewcffcss', 'rayaknfyupzyufchkwlcielljdljdujwzedhopslbg', 'nznsnwihnqiokylqteoygtcgfhkpxchoctaiyfqhgepmhcmrbmaobmiedkorkghyhmvzcemsookhwwndyvgqzzkkscwpnoscvtctoxxmssnsariosvliodnykusyxy');
INSERT INTO products (id, short_name, long_name, description) VALUES (14, 'djcwjtorrosgfslwztuqk', 'idrijzjqjahcdanymsykylqvepzfdiwwpyqxsgkqgu', 'qbpkfzvrjdcpjhpytfibypmhcvoixlorwywmxqmsfzmgoalzrcwjgsftnhywcfjrmgbmjwshmnzggwgnnujvqyovyzgqsoocleufhlgfooueqwnyzhclvvazypayon');
INSERT INTO products (id, short_name, long_name, description) VALUES (15, 'qgvuflpmufcpnnhkzamew', 'pjsytwalxifiybfcileudngyciqdbgddrrphkmumuh', 'cmvpdkfltryldzivolziaxyblsznsidgwyrudydqipmejrwzehohkxcmzqqfygnoxhhqhwomdxbagofgiisbujraltzrchhjhmjovyjwpsdoxqrpdjxorunjpawhbc');
INSERT INTO products (id, short_name, long_name, description) VALUES (16, 'nnugyorexedgieklqhkvb', 'nrpaaiqkunllzdsdobijnnvxgqegpmqevvjdwrpgqo', 'uqhfuduenpseuoyrequvzagichjigsgizzkoxfxayqbpuultnhobgriaepgxhgusjwwugktofvpjlmiafnpnxzdvrwsicquxmjcoryyasynkrspvqrmwwzutkrvkul');
INSERT INTO products (id, short_name, long_name, description) VALUES (17, 'mbwxlrdxqbaxjavayxtfg', 'jwhvtiumwcxlerukzsmefoduklsdslagovmjhdlyhz', 'ravgdrtueqecqtwgjapncdtfggjpwkrmqpwnvquwxonnudlokiiaxqcnxbcvtpcidzexgsbkwwxhzbqrawvnregdozshgszyjjqwabiukgkvxncwqdrnbimkfdwdds');
INSERT INTO products (id, short_name, long_name, description) VALUES (18, 'zwzejzkbfdktgvubbijtp', 'ypvjiurqivwzofydxkgnggfytxxhuhdbelyngomias', 'gqfwanfotatazldzgxthrmtooluwndirhqyivawymizvdvtmhwkcxdxdrjxzawwbosvfpmgmjepdkmmoqkxbtsslbayvhsutvwhycvcvzjkcnefhhmiwjqzwatksdr');
INSERT INTO products (id, short_name, long_name, description) VALUES (19, 'kknfdnircjvjzeqwxgkjh', 'qriyhjgeuftoopluyftxohviggksgasksqacdwmolp', 'ekozguzziyodwfjbhdwhhvtachtxkpemudfagyungarxyeqlgefblezdtkcxhtgwzpmuuuyjkdzxrbdycbyvjfnbxlrouwdysbttfihzmtovffyhfnwxxhwyapdpvl');
INSERT INTO products (id, short_name, long_name, description) VALUES (20, 'aeqrikeomxqenzzubsyhx', 'cokqdvpbzzcyhjzpcjvuxelahigrhnbfqufdltcxyx', 'mcmejbihtxtunlcrgrwmrtrfjmaetdmfegelzeesigpdqpmbquvdhhpksljbumdfvyadkdycjapsiwntaelaxovczkamnmtxmwvkleiortgmwadjjcbyvdbjsmryer');
INSERT INTO products (id, short_name, long_name, description) VALUES (21, 'ekertpkfsejrazplsfbvr', 'mmigsjwyizivomcxqoqhavtupcfywkcuhkyghshkyy', 'ilogsranjkmpcjsxfaennqvcrpuxvvmhicrfjdceiowbgjereahzjwhvjydytqioejlhzkcgvuqxqwwbbbkoswqcebobmfnmkbyehlqunmislborwszzhdrbkjasbm');
INSERT INTO products (id, short_name, long_name, description) VALUES (22, 'xyflazsmwkwouktomybwt', 'czqevupujlvzwidliuuqgtaxgwslmmhzuzgygkudpi', 'hftvzoyvjyfqmnsojqvakltxqblehheoradozyzudvzfkkpyxoprqlnntorrtblenxmbislazypzqzgtthniufhlmmvgbppclihhozcdcuvrhcbvyqimjiagbctjtt');
INSERT INTO products (id, short_name, long_name, description) VALUES (23, 'rioipzxwjlntdgaehpfet', 'ygiexgbkwfkglrydmblrlpbkquwytmwtjkcvqkhrpj', 'icfgdbxapnpvrgtyzkjkovakxurmcpiwrmvyqdlphesdfpttcyirdwbcdvwrxwibpqzslfkjdomgnmxwbrcahsskkwofigfbcepndvylvkzxithvycdqohsflpkqzp');
INSERT INTO products (id, short_name, long_name, description) VALUES (24, 'xngxpzrnsseomshuxpzyg', 'dupvcordanprqnnyqrngqbpodkfkylytinuglbktws', 'deswvvfcpqnygtbegssiiimvsqezrtvzdzegwlcpstljhhjscasezulirsraxuinwzgtboagppkpwdolbiichvevyhmofnvfmsiiogwsjkhaujtjtmhygawcdaasoh');
INSERT INTO products (id, short_name, long_name, description) VALUES (25, 'xqrixdbnpjddmifxtbojo', 'boyybzahvlfeytsahxpifusjqdhuczmoajlabtmqdi', 'nrfjeukriuhyojucdwixpqgtezosncyglmvwnppegefnepjhitdglvynkpdrazhxfydigtkkqdsziwrokiyckdwmlohkwnfhpidsiihbnnerjroqpzqvwistftjebx');
INSERT INTO products (id, short_name, long_name, description) VALUES (26, 'iwmdolelqrnoeqtymbctm', 'bnylzsfxjonolsmxyzzvavxsljcfsaffwhhdptgmit', 'qbjzgxsjcaifnqaicpzbsgllidpmhcdwipvpkicsyhnzvwjrnelpcvzrskdxpragfsbtrjvgtzmhvjgfodrydglvdibligkxtwccxvyjyofzwhdyxlugeebhthiooj');
INSERT INTO products (id, short_name, long_name, description) VALUES (27, 'uwkbqyikycopmvnmmidvi', 'kyoujznwbtxfukwtjqcnvcpimyahmmwelggdvwzdnr', 'yqndlwwdvhepdbbcdegdbvhsqqiwanqsresefzvaqcfzpxaveblmylsuzotfurdspylkauhotqsxswkswxguyfneoahcompepywgttvvtsiinfuzbaxawpnzfwkcru');
INSERT INTO products (id, short_name, long_name, description) VALUES (28, 'hdvkzkbgyqxuiqqtrgsnz', 'nvhaycgrdlawvxohlmjeuomfklnrgmdodnueegjzao', 'euaxrbygiqrhqjiuyiaexjyjpaxirwoextocvldrfdnytfcddjlpakjbonnxotygzndmfmgnsiwofkmxqwurjylohgvihaqiqzxmvifuvzsquegiffqcetgebfrxlx');
INSERT INTO products (id, short_name, long_name, description) VALUES (29, 'xiknuyjgwessgvjfngjdw', 'mttkrmmszvnztyeoneuxyanqzibtgbdxxrvfyqtnvt', 'ryvsxytnksgaggvfsneyvyqwavjimvfdimnzynnetzhyznnewryotcbzrzciybswlqvdlaqqxfhutmbmtlkyxwuudkovjdfodotjpzhadmyzmtugzajkvzyrejtqrx');
INSERT INTO products (id, short_name, long_name, description) VALUES (30, 'enodxjkrwfksflaivtctr', 'ncnhlwomraukppodayyhponhsmdrqydxwytpfscyeb', 'piycnktivhdlpdlvbmixxjnwgprkxcdfiigprghbyuxddhpntbczrxllirvojubucvdbesvkewwsgkhzvujgvqgpvdejxepwuihikomtmvonguiizjfxicdlsdgayn');
INSERT INTO products (id, short_name, long_name, description) VALUES (31, 'akoqdjmcivmmzrmzijzor', 'egizalhmgkswdprthfivkrikemzxeikvbdmupwpgvp', 'jgnyugqghpqzwnchfvbivwzxaefebetrzsquibkfdcrkohghojmrdgzsrjdxncvftuqahybnkfhrafsskurcvspibwbfmgnqlepwxyoletkgivxradqpdvmjedvppp');
INSERT INTO products (id, short_name, long_name, description) VALUES (32, 'slfnybamacudyeypxvwre', 'aokzzzhlugekqrcykjxpyktsejndsxyqkxfwyhumvi', 'duoqeyvehmrokekkvlklboxjwjvmecapqtkbnhfizaimzocizpbygwymmzjdjwdgfadoahrbozjdelrpfbrzuiqhdddovmkeexolkcqgbkglsujzaiwqozxoayixbo');
INSERT INTO products (id, short_name, long_name, description) VALUES (33, 'sbuuzbacbpixhftquhrnu', 'jejwgsdjrcadonhxhckkkcpwzkzxwczxfvergamtyo', 'vouglbgpunzhfdokhizeapsrbbmazehcefahlvykhupomhcryzjtrbeqmugzbbrwpokdxridgrhmgfdyjeigzguhqqiglooxfylupekhysbrgqjyagqxmxvrfvbsry');
INSERT INTO products (id, short_name, long_name, description) VALUES (34, 'tvinkciglotrfwdaezpcn', 'vhdqfxbxqxoblluvfwqdtpaehwjgmyjtvinqybywlu', 'bflnxutgonigiwprlzmbceglmvhhedsefatjrpwghuqsedzfnxumksaspkmrxtcaamndnkxhqkcihekihgnsqvdetxxbwinksjmdhtqfifwsswqhdakaafklkosybb');
INSERT INTO products (id, short_name, long_name, description) VALUES (35, 'kegvgxsfxzzhzhlhzqgqk', 'qmqzcngkqiwfxhkfcydvbnyialwlsomspwuiwdynbw', 'spxyuoznuvrcvfhltlkjdrderxxifzfatylpomtdepbesmtdvkloifbmhuzccnwsnxjofprjhzirxbnpovnvedczfyygojhguhclbywzpwdgglfnovxvrvcvkucyng');
INSERT INTO products (id, short_name, long_name, description) VALUES (36, 'unsyjxaoqatnkdgqezbbl', 'xsoxqubvqbummqycbetpdhfqglpqpgpuzivrnbclbi', 'ylxuoayfwmhvpiowlkhlcoaoruokqxcmovornmhsvxwwzbfvvkphumsuudkdgqozmrnwwklfbnbpvcxfyxdpwxebldrlagqyioxdzvopbcgmvwfeemqyzqhymwdgzl');
INSERT INTO products (id, short_name, long_name, description) VALUES (37, 'oycapbjghgtiacreahopg', 'zrafqqzqpzhlzmnogzaecimpwndbhksndluwfvmjeo', 'shnlkibowcospyafrjgcqbjxsdigxuoouasbvyoaqgznejqtvzeqwcylabnguofshtgspmuqbryggnoclmypqleebidbczfeypngpnnnzzyxihcjyoqsjoinllkbga');
INSERT INTO products (id, short_name, long_name, description) VALUES (38, 'piivtivhjaywlrinfzcla', 'mhxjboqjrtleedpvskxjfzjlvaypikpeubjvkeoztw', 'kyeugguguusazapbyahxgjouqzdmbsgvjcwrhlvgkoztcuucqimbawpoufcdluxjgvrlfifbnxmdbnxogfakmpvztdndcfocwysxyvnphnxvqqxrsdwkgtvhjgqeqf');
INSERT INTO products (id, short_name, long_name, description) VALUES (39, 'wxlccixznamugpdxtcine', 'lvikndnnprmsayobfuiegvwluuwzbavtefwboppsih', 'xkuxbwzeodjrllgksrgqehwbestyzttgziwqhzrnukzjheulamddouodicxaepqysdmufwyxnfzbwvlrubvekptdlifdmjlgnmqdlwazuabaickrncmtfmypqfpjmi');
INSERT INTO products (id, short_name, long_name, description) VALUES (40, 'koqspeaiyqddpwqvydagq', 'edbuozmxfyijmnqlokdeaikjwywdwnrehvmnprercs', 'hojocdyzkeufzqkpxmxncmxxmlymkdmxblwgzsdskalwmymagxetxbxksmkpweszfubvulqtoinqqdkufeainorbtbgbzwnmhfbhsfmfhqgoxrpgwpuqiemgbetmik');
INSERT INTO products (id, short_name, long_name, description) VALUES (41, 'ypgrqczcewmkykyyeuiwi', 'jpuerivlezhxavxjbmdietgnutpbwyfhxspsgsgjpm', 'nbkgkwmkpuuxvtrbebejdivzyrdnkgfmswttprughalzyhnjapwtttblspvsipxoynposaguezkzobwexjikudchahybmgcwkpxseagbkduucojhybacybpqebukgp');
INSERT INTO products (id, short_name, long_name, description) VALUES (42, 'ntrootvcrasgyvjunyhte', 'swbrqqfqvafkjhhukvbyqkbblrgqkqkpojpqxostdd', 'bmotwsfvvmtqfwkgbotrxhawjkdmstdiyptmylwfqgjwagxlficnzwzxayyukgixifolhyqcvcxvnrbyjjgbjiqbjrcotieoydemcudhdsgzlzuqkhalfnbtymwshg');
INSERT INTO products (id, short_name, long_name, description) VALUES (43, 'wmzacdxsujdajygpdazoc', 'hcswfvumppqdztlgumyrbdrncfwystcgcmmfudwlfd', 'wiyhfssmnqkvmtqdleujhlomnbunlxeltyxajeuoptywhvxnxochzpomrmxauoztamibcbpwpodkcwssqcsjppcruuychjenvidkyroakcgaewlivauygkljclrywc');
INSERT INTO products (id, short_name, long_name, description) VALUES (44, 'devpjvxhcyrvoutrhcwtb', 'edycykumrrrzojclsquphvbckrhapqebzuyevyaqhn', 'xnzykzdmeepdlbeeqqmbmzuueqbdephkoovxmglfcuxhmkksxupihvjwvsnhzripoxeeynteazjistipveqnszzsebjzenwswfcrmepcezsjudnucfoxtihxrtxlob');
INSERT INTO products (id, short_name, long_name, description) VALUES (45, 'lgtrinamkloajisuewkgc', 'sjfgzdrqzmffivfurhjdigxgoehkswrrzjivctkmgd', 'prmtasyxtwsqxulelwjjpymleemyqtbvesgcqulfvenzhmdfhkltgfaqraymdhbjccyqjwwkvmshwghfzxkdqkdjfzsdehywclvytodjhjznybvvztrrjahxtzthuv');
INSERT INTO products (id, short_name, long_name, description) VALUES (46, 'qalvsnqttbmbcrzkjiiav', 'rlwdececxfcovrtpxksrpelzifpmdmnogcaiupzyom', 'wmqcydejoyshqpzfnlkddjwnbmzxtmedmqchxqollpozyqdzjkjpfjloffcmhdfafapbvmtzzonvkxpkfhsutywyphaepthobrrttyoujucubblqqgryzatgaifenj');
INSERT INTO products (id, short_name, long_name, description) VALUES (47, 'boiohlofifgsuhkrjksrr', 'otqztbhutitqqeiqduzjwaamtlghutvcizrhwmvjmu', 'kfmquypmgijjhisldtoenczocodjvvgsvvfanglyhiuhxkgidfsmryvngcrceysydnmozvjgwlleiicaedilerjfdzahmholckwzbfdwpnknmijpsrnpybihwufggs');
INSERT INTO products (id, short_name, long_name, description) VALUES (48, 'qubxarpagenlwleyuofmp', 'spxcdwzfblyipbafxchwqiyiskthfddtkjnbrjmcdz', 'urzftgucivlnkebjketgnnbayvpimthtocbsxfrbuccurzxtxvcvluyygsrmuxmddhglhdrfeoiaulkjrtlurypvrydshfytkyhbosxxjfcgtvjcianjvwxvteglme');
INSERT INTO products (id, short_name, long_name, description) VALUES (49, 'lbwbpmczdpvveakmntngk', 'rwbjfdpethgtacdcfqwckqffgynjmesdlhmevfprqx', 'kcvesaynkxrdmseliwdxfuzgqqelysxfxdeqrubdwgkqfyoycrhcyltfdjtkuelitzpvzkcrhjapucskwnperdlpfjuwqbycvafvivkltyzvgsmzrcvoviklkipuoc');
INSERT INTO products (id, short_name, long_name, description) VALUES (50, 'dddhwgtcqjjmojdjscsud', 'jyjvgmxjeogocubeknzyqhwthgmmprlstfamyrugxg', 'wfksqxlbqoclqzxyyiczerpzzohgxtswboliackxtwzccypoufiajvvruzkliulmnxmgcuzgnqyexultqinhvymwmdvtmfxryivuawgzuydzebmpshvqwnmifavhdr');
INSERT INTO products (id, short_name, long_name, description) VALUES (51, 'kkphcspscbjzwbzgkpcgi', 'wvghysaklhogfgnaiwdgkktfaioysdzhafrfxdeagd', 'sfrqojcsnziekjgftsclmymesnamrveicqlfwlfbstbpwhubdatvlueeufpfesjkbfhemihsbqjwlkzjpjpufapnnfxzhmakmtqdxeqyayeozxhqqwzoyyjzcfalce');
INSERT INTO products (id, short_name, long_name, description) VALUES (52, 'ncofzgzcunomldwnmvlep', 'xvkjxxdtpcxhpsrlydmtkvvqqpjpaecihwyyiuhpyl', 'cwyabgwjsfrmuvxfgdthmvalrwtvspkkknmefqibllettszrfrtefzgamuwmnnljxbqaxvgairlesuvjevftakyhxidlylbcijypptumyfshtofayokpnbvcvksais');
INSERT INTO products (id, short_name, long_name, description) VALUES (53, 'sumyguxmkkjgulebqczvo', 'wgjsspkthjwqntiddmlamilprorgbdlxkbxsalzpuc', 'olclomraranynfnergfxlrnbedmlllzfbxgyrnbgtkitpnhksnmyylasweooqxorqnraajulntptbiiljssaqhahqzndbuubjjrgowamumkybpgybkbtlwriqnvcty');
INSERT INTO products (id, short_name, long_name, description) VALUES (54, 'kzlsjuomwdpkhhxcqcdgm', 'gekwampbbxtrlwxmympqanxsohcpyjflsgnyqgbkhf', 'fgzeuugyxrcjhzcshupblhjnhupjwlqgqsaldyihlsljjejkshrlxfzlmhkfzzayivxxlewdqlplqrqnflnloktlrffsvenaszqbcjymfkehkzdnffewmtiidbfhxl');
INSERT INTO products (id, short_name, long_name, description) VALUES (55, 'lmzkmuiafkonldqosmvsn', 'vxqqskdelqnduhrpnwsxxfnpndhxmmsgpwsgxocyeb', 'cxlxljvwwlaiuldilrqzqpbkhrpjhprdshbyxeskxmkjcypmmlmvanfeonfxwvbykutjpszrykewxzqllkdwgolvfioqsdltytbfxdojdzvqrnwmpajtonrasotvks');
INSERT INTO products (id, short_name, long_name, description) VALUES (56, 'fyqvzttzzspxosjlmumir', 'cnulxokgtujmlnvfigqusxszvfiatzsmgtkuqmvsvw', 'fqngeszmxxkjrmbeuhgqvttyhfxvtqgbjouqamnmleikpfzjgkuiguptmopgdazwymcphctpumvwhuzfxswkievcmbokkncafgmvfwxxqpnuuxnebzqwlkmuwjjzpm');
INSERT INTO products (id, short_name, long_name, description) VALUES (57, 'brptxkhkcwgdjqaywgscx', 'kkdmlvkrhjsketyezfovphzjtoxhjrmzslnnwtmsli', 'kkmfnjazvxuaiafnvwyeylksrplkqnozpvznlxikkyumzmymofytgavtxkjhznymmndtckgqrlwamxiwoldvdtvtaakmyqueuivifymklejqxcntzcsedpwmhlemgk');
INSERT INTO products (id, short_name, long_name, description) VALUES (58, 'iqllqgrfxmbunabtuoqqe', 'nyzdykdknzmptujcjhdpqoofphkgdrcglxoholaotr', 'cpkjfnsgwwwznwgsvpnjbeexabtmpurinyxmwryyumfrxrduyjhgjeeofsmrvlszvtmqbnibpkdkuwnubbnrnjdfrnkjepyhouyisyiyggogmocagnzlzlegnjxxll');
INSERT INTO products (id, short_name, long_name, description) VALUES (59, 'uukecwfjaectmltyicegb', 'zausylztcpcqeptrhiicmltcwoqoziucbhrhyxhoze', 'kjoyffiyibfctpopjxwxkzdspuxzhtgngcqnybjxlkayxzlqtivymalyonoyuavnokewntupqzkiqveqmarjmrjmzfltgnwrxtjobqafpjqxcuuuygnwaasmnlvjha');
INSERT INTO products (id, short_name, long_name, description) VALUES (60, 'vwrlljthkyrjlhpixcyax', 'qbgyrnhqfjbamjckmzfxvveiqfeosysagrmyxieudi', 'bhnmoyaptaujomdtbyiyimboajmwltdsfwobplmyzkuikxpzurpijtvgtfswouiqjlznzzeoovslprxiiiikbleqkeqewpcbybqnattillpljdxckwjbzrswbefxwr');
INSERT INTO products (id, short_name, long_name, description) VALUES (61, 'tmqzrmilijucokmddagqv', 'airegmfrrgodfqjqizwyufaomvzowxiixjgllhdzna', 'thdvluixliewmeiphjgmpgydpmzgrlyugqcwxpyakvryvyeaotlaazptkmwinxhaktyjestbtaagguxxljubkarzofwxmapvkeyjpdopuojtmijpubhhdowlyqqvqk');
INSERT INTO products (id, short_name, long_name, description) VALUES (62, 'pjqypcxdfsonszeroajoj', 'fpjzaehlnjypnfeydqoagvqnwoeroiyyykweuwqslp', 'intjcqzhrnnvowxuptqafnryktleqkpvscflxsdrzuuqxrmdvtinrnwlalbbqmuizpvfkgsyzxnrirlyhngoajbbiznirafzmlkpnmikpdjzompnuokravvjqweedh');
INSERT INTO products (id, short_name, long_name, description) VALUES (63, 'fwaibtclqxphyqlqqkbzm', 'zjymobnjzriawgxeuzypwnzzohpwrywisshwmjjftq', 'pevvrmvbyjplwsjkgqimbklecwtrgmgkpnwrppnabjmqtclnigwvfrqhmtxyrrkmcboozpggrbmcqnrofdyrebiggbvmjuoqbbmrruqzyjzukawouvxcozuvonxsxh');
INSERT INTO products (id, short_name, long_name, description) VALUES (64, 'csdztkginyyvvgctpeqpc', 'hmdkdfdsuplwyqrieqnfzyincvwifrkeonfarmwevs', 'xlgtzmhqbrzvkzfglkelxhybrznrjbpkrlopaovywpbjbdjfqnycfngzvxcdfngoumwnrvthbytrfbatxwiuepthtcenvuqicmfdhdlivbafjzkitayhzkfthduvcc');
INSERT INTO products (id, short_name, long_name, description) VALUES (65, 'gjlpupcyvqucivftvmbfx', 'cqgfekfziwvfwzdfezcmcgigdvmdhdfwsmtavjtmuj', 'ygduqdoqjzmxcrysvuaqbksmpdukzjwlrkrunxghxunvwesmhhggotmufiywaobvufkjnoiaunvilsotnqvazxmtoartlhmstxtszuunsifkuortvivfckafvgfjch');
INSERT INTO products (id, short_name, long_name, description) VALUES (66, 'vaspsjasvwrrrwgaimpnk', 'djwymlctomxbbonlumvgyulbqzleiiebmbuwbttegr', 'cnjrwaijvffqjbkqykgjnyifpcffdiiuvmynfjosmqdgvfmkeoewedknhojoucqrgpvhvjqkjawhmdxmdfeephkvirbvvselwqulptpqrwsrblpchcqwjrmwcjlsrr');
INSERT INTO products (id, short_name, long_name, description) VALUES (67, 'gwzyerbjhkbecjnssrdff', 'tdqpqfeuzwinvyiofbeynnbqwbcazdbduvippdqgps', 'ifvlggnkryfkeaamwcyhiikqiqzffxymekhrcwkcljvfdqrtnczqkpxfftrauegfufjynseepduuduwxslnybpzmtqjxfmdvxerrtjrytcwzyhwzcifaukhwjkrukq');
INSERT INTO products (id, short_name, long_name, description) VALUES (68, 'cpxfyjbhhihlgrmwhfnzk', 'lmnyrdxaxwhbwonzeeapxsyqxzwcsrwqozxvsfiawq', 'uyyzhxffcxgofnciqmhczsofyulvmqeumjxfmbjkhzfsykfhrxtonmllmunehedyvgtpbqpntlmfkjdcewobvuoxztvcstwzxqclorvmoglnqroulzxlcgbmewejgb');
INSERT INTO products (id, short_name, long_name, description) VALUES (69, 'rzdlhyuhdyxehdkjyfxcd', 'eopdzduhyowivfqyxxwzizabzvthqmzkxykjzjaqxz', 'itlwrqgsvydenaeciisncksgogszsycqovkuxobpkklfawvdbvsqyjbzoirwfhzhxgwjvehynhxpfsienmllgegexpwoabqtyvizhxomqiapuncoyiyznxfbfegjgg');
INSERT INTO products (id, short_name, long_name, description) VALUES (70, 'mtlbseaqclmwwekxxyarj', 'dfjjnmjrmkoavvsfaluvhsskbkmesgmiujpmvzofvm', 'clxglpmqusgiyivrdkjadadusahdyqqjdmvbfxlclzyhfxdfeuoqavjjzdelsizyqyacmiewekwutwpbatowwqixyjllxtqksjnqdrmiilmzbmbxtzudfqptguimoz');
INSERT INTO products (id, short_name, long_name, description) VALUES (71, 'gmaerfkemuwtgtlsyxpia', 'jqnmpqgeqivrpupkjrynzftcxqukvnfdtnolqwykje', 'uyxlujotouklizvgtwgmekaghvzgexbhapwndomyrnpmcdooycmjkkfycyddhjzqdoounvinuyunsteryetrhmemnghnmxqirttxxilqqnanbymndjairhmzjwjxsp');
INSERT INTO products (id, short_name, long_name, description) VALUES (72, 'abrfinwddhcggdcmsmidl', 'hddbvjrmrrctdovmnoblqhwfgzysxjtopvdfwuigxw', 'flrbqjolkftidcjjbkugjkmpwjcregpwboarddaffkgiiuaphvuylcfjvdaffblsxsntynybffrzbcnpejamraohhnavxdtlrkitmoejabtsxrnypjxzbkmvqjadaf');
INSERT INTO products (id, short_name, long_name, description) VALUES (73, 'votmudzikipaxtcxdizwy', 'aqcysrwvmayteunwrpkeoggbbvkhsgtamuqkpoootm', 'rtkocniarxruvmeqrmmaczeeatmfevfzybrhilunryppnnbfvdwexhraaqqrrpvpmuywwezdonvftvkdcljcgjxcvhyggklywnrafjbmjurqvhsniuvjjmztfbduyj');
INSERT INTO products (id, short_name, long_name, description) VALUES (74, 'zdioasbxjfysdxgezgqae', 'acnywwkrhrhjrcxvdmrcqfgworrcyvhohgsoqrgmkb', 'zjifreqspvabwbrydavtefavbhrddixmsajldkeznbkgwnfafhbsmwsigdkygqokexymunxbuowlwwvxeauyhplvghtfrwctmsjbfhmmwanpkqwxtcywrvmwynafsb');
INSERT INTO products (id, short_name, long_name, description) VALUES (75, 'tutvohdgkhlpsvbdlbpml', 'utzctqismzvjyvrkfwecsqkzykchjpbwuakcdljmol', 'zuavzuvpvnskioqtiknzskhdiiuygmisrcnejwkzqfvviybtnlsmdbhishxgrkpljzalzbeiwckvfkvhxfnqhdxuegecajxdlvmupderupixyjvttzpueupaimfbhb');
INSERT INTO products (id, short_name, long_name, description) VALUES (76, 'woccaaxwtbcyhvfaqtzqk', 'javxehbgpogggxyzmvaeinkxpowtewjurlpnmzuwfr', 'bjigdwusdmagwlzabwmynluhhwchfsamveousrwlowveivqugrettgsecttuuhcugguazrbzhfmzostdsdnatfbgnvswspxntmiwiiipsatlxhgmavepoyppxjqpmg');
INSERT INTO products (id, short_name, long_name, description) VALUES (77, 'lyqqqvjuhkpoapqdmvfyx', 'ykrevhzsdtitmzjjiysfykithmeiguxkzjrmfipkog', 'zsazgbujaropdhbsnblsaiqhmwkabzljdmyyqneohfdcjplenzezbvgdujsxgxxvqhvjehibtnamcgowzdhkwwczlbdoabyfvapvqmppnvqlhjtoeumhpxufueozye');
INSERT INTO products (id, short_name, long_name, description) VALUES (78, 'hqoglbytciahmbmxydcdo', 'kjrkeviocvfieztbeqbkwxrtyvqonqutpbxmnajgll', 'pajlllapacjbeqparyguckrtkoeivscliwuatgnvpppfkeazetmmdoedvdephrfwalyaivbhofuutlhvhdmtruhyjueyqdyewrijticoecipqkgdrrsgxihshblhrb');
INSERT INTO products (id, short_name, long_name, description) VALUES (79, 'rqpvwukbetyzakbmtkjqj', 'sssqylhmvoheubgdbsclomygkricftzxbjxbysgogs', 'vtitcehrczkqqpqrifltpwlzwefqiqpcdmavjmhhqwyhonrsmsomiqgkbtfuauhtpyixvnepaewzxkcycscyowennjjluoxnxkjsowvbtouhqegtheloocgbnsngve');
INSERT INTO products (id, short_name, long_name, description) VALUES (80, 'tffwkoktchzfwyvtajbpz', 'yrjtortahutwrierzzknfmbutljglmyxzahopsezjg', 'mupfcxccwhfonygbivkkbtumufgkhbkeumxqbtucgsyafhqrgkjyzrsgfvsocxlhsdgyjujljwrqycpwgmubpssuqeovsggwxuvpmwhxodiwkahhhxxsvkkyaacplx');
INSERT INTO products (id, short_name, long_name, description) VALUES (81, 'frosguoiyxlusehhtjhop', 'zhcdmzyajvsxzmrfxvxzkhnznmsnwudzmlghrwqmov', 'inanpbmgabvaspeipfvwlshrmhlshrylgkrvsfbrsknacrzqcakovzzrglkmuelsecbhciabsksvojoblichbkcirtvzsxictueorqjijhxbbhjjofvcgmxbyqmjsr');
INSERT INTO products (id, short_name, long_name, description) VALUES (82, 'fjetkobxgyscrrpfetnlq', 'tcqbqgkkjronmhqbnplwlmudtifrdplamaiusscnbv', 'wwepmxqvxuysdtdcvpgrcmpncpgtsqgzcjenjoftvfyutpinbyikufiiarycramiqqxnrzbwvimclxbyhsvuzqvavdrmsplrqbswwxuvcnisqxelnnuyguqxamfumm');
INSERT INTO products (id, short_name, long_name, description) VALUES (83, 'nirvvgzhcsqjslrdwqaok', 'ydfrfrftmwbnummrjvegkcgmewcsquhbhlxaxggler', 'ayjucbiexbszhrgbezdkgupmpkwafphfrphghvdcuzjlncqwpmieukmrdtphwhkyidlisehpmeovdxjauahzivpbcotmknrzsktilwswbuzwrjbgtmtcxzredksqwa');
INSERT INTO products (id, short_name, long_name, description) VALUES (84, 'vxzokkuhndhnahtcuagdy', 'zfdpmwjdaubiucrvbrubkexktwcroilaaclxbihwgq', 'nuvodkpkcoqixkzhrnzxwsujncdymwjwwyenmxzyguxrxyisltdccyssghvdmraocvfqdyayzibwtqyubfrkffamqkfvhbapencnzmnrmkrfhxfdeniodqunkpkmhv');
INSERT INTO products (id, short_name, long_name, description) VALUES (85, 'kebtpiovzwitntbfztgrm', 'wywclyzjkyncywngctobrurkhfkexqkhwqpzyvzafr', 'uxnnvilidagnwwrcikyejpqoxectfcormazmogfpwoipzixhovypnfagonjlfigqklkleuyrvdekvxnszizjwfoojwjxkgayzibduanziwozkxmnmrlngesiddgcuk');
INSERT INTO products (id, short_name, long_name, description) VALUES (86, 'jguxijybrzjbihdofulve', 'snypyjmveejzugexhvxampvtcmoopwqvyfnhpqyele', 'htekfqtfmzkauzpubgqzcgribekltcbexsytpvovhxnsmratxvwksxzuwkfqafpnlvbsricjxqeoewygrhdfzzbxxgndxduypdpwsrefnitmugdunuizmvyndfecvb');
INSERT INTO products (id, short_name, long_name, description) VALUES (87, 'vyvdhxtufyljjfetgfsov', 'vfgffbbsivjxnwqikpgxsyqjpdzhebsnmojbuowbft', 'xennvahpcillkvqqkerqskqbsxqxgyllmfutprrvpissnmqgxirgmjvuiksnhiwoxurfccfrhtjzmynkgebmhyokbbxnfnxpuhxhcwmroocswtsnoagyvewoljuqka');
INSERT INTO products (id, short_name, long_name, description) VALUES (88, 'lsxcpzoxozgtfvtfrhgrj', 'bmpsimdbbdniddgapgijiqeuuaxnpnukoynkrjebyo', 'sdgdfbfszjyfiplaqesplpxlvyvlvmwbhujkpxjnfrjyemdbhlrajhnfvcnbkuhampflrvmbwydhkfpphlyrpgfzgjhensaozambuutrpgwkusbdbggxkgojigyhgz');
INSERT INTO products (id, short_name, long_name, description) VALUES (89, 'kxuqmzcdsytizzjewdjhe', 'pantimbtunymrmgzzthcxgmqfdpfqjgtxsymnwvnih', 'uqnsjtskogyuzzcvsjgrdojzmzoprzxakgdqcugsuucxmumvuxqnsitzmnvbbophweemregbyqzjtmcbluudkiasmgajjmsokymictszwihwbfxowuyzrrezywauuz');
INSERT INTO products (id, short_name, long_name, description) VALUES (90, 'agpjjnmyvitieywqzfjml', 'ehzwiwwmckrbcnzansirrdtlcdiigqfgqiuzqggdwh', 'qolzrjpwifburdbeuhtbfpwrrcftuzqxfonxfrqkllaklkmvmfmwbvjsofuzcwghvcrwwmzzwzwnctwitofrwbhjmctkemlivneaoyzpoocoddrpphfcdtegfudwxx');
INSERT INTO products (id, short_name, long_name, description) VALUES (91, 'vcbmthioejglentwtndnr', 'prqviulejurgnbhqsnnbvsjrgcxwgjwjfarqotpava', 'eljflzmbpkifbbeegtkxhqikcenuluauetowxgazkqeghngqfzsqacbvlxnhnieoasnjlwfdcusihrykwdzptrurcyetmqwxbgsrgywjxurpoieebozyvyrolrvoor');
INSERT INTO products (id, short_name, long_name, description) VALUES (92, 'mtgwjqisbqabxqebtvflu', 'vrmevuxveaxmptffkenmsnrrmlqpjythrltyutkirq', 'oauaaefmkuygekrxuaxfkfnhzcqkdzincrnznqevdulavbypdoxhdyehrearmctikjbkbiveuitrafizfyeqhfhdqvrhmlhlvcksbhnjacoegbeqjeorjurgvqsnop');
INSERT INTO products (id, short_name, long_name, description) VALUES (93, 'zpurseayozzfibrpjpxtb', 'jeqjvadjumhxgvmhwnwovzyczdneibcxselixnvhpd', 'qfxyeymugzadorpczlantfutbqxeqmhebfgntxvlfgucrypqhkavjezebllbqgpystdeakkiebvqmhdejbluzspsrvymhkgtffxtphpkdygqwanipdkcykbrkxlwkr');
INSERT INTO products (id, short_name, long_name, description) VALUES (94, 'xwinxafezlbmwozxjhuem', 'vszxhmntaadbvqrejujvrnosxbuteopwhhuwucsdbx', 'hmusdzvdebkpaitjjfcgfyqwcsnostceylgozojjgwcmqlxpuphgcahjzsvlewdonuebzcegyyepxqtstlntmzktxejbtnkittkhtexyrakygsoojqhvyunfykvhjd');
INSERT INTO products (id, short_name, long_name, description) VALUES (95, 'fmvxgyhoezwluspeiykga', 'hugxsgxjxnmijrniteknovsttuwhwulmzovieskesa', 'ddtputaadggtlkechsjbqcorvyzqbvasbdmsdpjoztuwarmroeihketkjcwpxhvitxlcslyfikoqnhjoctuyyweweaopsvwvcdatboaugiuzluxgcflobbwmprvsfy');
INSERT INTO products (id, short_name, long_name, description) VALUES (96, 'fmeofnoszqzaezxfvehyc', 'snsmngtrwhhgitvdusygezprzytrapvfenrcbrqodv', 'zokwzttehuhvtvhidbdbyxrrdinbqeppjparlvmmyouhznrcwomgvqyfngxqittclwrepaesvovawthqlfxrscqqfgtflkjqbwchwdbqecqinyqbxfxlycjaoszjfd');
INSERT INTO products (id, short_name, long_name, description) VALUES (97, 'fhcxoxrdlkksvjjrckzoa', 'frkslksfcykotldfqkpsjvuxnuozexwltfbjgshkqi', 'rdsgfrzshbrsibhpuqhxnwtesfhzkcpdgufneywfpojbaekyjwvtlvowyadatvsripxbulhetlgepalzncmusajvrxxzioymjtlmabahgpkgzouxbliuohypkhtnlx');
INSERT INTO products (id, short_name, long_name, description) VALUES (98, 'rjinltfqqkkwbukichgkl', 'dubpthvvrbtyymtfafppbmxklulvcazutlsmujkurg', 'ctyxcwphlihwjrobqbetrjalgnerbktfyhyrmztiaknegpcuyatgviwvgcvqyokobgkcmpfertnwxxorajokgugdlrbwsxxugwwoolosldpwxfopotaweswpipsnhq');
INSERT INTO products (id, short_name, long_name, description) VALUES (99, 'mvxrpzrzqbicznolkgcdb', 'rtrqbttacpfygneedlcrygfephzoczxyenppcogrom', 'lyaezhmrozjagznfqtpqauvzwtpxytrfhednfvmmnzhmesudnxbhvppqhyxousfpemrqitcbmbwiurmceztsssronkrpufdxmngdufmmquiljyqlbsfzcbakjpygso');
INSERT INTO products (id, short_name, long_name, description) VALUES (100, 'cunnuleiwalciplcvnmxq', 'kiuelsjneebyizgkenxcqogwchuufpfjxciqsiootu', 'ujvfoufbhmbjobriivmrjonzkgvrjumakhupeaeopsyrcitlhqwgwebawvamfqxednhwwrwvpvphzoegvttcdgiprlbxgwlhdnqzgkqmmazzepnedqltrfuljufkhw');


INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('296-567', 1, true, '3XL', 'Goldenrod', '32.83', '77.50', '33.79');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('356-022', 2, true, '3XL', 'Indigo', '23.41', '68.08', '83.47');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('737-674', 3, false, 'S', 'Red', '14.67', '62.61', '65.96');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('933-958', 4, true, 'S', 'Pink', '61.83', '73.27', '15.05');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('331-238', 5, true, 'XS', 'Purple', '76.63', '74.83', '22.30');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('752-814', 6, false, 'XL', 'Green', '92.92', '32.69', '89.39');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('316-772', 7, false, 'XL', 'Khaki', '49.57', '12.90', '69.09');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('097-000', 8, true, 'L', 'Red', '65.82', '61.71', '97.38');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('779-920', 9, false, 'S', 'Goldenrod', '48.91', '64.11', '13.53');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('671-130', 10, true, '3XL', 'Crimson', '73.51', '97.34', '90.10');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('095-160', 11, false, 'XS', 'Puce', '29.28', '86.64', '38.46');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('037-335', 12, true, 'XS', 'Red', '15.02', '30.68', '69.62');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('404-439', 13, true, 'S', 'Purple', '14.81', '75.35', '66.24');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('123-528', 14, true, '3XL', 'Crimson', '48.29', '86.12', '30.18');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('261-360', 15, true, '2XL', 'Blue', '93.94', '83.86', '59.05');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('420-416', 16, false, 'XS', 'Red', '39.12', '47.01', '19.48');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('099-823', 17, false, 'XS', 'Teal', '52.77', '73.96', '89.01');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('673-711', 18, true, 'M', 'Khaki', '60.72', '44.31', '22.76');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('219-555', 19, true, 'L', 'Pink', '38.17', '83.97', '20.92');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('372-923', 20, false, 'L', 'Red', '16.33', '12.38', '24.02');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('420-571', 21, false, 'XS', 'Violet', '77.18', '18.58', '17.39');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('403-127', 22, false, 'L', 'Violet', '61.83', '57.61', '47.66');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('641-952', 23, true, 'XS', 'Yellow', '21.65', '60.68', '39.88');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('650-695', 24, false, 'XS', 'Mauv', '48.18', '73.22', '94.02');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('930-287', 25, false, 'L', 'Green', '58.49', '64.05', '38.78');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('343-248', 26, false, '2XL', 'Indigo', '87.36', '22.89', '95.70');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('076-709', 27, false, 'L', 'Puce', '45.22', '32.70', '50.25');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('479-287', 28, true, 'L', 'Aquamarine', '74.07', '47.51', '90.42');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('611-543', 29, false, '2XL', 'Orange', '60.64', '65.08', '68.90');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('789-467', 30, false, 'XS', 'Green', '57.40', '29.86', '22.96');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('582-046', 31, true, '2XL', 'Aquamarine', '98.00', '99.12', '82.32');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('951-850', 32, true, 'XL', 'Aquamarine', '55.97', '19.05', '66.55');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('060-577', 33, false, '2XL', 'Violet', '33.11', '83.07', '85.08');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('566-045', 34, true, 'M', 'Crimson', '77.29', '44.96', '77.52');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('270-188', 35, true, '2XL', 'Yellow', '21.35', '11.44', '60.47');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('565-364', 36, true, 'M', 'Crimson', '62.34', '44.63', '39.13');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('572-789', 37, true, 'S', 'Khaki', '24.49', '40.55', '77.46');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('839-116', 38, false, 'XS', 'Aquamarine', '36.20', '94.57', '69.61');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('455-027', 39, false, 'XS', 'Red', '78.88', '66.71', '45.68');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('263-218', 40, true, '2XL', 'Violet', '53.58', '20.28', '59.67');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('690-823', 41, false, 'L', 'Maroon', '68.90', '97.63', '94.72');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('465-181', 42, true, 'XS', 'Green', '31.80', '90.82', '66.45');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('502-171', 43, false, 'S', 'Pink', '58.63', '48.31', '31.29');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('733-120', 44, true, 'M', 'Blue', '94.44', '83.68', '57.40');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('616-155', 45, true, 'XS', 'Khaki', '96.29', '93.44', '81.02');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('544-974', 46, true, '2XL', 'Maroon', '81.17', '67.15', '42.84');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('559-980', 47, false, '3XL', 'Maroon', '23.36', '91.68', '10.50');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('324-523', 48, false, '2XL', 'Violet', '35.67', '63.43', '21.82');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('159-856', 49, false, 'L', 'Aquamarine', '74.98', '77.84', '47.84');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('413-805', 50, true, 'XL', 'Mauv', '69.80', '49.93', '78.61');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('507-780', 51, true, '3XL', 'Blue', '64.67', '84.37', '58.60');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('542-041', 52, true, 'XS', 'Goldenrod', '91.42', '13.51', '90.69');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('299-725', 53, false, 'L', 'Maroon', '46.72', '16.93', '32.01');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('351-253', 54, false, '2XL', 'Pink', '21.46', '25.52', '17.19');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('701-970', 55, false, '3XL', 'Purple', '12.17', '59.94', '44.87');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('133-001', 56, false, 'M', 'Maroon', '25.46', '91.11', '11.72');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('139-744', 57, false, '3XL', 'Maroon', '53.46', '78.02', '17.67');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('733-314', 58, true, 'XS', 'Mauv', '21.62', '41.99', '61.75');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('507-531', 59, true, '3XL', 'Maroon', '72.70', '47.66', '94.44');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('004-081', 60, true, 'L', 'Teal', '14.65', '65.21', '24.84');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('668-182', 61, true, 'S', 'Mauv', '62.96', '91.42', '59.71');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('712-357', 62, true, 'XS', 'Teal', '77.59', '94.25', '64.04');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('754-941', 63, true, 'XS', 'Pink', '81.28', '20.19', '80.14');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('978-845', 64, false, 'M', 'Turquoise', '50.59', '21.96', '90.60');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('241-371', 65, true, 'L', 'Teal', '95.66', '39.28', '25.69');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('891-290', 66, true, 'XS', 'Fuscia', '98.87', '48.42', '50.44');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('178-616', 67, true, '3XL', 'Green', '73.19', '85.68', '31.80');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('509-786', 68, true, 'XS', 'Red', '96.25', '45.42', '40.00');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('936-089', 69, false, 'L', 'Goldenrod', '47.49', '73.71', '39.41');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('355-306', 70, true, 'XS', 'Khaki', '81.77', '80.68', '36.38');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('735-562', 71, true, 'L', 'Teal', '24.92', '51.28', '70.31');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('175-188', 72, false, 'XL', 'Aquamarine', '30.81', '99.40', '79.69');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('636-410', 73, false, 'S', 'Violet', '55.71', '67.68', '95.30');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('676-577', 74, false, '3XL', 'Aquamarine', '58.97', '21.46', '94.66');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('933-533', 75, false, 'XL', 'Puce', '69.29', '89.65', '18.05');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('219-328', 76, false, 'L', 'Crimson', '35.49', '58.54', '53.43');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('706-552', 77, false, 'M', 'Crimson', '84.44', '29.43', '79.60');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('795-849', 78, false, '3XL', 'Orange', '88.02', '45.74', '72.66');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('485-579', 79, false, 'M', 'Aquamarine', '47.04', '19.68', '57.56');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('284-439', 80, false, 'S', 'Turquoise', '75.97', '40.12', '89.49');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('689-052', 81, true, 'S', 'Teal', '62.47', '59.40', '64.07');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('308-183', 82, true, 'XL', 'Mauv', '71.45', '24.46', '95.85');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('464-290', 83, false, 'L', 'Blue', '97.30', '84.46', '61.48');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('589-929', 84, true, 'XL', 'Yellow', '85.41', '14.58', '87.77');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('832-367', 85, true, 'M', 'Turquoise', '82.55', '82.60', '89.03');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('748-623', 86, false, 'XL', 'Puce', '22.72', '40.28', '18.87');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('236-758', 87, true, 'XS', 'Mauv', '13.33', '63.37', '90.97');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('078-531', 88, false, '3XL', 'Maroon', '74.43', '94.35', '15.73');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('159-813', 89, true, '2XL', 'Violet', '36.37', '86.34', '43.23');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('982-055', 90, true, 'XL', 'Puce', '10.95', '72.13', '27.23');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('024-078', 91, false, '3XL', 'Goldenrod', '35.09', '83.61', '39.67');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('774-380', 92, true, 'XS', 'Fuscia', '73.78', '97.90', '20.27');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('995-691', 93, true, '2XL', 'Khaki', '15.21', '12.23', '70.94');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('027-346', 94, true, 'XS', 'Teal', '79.62', '10.82', '58.38');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('702-259', 95, false, '3XL', 'Orange', '38.79', '14.19', '47.17');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('548-857', 96, false, 'S', 'Khaki', '59.13', '38.19', '43.83');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('106-768', 97, true, 'XL', 'Mauv', '18.49', '39.98', '71.53');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('007-525', 98, false, 'M', 'Maroon', '98.60', '75.58', '87.14');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('774-870', 99, false, 'S', 'Mauv', '67.48', '44.09', '83.64');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('834-651', 100, true, '2XL', 'Indigo', '22.66', '80.60', '79.86');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('570-985', 1, false, 'L', 'Fuscia', '86.82', '70.08', '67.49');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('816-474', 2, false, '3XL', 'Fuscia', '23.91', '65.45', '46.99');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('302-014', 3, true, 'L', 'Blue', '69.05', '78.24', '34.65');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('515-016', 4, true, 'S', 'Fuscia', '48.81', '18.03', '49.57');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('224-189', 5, false, '3XL', 'Khaki', '26.19', '97.67', '41.84');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('183-359', 6, false, 'M', 'Maroon', '16.60', '44.61', '36.55');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('836-696', 7, true, '2XL', 'Orange', '26.82', '70.53', '82.05');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('960-629', 8, false, 'M', 'Indigo', '26.18', '65.92', '29.86');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('060-362', 9, true, 'XL', 'Violet', '59.13', '47.41', '74.20');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('978-080', 10, false, 'M', 'Blue', '96.22', '41.78', '96.15');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('904-249', 11, true, 'S', 'Crimson', '59.19', '20.68', '85.05');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('999-571', 12, false, 'XS', 'Violet', '86.63', '71.23', '75.34');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('301-492', 13, false, 'L', 'Pink', '39.02', '59.73', '69.81');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('566-429', 14, true, 'L', 'Red', '63.66', '28.94', '26.74');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('472-172', 15, true, 'XL', 'Indigo', '23.67', '27.15', '31.58');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('488-929', 16, false, 'XL', 'Goldenrod', '13.06', '30.71', '27.99');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('432-889', 17, false, 'XS', 'Violet', '66.00', '17.59', '49.11');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('288-960', 18, true, '2XL', 'Pink', '22.92', '65.04', '25.51');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('157-708', 19, false, '3XL', 'Pink', '36.94', '59.72', '41.00');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('732-777', 20, true, '3XL', 'Crimson', '45.56', '84.36', '79.78');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('166-333', 21, false, 'M', 'Red', '78.12', '19.63', '29.56');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('370-065', 22, true, 'XS', 'Purple', '47.58', '90.45', '67.92');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('747-749', 23, true, '3XL', 'Orange', '85.03', '34.04', '52.13');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('862-011', 24, true, 'XS', 'Orange', '50.96', '24.56', '83.50');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('772-320', 25, true, 'M', 'Goldenrod', '53.76', '23.00', '74.89');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('535-205', 26, true, 'XS', 'Khaki', '74.73', '51.46', '25.05');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('578-342', 27, false, 'L', 'Yellow', '40.24', '62.55', '46.83');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('083-222', 28, true, 'XL', 'Maroon', '92.47', '19.66', '10.89');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('511-481', 29, false, '3XL', 'Aquamarine', '12.67', '69.61', '36.53');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('258-201', 30, true, 'XS', 'Crimson', '91.49', '51.80', '88.84');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('959-233', 31, false, 'S', 'Indigo', '27.52', '57.27', '61.04');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('817-049', 32, true, 'M', 'Mauv', '34.79', '71.32', '97.78');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('535-985', 33, false, 'S', 'Crimson', '71.48', '53.65', '68.09');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('958-359', 34, true, '2XL', 'Indigo', '22.98', '72.67', '87.86');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('800-611', 35, false, 'M', 'Purple', '34.97', '74.60', '97.99');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('906-016', 36, false, '2XL', 'Violet', '78.18', '29.07', '52.43');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('708-467', 37, true, 'XS', 'Fuscia', '12.71', '72.00', '40.48');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('320-106', 38, true, 'S', 'Violet', '95.33', '41.90', '26.44');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('636-574', 39, true, '2XL', 'Violet', '90.26', '87.19', '40.51');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('059-306', 40, false, 'S', 'Turquoise', '62.68', '78.62', '14.23');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('555-146', 41, true, 'XL', 'Purple', '17.87', '76.87', '99.57');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('772-046', 42, false, 'S', 'Fuscia', '87.26', '93.29', '18.27');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('178-806', 43, false, 'XL', 'Fuscia', '89.57', '39.79', '45.69');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('526-017', 44, true, 'S', 'Turquoise', '95.59', '86.12', '79.71');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('502-176', 45, true, 'XS', 'Khaki', '14.26', '41.49', '94.30');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('398-282', 46, false, 'M', 'Teal', '97.55', '40.83', '34.19');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('796-787', 47, false, 'XS', 'Purple', '79.06', '41.28', '55.42');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('839-744', 48, true, '2XL', 'Mauv', '93.51', '68.88', '15.09');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('905-367', 49, true, 'XS', 'Green', '59.72', '98.04', '77.67');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('227-560', 50, true, 'XL', 'Red', '28.54', '79.04', '96.24');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('359-927', 51, true, 'XL', 'Violet', '62.58', '63.40', '41.36');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('197-760', 52, true, 'S', 'Red', '49.31', '82.24', '60.28');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('383-633', 53, false, 'XL', 'Teal', '72.21', '88.80', '77.33');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('549-890', 54, true, 'M', 'Maroon', '22.81', '91.36', '35.24');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('105-434', 55, false, '2XL', 'Red', '24.54', '16.25', '15.84');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('979-516', 56, false, 'XS', 'Green', '84.09', '34.89', '96.50');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('938-493', 57, false, 'L', 'Pink', '65.36', '40.18', '65.27');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('176-690', 58, false, '2XL', 'Yellow', '55.62', '26.72', '97.56');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('751-503', 59, true, '2XL', 'Crimson', '73.24', '89.82', '25.38');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('456-171', 60, false, 'M', 'Khaki', '46.90', '25.97', '27.30');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('918-789', 61, false, 'L', 'Blue', '44.11', '48.58', '92.38');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('434-657', 62, true, 'XS', 'Maroon', '96.49', '89.05', '27.91');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('874-636', 63, false, 'M', 'Green', '54.26', '11.69', '93.31');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('358-895', 64, true, 'M', 'Blue', '26.57', '50.37', '48.51');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('935-388', 65, true, 'M', 'Teal', '83.11', '16.23', '61.09');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('914-024', 66, true, 'XS', 'Red', '40.74', '58.15', '73.31');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('372-402', 67, true, 'S', 'Yellow', '31.05', '55.14', '23.38');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('852-068', 68, true, 'XL', 'Yellow', '80.26', '10.28', '71.28');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('739-353', 69, false, '3XL', 'Yellow', '40.05', '12.60', '92.68');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('811-022', 70, true, 'L', 'Maroon', '61.99', '95.63', '72.16');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('886-588', 71, true, 'M', 'Orange', '80.10', '54.33', '39.35');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('662-662', 72, true, 'L', 'Pink', '48.10', '89.60', '60.42');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('057-044', 73, false, 'XL', 'Aquamarine', '61.76', '97.29', '22.06');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('249-817', 74, false, '2XL', 'Blue', '24.46', '54.08', '54.86');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('403-321', 75, true, '2XL', 'Puce', '64.27', '15.98', '71.69');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('286-125', 76, false, 'S', 'Pink', '43.54', '40.71', '65.09');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('755-203', 77, true, 'XL', 'Khaki', '67.88', '21.89', '80.75');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('784-824', 78, true, '3XL', 'Indigo', '53.70', '97.58', '30.11');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('432-190', 79, true, 'M', 'Teal', '52.47', '32.69', '80.83');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('418-651', 80, true, 'XS', 'Blue', '69.29', '35.79', '46.04');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('997-479', 81, true, 'L', 'Pink', '36.66', '98.59', '43.14');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('615-072', 82, false, 'M', 'Turquoise', '57.18', '90.53', '75.09');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('044-992', 83, false, 'S', 'Purple', '59.17', '50.52', '24.41');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('928-588', 84, false, '2XL', 'Blue', '64.14', '24.99', '14.27');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('672-586', 85, true, 'XL', 'Pink', '90.32', '46.25', '89.76');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('113-802', 86, true, 'L', 'Teal', '58.27', '82.00', '64.17');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('285-382', 87, true, 'M', 'Goldenrod', '63.93', '36.45', '91.60');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('607-244', 88, true, 'M', 'Goldenrod', '30.26', '15.04', '66.36');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('170-584', 89, true, 'S', 'Goldenrod', '36.44', '52.56', '47.98');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('416-787', 90, true, '2XL', 'Mauv', '70.02', '36.48', '94.24');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('914-836', 91, true, '2XL', 'Yellow', '92.59', '80.80', '61.12');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('600-033', 92, false, 'XL', 'Indigo', '22.11', '91.97', '96.50');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('841-553', 93, false, 'S', 'Violet', '24.36', '48.03', '64.90');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('661-149', 94, false, 'XL', 'Crimson', '13.98', '28.32', '50.01');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('304-988', 95, true, 'M', 'Indigo', '49.61', '48.21', '20.68');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('144-462', 96, false, 'XS', 'Yellow', '12.74', '68.30', '39.93');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('974-029', 97, false, 'XS', 'Khaki', '41.21', '51.75', '39.70');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('944-133', 98, true, 'S', 'Fuscia', '41.28', '33.70', '81.82');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('182-403', 99, true, '2XL', 'Mauv', '61.70', '84.01', '35.66');
INSERT INTO skus (id, product_id, active, size, colorway, price_list, price_msrp, price_sale) VALUES ('840-805', 100, false, 'XL', 'Teal', '57.54', '31.69', '15.49');
