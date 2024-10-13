(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2691 0)
(declare-sort var184 0)
(declare-sort var1099 0)
(declare-sort var3365 0)
(declare-sort var1709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1611768686 (var1099) String)
(declare-fun cast-from-var2691-to-var1099 (var2691) var1099)
(declare-fun classPool/1891348345 (var2691) var3365)
(declare-fun checkNotFrozen/-1016797279 (var3365 String) void)
(declare-fun getClassFile2/1096051139 (var2691) var1709)
(declare-fun setName/2073211384 (var1099 String) void)
(declare-fun setName/-1539425252 (var1709 String) void)
(declare-fun nameReplaced/-1293457607 (var2691) void)
(declare-fun classNameChanged/-1988441682 (var3365 String var1099) void)
(declare-const null-var2691 var2691)
(declare-const null-String String)
(declare-const var202 var2691) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtClassType 
(assert (not (= var202 null-var2691)))
(declare-const var2623 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2623 null-String)))
(assert true)
(define-const var3469 String (getName/1611768686 (cast-from-var2691-to-var1099 var202))) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>() 
(assert true)
(define-const var1678 Bool (= var2623 var3469)) ; Statement: $z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r3 = r0.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.ClassPool classPool> 
(assert (= (ite var1678 1 0) 0)) ; Cond: $z0 == 0 
(define-const var654 var3365 (classPool/1891348345 var202)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.ClassPool classPool> 
(assert true)
;(assert (checkNotFrozen/-1016797279 var654 var2623)) ; Statement: virtualinvoke $r3.<org.apache.ibatis.javassist.ClassPool: void checkNotFrozen(java.lang.String)>(r2) 

(declare-const var654!1 var3365)
(declare-const var2623!1 String)
(assert true)
(define-const var3419 var1709 (getClassFile2/1096051139 var202)) ; Statement: r4 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.bytecode.ClassFile getClassFile2()>() 
(assert true)
;(assert (setName/2073211384 (cast-from-var2691-to-var1099 var202) var2623!1)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.CtClass: void setName(java.lang.String)>(r2) 

(declare-const var202!1 var2691)
(declare-const var2623!2 String)
(assert true)
;(assert (setName/-1539425252 var3419 var2623!2)) ; Statement: virtualinvoke r4.<org.apache.ibatis.javassist.bytecode.ClassFile: void setName(java.lang.String)>(r2) 

(declare-const var3419!1 var1709)
(declare-const var2623!3 String)
(assert true)
;(assert (nameReplaced/-1293457607 var202!1)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.CtClassType: void nameReplaced()>() 

(declare-const var202!2 var2691)
(define-const var2296 var3365 (classPool/1891348345 var202!2)) ; Statement: $r5 = r0.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.ClassPool classPool> 
(assert true)
;(assert (classNameChanged/-1988441682 var2296 var3469 (cast-from-var2691-to-var1099 var202!2))) ; Statement: virtualinvoke $r5.<org.apache.ibatis.javassist.ClassPool: void classNameChanged(java.lang.String,org.apache.ibatis.javassist.CtClass)>(r1, r0) 

(declare-const var2296!1 var3365)
(declare-const var3469!1 String)
(declare-const var202!3 var2691)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), cast-from-var2691-to-var1099=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.CtClass), classPool/1891348345=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.ClassPool), checkNotFrozen/-1016797279=([org.apache.ibatis.javassist.ClassPool, java.lang.String], void), getClassFile2/1096051139=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.bytecode.ClassFile), setName/2073211384=([org.apache.ibatis.javassist.CtClass, java.lang.String], void), setName/-1539425252=([org.apache.ibatis.javassist.bytecode.ClassFile, java.lang.String], void), nameReplaced/-1293457607=([org.apache.ibatis.javassist.CtClassType], void), classNameChanged/-1988441682=([org.apache.ibatis.javassist.ClassPool, java.lang.String, org.apache.ibatis.javassist.CtClass], void)}
; {var2691=org.apache.ibatis.javassist.CtClassType, var202=r0, var2623=r2, var184=null_type, var1099=org.apache.ibatis.javassist.CtClass, var3469=r1, var1678=$z0, var3365=org.apache.ibatis.javassist.ClassPool, var654=$r3, var1709=org.apache.ibatis.javassist.bytecode.ClassFile, var3419=r4, var2296=$r5}
; {org.apache.ibatis.javassist.CtClassType=var2691, r0=var202, r2=var2623, null_type=var184, org.apache.ibatis.javassist.CtClass=var1099, r1=var3469, $z0=var1678, org.apache.ibatis.javassist.ClassPool=var3365, $r3=var654, org.apache.ibatis.javassist.bytecode.ClassFile=var1709, r4=var3419, $r5=var2296}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.CtClassType;	r2 := @parameter0: java.lang.String;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: java.lang.String getName()>();	$z0 = virtualinvoke r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r3 = r0.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.ClassPool classPool>;	$r3 = r0.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.ClassPool classPool>;	virtualinvoke $r3.<org.apache.ibatis.javassist.ClassPool: void checkNotFrozen(java.lang.String)>(r2);	r4 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.bytecode.ClassFile getClassFile2()>();	specialinvoke r0.<org.apache.ibatis.javassist.CtClass: void setName(java.lang.String)>(r2);	virtualinvoke r4.<org.apache.ibatis.javassist.bytecode.ClassFile: void setName(java.lang.String)>(r2);	specialinvoke r0.<org.apache.ibatis.javassist.CtClassType: void nameReplaced()>();	$r5 = r0.<org.apache.ibatis.javassist.CtClassType: org.apache.ibatis.javassist.ClassPool classPool>;	virtualinvoke $r5.<org.apache.ibatis.javassist.ClassPool: void classNameChanged(java.lang.String,org.apache.ibatis.javassist.CtClass)>(r1, r0);	return
;block_num 2