(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2117 0)
(declare-sort var2860 0)
(declare-sort var1294 0)
(declare-sort var2621 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun parser/310440123 (var2117) var2860)
(declare-fun cast-from-var2621-to-var1294 (var2621) var1294)
(declare-fun var1294_getDisplayName/-1919121882 (var1294 Int) String)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2117 var2117)
(declare-const null-Int Int)
(declare-const null-var2860 var2860)
(declare-const var2621-EMPTY_VOCABULARY var2621)
(declare-const var2348 var2117) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var2348 null-var2117)))
(declare-const var3962 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var3962 null-Int)))
(define-const var3341 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert (not (= var3962 var3341))) ; Cond: i0 != $i2 
(define-const var1395 var2860 (parser/310440123 var2348)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r1 == null goto $r11 = <com.github.jknack.handlebars.internal.antlr.VocabularyImpl: com.github.jknack.handlebars.internal.antlr.VocabularyImpl EMPTY_VOCABULARY> 
(assert (= var1395 null-var2860)) ; Cond: $r1 == null 
(define-const var1123 var1294 (cast-from-var2621-to-var1294 var2621-EMPTY_VOCABULARY)) ; Statement: $r11 = <com.github.jknack.handlebars.internal.antlr.VocabularyImpl: com.github.jknack.handlebars.internal.antlr.VocabularyImpl EMPTY_VOCABULARY> 
(assert true) ; Non Conditional
(define-const var395 String (var1294_getDisplayName/-1919121882 var1123 var3962)) ; Statement: $r10 = interfaceinvoke $r11.<com.github.jknack.handlebars.internal.antlr.Vocabulary: java.lang.String getDisplayName(int)>(i0) 
(define-const var763 String (Int_toString/1350422511 var3962)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0) 
(assert true)
(define-const var1871 Bool (= var395 var763)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r12 = new java.lang.StringBuilder 
(assert (= (ite var1871 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3249 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3249)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3249!1 String)
(assert (= var3249!1 ""))
(assert true)
(define-const var445 String (append/672562846 var3249!1 var395)) ; Statement: $r4 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var3249!2 String)
(assert (= var3249!2 (str.++ var3249!1 var395)))
(assert true)
(define-const var2271 String (append/672562846 var445 "<")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var445!1 String)
(assert (= var445!1 (str.++ var445 "<")))
(assert true)
(define-const var1783 String (append/-1001720160 var2271 var3962)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var2271!1 String)
(assert (str.prefixof var2271 var2271!1))
(assert true)
(define-const var1894 String (append/672562846 var1783 ">")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var1783!1 String)
(assert (= var1783!1 (str.++ var1783 ">")))
(assert true)
(define-const var3007 String (toString/-2075883882 var1894)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), cast-from-var2621-to-var1294=([com.github.jknack.handlebars.internal.antlr.VocabularyImpl], com.github.jknack.handlebars.internal.antlr.Vocabulary), var1294_getDisplayName/-1919121882=([com.github.jknack.handlebars.internal.antlr.Vocabulary, int], java.lang.String), Int_toString/1350422511=([int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2117=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var2348=r0, var3962=i0, var3341=$i2, var2860=com.github.jknack.handlebars.internal.antlr.Parser, var1395=$r1, var1294=com.github.jknack.handlebars.internal.antlr.Vocabulary, var2621=com.github.jknack.handlebars.internal.antlr.VocabularyImpl, var1123=$r11, var395=$r10, var763=$r2, var1871=$z0, var3249=$r12, var445=$r4, var2271=$r5, var1783=$r6, var1894=$r7, var3007=$r8}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var2117, r0=var2348, i0=var3962, $i2=var3341, com.github.jknack.handlebars.internal.antlr.Parser=var2860, $r1=var1395, com.github.jknack.handlebars.internal.antlr.Vocabulary=var1294, com.github.jknack.handlebars.internal.antlr.VocabularyImpl=var2621, $r11=var1123, $r10=var395, $r2=var763, $z0=var1871, $r12=var3249, $r4=var445, $r5=var2271, $r6=var1783, $r7=var1894, $r8=var3007}
;seq <java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	i0 := @parameter0: int;	$i2 = (int) -1;	if i0 != $i2 goto $r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r1 == null goto $r11 = <com.github.jknack.handlebars.internal.antlr.VocabularyImpl: com.github.jknack.handlebars.internal.antlr.VocabularyImpl EMPTY_VOCABULARY>;	$r11 = <com.github.jknack.handlebars.internal.antlr.VocabularyImpl: com.github.jknack.handlebars.internal.antlr.VocabularyImpl EMPTY_VOCABULARY>;	$r10 = interfaceinvoke $r11.<com.github.jknack.handlebars.internal.antlr.Vocabulary: java.lang.String getDisplayName(int)>(i0);	$r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0);	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r12 = new java.lang.StringBuilder;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 5