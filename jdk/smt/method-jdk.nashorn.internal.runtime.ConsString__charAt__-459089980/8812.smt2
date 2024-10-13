(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1387 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun flattened/1746087694 (var1387 Bool) String)
(declare-fun String_charAt/1466887330 (String Int) Int)
(declare-const null-var1387 var1387)
(declare-const null-Int Int)
(declare-const var3942 var1387) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.ConsString 
(assert (not (= var3942 null-var1387)))
(declare-const var627 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var627 null-Int)))
(assert true)
(define-const var352 String (flattened/1746087694 var3942 (ite (= 1 1) true false))) ; Statement: $r1 = specialinvoke r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence flattened(boolean)>(1) 
(define-const var3024 Int (String_charAt/1466887330 var352 var627)) ; Statement: $c1 = interfaceinvoke $r1.<java.lang.CharSequence: char charAt(int)>(i0) 
 ; Statement: return $c1 
(check-sat)
(get-model)
(get-unsat-core)
; {flattened/1746087694=([jdk.nashorn.internal.runtime.ConsString, boolean], java.lang.CharSequence), String_charAt/1466887330=([java.lang.CharSequence, int], char)}
; {var1387=jdk.nashorn.internal.runtime.ConsString, var3942=r0, var627=i0, var352=$r1, var3024=$c1}
; {jdk.nashorn.internal.runtime.ConsString=var1387, r0=var3942, i0=var627, $r1=var352, $c1=var3024}
;seq <java.lang.CharSequence: char charAt(int)>
;cnt {"<java.lang.CharSequence: char charAt(int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.ConsString;	i0 := @parameter0: int;	$r1 = specialinvoke r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence flattened(boolean)>(1);	$c1 = interfaceinvoke $r1.<java.lang.CharSequence: char charAt(int)>(i0);	return $c1
;block_num 1