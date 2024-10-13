(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var235 0)
(declare-sort var2080 0)
(declare-sort var1777 0)
(declare-sort var493 0)
(declare-sort var2488 0)
(declare-sort var2041 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2041-init () var2041)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getType/-1937663788 (var235) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getValue/-670558341 (var235) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1087086210 (var2041 String) void)
(declare-const null-var235 var235)
(declare-const null-var2080 var2080)
(declare-const null-var1777 var1777)
(declare-const null-var493 var493)
(declare-const null-var2488 var2488)
(declare-const var3240 var235) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue 
(assert (not (= var3240 null-var235)))
(declare-const var413 var2080) ; Statement: r1 := @parameter0: java.lang.ClassLoader 
(assert (not (= var413 null-var2080)))
(declare-const var807 var1777) ; Statement: r24 := @parameter1: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var807 null-var1777)))
(declare-const var3698 var493) ; Statement: r25 := @parameter2: java.lang.reflect.Method 
(assert (not (= var3698 null-var493)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3537 var2488) ; Statement: $r15 := @caughtexception 
(assert (not (= var3537 null-var2488)))
(define-const var836 var2041 var2041-init) ; Statement: $r16 = new java.lang.ClassNotFoundException 
(define-const var3459 String String-init) ; Statement: $r17 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3459)) ; Statement: specialinvoke $r17.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3459!1 String)
(assert (= var3459!1 ""))
(assert true)
(define-const var340 String (getType/-1937663788 var3240)) ; Statement: $r18 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.'annotation'.EnumMemberValue: java.lang.String getType()>() 
(assert true)
(define-const var946 String (append/672562846 var3459!1 var340)) ; Statement: $r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3459!2 String)
(assert (= var3459!2 (str.++ var3459!1 var340)))
(assert true)
(define-const var1508 String (append/672562846 var946 ".")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var946!1 String)
(assert (= var946!1 (str.++ var946 ".")))
(assert true)
(define-const var2353 String (getValue/-670558341 var3240)) ; Statement: $r20 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.'annotation'.EnumMemberValue: java.lang.String getValue()>() 
(assert true)
(define-const var1041 String (append/672562846 var1508 var2353)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1508!1 String)
(assert (= var1508!1 (str.++ var1508 var2353)))
(assert true)
(define-const var1853 String (toString/-2075883882 var1041)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1087086210 var836 var1853)) ; Statement: specialinvoke $r16.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>($r23) 

(declare-const var836!1 var2041)
(declare-const var1853!1 String)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {var2041-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getType/-1937663788=([org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getValue/-670558341=([org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1087086210=([java.lang.ClassNotFoundException, java.lang.String], void)}
; {var235=org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue, var3240=r0, var2080=java.lang.ClassLoader, var413=r1, var1777=org.apache.ibatis.javassist.ClassPool, var807=r24, var493=java.lang.reflect.Method, var3698=r25, var2488=java.lang.NoSuchFieldException, var3537=$r15, var2041=java.lang.ClassNotFoundException, var836=$r16, var3459=$r17, var340=$r18, var946=$r19, var1508=$r21, var2353=$r20, var1041=$r22, var1853=$r23}
; {org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue=var235, r0=var3240, java.lang.ClassLoader=var2080, r1=var413, org.apache.ibatis.javassist.ClassPool=var1777, r24=var807, java.lang.reflect.Method=var493, r25=var3698, java.lang.NoSuchFieldException=var2488, $r15=var3537, java.lang.ClassNotFoundException=var2041, $r16=var836, $r17=var3459, $r18=var340, $r19=var946, $r21=var1508, $r20=var2353, $r22=var1041, $r23=var1853}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue;	r1 := @parameter0: java.lang.ClassLoader;	r24 := @parameter1: org.apache.ibatis.javassist.ClassPool;	r25 := @parameter2: java.lang.reflect.Method;	$r15 := @caughtexception;	$r16 = new java.lang.ClassNotFoundException;	$r17 = new java.lang.StringBuilder;	specialinvoke $r17.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.'annotation'.EnumMemberValue: java.lang.String getType()>();	$r19 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r20 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.'annotation'.EnumMemberValue: java.lang.String getValue()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>($r23);	throw $r16
;block_num 2