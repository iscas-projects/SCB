(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3124 0)
(declare-sort var3505 0)
(declare-sort var2405 0)
(declare-sort var2248 0)
(declare-sort var1807 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun prefixSet/-756498928 (var3124) var2405)
(declare-fun String_charAt/1466887330 (String Int) Int)
(declare-fun var2248_valueOf/-1186540555 (Int) var2248)
(declare-fun contains/1104939995 (var2405 var1807) Bool)
(declare-fun cast-from-var2248-to-var1807 (var2248) var1807)
(declare-const null-var3124 var3124)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3505 var3505)
(declare-const var404 var3124) ; Statement: r0 := @this: org.apache.commons.lang3.text.translate.LookupTranslator 
(assert (not (= var404 null-var3124)))
(declare-const var3597 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var3597 null-String)))
(declare-const var2540 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2540 null-Int)))
(declare-const var160 var3505) ; Statement: r9 := @parameter2: java.io.Writer 
(assert (not (= var160 null-var3505)))
(define-const var74 var2405 (prefixSet/-756498928 var404)) ; Statement: $r2 = r0.<org.apache.commons.lang3.text.translate.LookupTranslator: java.util.HashSet prefixSet> 
(define-const var3530 Int (String_charAt/1466887330 var3597 var2540)) ; Statement: $c1 = interfaceinvoke r1.<java.lang.CharSequence: char charAt(int)>(i0) 
(define-const var1095 var2248 (var2248_valueOf/-1186540555 var3530)) ; Statement: $r3 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c1) 
(assert true)
(define-const var444 Bool (contains/1104939995 var74 (cast-from-var2248-to-var1807 var1095))) ; Statement: $z0 = virtualinvoke $r2.<java.util.HashSet: boolean contains(java.lang.Object)>($r3) 
 ; Statement: if $z0 == 0 goto return 0 
(assert (= (ite var444 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {prefixSet/-756498928=([org.apache.commons.lang3.text.translate.LookupTranslator], java.util.HashSet), String_charAt/1466887330=([java.lang.CharSequence, int], char), var2248_valueOf/-1186540555=([char], java.lang.Character), contains/1104939995=([java.util.HashSet, java.lang.Object], boolean), cast-from-var2248-to-var1807=([java.lang.Character], java.lang.Object)}
; {var3124=org.apache.commons.lang3.text.translate.LookupTranslator, var404=r0, var3597=r1, var2540=i0, var3505=java.io.Writer, var160=r9, var2405=java.util.HashSet, var74=$r2, var3530=$c1, var2248=java.lang.Character, var1095=$r3, var1807=java.lang.Object, var444=$z0}
; {org.apache.commons.lang3.text.translate.LookupTranslator=var3124, r0=var404, r1=var3597, i0=var2540, java.io.Writer=var3505, r9=var160, java.util.HashSet=var2405, $r2=var74, $c1=var3530, java.lang.Character=var2248, $r3=var1095, java.lang.Object=var1807, $z0=var444}
;seq <java.lang.CharSequence: char charAt(int)>
;cnt {"<java.lang.CharSequence: char charAt(int)>": 1}
;stmts r0 := @this: org.apache.commons.lang3.text.translate.LookupTranslator;	r1 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	r9 := @parameter2: java.io.Writer;	$r2 = r0.<org.apache.commons.lang3.text.translate.LookupTranslator: java.util.HashSet prefixSet>;	$c1 = interfaceinvoke r1.<java.lang.CharSequence: char charAt(int)>(i0);	$r3 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c1);	$z0 = virtualinvoke $r2.<java.util.HashSet: boolean contains(java.lang.Object)>($r3);	if $z0 == 0 goto return 0;	return 0
;block_num 2