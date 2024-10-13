(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3155 0)
(declare-sort var3329 0)
(declare-sort var3439 0)
(declare-sort var570 0)
(declare-sort var823 0)
(declare-sort var3989 0)
(declare-sort var1923 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1907289949 (var3439) String)
(declare-fun getSetterType/-1685909032 (var3155 String) ClassObject)
(declare-fun var3989-init () var3989)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun toString/-1112415476 (var1923) String)
(declare-fun cast-from-var823-to-var1923 (var823) var1923)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1806233911 (var3989 String var1923) void)
(declare-const null-var3155 var3155)
(declare-const null-String String)
(declare-const null-var3439 var3439)
(declare-const null-var570 var570)
(declare-const null-var823 var823)
(declare-const var3215 var3155) ; Statement: r0 := @this: org.apache.ibatis.reflection.wrapper.BeanWrapper 
(assert (not (= var3215 null-var3155)))
(declare-const var793 String) ; Statement: r15 := @parameter0: java.lang.String 
(assert (not (= var793 null-String)))
(declare-const var1028 var3439) ; Statement: r1 := @parameter1: org.apache.ibatis.reflection.property.PropertyTokenizer 
(assert (not (= var1028 null-var3439)))
(declare-const var41 var570) ; Statement: r4 := @parameter2: org.apache.ibatis.reflection.factory.ObjectFactory 
(assert (not (= var41 null-var570)))
(assert true)
(define-const var1616 String (getName/-1907289949 var1028)) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getName()>() 
(assert true)
(define-const var2013 ClassObject (getSetterType/-1685909032 var3215 var1616)) ; Statement: r3 = virtualinvoke r0.<org.apache.ibatis.reflection.wrapper.BeanWrapper: java.lang.Class getSetterType(java.lang.String)>($r2) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2149 var823) ; Statement: $r12 := @caughtexception 
(assert (not (= var2149 null-var823)))
(define-const var1721 var3989 var3989-init) ; Statement: $r13 = new org.apache.ibatis.reflection.ReflectionException 
(define-const var2302 String String-init) ; Statement: $r14 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2302)) ; Statement: specialinvoke $r14.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2302!1 String)
(assert (= var2302!1 ""))
(assert true)
(define-const var637 String (append/672562846 var2302!1 "Cannot set value of property \u0027")) ; Statement: $r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot set value of property \'") 
(declare-const var2302!2 String)
(assert (= var2302!2 (str.++ var2302!1 "Cannot set value of property \u0027")))
(assert true)
(define-const var3262 String (append/672562846 var637 var793)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15) 
(declare-const var637!1 String)
(assert (= var637!1 (str.++ var637 var793)))
(assert true)
(define-const var3529 String (append/672562846 var3262 "\u0027 because \u0027")) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' because \'") 
(declare-const var3262!1 String)
(assert (= var3262!1 (str.++ var3262 "\u0027 because \u0027")))
(assert true)
(define-const var1484 String (append/672562846 var3529 var793)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15) 
(declare-const var3529!1 String)
(assert (= var3529!1 (str.++ var3529 var793)))
(assert true)
(define-const var1870 String (append/672562846 var1484 "\u0027 is null and cannot be instantiated on instance of ")) ; Statement: $r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is null and cannot be instantiated on instance of ") 
(declare-const var1484!1 String)
(assert (= var1484!1 (str.++ var1484 "\u0027 is null and cannot be instantiated on instance of ")))
(assert true)
(define-const var531 String (getName/-1958580599 var2013)) ; Statement: $r20 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2040 String (append/672562846 var1870 var531)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var1870!1 String)
(assert (= var1870!1 (str.++ var1870 var531)))
(assert true)
(define-const var1122 String (append/672562846 var2040 ". Cause:")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Cause:") 
(declare-const var2040!1 String)
(assert (= var2040!1 (str.++ var2040 ". Cause:")))
(assert true)
(define-const var673 String (toString/-1112415476 (cast-from-var823-to-var1923 var2149))) ; Statement: $r23 = virtualinvoke $r12.<java.lang.Exception: java.lang.String toString()>() 
(assert true)
(define-const var3451 String (append/672562846 var1122 var673)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var1122!1 String)
(assert (= var1122!1 (str.++ var1122 var673)))
(assert true)
(define-const var582 String (toString/-2075883882 var3451)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1806233911 var1721 var582 (cast-from-var823-to-var1923 var2149))) ; Statement: specialinvoke $r13.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String,java.lang.Throwable)>($r26, $r12) 

(declare-const var1721!1 var3989)
(declare-const var582!1 String)
(declare-const var2149!1 var823)
 ; Statement: throw $r13 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1907289949=([org.apache.ibatis.reflection.property.PropertyTokenizer], java.lang.String), getSetterType/-1685909032=([org.apache.ibatis.reflection.wrapper.BeanWrapper, java.lang.String], java.lang.Class), var3989-init=([], org.apache.ibatis.reflection.ReflectionException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-1112415476=([java.lang.Throwable], java.lang.String), cast-from-var823-to-var1923=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1806233911=([org.apache.ibatis.reflection.ReflectionException, java.lang.String, java.lang.Throwable], void)}
; {var3155=org.apache.ibatis.reflection.wrapper.BeanWrapper, var3215=r0, var793=r15, var3329=null_type, var3439=org.apache.ibatis.reflection.property.PropertyTokenizer, var1028=r1, var570=org.apache.ibatis.reflection.factory.ObjectFactory, var41=r4, var1616=$r2, var2013=r3, var823=java.lang.Exception, var2149=$r12, var3989=org.apache.ibatis.reflection.ReflectionException, var1721=$r13, var2302=$r14, var637=$r16, var3262=$r17, var3529=$r18, var1484=$r19, var1870=$r21, var531=$r20, var2040=$r22, var1122=$r24, var1923=java.lang.Throwable, var673=$r23, var3451=$r25, var582=$r26}
; {org.apache.ibatis.reflection.wrapper.BeanWrapper=var3155, r0=var3215, r15=var793, null_type=var3329, org.apache.ibatis.reflection.property.PropertyTokenizer=var3439, r1=var1028, org.apache.ibatis.reflection.factory.ObjectFactory=var570, r4=var41, $r2=var1616, r3=var2013, java.lang.Exception=var823, $r12=var2149, org.apache.ibatis.reflection.ReflectionException=var3989, $r13=var1721, $r14=var2302, $r16=var637, $r17=var3262, $r18=var3529, $r19=var1484, $r21=var1870, $r20=var531, $r22=var2040, $r24=var1122, java.lang.Throwable=var1923, $r23=var673, $r25=var3451, $r26=var582}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Throwable: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.reflection.wrapper.BeanWrapper;	r15 := @parameter0: java.lang.String;	r1 := @parameter1: org.apache.ibatis.reflection.property.PropertyTokenizer;	r4 := @parameter2: org.apache.ibatis.reflection.factory.ObjectFactory;	$r2 = virtualinvoke r1.<org.apache.ibatis.reflection.property.PropertyTokenizer: java.lang.String getName()>();	r3 = virtualinvoke r0.<org.apache.ibatis.reflection.wrapper.BeanWrapper: java.lang.Class getSetterType(java.lang.String)>($r2);	$r12 := @caughtexception;	$r13 = new org.apache.ibatis.reflection.ReflectionException;	$r14 = new java.lang.StringBuilder;	specialinvoke $r14.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot set value of property \'");	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' because \'");	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15);	$r21 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is null and cannot be instantiated on instance of ");	$r20 = virtualinvoke r3.<java.lang.Class: java.lang.String getName()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Cause:");	$r23 = virtualinvoke $r12.<java.lang.Exception: java.lang.String toString()>();	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r13.<org.apache.ibatis.reflection.ReflectionException: void <init>(java.lang.String,java.lang.Throwable)>($r26, $r12);	throw $r13
;block_num 2