(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3361 0)
(declare-sort var2508 0)
(declare-sort var2396 0)
(declare-sort var555 0)
(declare-sort var3191 0)
(declare-sort var1819 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1819-init () var1819)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getType/-1937663788 (var3361) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getValue/-670558341 (var3361) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1087086210 (var1819 String) void)
(declare-const null-var3361 var3361)
(declare-const null-var2508 var2508)
(declare-const null-var2396 var2396)
(declare-const null-var555 var555)
(declare-const null-var3191 var3191)
(declare-const var2232 var3361) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue 
(assert (not (= var2232 null-var3361)))
(declare-const var587 var2508) ; Statement: r1 := @parameter0: java.lang.ClassLoader 
(assert (not (= var587 null-var2508)))
(declare-const var1164 var2396) ; Statement: r24 := @parameter1: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var1164 null-var2396)))
(declare-const var280 var555) ; Statement: r25 := @parameter2: java.lang.reflect.Method 
(assert (not (= var280 null-var555)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3942 var3191) ; Statement: $r6 := @caughtexception 
(assert (not (= var3942 null-var3191)))
(define-const var3518 var1819 var1819-init) ; Statement: $r7 = new java.lang.ClassNotFoundException 
(define-const var353 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var353)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var353!1 String)
(assert (= var353!1 ""))
(assert true)
(define-const var122 String (getType/-1937663788 var2232)) ; Statement: $r9 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.'annotation'.EnumMemberValue: java.lang.String getType()>() 
(assert true)
(define-const var2429 String (append/672562846 var353!1 var122)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var353!2 String)
(assert (= var353!2 (str.++ var353!1 var122)))
(assert true)
(define-const var2690 String (append/672562846 var2429 ".")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2429!1 String)
(assert (= var2429!1 (str.++ var2429 ".")))
(assert true)
(define-const var3255 String (getValue/-670558341 var2232)) ; Statement: $r11 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.'annotation'.EnumMemberValue: java.lang.String getValue()>() 
(assert true)
(define-const var3156 String (append/672562846 var2690 var3255)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2690!1 String)
(assert (= var2690!1 (str.++ var2690 var3255)))
(assert true)
(define-const var1199 String (toString/-2075883882 var3156)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1087086210 var3518 var1199)) ; Statement: specialinvoke $r7.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>($r14) 

(declare-const var3518!1 var1819)
(declare-const var1199!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1819-init=([], java.lang.ClassNotFoundException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getType/-1937663788=([org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getValue/-670558341=([org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1087086210=([java.lang.ClassNotFoundException, java.lang.String], void)}
; {var3361=org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue, var2232=r0, var2508=java.lang.ClassLoader, var587=r1, var2396=org.apache.ibatis.javassist.ClassPool, var1164=r24, var555=java.lang.reflect.Method, var280=r25, var3191=java.lang.IllegalAccessException, var3942=$r6, var1819=java.lang.ClassNotFoundException, var3518=$r7, var353=$r8, var122=$r9, var2429=$r10, var2690=$r12, var3255=$r11, var3156=$r13, var1199=$r14}
; {org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue=var3361, r0=var2232, java.lang.ClassLoader=var2508, r1=var587, org.apache.ibatis.javassist.ClassPool=var2396, r24=var1164, java.lang.reflect.Method=var555, r25=var280, java.lang.IllegalAccessException=var3191, $r6=var3942, java.lang.ClassNotFoundException=var1819, $r7=var3518, $r8=var353, $r9=var122, $r10=var2429, $r12=var2690, $r11=var3255, $r13=var3156, $r14=var1199}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.annotation.EnumMemberValue;	r1 := @parameter0: java.lang.ClassLoader;	r24 := @parameter1: org.apache.ibatis.javassist.ClassPool;	r25 := @parameter2: java.lang.reflect.Method;	$r6 := @caughtexception;	$r7 = new java.lang.ClassNotFoundException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.'annotation'.EnumMemberValue: java.lang.String getType()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r11 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.'annotation'.EnumMemberValue: java.lang.String getValue()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.ClassNotFoundException: void <init>(java.lang.String)>($r14);	throw $r7
;block_num 2