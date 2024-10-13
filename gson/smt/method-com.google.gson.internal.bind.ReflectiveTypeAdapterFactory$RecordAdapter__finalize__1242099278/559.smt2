(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3434 0)
(declare-sort var2896 0)
(declare-sort var1794 0)
(declare-sort var1458 0)
(declare-sort var2768 0)
(declare-sort var1770 0)
(declare-sort var906 0)
(declare-sort var3021 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun constructor/-339183035 (var3434) var1794)
(declare-fun var2768-init () var2768)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var1770_constructorToString/1631520055 (var1794) String)
(declare-fun var906_toString/-575966009 ((Array Int var2896)) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getCause/20745027 (var1458) var3021)
(declare-fun <init>/1642269841 (var2768 String var3021) void)
(declare-const null-var3434 var3434)
(declare-const null-__Array__Int__var2896__ (Array Int var2896))
(declare-const null-var1458 var1458)
(declare-const var826 var3434) ; Statement: r0 := @this: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter 
(assert (not (= var826 null-var3434)))
(declare-const var3814 (Array Int var2896)) ; Statement: r1 := @parameter0: java.lang.Object[] 
(assert (not (= var3814 null-__Array__Int__var2896__)))
(define-const var823 var1794 (constructor/-339183035 var826)) ; Statement: $r2 = r0.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter: java.lang.reflect.Constructor constructor> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var377 var1458) ; Statement: $r4 := @caughtexception 
(assert (not (= var377 null-var1458)))
(define-const var3887 var2768 var2768-init) ; Statement: $r5 = new java.lang.RuntimeException 
(define-const var578 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var578)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var578!1 String)
(assert (= var578!1 ""))
(assert true)
(define-const var465 String (append/672562846 var578!1 "Failed to invoke constructor \u0027")) ; Statement: $r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to invoke constructor \'") 
(declare-const var578!2 String)
(assert (= var578!2 (str.++ var578!1 "Failed to invoke constructor \u0027")))
(define-const var2595 var1794 (constructor/-339183035 var826)) ; Statement: $r7 = r0.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter: java.lang.reflect.Constructor constructor> 
(define-const var1162 String (var1770_constructorToString/1631520055 var2595)) ; Statement: $r8 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String constructorToString(java.lang.reflect.Constructor)>($r7) 
(assert true)
(define-const var1457 String (append/672562846 var465 var1162)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var465!1 String)
(assert (= var465!1 (str.++ var465 var1162)))
(assert true)
(define-const var567 String (append/672562846 var1457 "\u0027 with args ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' with args ") 
(declare-const var1457!1 String)
(assert (= var1457!1 (str.++ var1457 "\u0027 with args ")))
(define-const var282 String (var906_toString/-575966009 var3814)) ; Statement: $r11 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>(r1) 
(assert true)
(define-const var602 String (append/672562846 var567 var282)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var567!1 String)
(assert (= var567!1 (str.++ var567 var282)))
(assert true)
(define-const var3792 String (toString/-2075883882 var602)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2167 var3021 (getCause/20745027 var377)) ; Statement: $r14 = virtualinvoke $r4.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getCause()>() 
(assert true)
;(assert (<init>/1642269841 var3887 var3792 var2167)) ; Statement: specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r14) 

(declare-const var3887!1 var2768)
(declare-const var3792!1 String)
(declare-const var2167!1 var3021)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {constructor/-339183035=([com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter], java.lang.reflect.Constructor), var2768-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var1770_constructorToString/1631520055=([java.lang.reflect.Constructor], java.lang.String), var906_toString/-575966009=([java.lang.Object[]], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getCause/20745027=([java.lang.reflect.InvocationTargetException], java.lang.Throwable), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void)}
; {var3434=com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter, var826=r0, var2896=java.lang.Object, var3814=r1, var1794=java.lang.reflect.Constructor, var823=$r2, var1458=java.lang.reflect.InvocationTargetException, var377=$r4, var2768=java.lang.RuntimeException, var3887=$r5, var578=$r6, var465=$r9, var2595=$r7, var1770=com.google.gson.internal.reflect.ReflectionHelper, var1162=$r8, var1457=$r10, var567=$r12, var906=java.util.Arrays, var282=$r11, var602=$r13, var3792=$r15, var3021=java.lang.Throwable, var2167=$r14}
; {com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter=var3434, r0=var826, java.lang.Object=var2896, r1=var3814, java.lang.reflect.Constructor=var1794, $r2=var823, java.lang.reflect.InvocationTargetException=var1458, $r4=var377, java.lang.RuntimeException=var2768, $r5=var3887, $r6=var578, $r9=var465, $r7=var2595, com.google.gson.internal.reflect.ReflectionHelper=var1770, $r8=var1162, $r10=var1457, $r12=var567, java.util.Arrays=var906, $r11=var282, $r13=var602, $r15=var3792, java.lang.Throwable=var3021, $r14=var2167}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter;	r1 := @parameter0: java.lang.Object[];	$r2 = r0.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter: java.lang.reflect.Constructor constructor>;	$r4 := @caughtexception;	$r5 = new java.lang.RuntimeException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to invoke constructor \'");	$r7 = r0.<com.google.gson.internal.bind.ReflectiveTypeAdapterFactory$RecordAdapter: java.lang.reflect.Constructor constructor>;	$r8 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String constructorToString(java.lang.reflect.Constructor)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' with args ");	$r11 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>(r1);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r14 = virtualinvoke $r4.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getCause()>();	specialinvoke $r5.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r14);	throw $r5
;block_num 2