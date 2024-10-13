(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1598 0)
(declare-sort var1176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun objectValue/-1598655742 (var1598) var1176)
(declare-fun String_valueOf/-333372740 (var1176) String)
(declare-const null-var1598 var1598)
(declare-const var1806 var1598) ; Statement: r0 := @this: com.google.javascript.rhino.Node$ObjectPropListItem 
(assert (not (= var1806 null-var1598)))
(define-const var2104 var1176 (objectValue/-1598655742 var1806)) ; Statement: $r1 = r0.<com.google.javascript.rhino.Node$ObjectPropListItem: java.lang.Object objectValue> 
(define-const var80 String (String_valueOf/-333372740 var2104)) ; Statement: $r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {objectValue/-1598655742=([com.google.javascript.rhino.Node$ObjectPropListItem], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var1598=com.google.javascript.rhino.Node$ObjectPropListItem, var1806=r0, var1176=java.lang.Object, var2104=$r1, var80=$r2}
; {com.google.javascript.rhino.Node$ObjectPropListItem=var1598, r0=var1806, java.lang.Object=var1176, $r1=var2104, $r2=var80}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.rhino.Node$ObjectPropListItem;	$r1 = r0.<com.google.javascript.rhino.Node$ObjectPropListItem: java.lang.Object objectValue>;	$r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1);	return $r2
;block_num 1