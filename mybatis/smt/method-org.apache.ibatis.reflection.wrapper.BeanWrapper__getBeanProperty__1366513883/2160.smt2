(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3312 0)
(declare-sort var642 0)
(declare-sort var807 0)
(declare-sort var1154 0)
(declare-sort var2271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2271-init () var2271)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1907289949 (var642) String)
(declare-fun getClass/1258963082 (var807) ClassObject)
(declare-fun append/-1031950772 (String var807) String)
(declare-fun cast-from-ClassObject-to-var807 (ClassObject) var807)
(declare-fun toString/-1112415476 (var1154) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1806233911 (var2271 String var1154) void)
(declare-const null-var3312 var3312)
(declare-const null-var642 var642)
(declare-const null-var807 var807)
(declare-const null-var1154 var1154)
(declare-const var3785 var3312) ; Statement: r0 := @this: org.apache.ibatis.reflection.wrapper.BeanWrapper 
(assert (not (= var3785 null-var3312)))
(declare-const var1541 var642) ; Statement: r1 := @parameter0: org.apache.ibatis.reflection.property.PropertyTokenizer 
(assert (not (= var1541 null-var642)))
(declare-const var1761 var807) ; Statement: r4 := @parameter1: java.lang.Object 
(assert (not (= var1761 null-var807)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2415 var1154) ; Statement: $r7 := @caughtexception 
(assert (not (= var2415 null-var1154)))
(define-const var1020 var2271 var2271-init) ; Statement: $r8 = new org.apache.ibatis.reflection.ReflectionException 
(define-const var2954 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2954)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2954!1 String)
(assert (= var2954!1 ""))
(assert true)
(define-const var838 String (append/672562846 var2954!1 "Could not get property \u0027")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not get property \'") 
(declare-const var2954!2 String)
(assert (= var2954!2 (str.++ var2954!1 "Could not get property \u0027")))
(assert true)
(define-const var1948 String (getName/-1907289949 var1541)) ; Statement: $r10 = virtualinvoke r1.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getName()>() 
(assert true)
(define-const var2942 String (append/672562846 var838 var1948)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var838!1 String)
(assert (= var838!1 (str.++ var838 var1948)))
(assert true)
(define-const var151 String (append/672562846 var2942 "\u0027 from ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' from ") 
(declare-const var2942!1 String)
(assert (= var2942!1 (str.++ var2942 "\u0027 from ")))
(assert true)
(define-const var3358 ClassObject (getClass/1258963082 var1761)) ; Statement: $r13 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var10 String (append/-1031950772 var151 (cast-from-ClassObject-to-var807 var3358))) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13) 
(declare-const var151!1 String)
(assert (str.prefixof var151 var151!1))
(assert true)
(define-const var3555 String (append/672562846 var10 ".  Cause: ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Cause: ") 
(declare-const var10!1 String)
(assert (= var10!1 (str.++ var10 ".  Cause: ")))
(assert true)
(define-const var3580 String (toString/-1112415476 var2415)) ; Statement: $r16 = virtualinvoke $r7.<java.lang.Throwable: java.lang.String toString()>() 
(assert true)
(define-const var3154 String (append/672562846 var3555 var3580)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3555!1 String)
(assert (= var3555!1 (str.++ var3555 var3580)))
(assert true)
(define-const var3796 String (toString/-2075883882 var3154)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1806233911 var1020 var3796 var2415)) ; Statement: specialinvoke $r8.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r7) 

(declare-const var1020!1 var2271)
(declare-const var3796!1 String)
(declare-const var2415!1 var1154)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {var2271-init=([], org.apache.ibatis.reflection.ReflectionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1907289949=([org.apache.ibatis.reflection.property.PropertyTokenizer], java.lang.String), getClass/1258963082=([java.lang.Object], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var807=([java.lang.Class], java.lang.Object), toString/-1112415476=([java.lang.Throwable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1806233911=([org.apache.ibatis.reflection.ReflectionException, java.lang.String, java.lang.Throwable], void)}
; {var3312=org.apache.ibatis.reflection.wrapper.BeanWrapper, var3785=r0, var642=org.apache.ibatis.reflection.property.PropertyTokenizer, var1541=r1, var807=java.lang.Object, var1761=r4, var1154=java.lang.Throwable, var2415=$r7, var2271=org.apache.ibatis.reflection.ReflectionException, var1020=$r8, var2954=$r9, var838=$r11, var1948=$r10, var2942=$r12, var151=$r14, var3358=$r13, var10=$r15, var3555=$r17, var3580=$r16, var3154=$r18, var3796=$r19}
; {org.apache.ibatis.reflection.wrapper.BeanWrapper=var3312, r0=var3785, org.apache.ibatis.reflection.property.PropertyTokenizer=var642, r1=var1541, java.lang.Object=var807, r4=var1761, java.lang.Throwable=var1154, $r7=var2415, org.apache.ibatis.reflection.ReflectionException=var2271, $r8=var1020, $r9=var2954, $r11=var838, $r10=var1948, $r12=var2942, $r14=var151, $r13=var3358, $r15=var10, $r17=var3555, $r16=var3580, $r18=var3154, $r19=var3796}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.reflection.wrapper.BeanWrapper;	r1 := @parameter0: org.apache.ibatis.reflection.property.PropertyTokenizer;	r4 := @parameter1: java.lang.Object;	$r7 := @caughtexception;	$r8 = new org.apache.ibatis.reflection.ReflectionException;	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not get property \'");	$r10 = virtualinvoke r1.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' from ");	$r13 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r13);	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Cause: ");	$r16 = virtualinvoke $r7.<java.lang.Throwable: java.lang.String toString()>();	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r8.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String,java.lang.Throwable)>($r19, $r7);	throw $r8
;block_num 2