(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3561 0)
(declare-sort var3263 0)
(declare-sort var983 0)
(declare-sort var3934 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun parser/145254134 (var3561) var3263)
(declare-fun getVocabulary/1556073641 (var3934) var983)
(declare-fun cast-from-var3263-to-var3934 (var3263) var3934)
(declare-fun var983_getDisplayName/1574563075 (var983 Int) String)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-const null-var3561 var3561)
(declare-const null-Int Int)
(declare-const null-var3263 var3263)
(declare-const var743 var3561) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var743 null-var3561)))
(declare-const var480 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var480 null-Int)))
(define-const var3522 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert (not (= var480 var3522))) ; Cond: i0 != $i2 
(define-const var2847 var3263 (parser/145254134 var743)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r1 == null goto $r11 = <org.antlr.v4.runtime.VocabularyImpl: org.antlr.v4.runtime.VocabularyImpl EMPTY_VOCABULARY> 
(assert (not (= var2847 null-var3263))) ; Negate: Cond: $r1 == null  
(define-const var3880 var3263 (parser/145254134 var743)) ; Statement: $r9 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert true)
(define-const var1317 var983 (getVocabulary/1556073641 (cast-from-var3263-to-var3934 var3880))) ; Statement: $r11 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.Vocabulary getVocabulary()>() 
 ; Statement: goto [?= $r10 = interfaceinvoke $r11.<org.antlr.v4.runtime.Vocabulary: java.lang.String getDisplayName(int)>(i0)] 
(assert true) ; Non Conditional
(define-const var2 String (var983_getDisplayName/1574563075 var1317 var480)) ; Statement: $r10 = interfaceinvoke $r11.<org.antlr.v4.runtime.Vocabulary: java.lang.String getDisplayName(int)>(i0) 
(define-const var124 String (Int_toString/1350422511 var480)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0) 
(assert true)
(define-const var403 Bool (= var2 var124)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r12 = new java.lang.StringBuilder 
(assert (not (= (ite var403 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), getVocabulary/1556073641=([org.antlr.v4.runtime.Recognizer], org.antlr.v4.runtime.Vocabulary), cast-from-var3263-to-var3934=([org.antlr.v4.runtime.Parser], org.antlr.v4.runtime.Recognizer), var983_getDisplayName/1574563075=([org.antlr.v4.runtime.Vocabulary, int], java.lang.String), Int_toString/1350422511=([int], java.lang.String)}
; {var3561=org.antlr.v4.runtime.atn.ParserATNSimulator, var743=r0, var480=i0, var3522=$i2, var3263=org.antlr.v4.runtime.Parser, var2847=$r1, var3880=$r9, var983=org.antlr.v4.runtime.Vocabulary, var3934=org.antlr.v4.runtime.Recognizer, var1317=$r11, var2=$r10, var124=$r2, var403=$z0}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var3561, r0=var743, i0=var480, $i2=var3522, org.antlr.v4.runtime.Parser=var3263, $r1=var2847, $r9=var3880, org.antlr.v4.runtime.Vocabulary=var983, org.antlr.v4.runtime.Recognizer=var3934, $r11=var1317, $r10=var2, $r2=var124, $z0=var403}
;seq <java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	i0 := @parameter0: int;	$i2 = (int) -1;	if i0 != $i2 goto $r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r1 == null goto $r11 = <org.antlr.v4.runtime.VocabularyImpl: org.antlr.v4.runtime.VocabularyImpl EMPTY_VOCABULARY>;	$r9 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r11 = virtualinvoke $r9.<org.antlr.v4.runtime.Parser: org.antlr.v4.runtime.Vocabulary getVocabulary()>();	goto [?= $r10 = interfaceinvoke $r11.<org.antlr.v4.runtime.Vocabulary: java.lang.String getDisplayName(int)>(i0)];	$r10 = interfaceinvoke $r11.<org.antlr.v4.runtime.Vocabulary: java.lang.String getDisplayName(int)>(i0);	$r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0);	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r12 = new java.lang.StringBuilder;	return $r10
;block_num 5