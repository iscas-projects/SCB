(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1026 0)
(declare-sort var237 0)
(declare-sort var509 0)
(declare-sort var112 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun parser/145254134 (var1026) var237)
(declare-fun cast-from-var112-to-var509 (var112) var509)
(declare-fun var509_getDisplayName/1574563075 (var509 Int) String)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1026 var1026)
(declare-const null-Int Int)
(declare-const null-var237 var237)
(declare-const var112-EMPTY_VOCABULARY var112)
(declare-const var1261 var1026) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var1261 null-var1026)))
(declare-const var2384 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2384 null-Int)))
(define-const var2230 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert (not (= var2384 var2230))) ; Cond: i0 != $i2 
(define-const var656 var237 (parser/145254134 var1261)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r1 == null goto $r11 = <org.antlr.v4.runtime.VocabularyImpl: org.antlr.v4.runtime.VocabularyImpl EMPTY_VOCABULARY> 
(assert (= var656 null-var237)) ; Cond: $r1 == null 
(define-const var3758 var509 (cast-from-var112-to-var509 var112-EMPTY_VOCABULARY)) ; Statement: $r11 = <org.antlr.v4.runtime.VocabularyImpl: org.antlr.v4.runtime.VocabularyImpl EMPTY_VOCABULARY> 
(assert true) ; Non Conditional
(define-const var888 String (var509_getDisplayName/1574563075 var3758 var2384)) ; Statement: $r10 = interfaceinvoke $r11.<org.antlr.v4.runtime.Vocabulary: java.lang.String getDisplayName(int)>(i0) 
(define-const var3318 String (Int_toString/1350422511 var2384)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0) 
(assert true)
(define-const var471 Bool (= var888 var3318)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r12 = new java.lang.StringBuilder 
(assert (= (ite var471 1 0) 0)) ; Cond: $z0 == 0 
(define-const var485 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var485)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var485!1 String)
(assert (= var485!1 ""))
(assert true)
(define-const var993 String (append/672562846 var485!1 var888)) ; Statement: $r4 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var485!2 String)
(assert (= var485!2 (str.++ var485!1 var888)))
(assert true)
(define-const var3411 String (append/672562846 var993 "<")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<") 
(declare-const var993!1 String)
(assert (= var993!1 (str.++ var993 "<")))
(assert true)
(define-const var2721 String (append/-1001720160 var3411 var2384)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var3411!1 String)
(assert (str.prefixof var3411 var3411!1))
(assert true)
(define-const var1572 String (append/672562846 var2721 ">")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">") 
(declare-const var2721!1 String)
(assert (= var2721!1 (str.++ var2721 ">")))
(assert true)
(define-const var1535 String (toString/-2075883882 var1572)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), cast-from-var112-to-var509=([org.antlr.v4.runtime.VocabularyImpl], org.antlr.v4.runtime.Vocabulary), var509_getDisplayName/1574563075=([org.antlr.v4.runtime.Vocabulary, int], java.lang.String), Int_toString/1350422511=([int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1026=org.antlr.v4.runtime.atn.ParserATNSimulator, var1261=r0, var2384=i0, var2230=$i2, var237=org.antlr.v4.runtime.Parser, var656=$r1, var509=org.antlr.v4.runtime.Vocabulary, var112=org.antlr.v4.runtime.VocabularyImpl, var3758=$r11, var888=$r10, var3318=$r2, var471=$z0, var485=$r12, var993=$r4, var3411=$r5, var2721=$r6, var1572=$r7, var1535=$r8}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var1026, r0=var1261, i0=var2384, $i2=var2230, org.antlr.v4.runtime.Parser=var237, $r1=var656, org.antlr.v4.runtime.Vocabulary=var509, org.antlr.v4.runtime.VocabularyImpl=var112, $r11=var3758, $r10=var888, $r2=var3318, $z0=var471, $r12=var485, $r4=var993, $r5=var3411, $r6=var2721, $r7=var1572, $r8=var1535}
;seq <java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	i0 := @parameter0: int;	$i2 = (int) -1;	if i0 != $i2 goto $r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r1 == null goto $r11 = <org.antlr.v4.runtime.VocabularyImpl: org.antlr.v4.runtime.VocabularyImpl EMPTY_VOCABULARY>;	$r11 = <org.antlr.v4.runtime.VocabularyImpl: org.antlr.v4.runtime.VocabularyImpl EMPTY_VOCABULARY>;	$r10 = interfaceinvoke $r11.<org.antlr.v4.runtime.Vocabulary: java.lang.String getDisplayName(int)>(i0);	$r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0);	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r12 = new java.lang.StringBuilder;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 5