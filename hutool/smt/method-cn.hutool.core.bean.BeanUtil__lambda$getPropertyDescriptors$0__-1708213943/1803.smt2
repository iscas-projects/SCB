(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2566 0)
(declare-sort var766 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/146700231 (var766) String)
(declare-fun cast-from-var2566-to-var766 (var2566) var766)
(declare-const null-var2566 var2566)
(declare-const var1881 var2566) ; Statement: r0 := @parameter0: java.beans.PropertyDescriptor 
(assert (not (= var1881 null-var2566)))
(define-const var988 String "class") ; Statement: $r2 = "class" 
(assert true)
(define-const var1388 String (getName/146700231 (cast-from-var2566-to-var766 var1881))) ; Statement: $r1 = virtualinvoke r0.<java.beans.PropertyDescriptor: java.lang.String getName()>() 
(assert true)
(define-const var3913 Bool (= var988 var1388)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if 0 != $z0 goto $z1 = 0 
(assert (not (= 0 (ite var3913 1 0)))) ; Cond: 0 != $z0 
(define-const var2674 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/146700231=([java.beans.FeatureDescriptor], java.lang.String), cast-from-var2566-to-var766=([java.beans.PropertyDescriptor], java.beans.FeatureDescriptor)}
; {var2566=java.beans.PropertyDescriptor, var1881=r0, var988=$r2, var766=java.beans.FeatureDescriptor, var1388=$r1, var3913=$z0, var2674=$z1}
; {java.beans.PropertyDescriptor=var2566, r0=var1881, $r2=var988, java.beans.FeatureDescriptor=var766, $r1=var1388, $z0=var3913, $z1=var2674}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.beans.PropertyDescriptor;	$r2 = "class";	$r1 = virtualinvoke r0.<java.beans.PropertyDescriptor: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if 0 != $z0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 3