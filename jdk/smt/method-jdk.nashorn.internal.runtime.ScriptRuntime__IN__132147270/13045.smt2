(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3293 0)
(declare-sort var3906 0)
(declare-sort var298 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3906_ofNoFunction/-1091342154 (var3293) var3906)
(declare-fun cast-from-var3293-to-var298 (var3293) var298)
(declare-fun has/564203361 (var298 var3293) Bool)
(declare-const null-var3293 var3293)
(declare-const var3906-OBJECT var3906)
(declare-const var3837 var3293) ; Statement: r8 := @parameter0: java.lang.Object 
(assert (not (= var3837 null-var3293)))
(declare-const var3279 var3293) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var3279 null-var3293)))
(define-const var947 var3906 (var3906_ofNoFunction/-1091342154 var3279)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType ofNoFunction(java.lang.Object)>(r0) 
(define-const var3966 var3906 var3906-OBJECT) ; Statement: $r2 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType OBJECT> 
 ; Statement: if r1 != $r2 goto $r3 = newarray (java.lang.String)[1] 
(assert (not (not (= var947 var3966)))) ; Negate: Cond: r1 != $r2  
(define-const var1444 Bool false) ; Statement: $z0 = r0 instanceof jdk.nashorn.internal.runtime.ScriptObject 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof jdk.nashorn.api.scripting.JSObject 
(assert (not (= (ite var1444 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var311 var298 (cast-from-var3293-to-var298 var3279)) ; Statement: $r11 = (jdk.nashorn.internal.runtime.ScriptObject) r0 
(assert true)
(define-const var662 Bool (has/564203361 var311 var3837)) ; Statement: $z3 = virtualinvoke $r11.<jdk.nashorn.internal.runtime.ScriptObject: boolean has(java.lang.Object)>(r8) 
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {var3906_ofNoFunction/-1091342154=([java.lang.Object], jdk.nashorn.internal.runtime.JSType), cast-from-var3293-to-var298=([java.lang.Object], jdk.nashorn.internal.runtime.ScriptObject), has/564203361=([jdk.nashorn.internal.runtime.ScriptObject, java.lang.Object], boolean)}
; {var3293=java.lang.Object, var3837=r8, var3279=r0, var3906=jdk.nashorn.internal.runtime.JSType, var947=r1, var3966=$r2, var1444=$z0, var298=jdk.nashorn.internal.runtime.ScriptObject, var311=$r11, var662=$z3}
; {java.lang.Object=var3293, r8=var3837, r0=var3279, jdk.nashorn.internal.runtime.JSType=var3906, r1=var947, $r2=var3966, $z0=var1444, jdk.nashorn.internal.runtime.ScriptObject=var298, $r11=var311, $z3=var662}
;seq 
;cnt {}
;stmts r8 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType ofNoFunction(java.lang.Object)>(r0);	$r2 = <jdk.nashorn.internal.runtime.JSType: jdk.nashorn.internal.runtime.JSType OBJECT>;	if r1 != $r2 goto $r3 = newarray (java.lang.String)[1];	$z0 = r0 instanceof jdk.nashorn.internal.runtime.ScriptObject;	if $z0 == 0 goto $z1 = r0 instanceof jdk.nashorn.api.scripting.JSObject;	$r11 = (jdk.nashorn.internal.runtime.ScriptObject) r0;	$z3 = virtualinvoke $r11.<jdk.nashorn.internal.runtime.ScriptObject: boolean has(java.lang.Object)>(r8);	return $z3
;block_num 3