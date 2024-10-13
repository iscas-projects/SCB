(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2369 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun flattened/1746087694 (var2369 Bool) String)
(declare-fun String_subSequence/-1087362312 (String Int Int) String)
(declare-const null-var2369 var2369)
(declare-const null-Int Int)
(declare-const var738 var2369) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.ConsString 
(assert (not (= var738 null-var2369)))
(declare-const var1052 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1052 null-Int)))
(declare-const var3859 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3859 null-Int)))
(assert true)
(define-const var3968 String (flattened/1746087694 var738 (ite (= 1 1) true false))) ; Statement: $r1 = specialinvoke r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence flattened(boolean)>(1) 
(define-const var1868 String (String_subSequence/-1087362312 var3968 var1052 var3859)) ; Statement: $r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i0, i1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {flattened/1746087694=([jdk.nashorn.internal.runtime.ConsString, boolean], java.lang.CharSequence), String_subSequence/-1087362312=([java.lang.CharSequence, int, int], java.lang.CharSequence)}
; {var2369=jdk.nashorn.internal.runtime.ConsString, var738=r0, var1052=i0, var3859=i1, var3968=$r1, var1868=$r2}
; {jdk.nashorn.internal.runtime.ConsString=var2369, r0=var738, i0=var1052, i1=var3859, $r1=var3968, $r2=var1868}
;seq <java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>
;cnt {"<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.ConsString;	i0 := @parameter0: int;	i1 := @parameter1: int;	$r1 = specialinvoke r0.<jdk.nashorn.internal.runtime.ConsString: java.lang.CharSequence flattened(boolean)>(1);	$r2 = interfaceinvoke $r1.<java.lang.CharSequence: java.lang.CharSequence subSequence(int,int)>(i0, i1);	return $r2
;block_num 1