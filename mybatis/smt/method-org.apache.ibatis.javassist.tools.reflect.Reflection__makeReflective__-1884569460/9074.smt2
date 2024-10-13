(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1055 0)
(declare-sort var3406 0)
(declare-sort var3117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun isInterface/281315407 (var3406) Bool)
(declare-fun var3117-init () var3117)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1611768686 (var3406) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1592230663 (var3117 String) void)
(declare-const null-var1055 var1055)
(declare-const null-var3406 var3406)
(declare-const var3857 var1055) ; Statement: r1 := @this: org.apache.ibatis.javassist.tools.reflect.Reflection 
(assert (not (= var3857 null-var1055)))
(declare-const var200 var3406) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var200 null-var3406)))
(declare-const var1339 var3406) ; Statement: r6 := @parameter1: org.apache.ibatis.javassist.CtClass 
(assert (not (= var1339 null-var3406)))
(declare-const var3461 var3406) ; Statement: r7 := @parameter2: org.apache.ibatis.javassist.CtClass 
(assert (not (= var3461 null-var3406)))
(assert true)
(define-const var3611 Bool (isInterface/281315407 var200)) ; Statement: $z0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isInterface()>() 
 ; Statement: if $z0 == 0 goto $r2 = r1.<org.apache.ibatis.javassist.tools.reflect.Reflection: org.apache.ibatis.javassist.ClassPool classPool> 
(assert (not (= (ite var3611 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var671 var3117 var3117-init) ; Statement: $r20 = new org.apache.ibatis.javassist.tools.reflect.CannotReflectException 
(define-const var2664 String String-init) ; Statement: $r21 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2664)) ; Statement: specialinvoke $r21.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2664!1 String)
(assert (= var2664!1 ""))
(assert true)
(define-const var3000 String (append/672562846 var2664!1 "Cannot reflect an interface: ")) ; Statement: $r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot reflect an interface: ") 
(declare-const var2664!2 String)
(assert (= var2664!2 (str.++ var2664!1 "Cannot reflect an interface: ")))
(assert true)
(define-const var677 String (getName/1611768686 var200)) ; Statement: $r22 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var3424 String (append/672562846 var3000 var677)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var3000!1 String)
(assert (= var3000!1 (str.++ var3000 var677)))
(assert true)
(define-const var2853 String (toString/-2075883882 var3424)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1592230663 var671 var2853)) ; Statement: specialinvoke $r20.<org.apache.ibatis.javassist.tools.reflect.CannotReflectException: void <init>(java.lang.String)>($r25) 

(declare-const var671!1 var3117)
(declare-const var2853!1 String)
 ; Statement: throw $r20 
(check-sat)
(get-model)
(get-unsat-core)
; {isInterface/281315407=([org.apache.ibatis.javassist.CtClass], boolean), var3117-init=([], org.apache.ibatis.javassist.tools.reflect.CannotReflectException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1592230663=([org.apache.ibatis.javassist.tools.reflect.CannotReflectException, java.lang.String], void)}
; {var1055=org.apache.ibatis.javassist.tools.reflect.Reflection, var3857=r1, var3406=org.apache.ibatis.javassist.CtClass, var200=r0, var1339=r6, var3461=r7, var3611=$z0, var3117=org.apache.ibatis.javassist.tools.reflect.CannotReflectException, var671=$r20, var2664=$r21, var3000=$r23, var677=$r22, var3424=$r24, var2853=$r25}
; {org.apache.ibatis.javassist.tools.reflect.Reflection=var1055, r1=var3857, org.apache.ibatis.javassist.CtClass=var3406, r0=var200, r6=var1339, r7=var3461, $z0=var3611, org.apache.ibatis.javassist.tools.reflect.CannotReflectException=var3117, $r20=var671, $r21=var2664, $r23=var3000, $r22=var677, $r24=var3424, $r25=var2853}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.tools.reflect.Reflection;	r0 := @parameter0: org.apache.ibatis.javassist.CtClass;	r6 := @parameter1: org.apache.ibatis.javassist.CtClass;	r7 := @parameter2: org.apache.ibatis.javassist.CtClass;	$z0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: boolean isInterface()>();	if $z0 == 0 goto $r2 = r1.<org.apache.ibatis.javassist.tools.reflect.Reflection: org.apache.ibatis.javassist.ClassPool classPool>;	$r20 = new org.apache.ibatis.javassist.tools.reflect.CannotReflectException;	$r21 = new java.lang.StringBuilder;	specialinvoke $r21.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot reflect an interface: ");	$r22 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r20.<org.apache.ibatis.javassist.tools.reflect.CannotReflectException: void <init>(java.lang.String)>($r25);	throw $r20
;block_num 2