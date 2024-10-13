(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var135 0)
(declare-sort var3112 0)
(declare-sort var2580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setName/-569631204 (var2580 String) void)
(declare-fun cast-from-var135-to-var2580 (var135) var2580)
(declare-const null-var135 var135)
(declare-const null-String String)
(declare-const var1183 var135) ; Statement: r0 := @this: org.hibernate.mapping.ForeignKey 
(assert (not (= var1183 null-var135)))
(declare-const var1691 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1691 null-String)))
(assert true)
;(assert (setName/-569631204 (cast-from-var135-to-var2580 var1183) var1691)) ; Statement: specialinvoke r0.<org.hibernate.mapping.Constraint: void setName(java.lang.String)>(r1) 

(declare-const var1183!1 var135)
(declare-const var1691!1 String)
(define-const var1570 String "none") ; Statement: $r2 = "none" 
(assert true)
(define-const var2636 Bool (= var1570 var1691!1)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2636 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {setName/-569631204=([org.hibernate.mapping.Constraint, java.lang.String], void), cast-from-var135-to-var2580=([org.hibernate.mapping.ForeignKey], org.hibernate.mapping.Constraint)}
; {var135=org.hibernate.mapping.ForeignKey, var1183=r0, var1691=r1, var3112=null_type, var2580=org.hibernate.mapping.Constraint, var1570=$r2, var2636=$z0}
; {org.hibernate.mapping.ForeignKey=var135, r0=var1183, r1=var1691, null_type=var3112, org.hibernate.mapping.Constraint=var2580, $r2=var1570, $z0=var2636}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.hibernate.mapping.ForeignKey;	r1 := @parameter0: java.lang.String;	specialinvoke r0.<org.hibernate.mapping.Constraint: void setName(java.lang.String)>(r1);	$r2 = "none";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto return;	return
;block_num 2