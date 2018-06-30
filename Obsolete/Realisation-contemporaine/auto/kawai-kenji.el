(TeX-add-style-hook
 "kawai-kenji"
 (lambda ()
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "../preamble/preamble-a4-ltjsarticle")
   (LaTeX-add-labels
    "preparations-chaudes-du-foie-gras"
    "service-des-preparations-chaudes-du-foie-gras"
    "nota-preparations-chaudes-du-foie-gras"
    "foie-gras-cuit-dans-une-brioche"
    "ux30d0ux30eaux30a8ux30fcux30b7ux30e7ux30f3"
    "potage-queue-de-boeuf-a-la-francaise"
    "ux539fux6ce8"
    "moscovite"
    "moscovite-a-la-creme"
    "moscovite-aux-fruits"
    "moulage-et-dressage-des-moscovites"
    "mais"
    "souffle-de-mais-a-la-creme"
    "souffle-de-mais-au-paprika"
    "ux539fux6ce8-1"
    "cotelettes-de-saumon-pojarski"
    "godiveau"
    "godiveau-mouille-a-la-glace"
    "nota-godiveau-a"
    "godiveau-a-la-creme")
   (LaTeX-add-index-entries
    "foie gras@foie gras!preparations chaudes!Préparations chaudes du ---"
    "ふおわくら@フォワグラ!おんせい@---の温製料理"
    "foie gras@foie gras!cuit brioche@--- cuit dans une brioche"
    "foie gras@foie gras!strasbourgeoise@--- à la Strasbourgeoise"
    "ふおわくら@フォワグラ!ふりおしゆつつみ@---のブリオシュ包み"
    "ふおわくら@フォワグラ!すとらすふーるふう@---のブリオシュ包み（ストラスブール風）"
    "ふりおしゆ@ブリオシュ!ふおわくら@フォワグラの---包み"
    "すとらすふーるふう@ストラスブール風!ふおわくら@フォワグラのブリオシュ包み（ストラスブール風）"
    "potage@potage!queue boeuf francaisel!--- Queue de boeuf à la française"
    "queue boeuf@queue de boeuf!potage --- à la française"
    "すんたほたーしゆ@澄んだポタージュ!うしてーる@牛テールの---"
    "うしてーる@牛テール!すんたほたーしゆ@---の澄んだポタージュ"
    "moscovite@moscovite!creme@--- à la Crème"
    "creme@crème (à la)!moscovite@mostovite à la ---"
    "もすこういつと@モスコヴィット!あらくれーむ@---・アラクレーム"
    "あらくれーむ@アラクレーム!もつこういつと@モスコヴィット・---"
    "mais@maïs!souffle creme!Soufflé de --- à la crème"
    "souffle@soufflé!mais creme@--- de maïs à la crème"
    "creme@creme (à la)!souffle mais@Soufflé de maïs à la ---"
    "とうもろこし@とうもろこし!すふれくりーむ@---のスフレ・アラクレーム"
    "すふれ@スフレ!とうもろこしくれーむ@とうもろこしの---・アラクレーム"
    "なまくりーむ@生クリーム ⇒ アラクレーム!とうもろこしすふれ@とうもろこしのスフレ・アラ---"
    "mais@maïs!souffle paprika!Soufflé de --- au paprika"
    "souffle@soufflé!mais paprika@--- de maïs au paprika"
    "paprika@paprika!souffle mais@Soufflé de maïs au ---"
    "とうもろこし@とうもろこし!すふれはふりか@---のスフレ・パプリカ風味"
    "すふれ@スフレ!とうもろこしはふりか@とうもろこしの---・パプリカ風味"
    "はふりか@パプリカ!とうもろこしすふれ@とうもろこしのスフレ・---風味"
    "farce!veau graisse de boeuf@--- de veau à la graisse de boeuf"
    "garniture!farce!veau graisse de boeuf@Farce de veau à la graisse de boeuf"
    "farce!veau glodiveau@Godiveau"
    "garniture!farce!godiveau@Godiveau"
    "かるにちゆーる@ガルニチュール!ふあるす@ファルス!こうしにくとけんねあふらのふあるす@仔牛肉とケンネ脂のファルス/ゴディヴォ"
    "ふあるす@ファルス!こうしにくとけんねあふらのふあるす@牛仔牛肉とケンネ脂の---/ゴディヴォ"
    "かるにちゆーる@ガルニチュール!ふあるす@ファルス!こていうお@ゴディヴォ"
    "ふあるす@ファルス!こていうお@ゴディヴォ"
    "godiveau"
    "こていうお@ゴディヴォ"
    "farce@farce!godiveau a@Godiveau A. Godeiveau mouillé à la glace"
    "ふあるす@ファルス!こていうお@ゴディヴォ!a@A. 氷を入れて作るゴディヴォ"
    "godiveau@godiveau!a@A. --- mouillé à la glace"
    "こていうお@ゴディヴォ!a@A. 氷を入れて作る---"
    "farce@farce!godiveau b@Godiveau B. Godeiveau  à la crème"
    "ふあるす@ファルス!こていうお@ゴディヴォ!b@B. 生クリーム入りゴディヴォ"
    "godiveau@godiveau!b@B. --- à la crème"
    "こていうお@ゴディヴォ!b@B. 生クリーム入り---"))
 :latex)

