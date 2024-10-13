(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var651 0)
(declare-sort var2041 0)
(declare-sort var3182 0)
(declare-sort var2721 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun parser/310440123 (var651) var2041)
(declare-fun cast-from-var2721-to-var3182 (var2721) var3182)
(declare-fun var3182_getDisplayName/-1919121882 (var3182 Int) String)
(declare-fun Int_toString/1350422511 (Int) String)
(declare-const null-var651 var651)
(declare-const null-Int Int)
(declare-const null-var2041 var2041)
(declare-const var2721-EMPTY_VOCABULARY var2721)
(declare-const var775 var651) ; Statement: r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator 
(assert (not (= var775 null-var651)))
(declare-const var1878 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1878 null-Int)))
(define-const var595 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
(assert (not (= var1878 var595))) ; Cond: i0 != $i2 
(define-const var504 var2041 (parser/310440123 var775)) ; Statement: $r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser> 
 ; Statement: if $r1 == null goto $r11 = <com.github.jknack.handlebars.internal.antlr.VocabularyImpl: com.github.jknack.handlebars.internal.antlr.VocabularyImpl EMPTY_VOCABULARY> 
(assert (= var504 null-var2041)) ; Cond: $r1 == null 
(define-const var813 var3182 (cast-from-var2721-to-var3182 var2721-EMPTY_VOCABULARY)) ; Statement: $r11 = <com.github.jknack.handlebars.internal.antlr.VocabularyImpl: com.github.jknack.handlebars.internal.antlr.VocabularyImpl EMPTY_VOCABULARY> 
(assert true) ; Non Conditional
(define-const var1805 String (var3182_getDisplayName/-1919121882 var813 var1878)) ; Statement: $r10 = interfaceinvoke $r11.<com.github.jknack.handlebars.internal.antlr.Vocabulary: java.lang.String getDisplayName(int)>(i0) 
(define-const var570 String (Int_toString/1350422511 var1878)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0) 
(assert true)
(define-const var1210 Bool (= var1805 var570)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r12 = new java.lang.StringBuilder 
(assert (not (= (ite var1210 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([int], int), parser/310440123=([com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator], com.github.jknack.handlebars.internal.antlr.Parser), cast-from-var2721-to-var3182=([com.github.jknack.handlebars.internal.antlr.VocabularyImpl], com.github.jknack.handlebars.internal.antlr.Vocabulary), var3182_getDisplayName/-1919121882=([com.github.jknack.handlebars.internal.antlr.Vocabulary, int], java.lang.String), Int_toString/1350422511=([int], java.lang.String)}
; {var651=com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator, var775=r0, var1878=i0, var595=$i2, var2041=com.github.jknack.handlebars.internal.antlr.Parser, var504=$r1, var3182=com.github.jknack.handlebars.internal.antlr.Vocabulary, var2721=com.github.jknack.handlebars.internal.antlr.VocabularyImpl, var813=$r11, var1805=$r10, var570=$r2, var1210=$z0}
; {com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator=var651, r0=var775, i0=var1878, $i2=var595, com.github.jknack.handlebars.internal.antlr.Parser=var2041, $r1=var504, com.github.jknack.handlebars.internal.antlr.Vocabulary=var3182, com.github.jknack.handlebars.internal.antlr.VocabularyImpl=var2721, $r11=var813, $r10=var1805, $r2=var570, $z0=var1210}
;seq <java.lang.Integer: java.lang.String toString(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator;	i0 := @parameter0: int;	$i2 = (int) -1;	if i0 != $i2 goto $r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	$r1 = r0.<com.github.jknack.handlebars.internal.antlr.atn.ParserATNSimulator: com.github.jknack.handlebars.internal.antlr.Parser parser>;	if $r1 == null goto $r11 = <com.github.jknack.handlebars.internal.antlr.VocabularyImpl: com.github.jknack.handlebars.internal.antlr.VocabularyImpl EMPTY_VOCABULARY>;	$r11 = <com.github.jknack.handlebars.internal.antlr.VocabularyImpl: com.github.jknack.handlebars.internal.antlr.VocabularyImpl EMPTY_VOCABULARY>;	$r10 = interfaceinvoke $r11.<com.github.jknack.handlebars.internal.antlr.Vocabulary: java.lang.String getDisplayName(int)>(i0);	$r2 = staticinvoke <java.lang.Integer: java.lang.String toString(int)>(i0);	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r12 = new java.lang.StringBuilder;	return $r10
;block_num 5