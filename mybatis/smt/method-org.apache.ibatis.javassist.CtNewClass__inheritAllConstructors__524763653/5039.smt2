(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3258 0)
(declare-sort var2884 0)
(declare-sort var2561 0)
(declare-sort var1199 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSuperclass/206115374 (var2561) var2884)
(declare-fun cast-from-var3258-to-var2561 (var3258) var2561)
(declare-fun getDeclaredConstructors/-519587590 (var2884) (Array Int var1199))
(declare-fun getLength-Arr-var1199-1 ((Array Int var1199)) Int)
(declare-const null-var3258 var3258)
(declare-const var309 var3258) ; Statement: r0 := @this: org.apache.ibatis.javassist.CtNewClass 
(assert (not (= var309 null-var3258)))
(assert true)
(define-const var3674 var2884 (getSuperclass/206115374 (cast-from-var3258-to-var2561 var309))) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtNewClass: org.apache.ibatis.javassist.CtClass getSuperclass()>() 
(assert true)
(define-const var3874 (Array Int var1199) (getDeclaredConstructors/-519587590 var3674)) ; Statement: r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtConstructor[] getDeclaredConstructors()>() 
(define-const var3458 Int 0) ; Statement: i3 = 0 
(define-const var2865 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(define-const var3978 Int (getLength-Arr-var1199-1 var3874)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i4 >= $i0 goto (branch) 
(assert (>= var2865 var3978)) ; Cond: i4 >= $i0 
 ; Statement: if i3 >= 1 goto return 
(assert (>= var3458 1)) ; Cond: i3 >= 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getSuperclass/206115374=([org.apache.ibatis.javassist.CtClassType], org.apache.ibatis.javassist.CtClass), cast-from-var3258-to-var2561=([org.apache.ibatis.javassist.CtNewClass], org.apache.ibatis.javassist.CtClassType), getDeclaredConstructors/-519587590=([org.apache.ibatis.javassist.CtClass], org.apache.ibatis.javassist.CtConstructor[]), getLength-Arr-var1199-1=([org.apache.ibatis.javassist.CtConstructor[]], int)}
; {var3258=org.apache.ibatis.javassist.CtNewClass, var309=r0, var2884=org.apache.ibatis.javassist.CtClass, var2561=org.apache.ibatis.javassist.CtClassType, var3674=r1, var1199=org.apache.ibatis.javassist.CtConstructor, var3874=r2, var3458=i3, var2865=i4, var3978=$i0}
; {org.apache.ibatis.javassist.CtNewClass=var3258, r0=var309, org.apache.ibatis.javassist.CtClass=var2884, org.apache.ibatis.javassist.CtClassType=var2561, r1=var3674, org.apache.ibatis.javassist.CtConstructor=var1199, r2=var3874, i3=var3458, i4=var2865, $i0=var3978}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.ibatis.javassist.CtNewClass;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.CtNewClass: org.apache.ibatis.javassist.CtClass getSuperclass()>();	r2 = virtualinvoke r1.<org.apache.ibatis.javassist.CtClass: org.apache.ibatis.javassist.CtConstructor[] getDeclaredConstructors()>();	i3 = 0;	i4 = 0;	$i0 = lengthof r2;	if i4 >= $i0 goto (branch);	if i3 >= 1 goto return;	return
;block_num 4