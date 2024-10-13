(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var438 0)
(declare-sort var1147 0)
(declare-sort var3473 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getReadableTypeName/1438518601 (var438) var1147)
(declare-fun var1147_get/1017044072 (var1147) var3473)
(declare-fun cast-from-var3473-to-String (var3473) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var438 var438)
(declare-const var3012 var438) ; Statement: r0 := @this: com.google.javascript.jscomp.CheckAccessControls$PropertyReference 
(assert (not (= var3012 null-var438)))
(assert true)
(define-const var3116 var1147 (getReadableTypeName/1438518601 var3012)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.CheckAccessControls$PropertyReference: java.util.function.Supplier getReadableTypeName()>() 
(define-const var1944 var3473 (var1147_get/1017044072 var3116)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.function.Supplier: java.lang.Object get()>() 
(define-const var1733 String (cast-from-var3473-to-String var1944)) ; Statement: r3 = (java.lang.String) $r2 
(assert true)
(define-const var2869 Bool (isEmpty/-1285796103 var1733)) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r5 = r3 
(assert (= (ite var2869 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2472 String var1733) ; Statement: $r5 = r3 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getReadableTypeName/1438518601=([com.google.javascript.jscomp.CheckAccessControls$PropertyReference], java.util.function.Supplier), var1147_get/1017044072=([java.util.function.Supplier], java.lang.Object), cast-from-var3473-to-String=([java.lang.Object], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var438=com.google.javascript.jscomp.CheckAccessControls$PropertyReference, var3012=r0, var1147=java.util.function.Supplier, var3116=$r1, var3473=java.lang.Object, var1944=$r2, var1733=r3, var2869=$z0, var2472=$r5}
; {com.google.javascript.jscomp.CheckAccessControls$PropertyReference=var438, r0=var3012, java.util.function.Supplier=var1147, $r1=var3116, java.lang.Object=var3473, $r2=var1944, r3=var1733, $z0=var2869, $r5=var2472}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CheckAccessControls$PropertyReference;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.CheckAccessControls$PropertyReference: java.util.function.Supplier getReadableTypeName()>();	$r2 = interfaceinvoke $r1.<java.util.function.Supplier: java.lang.Object get()>();	r3 = (java.lang.String) $r2;	$z0 = virtualinvoke r3.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r5 = r3;	$r5 = r3;	return $r5
;block_num 3