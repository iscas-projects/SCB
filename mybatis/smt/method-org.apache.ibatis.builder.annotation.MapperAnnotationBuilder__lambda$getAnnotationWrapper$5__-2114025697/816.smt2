(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var895 0)
(declare-sort var1804 0)
(declare-sort var1712 0)
(declare-sort var565 0)
(declare-sort var2730 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1712-init () var1712)
(declare-fun arr-var565-init () (Array Int var565))
(declare-fun getAnnotation/1211161445 (var1804) var2730)
(declare-fun cast-from-var2730-to-var565 (var2730) var565)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getDeclaringClass/501867354 (var895) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1227988463 (var895) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun cast-from-String-to-var565 (String) var565)
(declare-fun String_format/1339386452 (String (Array Int var565)) String)
(declare-fun <init>/-1832852593 (var1712 String) void)
(declare-const null-var895 var895)
(declare-const null-var1804 var1804)
(declare-const null-__Array__Int__var565__ (Array Int var565))
(declare-const var993 var895) ; Statement: r7 := @parameter0: java.lang.reflect.Method 
(assert (not (= var993 null-var895)))
(declare-const var1918 var1804) ; Statement: r2 := @parameter1: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper 
(assert (not (= var1918 null-var1804)))
(declare-const var2486 var1804) ; Statement: r4 := @parameter2: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper 
(assert (not (= var2486 null-var1804)))
(define-const var2710 var1712 var1712-init) ; Statement: $r0 = new org.apache.ibatis.builder.BuilderException 
(define-const var2375 (Array Int var565) arr-var565-init) ; Statement: $r1 = newarray (java.lang.Object)[3] 
(assert true)
(define-const var1330 var2730 (getAnnotation/1211161445 var1918)) ; Statement: $r3 = virtualinvoke r2.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>() 
(declare-const var2375!1 (Array Int var565))
(assert (not (= var2375!1 null-__Array__Int__var565__)))
(assert (= (select var2375!1 0) (cast-from-var2730-to-var565 var1330))) ; Statement: $r1[0] = $r3 
(assert true)
(define-const var1202 var2730 (getAnnotation/1211161445 var2486)) ; Statement: $r5 = virtualinvoke r4.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>() 
(declare-const var2375!2 (Array Int var565))
(assert (not (= var2375!2 null-__Array__Int__var565__)))
(assert (= (select var2375!2 1) (cast-from-var2730-to-var565 var1202))) ; Statement: $r1[1] = $r5 
(define-const var1473 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1473)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1473!1 String)
(assert (= var1473!1 ""))
(assert true)
(define-const var2354 ClassObject (getDeclaringClass/501867354 var993)) ; Statement: $r8 = virtualinvoke r7.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var2553 String (getName/-1958580599 var2354)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2269 String (append/672562846 var1473!1 var2553)) ; Statement: $r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var1473!2 String)
(assert (= var1473!2 (str.++ var1473!1 var2553)))
(assert true)
(define-const var3678 String (append/672562846 var2269 ".")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2269!1 String)
(assert (= var2269!1 (str.++ var2269 ".")))
(assert true)
(define-const var175 String (getName/1227988463 var993)) ; Statement: $r11 = virtualinvoke r7.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var2318 String (append/672562846 var3678 var175)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var3678!1 String)
(assert (= var3678!1 (str.++ var3678 var175)))
(assert true)
(define-const var3848 String (toString/-2075883882 var2318)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var2375!3 (Array Int var565))
(assert (not (= var2375!3 null-__Array__Int__var565__)))
(assert (= (select var2375!3 2) (cast-from-String-to-var565 var3848))) ; Statement: $r1[2] = $r14 
(define-const var3354 String (String_format/1339386452 "Detected conflicting annotations \u0027%s\u0027 and \u0027%s\u0027 on \u0027%s\u0027." var2375!3)) ; Statement: $r15 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Detected conflicting annotations \'%s\' and \'%s\' on \'%s\'.", $r1) 
(assert true)
;(assert (<init>/-1832852593 var2710 var3354)) ; Statement: specialinvoke $r0.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String)>($r15) 

(declare-const var2710!1 var1712)
(declare-const var3354!1 String)
 ; Statement: throw $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1712-init=([], org.apache.ibatis.builder.BuilderException), arr-var565-init=([], java.lang.Object[]), getAnnotation/1211161445=([org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper], java.lang.annotation.Annotation), cast-from-var2730-to-var565=([java.lang.annotation.Annotation], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getDeclaringClass/501867354=([java.lang.reflect.Method], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1227988463=([java.lang.reflect.Method], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), cast-from-String-to-var565=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1832852593=([org.apache.ibatis.builder.BuilderException, java.lang.String], void)}
; {var895=java.lang.reflect.Method, var993=r7, var1804=org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper, var1918=r2, var2486=r4, var1712=org.apache.ibatis.builder.BuilderException, var2710=$r0, var565=java.lang.Object, var2375=$r1, var2730=java.lang.annotation.Annotation, var1330=$r3, var1202=$r5, var1473=$r6, var2354=$r8, var2553=$r9, var2269=$r10, var3678=$r12, var175=$r11, var2318=$r13, var3848=$r14, var3354=$r15}
; {java.lang.reflect.Method=var895, r7=var993, org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper=var1804, r2=var1918, r4=var2486, org.apache.ibatis.builder.BuilderException=var1712, $r0=var2710, java.lang.Object=var565, $r1=var2375, java.lang.annotation.Annotation=var2730, $r3=var1330, $r5=var1202, $r6=var1473, $r8=var2354, $r9=var2553, $r10=var2269, $r12=var3678, $r11=var175, $r13=var2318, $r14=var3848, $r15=var3354}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r7 := @parameter0: java.lang.reflect.Method;	r2 := @parameter1: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper;	r4 := @parameter2: org.apache.ibatis.builder.annotation.MapperAnnotationBuilder$AnnotationWrapper;	$r0 = new org.apache.ibatis.builder.BuilderException;	$r1 = newarray (java.lang.Object)[3];	$r3 = virtualinvoke r2.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>();	$r1[0] = $r3;	$r5 = virtualinvoke r4.<org.apache.ibatis.builder.'annotation'.MapperAnnotationBuilder$AnnotationWrapper: java.lang.'annotation'.Annotation getAnnotation()>();	$r1[1] = $r5;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke r7.<java.lang.reflect.Method: java.lang.Class getDeclaringClass()>();	$r9 = virtualinvoke $r8.<java.lang.Class: java.lang.String getName()>();	$r10 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r11 = virtualinvoke r7.<java.lang.reflect.Method: java.lang.String getName()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r1[2] = $r14;	$r15 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Detected conflicting annotations \'%s\' and \'%s\' on \'%s\'.", $r1);	specialinvoke $r0.<org.apache.ibatis.builder.BuilderException: void <init>(java.lang.String)>($r15);	throw $r0
;block_num 1