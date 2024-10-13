(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3020 0)
(declare-sort var2689 0)
(declare-sort var61 0)
(declare-sort var863 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun parser/145254134 (var3020) var2689)
(declare-fun getVocabulary/1556073641 (var863) var61)
(declare-fun cast-from-var2689-to-var863 (var2689) var863)
(declare-fun var61_getDisplayName/1574563075 (var61 Int) String)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3020 var3020)
(declare-const null-Int Int)
(declare-const null-var2689 var2689)
(declare-const var377 var3020) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var377 null-var3020)))
(declare-const var2007 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2007 null-Int)))
(define-const var833 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert (not (= var2007 var833))) ; Cond: i0 != $i2 
(define-const var2450 var2689 (parser/145254134 var377)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r1 == null goto $r11 = <org.antlr.v4.runtime.VocabularyImpl: org.antlr.v4.runtime.VocabularyImpl EMPTY_VOCABULARY> 
(assert (not (= var2450 null-var2689))) ; Negate: Cond: $r1 == null  
(define-const var2188 var2689 (parser/145254134 var377)) ; Statement: $r9 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var545 var61 (getVocabulary/1556073641 (cast-from-var2689-to-var863 var2188))) ; Statement: $r11 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.Vocabulary getVocabulary()>() 
 ; Statement: goto [?= $r10 = interfaceinvoke $r11.<org.antlr.v4.runtime.Vocabulary: java.lang.String getDisplayName(int)>(i0)] 
(assert true) ; Non Conditional
(define-const var2413 String (var61_getDisplayName/1574563075 var545 var2007)) ; Statement: $r10 = interfaceinvoke $r11.<org.antlr.v4.runtime.Vocabulary: java.lang.String getDisplayName(int)>(i0) 
(define-const var3163 String (Int_toString/1350422511 var2007)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0) 
(assert true)
(define-const var2674 Bool (= var2413 var3163)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r12 = new java.lang.StringBuilder 
(assert (= (ite var2674 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1166 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1166)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1166!1 String)
(assert (= var1166!1 ""))
(assert true)
(define-const var1911 String (append/672562846 var1166!1 var2413)) ; Statement: $r4 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var1166!2 String)
(assert (= var1166!2 (str.++ var1166!1 var2413)))
(assert true)
(define-const var1898 String (append/672562846 var1911 "<")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var1911!1 String)
(assert (= var1911!1 (str.++ var1911 "<")))
(assert true)
(define-const var3079 String (append/-1001720160 var1898 var2007)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var1898!1 String)
(assert (str.prefixof var1898 var1898!1))
(assert true)
(define-const var2512 String (append/672562846 var3079 ">")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var3079!1 String)
(assert (= var3079!1 (str.++ var3079 ">")))
(assert true)
(define-const var3059 String (toString/-2075883882 var2512)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getVocabulary/1556073641=([org.antlr.v4.runtime.Recognizer], org.antlr.v4.runtime.Vocabulary), cast-from-var2689-to-var863=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), var61_getDisplayName/1574563075=([org.antlr.v4.runtime.Vocabulary, int], java.lang.String), Int_toString/1350422511=([int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3020=org.antlr.v4.runtime.atn.ParserATNSimulator, var377=r0, var2007=i0, var833=$i2, var2689=org.antlr.v4.runtime.Parser, var2450=$r1, var2188=$r9, var61=org.antlr.v4.runtime.Vocabulary, var863=org.antlr.v4.runtime.Recognizer, var545=$r11, var2413=$r10, var3163=$r2, var2674=$z0, var1166=$r12, var1911=$r4, var1898=$r5, var3079=$r6, var2512=$r7, var3059=$r8}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var3020, r0=var377, i0=var2007, $i2=var833, org.antlr.v4.runtime.Parser=var2689, $r1=var2450, $r9=var2188, org.antlr.v4.runtime.Vocabulary=var61, org.antlr.v4.runtime.Recognizer=var863, $r11=var545, $r10=var2413, $r2=var3163, $z0=var2674, $r12=var1166, $r4=var1911, $r5=var1898, $r6=var3079, $r7=var2512, $r8=var3059}
;seq <java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	i0 := @parameter0: int;	$i2 = (int) -1;	if i0 != $i2 goto $r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r1 == null goto $r11 = <org.antlr.v4.runtime.VocabularyImpl: org.antlr.v4.runtime.VocabularyImpl EMPTY_VOCABULARY>;	$r9 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r11 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.Vocabulary getVocabulary()>();	goto [?= $r10 = interfaceinvoke $r11.<org.antlr.v4.runtime.Vocabulary: java.lang.String getDisplayName(int)>(i0)];	$r10 = interfaceinvoke $r11.<org.antlr.v4.runtime.Vocabulary: java.lang.String getDisplayName(int)>(i0);	$r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0);	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r12 = new java.lang.StringBuilder;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 5