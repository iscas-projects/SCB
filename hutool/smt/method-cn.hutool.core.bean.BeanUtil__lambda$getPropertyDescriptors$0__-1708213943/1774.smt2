(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2117 0)
(declare-sort var2766 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/146700231 (var2766) String)
(declare-fun cast-from-var2117-to-var2766 (var2117) var2766)
(declare-const null-var2117 var2117)
(declare-const var2163 var2117) ; Statement: r0 := @parameter0: java.beans.PropertyDescriptor 
(assert (not (= var2163 null-var2117)))
(define-const var1150 String "class") ; Statement: $r2 = "class" 
(assert true)
(define-const var3098 String (getName/146700231 (cast-from-var2117-to-var2766 var2163))) ; Statement: $r1 = virtualinvoke r0.<java.beans.PropertyDescriptor: java.lang.String getName()>() 
(assert true)
(define-const var528 Bool (= var1150 var3098)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if 0 != $z0 goto $z1 = 0 
(assert (not (not (= 0 (ite var528 1 0))))) ; Negate: Cond: 0 != $z0  
(define-const var3600 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/146700231=([java.beans.FeatureDescriptor], java.lang.String), cast-from-var2117-to-var2766=([java.beans.PropertyDescriptor], java.beans.FeatureDescriptor)}
; {var2117=java.beans.PropertyDescriptor, var2163=r0, var1150=$r2, var2766=java.beans.FeatureDescriptor, var3098=$r1, var528=$z0, var3600=$z1}
; {java.beans.PropertyDescriptor=var2117, r0=var2163, $r2=var1150, java.beans.FeatureDescriptor=var2766, $r1=var3098, $z0=var528, $z1=var3600}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.beans.PropertyDescriptor;	$r2 = "class";	$r1 = virtualinvoke r0.<java.beans.PropertyDescriptor: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if 0 != $z0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 3