(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3352 0)
(declare-sort var693 0)
(declare-sort var1874 0)
(declare-sort var1547 0)
(declare-sort var1769 0)
(declare-sort var3441 0)
(declare-sort var2276 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1874_annotationType/-1467926858 (var1874) ClassObject)
(declare-fun arr-ClassObject-init () (Array Int ClassObject))
(declare-fun getMethod/1303228849 (ClassObject String (Array Int ClassObject)) var1547)
(declare-fun arr-var1769-init () (Array Int var1769))
(declare-fun invoke/-1759464968 (var1547 var1769 (Array Int var1769)) var1769)
(declare-fun cast-from-var1874-to-var1769 (var1874) var1769)
(declare-fun cast-from-var1769-to-ClassObject (var1769) ClassObject)
(declare-fun getDefaultSqlProviderType/-794587087 (var693) ClassObject)
(declare-fun var2276-init () var2276)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun toString/-1020660066 (var1547) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1832852593 (var2276 String) void)
(declare-const null-var3352 var3352)
(declare-const null-var693 var693)
(declare-const null-var1874 var1874)
(declare-const null-var1547 var1547)
(declare-const var3441-TYPE ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const var3257 var3352) ; Statement: r43 := @this: org.apache.ibatis.builder.annotation.ProviderSqlSource 
(assert (not (= var3257 null-var3352)))
(declare-const var1344 var693) ; Statement: r29 := @parameter0: org.apache.ibatis.session.Configuration 
(assert (not (= var1344 null-var693)))
(declare-const var1459 var1874) ; Statement: r0 := @parameter1: java.lang.annotation.Annotation 
(assert (not (= var1459 null-var1874)))
(declare-const var834 var1547) ; Statement: r22 := @parameter2: java.lang.reflect.Method 
(assert (not (= var834 null-var1547)))
(define-const var2957 ClassObject (var1874_annotationType/-1467926858 var1459)) ; Statement: $r2 = interfaceinvoke r0.<java.lang.'annotation'.Annotation: java.lang.Class annotationType()>() 
(define-const var3833 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r1 = newarray (java.lang.Class)[0] 
(assert true)
(define-const var1563 var1547 (getMethod/1303228849 var2957 "type" var3833)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.Class: java.lang.reflect.Method getMethod(java.lang.String,java.lang.Class[])>("type", $r1) 
(define-const var1810 (Array Int var1769) arr-var1769-init) ; Statement: $r3 = newarray (java.lang.Object)[0] 
(assert true)
(define-const var582 var1769 (invoke/-1759464968 var1563 (cast-from-var1874-to-var1769 var1459) var1810)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r0, $r3) 
(define-const var1533 ClassObject (cast-from-var1769-to-ClassObject var582)) ; Statement: r6 = (java.lang.Class) $r5 
(define-const var1453 ClassObject (var1874_annotationType/-1467926858 var1459)) ; Statement: $r8 = interfaceinvoke r0.<java.lang.'annotation'.Annotation: java.lang.Class annotationType()>() 
(define-const var3762 (Array Int ClassObject) arr-ClassObject-init) ; Statement: $r7 = newarray (java.lang.Class)[0] 
(assert true)
(define-const var1815 var1547 (getMethod/1303228849 var1453 "value" var3762)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.Class: java.lang.reflect.Method getMethod(java.lang.String,java.lang.Class[])>("value", $r7) 
(define-const var1666 (Array Int var1769) arr-var1769-init) ; Statement: $r9 = newarray (java.lang.Object)[0] 
(assert true)
(define-const var3467 var1769 (invoke/-1759464968 var1815 (cast-from-var1874-to-var1769 var1459) var1666)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r0, $r9) 
(define-const var1940 ClassObject (cast-from-var1769-to-ClassObject var3467)) ; Statement: r12 = (java.lang.Class) $r11 
(define-const var185 ClassObject var3441-TYPE) ; Statement: $r13 = <java.lang.Void: java.lang.Class TYPE> 
 ; Statement: if r12 != $r13 goto $r14 = <java.lang.Void: java.lang.Class TYPE> 
(assert (not (not (= var1940 var185)))) ; Negate: Cond: r12 != $r13  
(define-const var3247 ClassObject var3441-TYPE) ; Statement: $r28 = <java.lang.Void: java.lang.Class TYPE> 
 ; Statement: if r6 != $r28 goto $r14 = <java.lang.Void: java.lang.Class TYPE> 
(assert (not (not (= var1533 var3247)))) ; Negate: Cond: r6 != $r28  
(assert true)
(define-const var748 ClassObject (getDefaultSqlProviderType/-794587087 var1344)) ; Statement: $r30 = virtualinvoke r29.<org.apache.ibatis.session.Configuration: java.lang.Class getDefaultSqlProviderType()>() 
 ; Statement: if $r30 == null goto $r31 = new org.apache.ibatis.builder.BuilderException 
(assert (= var748 null-ClassObject)) ; Cond: $r30 == null 
(define-const var1234 var2276 var2276-init) ; Statement: $r31 = new org.apache.ibatis.builder.BuilderException 
(define-const var2774 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2774)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2774!1 String)
(assert (= var2774!1 ""))
(assert true)
(define-const var1674 String (append/672562846 var2774!1 "Please specify either \u0027value\u0027 or \u0027type\u0027 attribute of @")) ; Statement: $r35 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Please specify either \'value\' or \'type\' attribute of @") 
(declare-const var2774!2 String)
(assert (= var2774!2 (str.++ var2774!1 "Please specify either \u0027value\u0027 or \u0027type\u0027 attribute of @")))
(define-const var250 ClassObject (var1874_annotationType/-1467926858 var1459)) ; Statement: $r33 = interfaceinvoke r0.<java.lang.'annotation'.Annotation: java.lang.Class annotationType()>() 
(assert true)
(define-const var3400 String (getSimpleName/-390194377 var250)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var1881 String (append/672562846 var1674 var3400)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34) 
(declare-const var1674!1 String)
(assert (= var1674!1 (str.++ var1674 var3400)))
(assert true)
(define-const var1268 String (append/672562846 var1881 " at the \u0027")) ; Statement: $r38 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at the \'") 
(declare-const var1881!1 String)
(assert (= var1881!1 (str.++ var1881 " at the \u0027")))
(assert true)
(define-const var1527 String (toString/-1020660066 var834)) ; Statement: $r37 = virtualinvoke r22.<java.lang.reflect.Method: java.lang.String toString()>() 
(assert true)
(define-const var462 String (append/672562846 var1268 var1527)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37) 
(declare-const var1268!1 String)
(assert (= var1268!1 (str.++ var1268 var1527)))
(assert true)
(define-const var1602 String (append/672562846 var462 "\u0027.")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.") 
(declare-const var462!1 String)
(assert (= var462!1 (str.++ var462 "\u0027.")))
(assert true)
(define-const var3011 String (toString/-2075883882 var1602)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1832852593 var1234 var3011)) ; Statement: specialinvoke $r31.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String)>($r41) 

(declare-const var1234!1 var2276)
(declare-const var3011!1 String)
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {var1874_annotationType/-1467926858=([java.lang.annotation.Annotation], java.lang.Class), arr-ClassObject-init=([], java.lang.Class[]), getMethod/1303228849=([java.lang.Class, java.lang.String, java.lang.Class[]], java.lang.reflect.Method), arr-var1769-init=([], java.lang.Object[]), invoke/-1759464968=([java.lang.reflect.Method, java.lang.Object, java.lang.Object[]], java.lang.Object), cast-from-var1874-to-var1769=([java.lang.annotation.Annotation], java.lang.Object), cast-from-var1769-to-ClassObject=([java.lang.Object], java.lang.Class), getDefaultSqlProviderType/-794587087=([org.apache.ibatis.session.Configuration], java.lang.Class), var2276-init=([], org.apache.ibatis.builder.BuilderException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-1020660066=([java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1832852593=([org.apache.ibatis.builder.BuilderException, java.lang.String], void)}
; {var3352=org.apache.ibatis.builder.annotation.ProviderSqlSource, var3257=r43, var693=org.apache.ibatis.session.Configuration, var1344=r29, var1874=java.lang.annotation.Annotation, var1459=r0, var1547=java.lang.reflect.Method, var834=r22, var2957=$r2, var3833=$r1, var1563=$r4, var1769=java.lang.Object, var1810=$r3, var582=$r5, var1533=r6, var1453=$r8, var3762=$r7, var1815=$r10, var1666=$r9, var3467=$r11, var1940=r12, var3441=java.lang.Void, var185=$r13, var3247=$r28, var748=$r30, var2276=org.apache.ibatis.builder.BuilderException, var1234=$r31, var2774=$r32, var1674=$r35, var250=$r33, var3400=$r34, var1881=$r36, var1268=$r38, var1527=$r37, var462=$r39, var1602=$r40, var3011=$r41}
; {org.apache.ibatis.builder.annotation.ProviderSqlSource=var3352, r43=var3257, org.apache.ibatis.session.Configuration=var693, r29=var1344, java.lang.annotation.Annotation=var1874, r0=var1459, java.lang.reflect.Method=var1547, r22=var834, $r2=var2957, $r1=var3833, $r4=var1563, java.lang.Object=var1769, $r3=var1810, $r5=var582, r6=var1533, $r8=var1453, $r7=var3762, $r10=var1815, $r9=var1666, $r11=var3467, r12=var1940, java.lang.Void=var3441, $r13=var185, $r28=var3247, $r30=var748, org.apache.ibatis.builder.BuilderException=var2276, $r31=var1234, $r32=var2774, $r35=var1674, $r33=var250, $r34=var3400, $r36=var1881, $r38=var1268, $r37=var1527, $r39=var462, $r40=var1602, $r41=var3011}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.reflect.Method: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r43 := @this: org.apache.ibatis.builder.annotation.ProviderSqlSource;	r29 := @parameter0: org.apache.ibatis.session.Configuration;	r0 := @parameter1: java.lang.annotation.Annotation;	r22 := @parameter2: java.lang.reflect.Method;	$r2 = interfaceinvoke r0.<java.lang.'annotation'.Annotation: java.lang.Class annotationType()>();	$r1 = newarray (java.lang.Class)[0];	$r4 = virtualinvoke $r2.<java.lang.Class: java.lang.reflect.Method getMethod(java.lang.String,java.lang.Class[])>("type", $r1);	$r3 = newarray (java.lang.Object)[0];	$r5 = virtualinvoke $r4.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r0, $r3);	r6 = (java.lang.Class) $r5;	$r8 = interfaceinvoke r0.<java.lang.'annotation'.Annotation: java.lang.Class annotationType()>();	$r7 = newarray (java.lang.Class)[0];	$r10 = virtualinvoke $r8.<java.lang.Class: java.lang.reflect.Method getMethod(java.lang.String,java.lang.Class[])>("value", $r7);	$r9 = newarray (java.lang.Object)[0];	$r11 = virtualinvoke $r10.<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>(r0, $r9);	r12 = (java.lang.Class) $r11;	$r13 = <java.lang.Void: java.lang.Class TYPE>;	if r12 != $r13 goto $r14 = <java.lang.Void: java.lang.Class TYPE>;	$r28 = <java.lang.Void: java.lang.Class TYPE>;	if r6 != $r28 goto $r14 = <java.lang.Void: java.lang.Class TYPE>;	$r30 = virtualinvoke r29.<org.apache.ibatis.session.Configuration: java.lang.Class getDefaultSqlProviderType()>();	if $r30 == null goto $r31 = new org.apache.ibatis.builder.BuilderException;	$r31 = new org.apache.ibatis.builder.BuilderException;	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	$r35 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Please specify either \'value\' or \'type\' attribute of @");	$r33 = interfaceinvoke r0.<java.lang.'annotation'.Annotation: java.lang.Class annotationType()>();	$r34 = virtualinvoke $r33.<java.lang.Class: java.lang.String getSimpleName()>();	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r34);	$r38 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" at the \'");	$r37 = virtualinvoke r22.<java.lang.reflect.Method: java.lang.String toString()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r37);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'.");	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r31.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String)>($r41);	throw $r31
;block_num 4