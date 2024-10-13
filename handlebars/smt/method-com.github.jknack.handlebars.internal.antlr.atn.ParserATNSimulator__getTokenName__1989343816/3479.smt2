(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2840 0)
(declare-sort var2417 0)
(declare-sort var3659 0)
(declare-sort var2424 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun parser/310440123 (var2840) var2417)
(declare-fun getVocabulary/1387097077 (var2424) var3659)
(declare-fun cast-from-var2417-to-var2424 (var2417) var2424)
(declare-fun var3659_getDisplayName/-1919121882 (var3659 Int) String)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-const null-var2840 var2840)
(declare-const null-Int Int)
(declare-const null-var2417 var2417)
(declare-const var2964 var2840) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var2964 null-var2840)))
(declare-const var2652 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2652 null-Int)))
(define-const var3107 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert (not (= var2652 var3107))) ; Cond: i0 != $i2 
(define-const var1277 var2417 (parser/310440123 var2964)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r1 == null goto $r11 = <com.github.jknack.handlebars.internal.antlr.VocabularyImpl: com.github.jknack.handlebars.internal.antlr.VocabularyImpl EMPTY_VOCABULARY> 
(assert (not (= var1277 null-var2417))) ; Negate: Cond: $r1 == null  
(define-const var2521 var2417 (parser/310440123 var2964)) ; Statement: $r9 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert true)
(define-const var1110 var3659 (getVocabulary/1387097077 (cast-from-var2417-to-var2424 var2521))) ; Statement: $r11 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.Vocabulary getVocabulary()>() 
 ; Statement: goto [?= $r10 = interfaceinvoke $r11.<com.github.jknack.handlebars.internal.antlr.Vocabulary: java.lang.String getDisplayName(int)>(i0)] 
(assert true) ; Non Conditional
(define-const var2878 String (var3659_getDisplayName/-1919121882 var1110 var2652)) ; Statement: $r10 = interfaceinvoke $r11.<com.github.jknack.handlebars.internal.antlr.Vocabulary: java.lang.String getDisplayName(int)>(i0) 
(define-const var854 String (Int_toString/1350422511 var2652)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0) 
(assert true)
(define-const var2746 Bool (= var2878 var854)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r12 = new java.lang.StringBuilder 
(assert (not (= (ite var2746 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), getVocabulary/1387097077=([com.github.jknack.handlebars.internal.antlr.Recognizer], com.github.jknack.handlebars.internal.antlr.Vocabulary), cast-from-var2417-to-var2424=([com.github.jknack.handlebars.internal.antlr.Parser], com.github.jknack.handlebars.internal.antlr.Recognizer), var3659_getDisplayName/-1919121882=([com.github.jknack.handlebars.internal.antlr.Vocabulary, int], java.lang.String), Int_toString/1350422511=([int], java.lang.String)}
; {var2840=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var2964=r0, var2652=i0, var3107=$i2, var2417=com.github.jknack.handlebars.internal.antlr.Parser, var1277=$r1, var2521=$r9, var3659=com.github.jknack.handlebars.internal.antlr.Vocabulary, var2424=com.github.jknack.handlebars.internal.antlr.Recognizer, var1110=$r11, var2878=$r10, var854=$r2, var2746=$z0}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var2840, r0=var2964, i0=var2652, $i2=var3107, com.github.jknack.handlebars.internal.antlr.Parser=var2417, $r1=var1277, $r9=var2521, com.github.jknack.handlebars.internal.antlr.Vocabulary=var3659, com.github.jknack.handlebars.internal.antlr.Recognizer=var2424, $r11=var1110, $r10=var2878, $r2=var854, $z0=var2746}
;seq <java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	i0 := @parameter0: int;	$i2 = (int) -1;	if i0 != $i2 goto $r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r1 == null goto $r11 = <com.github.jknack.handlebars.internal.antlr.VocabularyImpl: com.github.jknack.handlebars.internal.antlr.VocabularyImpl EMPTY_VOCABULARY>;	$r9 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r11 = virtualinvoke $r9.<com.github.jknack.handlebars.internal.antlr.Parser: com.github.jknack.handlebars.internal.antlr.Vocabulary getVocabulary()>();	goto [?= $r10 = interfaceinvoke $r11.<com.github.jknack.handlebars.internal.antlr.Vocabulary: java.lang.String getDisplayName(int)>(i0)];	$r10 = interfaceinvoke $r11.<com.github.jknack.handlebars.internal.antlr.Vocabulary: java.lang.String getDisplayName(int)>(i0);	$r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0);	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r12 = new java.lang.StringBuilder;	return $r10
;block_num 5