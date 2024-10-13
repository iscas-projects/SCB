(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2261 0)
(declare-sort var674 0)
(declare-sort var2123 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2123-init () var2123)
(declare-fun <init>/-874668403 (var2123 String) void)
(declare-const null-var2261 var2261)
(declare-const null-String String)
(declare-const var3317 var2261) ; Statement: r2 := @this: org.apache.ibatis.javassist.CtField$DoubleInitializer 
(assert (not (= var3317 null-var2261)))
(declare-const var924 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var924 null-String)))
(assert true)
(define-const var3481 Bool (= var924 "D")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("D") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var3481 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2989 var2123 var2123-init) ; Statement: $r1 = new org.apache.ibatis.javassist.CannotCompileException 
(assert true)
;(assert (<init>/-874668403 var2989 "type mismatch")) ; Statement: specialinvoke $r1.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>("type mismatch") 

(declare-const var2989!1 var2123)
(declare-const var2970 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2123-init=([], org.apache.ibatis.javassist.CannotCompileException), <init>/-874668403=([org.apache.ibatis.javassist.CannotCompileException, java.lang.String], void)}
; {var2261=org.apache.ibatis.javassist.CtField$DoubleInitializer, var3317=r2, var924=r0, var674=null_type, var3481=$z0, var2123=org.apache.ibatis.javassist.CannotCompileException, var2989=$r1, var2970="type mismatch"}
; {org.apache.ibatis.javassist.CtField$DoubleInitializer=var2261, r2=var3317, r0=var924, null_type=var674, $z0=var3481, org.apache.ibatis.javassist.CannotCompileException=var2123, $r1=var2989, "type mismatch"=var2970}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.CtField$DoubleInitializer;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("D");	if $z0 != 0 goto return;	$r1 = new org.apache.ibatis.javassist.CannotCompileException;	specialinvoke $r1.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>("type mismatch");	throw $r1
;block_num 2