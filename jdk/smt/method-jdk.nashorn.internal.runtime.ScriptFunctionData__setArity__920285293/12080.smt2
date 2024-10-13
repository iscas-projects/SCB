(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1424 0)
(declare-sort var1930 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1930-init () var1930)
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun <init>/875830710 (var1930 String) void)
(declare-const null-var1424 var1424)
(declare-const null-Int Int)
(declare-const var1191 var1424) ; Statement: r2 := @this: jdk.nashorn.internal.runtime.ScriptFunctionData 
(assert (not (= var1191 null-var1424)))
(declare-const var2962 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var2962 null-Int)))
 ; Statement: if i0 < 0 goto $r0 = new java.lang.IllegalArgumentException 
(assert (< var2962 0)) ; Cond: i0 < 0 
(define-const var518 var1930 var1930-init) ; Statement: $r0 = new java.lang.IllegalArgumentException 
(define-const var1309 String (String_valueOf/1240665136 var2962)) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0) 
(assert true)
;(assert (<init>/875830710 var518 var1309)) ; Statement: specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r1) 

(declare-const var518!1 var1930)
(declare-const var1309!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1930-init=([], java.lang.IllegalArgumentException), String_valueOf/1240665136=([int], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var1424=jdk.nashorn.internal.runtime.ScriptFunctionData, var1191=r2, var2962=i0, var1930=java.lang.IllegalArgumentException, var518=$r0, var1309=$r1}
; {jdk.nashorn.internal.runtime.ScriptFunctionData=var1424, r2=var1191, i0=var2962, java.lang.IllegalArgumentException=var1930, $r0=var518, $r1=var1309}
;seq <java.lang.String: java.lang.String valueOf(int)>
;cnt {"<java.lang.String: java.lang.String valueOf(int)>": 1}
;stmts r2 := @this: jdk.nashorn.internal.runtime.ScriptFunctionData;	i0 := @parameter0: int;	if i0 < 0 goto $r0 = new java.lang.IllegalArgumentException;	$r0 = new java.lang.IllegalArgumentException;	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i0);	specialinvoke $r0.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r1);	throw $r0
;block_num 2