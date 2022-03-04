INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (210139,'(2-a) Hello','printf("Hello, World!\\n");\nreturn 0;',33,'NONE','hello','「Hello, World!」と表示するプログラムです。<br><br>3行目で、文字列を表示しています。このうちprintfは関数です（「printf関数」と書かれることもあります）。「printf("文字列");」で、文字列を表示せよという指示になります。<br><br>ただし、「\n」は、表示されません。これは改行を意味します。このプログラムでは、「\n」があってもなくても、結果に違いはありませんが、行の終わりは改行するのを、習慣付けておくといいでしょう。<br><br>4行目の「return 0;」は、自作関数であるmainの終了を指示します。<br>','https://paiza.io/projects/e/SW85LQcKgOs3P4Cs4R5etQ');
INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (210242,'(2-b) 四則演算','printf("7 * 3 = %d\\n", 7 * 3);\nprintf("7 / 3 = %d\\n", 7 / 3);',46,'NONE','arith','一行目のprintfの第2引数をみると、7*3とありますが、これは実行時に評価されて「21」となります。そして、第1引数の%dに「21」が代入され、出力結果は「7 * 3 = 21」となります。<br>二行目も同様に考えられますが、整数同士の割り算におけるあまりは切り捨てになるので、第2引数の評価結果は「2」となります。出力結果は「7 / 3 = 2」となります。','https://paiza.io/projects/e/dQ7790yzyt67bR0OOpBRJQ');
INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (210358,'(2-c) パングラム','#include <stdio.h>\nint main(void){\n    printf("waltz, bad nymph, for quick jigs vex.\\n");\n    return 0;\n}',84,'NONE','pangram','helloと同じく、文字列を表示するプログラムです。<br><br>「waltz, bad nymph, for quick jigs vex.」という英文は、見慣れないかもしれませんが、アルファベットのすべての文字を作った短文で、パングラムといいます。<br><br>ところで今回、プログラムコードをすべて、打ち込んでもらいました。最初の「#」や「{」「}」の記号類、そして「&lt;stdio.h&gt;」を、間違えずにタイプできたでしょうか。時間がかかりすぎたと思った人は、やり直してみて、誤タイプ数とタイプ時間を減らすよう努めてください。','https://paiza.io/projects/e/qXvC-1jw3w74sUQYJtGPYQ');
INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (210422,'(3-a) 1増やす','int a = 7;\nprintf("a = %d\\n", a);\na = a + 1;',32,'EASY','increment','このプログラムは、代入によって、変数の持つ値が変わることを確認する<br>ためのものです。<br><br>3行目では、変数aをint型（整数型）で宣言し、7で初期化します。<br><br>4行目ではprintf関数を使用して、変数aの値を出力します。<br>ここでは、出力は「a = 7」です。<br><br>5行目では、変数aの値を1増やします。<br>「=」は代入を表し、右辺の計算結果を、左辺の変数の値とします。この処理により、変数aの値は、8となります。<br>なお、「1増やす」ことは「インクリメント」と呼ばれます。C言語では、<br>このための演算子「++」というのがあり（for文でよく活用されます）、<br>5行目のコードを「a++;」または「++a;」に置き換えても、同じ処理になります。<br><br>6行目では、もう一度、変数aの値を出力します。<br>ここでは、出力は「a = 8」です。','https://paiza.io/projects/e/jLDVnWfLz7KOLA8EH3JRbA');
INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (210539,'(3-b) 曜日計算','int year = 1999, month = 12, day = 31;\nint y = year + year / 4 - year / 100 + year / 400;\nint m = (13 * month + 8) / 5;\nint dow = (y + m + day) % 7;',103,'EASY','zeller','このプログラムはツェラーの公式を用いて、年月日をもとに、曜日を表す<br>数字を出力します。<br><br>3行目ではint型の変数year、month、dayを宣言し、年・月・日を設定しています。<br>ひとつの文で複数の変数を宣言しており、「一括宣言」といいます。<br><br>4行目から6行目までは、ツェラーの公式を用いた曜日計算です。<br>授業では、変数dowに、2行に分けた式で代入を行いましたが、ここでは<br>変数y、mを用意して、計算途中の結果を入れておき、dowの計算に使用しています。<br>時間があれば、授業のプログラムと見比べて、同じことをしているのを確かめてください。<br><br>7行目でprintf関数を呼び出し、dowの値を出力します。<br>出力は1個の数字で、0なら日曜日、1なら月曜日、...、6なら土曜日を表します。<br>このプログラムでは出力は「5」です。1999年12月31日は、金曜日でした。','https://paiza.io/projects/e/-lAja0FhVu6o68EPlCl2EA');
INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (210653,'(3-c) 左と右で...?','int left = 2;\nint right = 0;\nint judge = (right - left + 3) % 3;\nif (judge == 0) {\n  printf("Draw.\\n");\n}\nif (judge == 1) {\n  printf("Right won!\\n");\n}\nif (judge == 2) {\n  printf("Left won!\\n");\n}',150,'EASY','rps','このプログラムでは、左手と右手で「じゃんけん」をします。<br><br>3行目に変数left、4行目に変数rightを宣言して、それぞれの（じゃんけんの）手を<br>整数値で割り当てます。<br>ここでは、0をグー、1をパー、2をチョキとします（英語の"Rock! Paper! Scissors!"と<br>同じ順です）。なので、左手がチョキ、右手がグーという意味になります。<br><br>5行目で宣言する変数judgeには、leftとrightの値をもとに、勝敗を表す整数値が<br>セットされます。剰余演算の%を使用して、結果は必ず0、1、2のいずれかになるように<br>します。なお、「+ 3」は、%で割られる数がマイナスだと都合が悪く，これを避ける<br>ためのものです。<br><br>6行目から8行目まで、9行目から11行目まで、12行目から14行目までについて、<br>judgeの値に応じてちょうど一つの条件式が真（true）と判定されます。<br>6行目、9行目、12行目のjudgeの次は「==」であって「=」ではないことにも注意しましょう。<br>judgeの値が0のときは（leftとrightの値が等しいので）、「Draw.」を出力します。<br>1のときは、「Right won!」を、2のときは「Left won!」です。<br><br>このプログラムの出力は「Right won!」です。左手がチョキ、右手がグーなら、確かに<br>右手の勝ちです。','https://paiza.io/projects/e/LJ4Hc9plYgwm9DHGjf3jhA');
INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (210751,'(4-a) どうやって行く?','if ((hour2 * 60 + min2) - (hour1 * 60 + min1) <= 10) {\n    printf("Take a bike.\\n");\n} else {\n    printf("Let''s walk.\\n");\n}',93,'EASY','howtogo','条件分岐のif（イフ）文を用いて、「10分で到着する必要があるなら、自転車に乗る。<br>そうでないなら、徒歩で行く。」をプログラムにしたものです。<br><br>hour1とmin1が現在時刻の時と分，hour2とmin2が到着時刻の時と分を表します。<br>5行目のif文では、到着時刻と現在時刻との差が10分以下かどうかで分岐します。<br>このプログラムでは、差は8分なので、6行目の処理を行い、出力は「Take a bike.」となります。<br><br>変数min2の値を6に変更して、実行すると、差が11分あるので「Let''s walk.」に変わります。<br><br>5行目には、カッコが3組、書かれています。最も外側のカッコは、if文の構文として<br>必要なもので、内部の2組のカッコは、式の中のまとまりをあらわすものです。','https://paiza.io/projects/e/c1oX4xQQDudK7RgfXWJobQ');
INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (210898,'(4-b) 減っていく','while (num > 0) {\n    num = num - rand() % 5 - 1;\n    printf("num = %d\\n", num);\n}',56,'EASY','drawdown','このプログラムは、変数numの値が0またはマイナスになるまで、1〜5のランダムな値を<br>引くことを繰り返します。<br>繰り返しにはwhile文を用います。<br><br>4行目では変数numをint型（整数型）で宣言し、20で初期化します。<br><br>6行目がwhile文です。<br>「while (num &gt; 0)」は、「numが0より大きい間、処理を繰り返す」ですが、<br>「numが0以下になったら、繰り返しの処理を終える」と解釈することもできます。<br>繰り返しの1回分の処理は、6行目の末尾の「{」から、9行目の「}」までで、実際には<br>7行目と8行目になります。<br><br>7行目では1〜5のランダムな値（乱数）をnumから引きます。<br>ここでは乱数の生成に、標準関数の一つであるrand関数を使用します。<br>「%」は剰余（余り）の演算子で、結果として「rand() % 5」は、0〜4のいずれかとなります。<br>1〜5のランダムな値で減らしたいので「- 1」とし、numの新しい値とします。<br>なお、rand関数を使用するためには、stdlib.hというヘッダファイルを読み込む必要が<br>あり、このプログラムでは2行目で指定しています。<br><br>numの値の出力は、値の初期化後の5行目と、while文の繰り返し処理の8行目で行います。<br>最初は「num = 20」で、そこから、値が減っていきます。<br>ただしこのプログラムでは、rand関数が返す値は決まっています。<br>最後は「num = 0」となります。<br><br>paiza.ioで出力を最後まで見るには、「実行」のボタンのすぐ下にマウスカーソルを<br>移動させます。そうすると、マウスカーソルの形状が変わりますので、ドラッグを<br>すると、出力・入力の欄が上下に伸び縮みします。試してみてください。','https://paiza.io/projects/e/JNfVQyPcGjHdLiOewxKwlw');
INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (210957,'(4-c) 座標','for (i = 1; i <= 15; i++) {\n    printf("%d: (%d, %d)\\n", i, x, y);\n    if (x == n) {\n        n++;\n        x = 1;\n        y = n;\n    } else {\n        x++;\n        y--;\n    }\n}',85,'EASY','grid','このプログラムは、2次元座標上の点(1, 1)から始まって、x座標もy座標も正の整数と<br>なるような座標を出力します。<br><br>6行目のfor文を詳しく見ます。<br>はじめに「i = 1」で、変数iの値を1にします。<br>次に「i &lt;= 15」で、iの値が15以下のあいだ、繰り返しの処理を行います。<br>1回分の処理を終えると、「i++」で、iの値を1増やします。<br>ですのでこのプログラムは、整数型の変数iの値は1から15まで変化し、それぞれについて<br>7～15行目の処理を行います。<br>iの値が1増えて、16になったら、「i &lt;= 15」が偽と判定されて、繰り返しを終えます。<br><br>7行目ではprintf関数を呼び出して、変数i、x、yの値を表示します。<br><br>8～15行目は、if～elseを用いた条件分岐です。<br>xの値がnの値と等しいとき、nを1増やし、xに1、yにnの値を代入します。<br>そうでないとき、xを1増やし、yを1減らします。「--」は「++」の反対で，1減らす<br>という意味です。<br>変数iを無視して、n、x、yの変化に着目すると、nは1ずつ増えていき、<br>x+y=nという等式を維持したまま、xが1から1ずつ増えてnまで、yはnから1ずつ減って1まで、<br>それぞれ変化します。<br><br>出力は「1: (1,1)」から「15: (5, 1)」までの15行です。','https://paiza.io/projects/e/QIHKT_4YAuW8HO5gYR4jLw');
INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (211073,'(5-a) エラトステネスのふるい','for (i = 2; i < 100; i++) {\n    if (a[i] == 0) {\n        printf("%d ", i);\n        for (j = i * 2; j < 100; j = j + i) {\n            a[j] = 1;\n        }\n    }\n}',79,'EASY','sieve','このプログラムは、「2」から「97」まで、100未満の素数を小さい数から順に出力します。<br>1行で出力し、数どうしの間には空白文字が入ります。<br><br>3行目の配列宣言は、素数か合成数かを記録するためのものです。<br>2≦i＜100のとき、a[i]が0ならば素数、1ならば合成数になるようにします。<br>宣言では、a[100]となっていますが、式でa[100]の参照や代入はできません。<br>またこのプログラムでは、a[0]とa[1]の値は参照されません。<br><br>4行目の変数宣言は、for文で使用します。このような変数を、「ループ変数」または<br>「ループカウンタ」と言います。2重ループも使用するので、iとjの2つを宣言します。<br><br>6～8行目では，配列の各要素の値を0にします。<br>いったん、すべて素数とみなします。<br><br>10～17行目が、「エラトステネスのふるい」と呼ばれるアルゴリズムです。<br>変数iは2から99まで変化します。11行目で、a[i]の値が0なら、iは素数であることを<br>意味し、その値を出力します。そして、変数jには、iの2倍、iの3倍、...、の順に<br>値を変化させ、a[j]に1を代入して、jは素数でない（合成数である）ものとします。<br><br>配列aの各要素は、1なら合成数、0なら素数を表します。このように値として<br>0か1かを持つ変数のことを、「フラグ」と言います。また14行目のように1を代入するのは、<br>「フラグを立てる」と呼ばれます。','https://paiza.io/projects/e/Km930OAb0oRy0rHtzlbo-w');
INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (211197,'(5-b) 3重ループで...?','int i, j, k;\nfor (i = 0; i < 3; i++) {\n    for (j = 0; j < 3; j++) {\n        c[i][j] = 0;\n        for (k = 0; k < 3; k++) {\n            c[i][j] = c[i][j] + a[i][k] * b[k][j];\n        }\n    }\n}',105,'EASY','matrix','これは行列の積の定義に基づいて、3行3列の行列の2乗を計算し、<br>右下成分の値を出力するプログラムです。<br><br>3～5行目で、3つの2次元配列を宣言し、aとbには初期化も行っています。<br>同じ値ですが別々に初期化します。<br>cは初期化をせず、for文の中で各成分を0にします。<br><br>3つの配列a、b、cを、それぞれ3行3列の行列A、B、Cに対応付けるとき、<br>C=ABの計算を行います。<br><br>3重ループになるので、ループ用の変数はi、j、kの3つです。<br><br>7～14行目が、行列の積の計算です。<br>i、j、kのいずれのfor文も、0から始まって1ずつ増え、3未満のあいだ、<br>繰り返しの処理をします。ですので、各変数のとる値は0以上2以下です。<br>数学で、行列の成分をいうとき、左上を(1,1)成分や、a11で表記することが多いですが、<br>このプログラムで左上はa[0][0]になります。<br>C言語では、配列の添字（[ ]に入る値）の最初は0となります。<br><br>成分ごとのかけ算は、11行目のうちa[i][k] * b[k][j]の部分です。<br>数学の書籍だと「Σ」または「…」を使用して書かれることが多い、成分ごとの<br>かけ算の和については、10～12行目の、変数kに関するfor文と、11行目の<br>「c[i][j] = c[i][j] + ○」とを組み合わせて、行っています。<br><br>出力は、c[2][2]、ということで行列Cの最も右下の成分の値のみです。<br>このプログラムでは「7」です。','https://paiza.io/projects/e/h80UMbdaaQekRGmq76wHaQ');
INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (211238,'(6-a) 65','int i = 65;\nchar c = ''A'';\ndouble d = 65;\nprintf("i = %d\\n", i);\nprintf("c = %d\\n", c);\nprintf("d = %f\\n", d);',86,'EASY','65','このプログラムは、データ型に応じた変数の内容や出力方法などの違いを確認するための<br>ものです。<br><br>3〜5行目で3つの変数を異なるデータ型で宣言し、初期化しています。<br>3行目では変数iをint型で宣言し、整数値65で初期化します。<br>4行目では変数cをchar型で宣言し、文字''A''で初期化となっていますが、ASCIIコードに<br>基づき65という整数値を、変数cは保持します。<br>5行目では変数dをdouble型で宣言し、整数値65で初期化となっていますが、double型に変換<br>された実数値を、変数dは保持します。<br><br>6〜8行目でprintf関数を用いて、3つの変数の値を出力します。<br>C言語では、printfなどの関数で変数の値の表示形式を指定するために「フォーマット指定子」<br>を用います。以下にフォーマット指定子の例を挙げます。<br>「%d」: 10進数の整数値として出力する。<br>「%x」: 16進数の整数値として出力する。<br>「%f」: 実数値として出力する。<br>「%c」: 文字として出力する。<br><br>6行目では、フォーマット指定子が「%d」、変数iの値が65なので、出力は<br>「i = 65」となります。<br><br>7行目では、フォーマット指定子が「%d」、変数cの値が65なので、出力は<br>「c = 65」となります。<br>変数cの値を文字として出力したい場合には、「printf("c = %c\n", c);」と書きます。<br><br>8行目では、フォーマット指定子が「%f」、変数の値は（double型の）65です。出力は<br>「c = 65.000000」となります。<br><br>フォーマット指定子はデータ型に応じて適切に指定する必要があります。<br>「printf("i = %d\n", i);」の「%d」を「%f」に替えたり、<br>「printf("d = %f\n", d);」の「%f」を「%d」に替えたりすると、警告が出て、<br>期待する出力になりません。','https://paiza.io/projects/e/NinwOR8E29o2X6_1bihp-A');
INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (211392,'(6-b) 文字列走査','char s[20] = " WAKAYAMADAIGAKUMAE";\nchar c = ''A'';\nfor (i = 1; i <= 18; i++) {\n    if (s[i] == c) {\n        printf("%d ", i - p);\n        p = i;\n    }\n}',95,'EASY','scan','このプログラムは、WAKAYAMADAIGAKUMAEという文字列で、特定の文字の出現を出力する<br>プログラムです。出力は「2 2 2 2 2 3 4」です。Aの文字が、先頭から2文字目、<br>その2文字あと（4文字目）、2文字あと（6文字目）、2文字あと（8文字目）、2文字あと<br>（10文字目）、3文字あと（13文字目）、4文字あと（17文字目）に出現することを表します。<br><br>4行目にcharの配列sを宣言し、初期化します。Wの前には空白文字があります。これにより、<br>s[1]がWの文字になります。<br>5行目は、特定の文字、ここではAを、char型変数cにセットします。<br><br>6行目から11行目のforループで、変数iは1から始まって1ずつ増えます。7行目のs[i]により、<br>sに格納された文字列を1文字ずつ走査（スキャン）します。この繰り返し処理では、<br>iの最後の値は18ですが、s[18]は文字列の最後の文字、Eとなります。<br><br>7行目のif文では、s[i]がcと等しい（同じ文字である）ときに、8～9行目を実行します。<br>8行目のi - pは、前に出力した位置から何文字あと（最初については先頭から何文字目か）を<br>表し、この値を出力します。8行目を「printf("%d ", i)」に置き換えて実行すると、<br>出力されるどの数値も、先頭から何文字目になるかを表します。<br>そして9行目の代入で、特定の文字の最後の出現位置を更新します。<br><br>forループの中では改行していませんので、12行目のところで改行します。','https://paiza.io/projects/e/aOR61s7xbSX6tGcv6A15LA');
INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (211444,'(6-c) 百万分の1と比べて...?','#include <stdio.h>\n#include <math.h>\nint main(void){\n    double x1, x2;\n    x1 = 2;\n    x2 = 3;\n    while (fabs(x2 - x1) > 1.0e-6) {\n        x1 = x2;\n        x2 = x1 - (x1 * x1 - 5) / (2 * x1);\n    }\n    printf("x = %f\\n", x2);\n    return 0;\n}',154,'FULL','newton','このプログラムは、ニュートン法と呼ばれるアルゴリズムを使用して、ルート5（√5）の<br>近似値を計算します。<br><br>1行目のinclude文は、これまでと同じですが、2行目のinclude文は、数学関数のfabsを<br>呼び出すために書いています。<br><br>4～6行目では、初期値を定めます。<br>√5の平方根は2以上3以下であることはわかっているので、x1=2、x2=3としています。<br>値をそれぞれ-2と-3にすると、-√5を求めることになり、出力は負の数になります。<br><br>7～10行目がニュートン法のアルゴリズムです。<br><br>7行目のfabsは、double型の絶対値を計算する関数です。<br>また1.0e-6は指数表記と呼ばれ、1.0×10の6乗を意味し、百万分の1です。<br>なのでこの行は、x2とx1の差の絶対値が百万分の1より大きい間、8～9行目の処理を繰り返す<br>という意味になります。<br><br>8行目と9行目で、x1とx2の値を更新します。<br>9行目は、ニュートン法で用いられる x2 = x1 - f(x1) / f''(x1) という式と、<br>f(x)=x*x-5という関数とを組み合わせてできた代入です。<br>f(x)=0を解くと、x=±√5です（f(x)=0の解が複数ある場合、ニュートン法は<br>そのうちの1つだけを求めます）。またf(x)の導関数は、f''(x)=2*xです。<br><br>11行目で、変数x2の値を解として出力します。このプログラムでは「x = 2.236068」です。','https://paiza.io/projects/e/h8Ad3T_L3iykLobJgguBAA');
INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (211591,'(7-a) 正か負か','int sign(int n){\n    return (n > 0) - (n < 0);\n}\nprintf("%d\\n", sign(-1 + 2));',59,'EASY','sign','このプログラムでは「符号関数」を自作し、3つの入力に対し結果を返しています。<br>与えられた実数が正なら1、負なら-1、0なら0を返す関数を、符号関数といいます。<br><br>自作関数signは、整数型の値をとります。戻り値も整数型の値です。<br>引数をnに格納し、3行目では特殊な（ただしC言語のルールとして認められた）方法で<br>計算を行い、結果を返します。<br><br>ルールは、大小比較の結果が真のとき、その式の結果は1に、偽のときは0になる、<br>というものです。<br>引数nが正の値のとき、n &gt; 0は真なので1、n &lt; 0は偽なので0となり、<br>「(n &gt; 0) - (n &lt; 0)」は、1 - 0で1です（そしてこの値が戻り値となります）。<br>同様にnが負の値のとき、n &gt; 0は偽なので0、n &lt; 0は真なので1、そして<br>「(n &gt; 0) - (n &lt; 0)」は、0 - 1で-1です。<br>nが0のときは、n &gt; 0は偽なので0、n &lt; 0も偽なので0、そして<br>「(n &gt; 0) - (n &lt; 0)」は、0 - 0で0です。<br><br>このプログラムでは、6～8行目のそれぞれで、sign関数を呼び出しています。<br>6行目ではsign(-333)により、-333が、3行目の仮引数nに渡されます（int n = -333;<br>のあと、関数の中の処理をしていく、と考えるといいでしょう）。<br>7行目ではsign(-1 + 2)により、計算結果の1が渡されます。<br>8行目ではsign(0.0)ですが、関数の仮引数はint型なので，整数値の0が渡されます。<br><br>出力は、1行目が「-1」、2行目は「1」、3行目は「0」です。','https://paiza.io/projects/e/j_SHX0aDwy-1Ce4F6QQOww');
INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (211654,'(7-b) 距離','double distance(double x1, double y1,\n                double x2, double y2){\n    double dx = x2 - x1;\n    double dy = y2 - y1;\n    return sqrt(dx * dx + dy * dy);\n}',107,'EASY','distance','三平方の定理を用いて、2次元平面上の2点間の距離を求めるプログラムです。<br><br>距離を求めるのは、3行目から始まる自作関数distanceです。<br>以下のとおり、4つの引数をとります。<br>x1: 1つ目の点のx座標<br>y1: 1つ目の点のy座標<br>x2: 2つ目の点のx座標<br>y2: 2つ目の点のy座標<br>戻り値となる距離と合わせて、この関数が扱う数値は全てdouble型です。<br><br>7行目では平方根の計算にsqrt関数を使用しています。<br>sqrt関数を使用するにはヘッダファイル「math.h」を読み込む必要があり、<br>このプログラムでは2行目で指定しています。<br><br>10～11行目では2点の座標を表す変数をdouble型で宣言し、初期化します。<br>これらの変数と、3～4行目の変数（仮引数）は、それぞれ同じ名前ですが、<br>有効範囲が異なるため、別の実体となります。例えば、関数distanceの中で、<br>変数x1の値を変更しても、main関数の中のx1は変わりません。<br><br>12〜14行目ではprintf関数を使用して、2点間の距離を表示します。<br>表示結果は「(-0.400000,1.220000)-(2.600000,-2.780000): 5.000000」です。<br>距離は5です。なお、2点のx座標の差は3、y座標の差は4となります。<br><br>3行目の「(」と4行目の「)」、12行目の最初の「(」と14行目の最後の「)」が、<br>それぞれ、対応する括弧となります。多くの場合、ペアとなる「(」と「)」や「[」と「]」は<br>同じ行に書きますが、このように、異なる行になってもかまいません。','https://paiza.io/projects/e/EYQ0SWQ4-AL2gGDM_kW7Yw');
INSERT INTO question(question_id,name,type_content,count,difficulty,basename,commentary,url) VALUES (211769,'(7-c) パリティビット','void parity(int a[8]){\n    int i, b = 0;\n    for (i = 0; i < 7; i++) {\n        b = (b + a[i]) % 2;\n    }\n    a[7] = b;\n}',68,'EASY','paritybit','0と1の並びの最後に、パリティビットを設定するというプログラムです。<br>パリティビットは、通信の誤り検出を行うための最も単純な仕組みです。<br><br>このプログラムでは3つの関数を定義しています。<br>2～8行目のprintarray関数は、配列aの各要素を、空白区切りで出力します。<br>9～15行目のparity関数で、パリティビットを設定します。<br>16～22行目はmain関数です。<br>printarray関数とparity関数は、戻り値の型がvoidで、何も返しません。どちらにも、<br>return文を書いていません。<br><br>parity関数を詳しく見ていきます。この関数は配列を引数にとります。<br>10行目で、forループ用の変数iと、パリティビット算出用の変数bを宣言し、bは0で<br>初期化します。<br><br>11～13行目のforループで、bの値を更新します。配列の要素を足して2で割った余りを、<br>新たなbの値とします。<br>a[0]からa[6]までには0か1のいずれかが格納されていて、このforループを終えたとき、<br>a[0]からa[6]までの1の数が奇数個なら、bの値は1で、偶数個なら、bの値は0となります。<br><br>14行目で、このbの値を、a[7]に代入します。変数bは、この関数の外では参照できませんが、<br>配列aは、関数の中で要素の値を変更し、呼び出し元で参照できます（なぜこのような<br>ことができるのかというと、関数の仮引数・実引数として配列を指定したとき、実際には<br>ポインタになるからです）。<br><br>パリティビットを含むすべての要素（このプログラムでは、a[0]からa[7]までの8個）<br>を見ると、1の数は偶数個になります。上で「通信の誤り検出」と書きましたが、<br>この8ビットを送って、受け取った側では1の数が奇数個だったら、通信に誤りがあったと<br>判断できるのです。<br><br>main関数では、まず、17行目の初期化を含む配列の宣言で、各要素に値が格納されます。<br>この配列aを実引数として、18行目にprintarray、19行目にparity、20行目に再びprintarrayの<br>各関数を呼び出します。<br>19行目の呼び出しの中で、a[7]=1の代入が行われます。<br>出力は、1行目は「0 0 1 0 0 1 1 999」、2行目は「0 0 1 0 0 1 1 1」となります。','https://paiza.io/projects/e/RByRDD0BJJfjEjg-fbpeeg');
