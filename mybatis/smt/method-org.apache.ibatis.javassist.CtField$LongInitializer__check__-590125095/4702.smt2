(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1237 0)
(declare-sort var2114 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1237 var1237)
(declare-const null-String String)
(declare-const var1144 var1237) ; Statement: r2 := @this: org.apache.ibatis.javassist.CtField$LongInitializer 
(assert (not (= var1144 null-var1237)))
(declare-const var1093 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1093 null-String)))
(assert true)
(define-const var2174 Bool (= var1093 "J")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("J") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var2174 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1237=org.apache.ibatis.javassist.CtField$LongInitializer, var1144=r2, var1093=r0, var2114=null_type, var2174=$z0}
; {org.apache.ibatis.javassist.CtField$LongInitializer=var1237, r2=var1144, r0=var1093, null_type=var2114, $z0=var2174}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.CtField$LongInitializer;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("J");	if $z0 != 0 goto return;	return
;block_num 2