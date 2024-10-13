(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2917 0)
(declare-sort var1744 0)
(declare-sort var1881 0)
(declare-sort var3327 0)
(declare-sort var1224 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun classPool/1316976199 (var2917) var3327)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-const null-var2917 var2917)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1881 var1881)
(declare-const null-var1224 var1224)
(declare-const var3275 var2917) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.MemberResolver 
(assert (not (= var3275 null-var2917)))
(declare-const var395 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var395 null-String)))
(declare-const var3783 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3783 null-Bool)))
(define-const var318 var1881 null-var1881) ; Statement: r5 = null 
(assert true) ; Non Conditional
(define-const var1318 var3327 (classPool/1316976199 var3275)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.compiler.MemberResolver: org.apache.ibatis.javassist.ClassPool classPool> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1718 var1224) ; Statement: $r2 := @caughtexception 
(assert (not (= var1718 null-var1224)))
(assert true)
(define-const var2426 Int (lastIndexOf/-1292097097 var395 46)) ; Statement: i0 = virtualinvoke r4.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if z0 != 0 goto throw $r2 
(assert (not (= (ite var3783 1 0) 0))) ; Cond: z0 != 0 
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {classPool/1316976199=([org.apache.ibatis.javassist.compiler.MemberResolver], org.apache.ibatis.javassist.ClassPool), lastIndexOf/-1292097097=([java.lang.String, int], int)}
; {var2917=org.apache.ibatis.javassist.compiler.MemberResolver, var3275=r0, var395=r4, var1744=null_type, var3783=z0, var1881=org.apache.ibatis.javassist.CtClass, var318=r5, var3327=org.apache.ibatis.javassist.ClassPool, var1318=$r1, var1224=org.apache.ibatis.javassist.NotFoundException, var1718=$r2, var2426=i0}
; {org.apache.ibatis.javassist.compiler.MemberResolver=var2917, r0=var3275, r4=var395, null_type=var1744, z0=var3783, org.apache.ibatis.javassist.CtClass=var1881, r5=var318, org.apache.ibatis.javassist.ClassPool=var3327, $r1=var1318, org.apache.ibatis.javassist.NotFoundException=var1224, $r2=var1718, i0=var2426}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.MemberResolver;	r4 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	r5 = null;	$r1 = r0.<org.apache.ibatis.javassist.compiler.MemberResolver: org.apache.ibatis.javassist.ClassPool classPool>;	$r2 := @caughtexception;	i0 = virtualinvoke r4.<java.lang.String: int lastIndexOf(int)>(46);	if z0 != 0 goto throw $r2;	throw $r2
;block_num 4