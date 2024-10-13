(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var136 0)
(declare-sort var3979 0)
(declare-sort var484 0)
(declare-sort var526 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun parser/145254134 (var136) var3979)
(declare-fun cast-from-var526-to-var484 (var526) var484)
(declare-fun var484_getDisplayName/1574563075 (var484 Int) String)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-const null-var136 var136)
(declare-const null-Int Int)
(declare-const null-var3979 var3979)
(declare-const var526-EMPTY_VOCABULARY var526)
(declare-const var735 var136) ; Statement: r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator 
(assert (not (= var735 null-var136)))
(declare-const var2089 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2089 null-Int)))
(define-const var3860 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
(assert (not (= var2089 var3860))) ; Cond: i0 != $i2 
(define-const var2511 var3979 (parser/145254134 var735)) ; Statement: $r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser> 
 ; Statement: if $r1 == null goto $r11 = <org.antlr.v4.runtime.VocabularyImpl: org.antlr.v4.runtime.VocabularyImpl EMPTY_VOCABULARY> 
(assert (= var2511 null-var3979)) ; Cond: $r1 == null 
(define-const var2024 var484 (cast-from-var526-to-var484 var526-EMPTY_VOCABULARY)) ; Statement: $r11 = <org.antlr.v4.runtime.VocabularyImpl: org.antlr.v4.runtime.VocabularyImpl EMPTY_VOCABULARY> 
(assert true) ; Non Conditional
(define-const var3482 String (var484_getDisplayName/1574563075 var2024 var2089)) ; Statement: $r10 = interfaceinvoke $r11.<org.antlr.v4.runtime.Vocabulary: java.lang.String getDisplayName(int)>(i0) 
(define-const var1638 String (Int_toString/1350422511 var2089)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0) 
(assert true)
(define-const var3359 Bool (= var3482 var1638)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r12 = new java.lang.StringBuilder 
(assert (not (= (ite var3359 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), parser/145254134=([org.antlr.v4.runtime.atn.ParserATNSimulator], org.antlr.v4.runtime.Parser), cast-from-var526-to-var484=([org.antlr.v4.runtime.VocabularyImpl], org.antlr.v4.runtime.Vocabulary), var484_getDisplayName/1574563075=([org.antlr.v4.runtime.Vocabulary, int], java.lang.String), Int_toString/1350422511=([int], java.lang.String)}
; {var136=org.antlr.v4.runtime.atn.ParserATNSimulator, var735=r0, var2089=i0, var3860=$i2, var3979=org.antlr.v4.runtime.Parser, var2511=$r1, var484=org.antlr.v4.runtime.Vocabulary, var526=org.antlr.v4.runtime.VocabularyImpl, var2024=$r11, var3482=$r10, var1638=$r2, var3359=$z0}
; {org.antlr.v4.runtime.atn.ParserATNSimulator=var136, r0=var735, i0=var2089, $i2=var3860, org.antlr.v4.runtime.Parser=var3979, $r1=var2511, org.antlr.v4.runtime.Vocabulary=var484, org.antlr.v4.runtime.VocabularyImpl=var526, $r11=var2024, $r10=var3482, $r2=var1638, $z0=var3359}
;seq <java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.antlr.v4.runtime.atn.ParserATNSimulator;	i0 := @parameter0: int;	$i2 = (int) -1;	if i0 != $i2 goto $r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	$r1 = r0.<org.antlr.v4.runtime.atn.ParserATNSimulator: org.antlr.v4.runtime.Parser parser>;	if $r1 == null goto $r11 = <org.antlr.v4.runtime.VocabularyImpl: org.antlr.v4.runtime.VocabularyImpl EMPTY_VOCABULARY>;	$r11 = <org.antlr.v4.runtime.VocabularyImpl: org.antlr.v4.runtime.VocabularyImpl EMPTY_VOCABULARY>;	$r10 = interfaceinvoke $r11.<org.antlr.v4.runtime.Vocabulary: java.lang.String getDisplayName(int)>(i0);	$r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0);	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r12 = new java.lang.StringBuilder;	return $r10
;block_num 5