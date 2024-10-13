(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3354 0)
(declare-sort var2228 0)
(declare-sort var80 0)
(declare-sort var2728 0)
(declare-sort var1416 0)
(declare-sort var1702 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun values/-1079057620 (var3354) (Array Int var1416))
(declare-fun var1702-init () var1702)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1227988463 (var2728) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1087086210 (var1702 String) void)
(declare-const null-var3354 var3354)
(declare-const null-var2228 var2228)
(declare-const null-var80 var80)
(declare-const null-var2728 var2728)
(declare-const null-__Array__Int__var1416__ (Array Int var1416))
(declare-const var3282 var3354) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.annotation.ArrayMemberValue 
(assert (not (= var3282 null-var3354)))
(declare-const var2004 var2228) ; Statement: r4 := @parameter0: java.lang.ClassLoader 
(assert (not (= var2004 null-var2228)))
(declare-const var945 var80) ; Statement: r7 := @parameter1: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var945 null-var80)))
(declare-const var939 var2728) ; Statement: r8 := @parameter2: java.lang.reflect.Method 
(assert (not (= var939 null-var2728)))
(define-const var562 (Array Int var1416) (values/-1079057620 var3282)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.ArrayMemberValue: org.apache.ibatis.javassist.bytecode.'annotation'.MemberValue[] values> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.ArrayMemberValue: org.apache.ibatis.javassist.bytecode.'annotation'.MemberValue[] values> 
(assert (not (not (= var562 null-__Array__Int__var1416__)))) ; Negate: Cond: $r1 != null  
(define-const var44 var1702 var1702-init) ; Statement: $r19 = new java.lang.ClassNotFoundException 
(define-const var1542 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1542)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1542!1 String)
(assert (= var1542!1 ""))
(assert true)
(define-const var2820 String (append/672562846 var1542!1 "no array elements found: ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no array elements found: ") 
(declare-const var1542!2 String)
(assert (= var1542!2 (str.++ var1542!1 "no array elements found: ")))
(assert true)
(define-const var54 String (getName/1227988463 var939)) ; Statement: $r21 = virtualinvoke r8.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3258 String (append/672562846 var2820 var54)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var2820!1 String)
(assert (= var2820!1 (str.++ var2820 var54)))
(assert true)
(define-const var592 String (toString/-2075883882 var3258)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1087086210 var44 var592)) ; Statement: specialinvoke $r19.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>($r24) 

(declare-const var44!1 var1702)
(declare-const var592!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {values/-1079057620=([org.apache.ibatis.javassist.bytecode.annotation.ArrayMemberValue], org.apache.ibatis.javassist.bytecode.annotation.MemberValue[]), var1702-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1227988463=([java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1087086210=([java.lang.ClassNotFoundException, java.lang.String], void)}
; {var3354=org.apache.ibatis.javassist.bytecode.annotation.ArrayMemberValue, var3282=r0, var2228=java.lang.ClassLoader, var2004=r4, var80=org.apache.ibatis.javassist.ClassPool, var945=r7, var2728=java.lang.reflect.Method, var939=r8, var1416=org.apache.ibatis.javassist.bytecode.annotation.MemberValue, var562=$r1, var1702=java.lang.ClassNotFoundException, var44=$r19, var1542=$r20, var2820=$r22, var54=$r21, var3258=$r23, var592=$r24}
; {org.apache.ibatis.javassist.bytecode.annotation.ArrayMemberValue=var3354, r0=var3282, java.lang.ClassLoader=var2228, r4=var2004, org.apache.ibatis.javassist.ClassPool=var80, r7=var945, java.lang.reflect.Method=var2728, r8=var939, org.apache.ibatis.javassist.bytecode.annotation.MemberValue=var1416, $r1=var562, java.lang.ClassNotFoundException=var1702, $r19=var44, $r20=var1542, $r22=var2820, $r21=var54, $r23=var3258, $r24=var592}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.annotation.ArrayMemberValue;	r4 := @parameter0: java.lang.ClassLoader;	r7 := @parameter1: org.apache.ibatis.javassist.ClassPool;	r8 := @parameter2: java.lang.reflect.Method;	$r1 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.ArrayMemberValue: org.apache.ibatis.javassist.bytecode.'annotation'.MemberValue[] values>;	if $r1 != null goto $r2 = r0.<org.apache.ibatis.javassist.bytecode.'annotation'.ArrayMemberValue: org.apache.ibatis.javassist.bytecode.'annotation'.MemberValue[] values>;	$r19 = new java.lang.ClassNotFoundException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("no array elements found: ");	$r21 = virtualinvoke r8.<java.lang.reflect.Method: java.lang.String getName()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>($r24);	throw $r19
;block_num 2