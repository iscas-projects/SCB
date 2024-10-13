(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3602 0)
(declare-sort var656 0)
(declare-sort var3817 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3817-init () var3817)
(declare-fun <init>/-874668403 (var3817 String) void)
(declare-const null-var3602 var3602)
(declare-const null-String String)
(declare-const var910 var3602) ; Statement: r2 := @this: org.apache.ibatis.javassist.CtField$LongInitializer 
(assert (not (= var910 null-var3602)))
(declare-const var3216 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3216 null-String)))
(assert true)
(define-const var2528 Bool (= var3216 "J")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("J") 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var2528 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var242 var3817 var3817-init) ; Statement: $r1 = new org.apache.ibatis.javassist.CannotCompileException 
(assert true)
;(assert (<init>/-874668403 var242 "type mismatch")) ; Statement: specialinvoke $r1.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>("type mismatch") 

(declare-const var242!1 var3817)
(declare-const var2925 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3817-init=([], org.apache.ibatis.javassist.CannotCompileException), <init>/-874668403=([org.apache.ibatis.javassist.CannotCompileException, java.lang.String], void)}
; {var3602=org.apache.ibatis.javassist.CtField$LongInitializer, var910=r2, var3216=r0, var656=null_type, var2528=$z0, var3817=org.apache.ibatis.javassist.CannotCompileException, var242=$r1, var2925="type mismatch"}
; {org.apache.ibatis.javassist.CtField$LongInitializer=var3602, r2=var910, r0=var3216, null_type=var656, $z0=var2528, org.apache.ibatis.javassist.CannotCompileException=var3817, $r1=var242, "type mismatch"=var2925}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: org.apache.ibatis.javassist.CtField$LongInitializer;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("J");	if $z0 != 0 goto return;	$r1 = new org.apache.ibatis.javassist.CannotCompileException;	specialinvoke $r1.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>("type mismatch");	throw $r1
;block_num 2