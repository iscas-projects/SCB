(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3699 0)
(declare-sort var1493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(declare-const null-var3699 var3699)
(declare-const null-String String)
(declare-const var378 var3699) ; Statement: r1 := @this: org.hibernate.dialect.DerbyDialect 
(assert (not (= var378 null-var3699)))
(declare-const var3915 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3915 null-String)))
(assert true)
(define-const var3949 Int (lastIndexOf/-618837785 var3915 "with ")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>("with ") 
 ; Statement: if i0 >= 0 goto return i0 
(assert (>= var3949 0)) ; Cond: i0 >= 0 
 ; Statement: return i0 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-618837785=([java.lang.String, java.lang.String], int)}
; {var3699=org.hibernate.dialect.DerbyDialect, var378=r1, var3915=r0, var1493=null_type, var3949=i0}
; {org.hibernate.dialect.DerbyDialect=var3699, r1=var378, r0=var3915, null_type=var1493, i0=var3949}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1}
;stmts r1 := @this: org.hibernate.dialect.DerbyDialect;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>("with ");	if i0 >= 0 goto return i0;	return i0
;block_num 2