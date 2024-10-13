(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3401 0)
(declare-sort var221 0)
(declare-sort var1416 0)
(declare-sort var586 0)
(declare-sort var3960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getReadableTypeName/1438518601 (var3401) var221)
(declare-fun var221_get/1017044072 (var221) var1416)
(declare-fun cast-from-var1416-to-String (var1416) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun getReceiverType/774059718 (var3401) var586)
(declare-fun toString/-1789913861 (var3960) String)
(declare-fun cast-from-var586-to-var3960 (var586) var3960)
(declare-const null-var3401 var3401)
(declare-const var247 var3401) ; Statement: r0 := @this: com.google.javascript.jscomp.CheckAccessControls$PropertyReference 
(assert (not (= var247 null-var3401)))
(assert true)
(define-const var661 var221 (getReadableTypeName/1438518601 var247)) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.CheckAccessControls$PropertyReference: java.util.function.Supplier getReadableTypeName()>() 
(define-const var208 var1416 (var221_get/1017044072 var661)) ; Statement: $r2 = interfaceinvoke $r1.<java.util.function.Supplier: java.lang.Object get()>() 
(define-const var2967 String (cast-from-var1416-to-String var208)) ; Statement: r3 = (java.lang.String) $r2 
(assert true)
(define-const var3211 Bool (isEmpty/-1285796103 var2967)) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r5 = r3 
(assert (not (= (ite var3211 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var2214 var586 (getReceiverType/774059718 var247)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.CheckAccessControls$PropertyReference: com.google.javascript.rhino.jstype.ObjectType getReceiverType()>() 
(assert true)
(define-const var2211 String (toString/-1789913861 (cast-from-var586-to-var3960 var2214))) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.rhino.jstype.ObjectType: java.lang.String toString()>() 
 ; Statement: goto [?= return $r5] 
(assert true) ; Non Conditional
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getReadableTypeName/1438518601=([com.google.javascript.jscomp.CheckAccessControls$PropertyReference], java.util.function.Supplier), var221_get/1017044072=([java.util.function.Supplier], java.lang.Object), cast-from-var1416-to-String=([java.lang.Object], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), getReceiverType/774059718=([com.google.javascript.jscomp.CheckAccessControls$PropertyReference], com.google.javascript.rhino.jstype.ObjectType), toString/-1789913861=([com.google.javascript.rhino.jstype.JSType], java.lang.String), cast-from-var586-to-var3960=([com.google.javascript.rhino.jstype.ObjectType], com.google.javascript.rhino.jstype.JSType)}
; {var3401=com.google.javascript.jscomp.CheckAccessControls$PropertyReference, var247=r0, var221=java.util.function.Supplier, var661=$r1, var1416=java.lang.Object, var208=$r2, var2967=r3, var3211=$z0, var586=com.google.javascript.rhino.jstype.ObjectType, var2214=$r4, var3960=com.google.javascript.rhino.jstype.JSType, var2211=$r5}
; {com.google.javascript.jscomp.CheckAccessControls$PropertyReference=var3401, r0=var247, java.util.function.Supplier=var221, $r1=var661, java.lang.Object=var1416, $r2=var208, r3=var2967, $z0=var3211, com.google.javascript.rhino.jstype.ObjectType=var586, $r4=var2214, com.google.javascript.rhino.jstype.JSType=var3960, $r5=var2211}
;seq <java.lang.String: boolean isEmpty()>;	<com.google.javascript.rhino.jstype.JSType: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CheckAccessControls$PropertyReference;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.CheckAccessControls$PropertyReference: java.util.function.Supplier getReadableTypeName()>();	$r2 = interfaceinvoke $r1.<java.util.function.Supplier: java.lang.Object get()>();	r3 = (java.lang.String) $r2;	$z0 = virtualinvoke r3.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r5 = r3;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.CheckAccessControls$PropertyReference: com.google.javascript.rhino.jstype.ObjectType getReceiverType()>();	$r5 = virtualinvoke $r4.<com.google.javascript.rhino.jstype.ObjectType: java.lang.String toString()>();	goto [?= return $r5];	return $r5
;block_num 3