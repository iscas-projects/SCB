(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var538 0)
(declare-sort var2835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var538 var538)
(declare-const null-String String)
(declare-const var1118 var538) ; Statement: r2 := @this: org.apache.ibatis.javassist.CtField$DoubleInitializer 
(assert (not (= var1118 null-var538)))
(declare-const var1792 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1792 null-String)))
(assert true)
(define-const var416 Bool (= var1792 "D")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("D") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var416 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var538=org.apache.ibatis.javassist.CtField$DoubleInitializer, var1118=r2, var1792=r0, var2835=null_type, var416=$z0}
; {org.apache.ibatis.javassist.CtField$DoubleInitializer=var538, r2=var1118, r0=var1792, null_type=var2835, $z0=var416}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.CtField$DoubleInitializer;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("D");	if $z0 != 0 goto return;	return
;block_num 2