class FoodDetail {
  String name;
  String khasDaerah;
  String description;
  String jenisFood;
  String shortDesc;
  String starFood;
  String imageAsset;
  List<String> imageUrls;

  FoodDetail({
    required this.name,
    required this.khasDaerah,
    required this.description,
    required this.jenisFood,
    required this.shortDesc,
    required this.starFood,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var FoodDetailList = [
  FoodDetail(
    name: 'Mie Aceh',
khasDaerah: 'Aceh',
description:
        'Terkenal dengan Mie Acehnya. Mie kuning tebal dengan irisan daging disajikan dalam sup sejenis kari yang gurih dan pedas. Makanan ini kaya bumbu dan nikmat habis.',
jenisFood: 'Makanan',
shortDesc: 'Makanan Khas Daerah Aceh',
starFood: '4',
imageAsset: 'images/makanan/mie_aceh.jpg',
imageUrls: [
      'https://img.okezone.com/content/2021/06/23/301/2429477/5-kuliner-khas-daerah-yang-mudah-ditemui-di-jakarta-mie-aceh-hingga-bebek-madura-jVskUW5ysb.jpg',
      'https://mhm.asia/wp-content/uploads/2017/02/mie-aceh-coba-rasa.jpg',
      'https://img.okezone.com/content/2021/05/09/298/2407970/tips-cara-bikin-mie-aceh-sendiri-di-rumah-dijamin-enaknya-nagih-BY7R1eFh6p.jpg',
	  'https://img.inews.co.id/files/inews_new/2020/10/22/resep_mie_aceh_rebus.jpg'
    ],
  ),

   FoodDetail(
    name: 'Es Kacang Merah',
khasDaerah: 'Sumatera Selatan',
description:
        'Es kacang merah jadi sajian khas Sumatera Selatan yang segar untuk dijadikan sajian berbuka puasa. Campurannya terdiri dari kacang merah, santan, susu kental manis, dan berbagai bahan pelengkap lainnya seperti cincau, dawet, nangka, dan bahkan tape.',
jenisFood: 'Minuman',
shortDesc: 'Minuman Khas Daerah Sumatera Selatan',
starFood: '4',
imageAsset: 'images/makanan/es_kacang_merah.jpg',
imageUrls: [
      'https://asset.kompas.com/crops/puAz6L91zQ7fKvHYLjY3v39pUWI=/533x111:1592x816/750x500/data/photo/2019/09/23/5d888fc946a71.jpg',
      'https://asset.kompas.com/crops/o2XJNskHRZDa6utKSxjKgQmP-Eo=/0x0:780x390/780x390/data/photo/2013/06/08/1346226-es-cendol-780x390.jpg',
      'https://asset.kompas.com/crops/aEYYnmZa7QW_Gwnk7Pj5ZU94AEI=/0x0:900x600/750x500/data/photo/2018/10/04/2477877266.jpg',
	  'https://asset.kompas.com/crops/e5J5EdrrUXttwu41oq04uomxkyI=/0x0:780x390/780x390/data/photo/2017/01/03/1518418mks-esijo780x390.jpg'
    ],
  ),

  FoodDetail(
    name: 'Bika Ambon',
khasDaerah: 'Sumatera Utara',
description:
        'Makanan khas di Sumatera Utara khususnya Medan adalah Bika Ambon. Bika Ambon ini enak banget! Kadang juga dijual dengan rasa lain, seperti durian dan keju. Rasanya manis dan lembut.',
jenisFood: 'Makanan',
shortDesc: 'Makanan Khas Daerah Sumatera Utara',
starFood: '5',
imageAsset: 'images/makanan/BikaAmbon_Ambon.jpg',
imageUrls: [
      'https://img.okezone.com/content/2020/06/12/298/2229217/cara-membuat-bika-ambon-khas-medan-lembut-di-mulut-HWbOWCuHyP.jpg',
      'https://pict.sindonews.net/dyn/850/pena/news/2020/12/05/185/257622/ini-dia-cara-bikin-bika-ambon-yang-manis-dan-kenyal-di-mulut-vdo.png',
      'https://www.tagar.id/Asset/uploads2019/1642046477378-resep-bika-ambon.jpeg'
    ],

  ),

  FoodDetail(
name: 'Rendang',
khasDaerah: 'Sumatera Barat',
description:
        'Sumatera Barat terkenal dengan makanan Padang yang berasal dari kota Padang. Makanan yang banyak rempahnya ini mempunyai rasa yang kuat. Rendang adalah salah satu masakan Padang yang menjadi favorit banyak orang Indonesia bahkan sampai luar negeri.',
jenisFood: 'Makanan',
shortDesc: 'Makanan Khas Daerah Sumatera Barat',
starFood: '5',
imageAsset: 'images/makanan/Rendang_padang.jpg',
imageUrls: [
      'https://img.inews.co.id/media/600/files/inews_new/2020/08/24/resep_rendang_sapi.jpg',
      'https://images.solopos.com/2020/07/rendang-.jpg',
      'https://images.solopos.com/2020/07/rendang-.jpg',
	  'https://cdns.klimg.com/merdeka.com/i/w/news/2018/05/18/977833/content_images/670x335/20180518134553-1-ilustrasi-rendang-002-yoga-tri-priyanto.jpg'
    ],
  ),

   FoodDetail(
    name: 'Gulai Ikan Patin',
khasDaerah: 'Jambi',
description:
        'Gulai Ikan Patin adalah masakan yang populer di masyarakat Jambi.Gulai ini dimasak dengan menggunakan tempoyak yaitu daging buah durian yang telah difermentasi. Tetapi ada sebagian orang yang memilih untuk mengganti tempoyak dengan santan kelapa untuk menghindari bau dan rasa tempoyak yang cukup menyengat.',
jenisFood: 'Makanan',
shortDesc: 'Makanan Khas Daerah Jambi',
starFood: '4',
imageAsset: 'images/makanan/Gulaiikan_patin_Jambi.jpg',
imageUrls: [
      'https://img-global.cpcdn.com/recipes/e8508c576f77ba25/1200x630cq70/photo.jpg',
      'https://www.katakini.com/webmin/images/posts/1/2022/2022-02-15/e43211ae3a4e721aa393a61da03ddf0d_1.jpg',
      'https://img-global.cpcdn.com/recipes/01b5a101c1c503fa/680x482cq70/gulai-ikan-patin-foto-resep-utama.jpg',
	  'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/07/26/2400548595.jpg'
    ],
  ),

   FoodDetail(
    name: 'Pendap',
khasDaerah: 'Bengkulu',
description:
        'Pendap merupakan makanan bercitarasa pedas yang sangat populer di Provinsi Bengkulu. Pendap terdiri dari bahan ikan yang dicampur dengan beberapa bahan utama, seperti bawang putih, kencur, cabai giling, kelapa muda yang kemudian dimasak dalam balutan daun talas.',
jenisFood: 'Makanan',
shortDesc: 'Makanan Khas Daerah Bengkulu',
starFood: '5',
imageAsset: 'images/makanan/Pendap_Bengkulu.jpg',
imageUrls: [
      'https://asset.kompas.com/crops/SNyqWpoU7Uoqvtl-aMdm3fnyuFU=/0x0:1000x667/750x500/data/photo/2020/07/22/5f184187b0bc1.jpg',
      'https://www.poernama.com/wp-content/uploads/2021/04/20210404_092113_600x400.jpg',
      'https://cdn-2.tstatic.net/travel/foto/bank/images/pendap_20170816_152206.jpg',
      'https://www.daerahkita.com/gambar/pendap-bengkulu1.jpg'
    ],
  ),

   FoodDetail(
    name: 'Gulai Belacan',
khasDaerah: 'Riau',
description:
        'Gulai Belacan salah satu masakan khas dari Riau, gulai ini dibuat dengan kuah campuran belacan atau terasi. Bahannya biasanya memakai udang atau ikan.',
jenisFood: 'Makanan',
shortDesc: 'Makanan Khas Daerah Riau',
starFood: '4',
imageAsset: 'images/makanan/Gulai_Belacan_riau.jpg',
imageUrls: [
      'https://img-global.cpcdn.com/recipes/90d1541fb18a907e/751x532cq70/500-gulai-belacan-khas-riau-foto-resep-utama.jpg',
      'https://www.phiradio.net/wp-content/uploads/2021/11/gulai-belacan.jpg',
      'https://suaralama.id/wp-content/uploads/2021/06/GULAI-BELACAN.png'
    ],
  ),

   FoodDetail(
    name: 'Pempek',
khasDaerah: 'Sumatera Selatan',
description:
        'Di Sumatera Selatan terkenal makanan Pempek. Pempek terbuat dari ikan dan sagu. Penyajiannya ditemani dengan kuah coklat yang disebut cuko. Cuko terbuat dari air yang dididihkan, kemudian ditambah gula merah, udang ebi dan cabe rawit tumbuk, bawang putih, dan garam.',
jenisFood: 'Makanan',
shortDesc: 'Makanan Khas Daerah Sumatera Selatan',
starFood: '5',
imageAsset: 'images/makanan/Pempek_SumateraSelatan.jpg',
imageUrls: [
      'https://cdn-brilio-net.akamaized.net/news/2019/10/10/172071/1109685-14-cara-membuat-pempek-palembang-paling-enak.jpg',
      'https://cdn-2.tstatic.net/tribunnews/foto/bank/images/tips-mengatasi-adonan-pempek-yang-kelembekan.jpg',
      'https://doyanresep.com/wp-content/uploads/2020/02/resep-pempek-palembang.jpg',
	  'https://img.okezone.com/content/2020/12/03/298/2321042/resep-pempek-dos-udang-rebon-rasanya-jos-n1FGhLyt0x.jpg'
    ],
  ),

   FoodDetail(
    name: 'Mi Bangka',
khasDaerah: 'Bangka Belitung',
description:
        'Mie atau Mi Bangka adalah salah satu dari sekian banyak ciri khas masyarakat pulau bangka, terbuat dari mie basah (kuning) biasa yang disiram dengan kuah berbumbu yang biasanya terbuah dari ikan, udang, cumi, atau kepiting. dan seringkali ditambahi dengan toge atau kecambah, mentimun atau timun, dan kerupuk, lezat bila dihidangkan waktu masih panas, dan ditambahi rasa pedas dari cabe.',
jenisFood: 'Makanan',
shortDesc: 'Makanan Khas Daerah Belitung',
starFood: '5',
imageAsset: 'images/makanan/MieBangka_BangkaBelitung.jpg',
imageUrls: [
      'https://www.katakini.com/webmin/images/posts/1/2022/2022-02-16/cd5010bd1371df3de3836dd48c5435dc_1.jpg',
      'https://img-global.cpcdn.com/recipes/dba720f736618798/400x400cq70/photo.jpg',
      'https://sweetrip.id/wp-content/uploads/2020/08/resepmasakankhas_117049141_964584880652802_2025952895403574446_n.jpg',
	  'https://www.nibble.id/uploads/Mie-bangka-pesona-travel.jpg'
    ],
  ),

   FoodDetail(
    name: 'Seruit',
khasDaerah: 'Lampung',
description:
        'Seruit adalah makanan khas provinsi Lampung, yaitu masakan ikan yang digoreng atau dibakar dicampur sambel terasi, tempoyak (olahan durian) atau mangga.',
jenisFood: 'Makanan',
shortDesc: 'Makanan Khas Daerah Lampung',
starFood: '4',
imageAsset: 'images/makanan/Seruit_Lampung.jpg',
imageUrls: [
      'https://img.kliknusae.com/uploads/2019/12/Seruit-Lampung.jpg',
      'https://t-2.tstatic.net/tribunnewswiki/foto/bank/images/seruittt.jpg',
      'https://merahputih.com/media/26/5a/94/265a9454466b23bcd7aa6e3f9ca5e08b.jpg',
	  'https://www.lampost.co/upload/900d2d2978999f7856684e731622afd9.jpg'
    ],
  ),
   FoodDetail(
    name: 'Sate Bandeng',
khasDaerah: 'Banten',
description:
        'Sate Bandeng merupakan makanan khas Banten. Berbeda dengan ikan bandeng biasa, daging sate bandeng empuk dan tidak bertulang. Sate bandeng menggunakan gula coklat dan santan. Karena kekhasannya, sate bandeng menjadi oleh-oleh dari Banten.',
jenisFood: 'Makanan',
shortDesc: 'Makanan Khas Daerah Banten',
starFood: '4',
imageAsset: 'images/makanan/SateBandeng_Banten.jpg',
imageUrls: [
      'https://media.suara.com/pictures/653x366/2019/12/12/88366-sate-bandeng-khas-banteb-instagramatsate-bandeng.jpg',
      'https://phinemo.com/wp-content/uploads/2018/01/sate-bandeng1.jpg',
      'https://www.reseppedia.com/storage/upload/Resep_Masakan_Sate_Bandeng_(Banten).jpg',
	  'https://cdn-2.tstatic.net/banten/foto/bank/images/ilustrasi-sate-bandeng.jpg'
    ],
  ),
   FoodDetail(
    name: 'Kerak Telor',
khasDaerah: 'Jakarta',
description:
        'Kerak Telor adalah makanan asli daerah Jakarta (Betawi), dengan bahan-bahan beras ketan putih, telur ayam, ebi (udang kering yang diasinkan) yang disangrai kering ditambah bawang merah goreng, lalu diberi bumbu yang dihaluskan berupa kelapa sangrai, cabai merah, kencur, jahe, merica butiran, garam dan gula pasir. Saya sudah pernah coba dan ini enak banget!.',
jenisFood: 'Makanan',
shortDesc: 'Makanan Khas Daerah Jakarta Betawi',
starFood: '4',
imageAsset: 'images/makanan/Kerak_Telor_Jakarta.jpg',
imageUrls: [
      'https://www.resepkuerenyah.com/wp-content/uploads/2020/08/Resep-Kerak-Telor.jpg',
      'https://sweetrip.id/wp-content/uploads/2021/10/julie_in_bali_230134577_387160129475942_7979102418308754760_n.jpg',
      'https://img-global.cpcdn.com/recipes/35d4762174f48b5e/680x482cq70/kerak-telor-betawi-foto-resep-utama.jpg',
	  'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/5/22/43593bac-5bc7-4895-b3c6-9ffed43d0fa0.jpg'
    ],
  ),
   FoodDetail(
    name: 'Serabi',
khasDaerah: 'Jawa Barat',
description:
        'Serabi Kadang biasa disebut srabi terbuat dari tepung beras dan kuah cair manis. Manis dan menggugah selera.',
jenisFood: 'Makanan',
shortDesc: 'Makanan Khas Daerah Jawa Barat',
starFood: '5',
imageAsset: 'images/makanan/Serabi_JawaBarat.jpg',
imageUrls: [
      'https://blog.tokowahab.com/wp-content/uploads/2019/11/Resep-Kue-Serabi-Solo.jpg',
      'https://www.resepkuerenyah.com/wp-content/uploads/2016/11/18.-resep-kue-serabi-tepung-beras.jpg',
      'https://media.suara.com/pictures/970x544/2022/04/05/80436-serabi-solo.jpg',
	  'https://img.inews.co.id/media/822/files/inews_new/2021/03/28/serabi_kocor.jpg'
    ],
  ),
  FoodDetail(
    name: 'Lunpia',
khasDaerah: 'Jawa Tengah',
description:
        'unpia adalah makanan khas Jawa Tengah khususnya kota Semarang. Makanan ini berisi rebung, telur, dan daging udang. Setelah dibungkus bisa dimakan langsung, bisa juga digoreng. Saya suda pernah makan lunpia di Semarang dan rasanya bikin ketagihan!.',
jenisFood: 'Makanan',
shortDesc: 'Makanan Khas Daerah Jawa Tengah',
starFood: '5',
imageAsset: 'images/makanan/Lunpia_JawaTengah.jpg',
imageUrls: [
      'https://cdns.klimg.com/dream.co.id/resized/640x320/news/2022/02/05/190957/mau-lumpia-enak-di-semarang-lunpia-cinde-wajib-jadi-buruan-220205r.jpg',
      'https://img-global.cpcdn.com/recipes/3cbe9fbb9acc6129/680x482cq70/lunpia-semarang-foto-resep-utama.jpg',
      'https://thumbs.dreamstime.com/b/lumpia-lunpia-traditional-snack-semarang-central-java-indonesia-lumpia-lunpia-traditional-snack-semarang-221459279.jpg',
	  'https://info-kuliner.com/wp-content/uploads/2015/02/Lunpia-Mataram-6.jpg'
    ],
  ),
  FoodDetail(
    name: 'Nasi Gudeg',
khasDaerah: 'Yogyakarta',
description:
        'Nasi Gudeg, makanan khas D.I. Yogyakarta yang terbuat dari nangka muda yang dimasak dengan santan. Gudeg dimakan dengan nasi dan disajikan dengan kuah santan kental (areh), ayam kampung, telur, tahu dan sambal goreng krecek. Mantap!.',
jenisFood: 'Makanan',
shortDesc: 'Makanan Khas Daerah Yogyakarta',
starFood: '5',
imageAsset: 'images/makanan/NasiGudeg_Yogyakarta.jpg',
imageUrls: [
      'http://annafoodcateringjogja.com/wp-content/uploads/2019/10/nasi-box-gudeg-jogja-enak-halal-murah.jpg',
      'https://www.tagar.id/Asset/uploads2019/1569685882487-gudeg.jpg',
      'https://img-global.cpcdn.com/recipes/4c4ddae26909def8/751x532cq70/nasi-gudeg-presto-foto-resep-utama.jpg',
	  'https://img-global.cpcdn.com/recipes/4c4ddae26909def8/751x532cq70/nasi-gudeg-presto-foto-resep-utama.jpg'
    ],
  ),
   FoodDetail(
    name: 'Rujak Cingur',
khasDaerah: 'Jawa Timur',
description:
        'Rujak Cingur adalah salah satu makanan tradisional yang mudah ditemukan di daerah Jawa Timur, terutama daerah asalnya Surabaya. Cingur sendiri berrati mulut. Makanan ini memang menyajikan mulut sapi. Biasanya dihidangkan dengan sayuran kemudian diberi bumbu yang terbuat dari olahan petis udang, air matang, gula/gula merah, cabai, kacang tanah yang digoreng, bawang goreng, garam dan irisan tipis-tipis pisang biji hijau yang masih muda (pisang klutuk). Rsanya sedap!.',
jenisFood: 'Makanan',
shortDesc: 'Makanan Khas Daerah Jawa Timur',
starFood: '4',
imageAsset: 'images/makanan/RujakCingur_JawaTimur.jpg',
imageUrls: [
      'https://img-global.cpcdn.com/recipes/5e0544eefc0f9b3b/400x400cq70/photo.jpg',
      'https://www.tagar.id/Asset/uploads2019/1569685882487-gudeg.jpg',
      'https://www.bango.co.id/gfx/recipes/1431991573.jpg',
	  'https://www.madiunpos.com/files/2020/07/rujak-cingur.jpeg'
    ],
  ),
];
