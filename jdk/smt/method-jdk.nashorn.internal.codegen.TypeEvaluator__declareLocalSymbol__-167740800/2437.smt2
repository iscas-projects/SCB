(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3003 0)
(declare-sort var3352 0)
(declare-sort var2402 0)
(declare-sort var2084 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun runtimeScope/-656546847 (var3003) var2402)
(declare-fun findProperty/-1234044310 (var2402 String Bool) var2084)
(declare-const null-var3003 var3003)
(declare-const null-String String)
(declare-const var3003-$assertionsDisabled Bool)
(declare-const null-var2084 var2084)
(declare-const var3260 var3003) ; Statement: r0 := @this: jdk.nashorn.internal.codegen.TypeEvaluator 
(assert (not (= var3260 null-var3003)))
(declare-const var176 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var176 null-String)))
(define-const var1016 Bool var3003-$assertionsDisabled) ; Statement: $z0 = <jdk.nashorn.internal.codegen.TypeEvaluator: boolean $assertionsDisabled> 
 ; Statement: if $z0 != 0 goto $r2 = r0.<jdk.nashorn.internal.codegen.TypeEvaluator: jdk.nashorn.internal.runtime.ScriptObject runtimeScope> 
(assert (not (= (ite var1016 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3970 var2402 (runtimeScope/-656546847 var3260)) ; Statement: $r2 = r0.<jdk.nashorn.internal.codegen.TypeEvaluator: jdk.nashorn.internal.runtime.ScriptObject runtimeScope> 
(assert true)
(define-const var2824 var2084 (findProperty/-1234044310 var3970 var176 (ite (= 1 0) true false))) ; Statement: $r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.ScriptObject: jdk.nashorn.internal.runtime.FindProperty findProperty(java.lang.String,boolean)>(r1, 0) 
 ; Statement: if $r3 != null goto return 
(assert (not (= var2824 null-var2084))) ; Cond: $r3 != null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {runtimeScope/-656546847=([jdk.nashorn.internal.codegen.TypeEvaluator], jdk.nashorn.internal.runtime.ScriptObject), findProperty/-1234044310=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.String, boolean], jdk.nashorn.internal.runtime.FindProperty)}
; {var3003=jdk.nashorn.internal.codegen.TypeEvaluator, var3260=r0, var176=r1, var3352=null_type, var1016=$z0, var2402=jdk.nashorn.internal.runtime.ScriptObject, var3970=$r2, var2084=jdk.nashorn.internal.runtime.FindProperty, var2824=$r3}
; {jdk.nashorn.internal.codegen.TypeEvaluator=var3003, r0=var3260, r1=var176, null_type=var3352, $z0=var1016, jdk.nashorn.internal.runtime.ScriptObject=var2402, $r2=var3970, jdk.nashorn.internal.runtime.FindProperty=var2084, $r3=var2824}
;seq 
;cnt {}
;stmts r0 := @this: jdk.nashorn.internal.codegen.TypeEvaluator;	r1 := @parameter0: java.lang.String;	$z0 = <jdk.nashorn.internal.codegen.TypeEvaluator: boolean $assertionsDisabled>;	if $z0 != 0 goto $r2 = r0.<jdk.nashorn.internal.codegen.TypeEvaluator: jdk.nashorn.internal.runtime.ScriptObject runtimeScope>;	$r2 = r0.<jdk.nashorn.internal.codegen.TypeEvaluator: jdk.nashorn.internal.runtime.ScriptObject runtimeScope>;	$r3 = virtualinvoke $r2.<jdk.nashorn.internal.runtime.ScriptObject: jdk.nashorn.internal.runtime.FindProperty findProperty(java.lang.String,boolean)>(r1, 0);	if $r3 != null goto return;	return
;block_num 3