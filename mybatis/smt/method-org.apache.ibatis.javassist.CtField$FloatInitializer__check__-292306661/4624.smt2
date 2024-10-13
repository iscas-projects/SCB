(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3312 0)
(declare-sort var2841 0)
(declare-sort var1154 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1154-init () var1154)
(declare-fun <init>/-874668403 (var1154 String) void)
(declare-const null-var3312 var3312)
(declare-const null-String String)
(declare-const var638 var3312) ; Statement: r2 := @this: org.apache.ibatis.javassist.CtField$FloatInitializer 
(assert (not (= var638 null-var3312)))
(declare-const var3457 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3457 null-String)))
(assert true)
(define-const var3353 Bool (= var3457 "F")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("F") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var3353 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var584 var1154 var1154-init) ; Statement: $r1 = new org.apache.ibatis.javassist.CannotCompileException 
(assert true)
;(assert (<init>/-874668403 var584 "type mismatch")) ; Statement: specialinvoke $r1.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>("type mismatch") 

(declare-const var584!1 var1154)
(declare-const var378 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1154-init=([], org.apache.ibatis.javassist.CannotCompileException), <init>/-874668403=([org.apache.ibatis.javassist.CannotCompileException, java.lang.String], void)}
; {var3312=org.apache.ibatis.javassist.CtField$FloatInitializer, var638=r2, var3457=r0, var2841=null_type, var3353=$z0, var1154=org.apache.ibatis.javassist.CannotCompileException, var584=$r1, var378="type mismatch"}
; {org.apache.ibatis.javassist.CtField$FloatInitializer=var3312, r2=var638, r0=var3457, null_type=var2841, $z0=var3353, org.apache.ibatis.javassist.CannotCompileException=var1154, $r1=var584, "type mismatch"=var378}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.CtField$FloatInitializer;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("F");	if $z0 != 0 goto return;	$r1 = new org.apache.ibatis.javassist.CannotCompileException;	specialinvoke $r1.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>("type mismatch");	throw $r1
;block_num 2