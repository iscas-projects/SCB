(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1250 0)
(declare-sort var3044 0)
(declare-sort var1470 0)
(declare-sort var451 0)
(declare-sort var2871 0)
(declare-sort var568 0)
(declare-sort var3159 0)
(declare-sort var1905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun constructor/-339183035 (var1250) var1470)
(declare-fun var2871-init () var2871)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var568_constructorToString/1631520055 (var1470) String)
(declare-fun var3159_toString/-575966009 ((Array Int var3044)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var2871 String var1905) void)
(declare-fun cast-from-var451-to-var1905 (var451) var1905)
(declare-const null-var1250 var1250)
(declare-const null-__Array__Int__var3044__ (Array Int var3044))
(declare-const null-var451 var451)
(declare-const var429 var1250) ; Statement: r0 := @this: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter 
(assert (not (= var429 null-var1250)))
(declare-const var1326 (Array Int var3044)) ; Statement: r1 := @parameter0: java.lang.Object[] 
(assert (not (= var1326 null-__Array__Int__var3044__)))
(define-const var1602 var1470 (constructor/-339183035 var429)) ; Statement: $r2 = r0.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter: java.lang.reflect.Constructor constructor> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2036 var451) ; Statement: $r16 := @caughtexception 
(assert (not (= var2036 null-var451)))
(define-const var3372 var2871 var2871-init) ; Statement: $r17 = new java.lang.RuntimeException 
(define-const var2177 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2177)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2177!1 String)
(assert (= var2177!1 ""))
(assert true)
(define-const var2301 String (append/672562846 var2177!1 "Failed to invoke constructor \u0027")) ; Statement: $r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to invoke constructor \'") 
(declare-const var2177!2 String)
(assert (= var2177!2 (str.++ var2177!1 "Failed to invoke constructor \u0027")))
(define-const var1989 var1470 (constructor/-339183035 var429)) ; Statement: $r19 = r0.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter: java.lang.reflect.Constructor constructor> 
(define-const var1953 String (var568_constructorToString/1631520055 var1989)) ; Statement: $r20 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String constructorToString(java.lang.reflect.Constructor)>($r19) 
(assert true)
(define-const var2892 String (append/672562846 var2301 var1953)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20) 
(declare-const var2301!1 String)
(assert (= var2301!1 (str.++ var2301 var1953)))
(assert true)
(define-const var2552 String (append/672562846 var2892 "\u0027 with args ")) ; Statement: $r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' with args ") 
(declare-const var2892!1 String)
(assert (= var2892!1 (str.++ var2892 "\u0027 with args ")))
(define-const var17 String (var3159_toString/-575966009 var1326)) ; Statement: $r23 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>(r1) 
(assert true)
(define-const var2462 String (append/672562846 var2552 var17)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23) 
(declare-const var2552!1 String)
(assert (= var2552!1 (str.++ var2552 var17)))
(assert true)
(define-const var2135 String (toString/-2075883882 var2462)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var3372 var2135 (cast-from-var451-to-var1905 var2036))) ; Statement: specialinvoke $r17.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r26, $r16) 

(declare-const var3372!1 var2871)
(declare-const var2135!1 String)
(declare-const var2036!1 var451)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {constructor/-339183035=([com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter], java.lang.reflect.Constructor), var2871-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var568_constructorToString/1631520055=([java.lang.reflect.Constructor], java.lang.String), var3159_toString/-575966009=([java.lang.Object[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var451-to-var1905=([java.lang.Exception], java.lang.Throwable)}
; {var1250=com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter, var429=r0, var3044=java.lang.Object, var1326=r1, var1470=java.lang.reflect.Constructor, var1602=$r2, var451=java.lang.Exception, var2036=$r16, var2871=java.lang.RuntimeException, var3372=$r17, var2177=$r18, var2301=$r21, var1989=$r19, var568=com.google.gson.internal.reflect.ReflectionHelper, var1953=$r20, var2892=$r22, var2552=$r24, var3159=java.util.Arrays, var17=$r23, var2462=$r25, var2135=$r26, var1905=java.lang.Throwable}
; {com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter=var1250, r0=var429, java.lang.Object=var3044, r1=var1326, java.lang.reflect.Constructor=var1470, $r2=var1602, java.lang.Exception=var451, $r16=var2036, java.lang.RuntimeException=var2871, $r17=var3372, $r18=var2177, $r21=var2301, $r19=var1989, com.google.gson.internal.reflect.ReflectionHelper=var568, $r20=var1953, $r22=var2892, $r24=var2552, java.util.Arrays=var3159, $r23=var17, $r25=var2462, $r26=var2135, java.lang.Throwable=var1905}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter;	r1 := @parameter0: java.lang.Object[];	$r2 = r0.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter: java.lang.reflect.Constructor constructor>;	$r16 := @caughtexception;	$r17 = new java.lang.RuntimeException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r21 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to invoke constructor \'");	$r19 = r0.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter: java.lang.reflect.Constructor constructor>;	$r20 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String constructorToString(java.lang.reflect.Constructor)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r20);	$r24 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' with args ");	$r23 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>(r1);	$r25 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r23);	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r26, $r16);	throw $r17
;block_num 2