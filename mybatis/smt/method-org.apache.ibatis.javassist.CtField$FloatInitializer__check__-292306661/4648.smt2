(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2679 0)
(declare-sort var1764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2679 var2679)
(declare-const null-String String)
(declare-const var699 var2679) ; Statement: r2 := @this: org.apache.ibatis.javassist.CtField$FloatInitializer 
(assert (not (= var699 null-var2679)))
(declare-const var1993 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1993 null-String)))
(assert true)
(define-const var3499 Bool (= var1993 "F")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("F") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3499 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2679=org.apache.ibatis.javassist.CtField$FloatInitializer, var699=r2, var1993=r0, var1764=null_type, var3499=$z0}
; {org.apache.ibatis.javassist.CtField$FloatInitializer=var2679, r2=var699, r0=var1993, null_type=var1764, $z0=var3499}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.CtField$FloatInitializer;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("F");	if $z0 != 0 goto return;	return
;block_num 2