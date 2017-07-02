# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 新增 admin 账号  User
if User.find_by(email: 'admin@test.com').nil?
  u = User.new
  u.name = '测试管理员'
  u.email = 'admin@test.com'
  u.nickname = '测试管理员'
  u.password = '11111111'
  u.password_confirmation = '11111111'
  u.is_admin = true
  u.save
  puts '创建管理员*1'
else
  puts '已创建过此账号，不重复新增。'
end

# 新增 user 账号  User
if User.find_by(email: 'user@test.com').nil?
  u = User.new
  u.name = '测试用户'
  u.email = 'user@test.com'
  u.nickname = '测试用户'
  u.password = '11111111'
  u.password_confirmation = '11111111'
  u.is_admin = false
  u.save
  puts '创建一般用戶*1'
else
  puts '已创建过此账号，不重复新增。'
end

# 新增货币 Currency
  Currency.create!(
    name: '人民币',
    symbol: '¥',
    rate: 4.91
  )

  Currency.create!(
    name: 'Singapore Dollar',
    symbol: 'SG$',
    rate: 1
  )

  Currency.create!(
    name: 'Euro',
    symbol: '€',
    rate: 0.63
  )

  Currency.create!(
    name: 'US Dollar',
    symbol: '$',
    rate: 0.72
  )

  Currency.create!(
    name: '日円',
    symbol: '¥',
    rate: 81.45
  )

  puts '创建初始货币*5：人民币、新币、欧元、美元、日元'

# 新增广告 banner  Intro

  # 1
  Intro.create!(
    title: 'J&Z SELECT',
    content: '讲究生活里细微的美好，就是我们的选物精神',
    link: '#'
  )

  # 2
  Intro.create!(
    title: '桌上风景',
    content: '实用与美学兼具，重新定义你的办公日常',
    link: '#'
  )

  # 3
  Intro.create!(
    title: '生活质感',
    content: '让风格成为日常的一部分',
    link: '#'
  )

  # 4
  Intro.create!(
    title: '经典单品',
    content: '从随身物件展露你的独到品味',
    link: '#'
  )

  puts '创建广告*4'

# 新增大类 Category #
  CategoryGroup.create!(
    name: '日常文具'
  )

  CategoryGroup.create!(
    name: '生活器物'
  )

  CategoryGroup.create!(
    name: '个人单品'
  )

  puts '创建大类*3：日常文具、生活器物、个人单品'

# 新增细分品类  Category #
  # 文具
  # 1
  Category.create!(
    category_group_id: 1,
    name: '笔具'
  )

  # 2
  Category.create!(
    category_group_id: 1,
    name: '笔袋'
  )

  # 3
  Category.create!(
    category_group_id: 1,
    name: '笔记本'
  )

  # 4
  Category.create!(
    category_group_id: 1,
    name: '刀剪'
  )

  # 5
  Category.create!(
    category_group_id: 1,
    name: '尺规'
  )

  puts '创建「日常文具」细分品类*5：笔具、笔袋、笔记本、刀剪、尺规'

  # 生活
  # 6
  Category.create!(
    category_group_id: 2,
    name: '收纳'
  )

  # 7
  Category.create!(
    category_group_id: 2,
    name: '装饰'
  )

  # 8
  Category.create!(
    category_group_id: 2,
    name: '器皿'
  )

  puts '创建「生活器物」细分品类*3：收纳、装饰、器皿'

  # 个人
  # 9
  Category.create!(
    category_group_id: 3,
    name: '提包'
  )
  # 10
  Category.create!(
    category_group_id: 3,
    name: '皮件'
  )
  # 11
  Category.create!(
    category_group_id: 3,
    name: '小物'
  )

  puts '创建「个人单品」细分品类*3：提包、皮件、小物'

# 新增品牌  Brand #
  # 1 Tools to Liveby / 礼拜文房具
  Brand.create!(
  name: 'Tools to Liveby / 礼拜文房具',
  description: '
  在平凡中，发现不平凡的美

  礼拜文房具设计简单美好的文具，期待改变大家桌上的风景，让每天工作的好心情就从随手使用的文具开始。'
  )

  # 2 Kaweco
  Brand.create!(
  name: 'Kaweco',
  description: '
  「体积虽小，但成就无限」是 Kaweco® 的创业精神标语。

  德国品牌 Kaweco 的设计理念恰恰符合了欧洲时下最流行的「极简」，其中携带便利的短笔笔型为最具代表性的款式之一。'

  )

  # 3 RHODIA
  Brand.create!(
  name: 'RHODIA',
  description: '
  RHODIA 来自法国，笔记本纸感顺滑，强调使用便利、高品质用纸，适用各种笔款墨水书写。这样的设计及用料坚持，让 RHODIA 笔记本一直是许多欧美名人及设计师的最爱。'
  )

  # 4 BRAUN
  Brand.create!(
  name: 'BRAUN',
  description: '
  德国品牌 BRAUN 专注于提供人们所需要的产品功能，操作让人一看到操作界面，就能立即上手。对于设计美感更是丝毫不妥协，线条利落，每一个产品细节都完美展现简单大方的设计美学。'
  )

  # 5
  Brand.create!(
  name: 'Midori',
  description: '来自日本的 Midori，创立于 1950 年，半个世纪以来，透过提供顶级纸制品，让无数的人重新爱上书写。'
  )

  # 6
  Brand.create!(
  name: 'Hightide',
  description: 'Hightide 是日本知名的文具公司，Hightide 相信文具能在我们的日常生活和工作中产生不同的影响，希望为大家提供高质量的文具，在情感和精神上都得到满足。'
  )

  #7
  Brand.create!(
  name: 'Merchant & Mills',
  description: 'Merchant & Mills 创办于 2010 年，旨在激励人们对原始手工缝制的热爱。他们拥有专业的时尚嗅觉，坚持用高品质的面料手工缝纫服装。「手工缝制重新回归了人们的视线，现在有关手工制作的所有事情都即将引发新的潮流。」。'
  )

  puts '创建品牌*6'

# 新增商品  Product #

 Product.create!(
   title: 'Tools to Liveby 手工皮革笔袋（大）',
   description: '天然植鞣皮革，会随着时间与使用而逐渐产生色泽变化，随着不同的使用者或是使用方式，会呈现不一样的质感，这就是植鞣牛皮的迷人之处。',
   price: 2500,
   quantity: 3,
   category_id: 2,
   brand_id: 1,
   is_hidden: false
 )

 Product.create!(
   title: 'Tools to Liveby X Vita Yang 明信片組',
   description: '
   Vita Yang，知名时尚插画家。作品常见于 Harvey Nichols、HUMAN MADE、agnès b 等知名品牌，并长期与巴西 Vogue 杂志合作。

   礼拜文房具首度与时尚插画家 Vita Yang 推出联名商品。以〈 7 DAYS 7 BOYS〉为主题，延伸出7个品项，10款限定商品，每样都值得收藏!',
   price: 300,
   quantity: 5,
   category_id: 3,
   brand_id: 1,
   is_hidden: false
 )

 Product.create!(
   title: 'Tools to Liveby  圆把剪刀（黑）',
   description: '
   使用日本不锈钢制造， 比例及造型都是最好的首选。自制的贴心小包装，能保护刀刃，也以雷射雕刻了礼拜的 logo ，更适合当作礼物送给朋友。 同样有雾黑与金色两款，黑色款外层涂布一层铁氟龙，裁剪胶带时较不容易残留胶。附纸套包装。
   ',
   price: 560,
   quantity: 10,
   category_id: 4,
   brand_id: 1,
   is_hidden: false
 )

 Product.create!(
   title: 'Tools to Liveby 复古拆信刀',
   description: '
   现在比较少人有使用拆信刀的习惯，但是建议大家不妨从这款平价的入门试试看，让自己的步调放慢下来，去感受工具为生活所带来的乐趣。使用方式：拇指与中指轻握拆信刀边缘，食指轻压刀刃，刀刃尖端可在信封背面封口一角挑出小缺孔，即可顺势划开封口。
   ',
   price: 45,
   quantity: 10,
   category_id: 4,
   brand_id: 1,
   is_hidden: false
 )

 Product.create!(
   title: 'Tools to Liveby 随行袋（L）',
   description: '
  《礼拜文房具》新款随行袋，比曾经推出过的所有袋子尺寸更大了些，可舒适地手提也可帅气地肩背，有深蓝色与米白色两款。随行袋内侧另有一个小口袋，可放置小物件，使用起来更加方便，逛街购物或随时来个小旅行，都非常实用，是生活中的必备单品。
   ',
   price: 450,
   quantity: 15,
   category_id: 9,
   brand_id: 1,
   is_hidden: false
 )

 Product.create!(
   title: 'Tools to Liveby 隨行袋（S）',
   description: '
   《礼拜文房具》新推出的环保袋，此款袋型较小，可手提也可以斜肩背，袋口部分有个黑色小扣子的设计，能够保护袋内物品不易掉出。同样是双面图桉设计，一面是经典图示，另一面印着我们很喜欢也一直是我们生活理念的 Quote  “Be refined, polite and wellspoken.” 。

   第一次选用蓝色与灰色来制作，因为这两种颜色给人沉稳且时尚的感觉，并且与我们日常生活的服饰容易搭配，很适合微旅行使用。
   ',
   price: 450,
   quantity: 8,
   category_id: 9,
   brand_id: 1,
   is_hidden: false
 )

 Product.create!(
   title: 'Tools to Liveby 手提肩背两用环保袋',
   description: '
   这一款我们自己称它为「文青袋」，样式比较中性，尺寸也大上许多！除了可以手提之外，侧边车缝了一条较长的背带，内容物太重时可肩背。双面的图桉设计，一面是礼拜文房具的经典图标，另一面是插画与文字设计。较薄的布料材质，方便平时收纳在包包里，外出或购物时取出使用。
   ',
   price: 300,
   quantity: 20,
   category_id: 9,
   brand_id: 1,
   is_hidden: false
 )

 Product.create!(
   title: 'Kaweco Liliput 迷你手账型原子笔（平面）',
   description: '
   2014年的新商品，德国 KAWECO Liliput 迷你手账型原子笔，以耐久耐用的黄铜材质所製作，总长度仅有9.6cm，黄铜笔身握在手里温润的触感让人爱不释手！

   贴心提醒：
   黄铜材质表面与空气接触后氧化属于正常现象，保养以铜油擦拭即可恢复原本光泽。
   ',
   price: 2500,
   quantity: 20,
   category_id: 1,
   brand_id: 2,
   is_hidden: false
 )

 Product.create!(
   title: 'Kaweco 经典钢笔（EF尖）',
   description: '
   Kaweco 经典笔款，有着八角形的笔管及可以放进口袋中的小巧体积，20世纪初推出后旋即主导了德国钢笔界的主流。

   便利的特性，也使它成为该品牌销售榜上历久不衰的产品，至今 Kaweco 已是德国体育界标准随身配用钢笔笔具。
   ',
   price: 910,
   quantity: 1,
   category_id: 1,
   brand_id: 2,
   is_hidden: false
 )

 Product.create!(
   title: 'Kaweco Liliput 迷你手账型钢笔（F尖）',
   description: '
   德国 Kaweco 2014年的新商品：Liliput 迷你首张型钢笔，可能会是你所拥有过最小的一支钢笔，以耐久耐用的黄铜材质所制造，总长度仅有 9.6 公分，使用时再将笔盖旋转接上笔尾螺纹处，让书写更方便顺手。
   ',
   price: 3200,
   quantity: 2,
   category_id: 1,
   brand_id: 2,
   is_hidden: false
 )

 Product.create!(
   title: 'Rhodia 筆記本 N°16 （点线）',
   description: '
   来自法国，笔记本纸感滑顺，使用便利的贴心设计，纸质为无酸纸，适用各种笔款墨水书写。

   封面有三道折痕，方便将封面往后折，底部加了纸板，无论在何处记录都不成问题！更特别的是，笔记本上方有裁切线，易撕不费力，方便好用。
   ',
   price: 200,
   quantity: 7,
   category_id: 3,
   brand_id: 3,
   is_hidden: false
 )

 Product.create!(
   title: 'Rhodia 笔记本 N°13（方格）',
   description: '
   来自法国，笔记本纸感滑顺，使用便利的贴心设计，纸质为无酸纸，适用各种笔款墨水书写。

   封面有三道折痕，方便将封面往后折，底部加了纸板，无论在何处记录都不成问题！更特别的是，笔记本上方有裁切线，易撕不费力，方便好用。
   ',
   price: 150,
   quantity: 4,
   category_id: 3,
   brand_id: 3,
   is_hidden: false
 )

 Product.create!(
   title: 'Merchant & Mills Fine Art Print',
   description: '
   精美的经典黑白海报选用高级艺术纸，符合摄影师以及艺术家对于纸质的高要求。海报上为 Merchant & Mills 产品的图案，不但美观又精致，值得收藏。
   ',
   price: 2690,
   quantity: 5,
   category_id: 7,
   brand_id: 7,
   is_hidden: false
 )

 Product.create!(
   title: 'Midori 经典黄铜系列尺',
   description: '
   Midori 黄铜系列——刻画岁月痕迹的文具，这一系列有铅笔盒、尺、原子笔、铅笔还有书签，除了书签以外，全部都是由日本艺人亲手打造。黄铜 (brass) 是红铜与锌的合金，因色黄而得名，黄铜的机械性能和耐磨性能都很好，可用于制造精密仪器、船舶的零件、乐器、枪炮的弹壳等，黄铜表面会因为时间流逝而酸化变色，呈现出独特的光泽，若是你喜欢物品经过长时间的使用而留下岁月的痕迹，那么 Midori 黄铜系列是个很好的选择。
   ',
   price: 400,
   quantity: 9,
   category_id: 5,
   brand_id: 5,
   is_hidden: false
 )

 Product.create!(
   title: 'Midori MD Light笔记本（文库/空白）',
   description: '
   Midori 笔记本让您重新爱上书写。

   Midori 笔记本在目前的笔记本市场中算是独具特色的一款。它所使用的纸质不需多说，适合钢笔书写，能彻底摊开的贴心设计，将书写跟阅读变得更容易了。而它的封面设计非常简单，是相当低调的白色封面，但是封面套上一层半透明的描图纸，增加了设计的深度与层次；在极简之中却有细节。
   ',
   price: 400,
   quantity: 5,
   category_id: 3,
   brand_id: 5,
   is_hidden: false
 )

 Product.create!(
   title: 'Hightide 微型收纳铁盒',
   description: '
   马口铁材质，迷你的尺寸是刚好可以装入名片的大小，共有红、黑、蓝 3 色，可将桌上散落的小物、饰品分门别类地收纳，外型像个小急救箱，可爱的模样让人想一次全入手！
   ',
   price: 270,
   quantity: 4,
   category_id: 6,
   brand_id: 6,
   is_hidden: false
 )

 Product.create!(
   title: 'Hightide 美耐皿浅盘（M）',
   description: '
   大理石模样的美耐皿置物盘，质地轻巧，可随手放置文具、钥匙、个人物品，或是用来当作店铺的零钱盘，美化你的桌上风景。
   ',
   price: 550,
   quantity: 450,
   category_id: 6,
   brand_id: 6,
   is_hidden: false
 )

 Product.create!(
   title: 'Hightide 迷你工具盒',
   description: '
   迷你尺寸的工具箱，适合桌上收纳小物，附有把手，全系列共三种颜色可选择。
   ',
   price: 400,
   quantity: 4,
   category_id: 6,
   brand_id: 6,
   is_hidden: false
 )

 puts '创建商品*18'
