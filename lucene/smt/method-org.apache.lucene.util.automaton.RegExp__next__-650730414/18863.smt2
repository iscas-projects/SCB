(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var408 0)
(declare-sort var3285 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun more/899770217 (var408) Bool)
(declare-fun originalString/406973053 (var408) String)
(declare-fun pos/406973053 (var408) Int)
(declare-fun codePointAt/-1532245030 (String Int) Int)
(declare-fun var3285_charCount/-1254868283 (Int) Int)
(declare-const null-var408 var408)
(declare-const var3728 var408) ; Statement: r0 := @this: org.apache.lucene.util.automaton.RegExp 
(assert (not (= var3728 null-var408)))
(assert true)
(define-const var185 Bool (more/899770217 var3728)) ; Statement: $z0 = virtualinvoke r0.<org.apache.lucene.util.automaton.RegExp: boolean more()>() 
 ; Statement: if $z0 != 0 goto $r1 = r0.<org.apache.lucene.util.automaton.RegExp: java.lang.String originalString> 
(assert (not (= (ite var185 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2533 String (originalString/406973053 var3728)) ; Statement: $r1 = r0.<org.apache.lucene.util.automaton.RegExp: java.lang.String originalString> 
(define-const var850 Int (pos/406973053 var3728)) ; Statement: $i0 = r0.<org.apache.lucene.util.automaton.RegExp: int pos> 
(assert true)
(define-const var320 Int (codePointAt/-1532245030 var2533 var850)) ; Statement: i1 = virtualinvoke $r1.<java.lang.String: int codePointAt(int)>($i0) 
(define-const var3846 Int (pos/406973053 var3728)) ; Statement: $i2 = r0.<org.apache.lucene.util.automaton.RegExp: int pos> 
(define-const var1158 Int (var3285_charCount/-1254868283 var320)) ; Statement: $i3 = staticinvoke <java.lang.Character: int charCount(int)>(i1) 
(define-const var3941 Int (+ var3846 var1158)) ; Statement: $i4 = $i2 + $i3 
(declare-const var3728!1 var408)
(assert (not (= var3728!1 null-var408)))
(assert (= (pos/406973053 var3728!1) var3941)) ; Statement: r0.<org.apache.lucene.util.automaton.RegExp: int pos> = $i4 
 ; Statement: return i1 
(check-sat)
(get-model)
(get-unsat-core)
; {more/899770217=([org.apache.lucene.util.automaton.RegExp], boolean), originalString/406973053=([org.apache.lucene.util.automaton.RegExp], java.lang.String), pos/406973053=([org.apache.lucene.util.automaton.RegExp], int), codePointAt/-1532245030=([java.lang.String, int], int), var3285_charCount/-1254868283=([int], int)}
; {var408=org.apache.lucene.util.automaton.RegExp, var3728=r0, var185=$z0, var2533=$r1, var850=$i0, var320=i1, var3846=$i2, var3285=java.lang.Character, var1158=$i3, var3941=$i4}
; {org.apache.lucene.util.automaton.RegExp=var408, r0=var3728, $z0=var185, $r1=var2533, $i0=var850, i1=var320, $i2=var3846, java.lang.Character=var3285, $i3=var1158, $i4=var3941}
;seq <java.lang.String: int codePointAt(int)>
;cnt {"<java.lang.String: int codePointAt(int)>": 1}
;stmts r0 := @this: org.apache.lucene.util.automaton.RegExp;	$z0 = virtualinvoke r0.<org.apache.lucene.util.automaton.RegExp: boolean more()>();	if $z0 != 0 goto $r1 = r0.<org.apache.lucene.util.automaton.RegExp: java.lang.String originalString>;	$r1 = r0.<org.apache.lucene.util.automaton.RegExp: java.lang.String originalString>;	$i0 = r0.<org.apache.lucene.util.automaton.RegExp: int pos>;	i1 = virtualinvoke $r1.<java.lang.String: int codePointAt(int)>($i0);	$i2 = r0.<org.apache.lucene.util.automaton.RegExp: int pos>;	$i3 = staticinvoke <java.lang.Character: int charCount(int)>(i1);	$i4 = $i2 + $i3;	r0.<org.apache.lucene.util.automaton.RegExp: int pos> = $i4;	return i1
;block_num 2