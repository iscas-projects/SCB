(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1064 0)
(declare-sort var3225 0)
(declare-sort var727 0)
(declare-sort var2503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun parser/310440123 (var1064) var3225)
(declare-fun getVocabulary/1387097077 (var2503) var727)
(declare-fun cast-from-var3225-to-var2503 (var3225) var2503)
(declare-fun var727_getDisplayName/-1919121882 (var727 Int) String)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1064 var1064)
(declare-const null-Int Int)
(declare-const null-var3225 var3225)
(declare-const var181 var1064) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var181 null-var1064)))
(declare-const var649 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var649 null-Int)))
(define-const var2474 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert (not (= var649 var2474))) ; Cond: i0 != $i2 
(define-const var1747 var3225 (parser/310440123 var181)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r1 == null goto $r11 = <com.github.jknack.handlebars.internal.antlr.VocabularyImpl: com.github.jknack.handlebars.internal.antlr.VocabularyImpl EMPTY_VOCABULARY> 
(assert (not (= var1747 null-var3225))) ; Negate: Cond: $r1 == null  
(define-const var2015 var3225 (parser/310440123 var181)) ; Statement: $r9 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var3024 var727 (getVocabulary/1387097077 (cast-from-var3225-to-var2503 var2015))) ; Statement: $r11 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.Vocabulary getVocabulary()>() 
 ; Statement: goto [?= $r10 = interfaceinvoke $r11.<com.github.jknack.handlebars.internal.antlr.Vocabulary: java.lang.String getDisplayName(int)>(i0)] 
(assert true) ; Non Conditional
(define-const var926 String (var727_getDisplayName/-1919121882 var3024 var649)) ; Statement: $r10 = interfaceinvoke $r11.<com.github.jknack.handlebars.internal.antlr.Vocabulary: java.lang.String getDisplayName(int)>(i0) 
(define-const var2635 String (Int_toString/1350422511 var649)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0) 
(assert true)
(define-const var2570 Bool (= var926 var2635)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r12 = new java.lang.StringBuilder 
(assert (= (ite var2570 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3939 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3939)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3939!1 String)
(assert (= var3939!1 ""))
(assert true)
(define-const var1262 String (append/672562846 var3939!1 var926)) ; Statement: $r4 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3939!2 String)
(assert (= var3939!2 (str.++ var3939!1 var926)))
(assert true)
(define-const var2280 String (append/672562846 var1262 "<")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var1262!1 String)
(assert (= var1262!1 (str.++ var1262 "<")))
(assert true)
(define-const var3985 String (append/-1001720160 var2280 var649)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2280!1 String)
(assert (str.prefixof var2280 var2280!1))
(assert true)
(define-const var3587 String (append/672562846 var3985 ">")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var3985!1 String)
(assert (= var3985!1 (str.++ var3985 ">")))
(assert true)
(define-const var1290 String (toString/-2075883882 var3587)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), getVocabulary/1387097077=([com.github.jknack.handlebars.internal.antlr.Recognizer], com.github.jknack.handlebars.internal.antlr.Vocabulary), cast-from-var3225-to-var2503=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), var727_getDisplayName/-1919121882=([com.github.jknack.handlebars.internal.antlr.Vocabulary, int], java.lang.String), Int_toString/1350422511=([int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1064=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var181=r0, var649=i0, var2474=$i2, var3225=com.github.jknack.handlebars.internal.antlr.Parser, var1747=$r1, var2015=$r9, var727=com.github.jknack.handlebars.internal.antlr.Vocabulary, var2503=com.github.jknack.handlebars.internal.antlr.Recognizer, var3024=$r11, var926=$r10, var2635=$r2, var2570=$z0, var3939=$r12, var1262=$r4, var2280=$r5, var3985=$r6, var3587=$r7, var1290=$r8}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var1064, r0=var181, i0=var649, $i2=var2474, com.github.jknack.handlebars.internal.antlr.Parser=var3225, $r1=var1747, $r9=var2015, com.github.jknack.handlebars.internal.antlr.Vocabulary=var727, com.github.jknack.handlebars.internal.antlr.Recognizer=var2503, $r11=var3024, $r10=var926, $r2=var2635, $z0=var2570, $r12=var3939, $r4=var1262, $r5=var2280, $r6=var3985, $r7=var3587, $r8=var1290}
;seq <java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	i0 := @parameter0: int;	$i2 = (int) -1;	if i0 != $i2 goto $r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r1 == null goto $r11 = <com.github.jknack.handlebars.internal.antlr.VocabularyImpl: com.github.jknack.handlebars.internal.antlr.VocabularyImpl EMPTY_VOCABULARY>;	$r9 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r11 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.Vocabulary getVocabulary()>();	goto [?= $r10 = interfaceinvoke $r11.<com.github.jknack.handlebars.internal.antlr.Vocabulary: java.lang.String getDisplayName(int)>(i0)];	$r10 = interfaceinvoke $r11.<com.github.jknack.handlebars.internal.antlr.Vocabulary: java.lang.String getDisplayName(int)>(i0);	$r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0);	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r12 = new java.lang.StringBuilder;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 5