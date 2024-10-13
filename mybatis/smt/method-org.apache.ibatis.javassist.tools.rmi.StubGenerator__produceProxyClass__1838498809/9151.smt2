(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1109 0)
(declare-sort var2708 0)
(declare-sort var2445 0)
(declare-sort var2832 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getModifiers/-1539668291 (var2708) Int)
(declare-fun var2445_isAbstract/806921985 (Int) Bool)
(declare-fun var2832-init () var2832)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/1611768686 (var2708) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-874668403 (var2832 String) void)
(declare-const null-var1109 var1109)
(declare-const null-var2708 var2708)
(declare-const null-ClassObject ClassObject)
(declare-const var3263 var1109) ; Statement: r1 := @this: org.apache.ibatis.javassist.tools.rmi.StubGenerator 
(assert (not (= var3263 null-var1109)))
(declare-const var3044 var2708) ; Statement: r0 := @parameter0: org.apache.ibatis.javassist.CtClass 
(assert (not (= var3044 null-var2708)))
(declare-const var3809 ClassObject) ; Statement: r18 := @parameter1: java.lang.Class 
(assert (not (= var3809 null-ClassObject)))
(assert true)
(define-const var1766 Int (getModifiers/-1539668291 var3044)) ; Statement: i0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: int getModifiers()>() 
(define-const var1806 Bool (var2445_isAbstract/806921985 var1766)) ; Statement: $z0 = staticinvoke <org.apache.ibatis.javassist.Modifier: boolean isAbstract(int)>(i0) 
 ; Statement: if $z0 != 0 goto $r22 = new org.apache.ibatis.javassist.CannotCompileException 
(assert (not (= (ite var1806 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1227 var2832 var2832-init) ; Statement: $r22 = new org.apache.ibatis.javassist.CannotCompileException 
(define-const var947 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var947)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var947!1 String)
(assert (= var947!1 ""))
(assert true)
(define-const var2305 String (getName/1611768686 var3044)) ; Statement: $r24 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>() 
(assert true)
(define-const var1223 String (append/672562846 var947!1 var2305)) ; Statement: $r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var947!2 String)
(assert (= var947!2 (str.++ var947!1 var2305)))
(assert true)
(define-const var2476 String (append/672562846 var1223 " must be public, non-native, and non-abstract.")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be public, non-native, and non-abstract.") 
(declare-const var1223!1 String)
(assert (= var1223!1 (str.++ var1223 " must be public, non-native, and non-abstract.")))
(assert true)
(define-const var863 String (toString/-2075883882 var2476)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-874668403 var1227 var863)) ; Statement: specialinvoke $r22.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>($r27) 

(declare-const var1227!1 var2832)
(declare-const var863!1 String)
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {getModifiers/-1539668291=([org.apache.ibatis.javassist.CtClass], int), var2445_isAbstract/806921985=([int], boolean), var2832-init=([], org.apache.ibatis.javassist.CannotCompileException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/1611768686=([org.apache.ibatis.javassist.CtClass], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-874668403=([org.apache.ibatis.javassist.CannotCompileException, java.lang.String], void)}
; {var1109=org.apache.ibatis.javassist.tools.rmi.StubGenerator, var3263=r1, var2708=org.apache.ibatis.javassist.CtClass, var3044=r0, var3809=r18, var1766=i0, var2445=org.apache.ibatis.javassist.Modifier, var1806=$z0, var2832=org.apache.ibatis.javassist.CannotCompileException, var1227=$r22, var947=$r23, var2305=$r24, var1223=$r25, var2476=$r26, var863=$r27}
; {org.apache.ibatis.javassist.tools.rmi.StubGenerator=var1109, r1=var3263, org.apache.ibatis.javassist.CtClass=var2708, r0=var3044, r18=var3809, i0=var1766, org.apache.ibatis.javassist.Modifier=var2445, $z0=var1806, org.apache.ibatis.javassist.CannotCompileException=var2832, $r22=var1227, $r23=var947, $r24=var2305, $r25=var1223, $r26=var2476, $r27=var863}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.tools.rmi.StubGenerator;	r0 := @parameter0: org.apache.ibatis.javassist.CtClass;	r18 := @parameter1: java.lang.Class;	i0 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: int getModifiers()>();	$z0 = staticinvoke <org.apache.ibatis.javassist.Modifier: boolean isAbstract(int)>(i0);	if $z0 != 0 goto $r22 = new org.apache.ibatis.javassist.CannotCompileException;	$r22 = new org.apache.ibatis.javassist.CannotCompileException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r24 = virtualinvoke r0.<org.apache.ibatis.javassist.CtClass: java.lang.String getName()>();	$r25 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" must be public, non-native, and non-abstract.");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<org.apache.ibatis.javassist.CannotCompileException: void <init>(java.lang.String)>($r27);	throw $r22
;block_num 2