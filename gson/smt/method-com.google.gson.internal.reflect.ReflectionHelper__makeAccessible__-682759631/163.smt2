(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3018 0)
(declare-sort var785 0)
(declare-sort var1938 0)
(declare-sort var1901 0)
(declare-sort var2343 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1938_getAccessibleObjectDescription/-550785423 (var3018 Bool) String)
(declare-fun var1901-init () var1901)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/37495988 (var1901 String var2343) void)
(declare-fun cast-from-var785-to-var2343 (var785) var2343)
(declare-const null-var3018 var3018)
(declare-const null-var785 var785)
(declare-const var371 var3018) ; Statement: r0 := @parameter0: java.lang.reflect.AccessibleObject 
(assert (not (= var371 null-var3018)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3661 var785) ; Statement: $r1 := @caughtexception 
(assert (not (= var3661 null-var785)))
(define-const var3426 String (var1938_getAccessibleObjectDescription/-550785423 var371 (ite (= 1 0) true false))) ; Statement: r2 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String getAccessibleObjectDescription(java.lang.reflect.AccessibleObject,boolean)>(r0, 0) 
(define-const var850 var1901 var1901-init) ; Statement: $r3 = new com.google.gson.JsonIOException 
(define-const var1911 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1911)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1911!1 String)
(assert (= var1911!1 ""))
(assert true)
(define-const var849 String (append/672562846 var1911!1 "Failed making ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed making ") 
(declare-const var1911!2 String)
(assert (= var1911!2 (str.++ var1911!1 "Failed making ")))
(assert true)
(define-const var1052 String (append/672562846 var849 var3426)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var849!1 String)
(assert (= var849!1 (str.++ var849 var3426)))
(assert true)
(define-const var3580 String (append/672562846 var1052 " accessible; either increase its visibility or write a custom TypeAdapter for its declaring type.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" accessible; either increase its visibility or write a custom TypeAdapter for its declaring type.") 
(declare-const var1052!1 String)
(assert (= var1052!1 (str.++ var1052 " accessible; either increase its visibility or write a custom TypeAdapter for its declaring type.")))
(assert true)
(define-const var867 String (toString/-2075883882 var3580)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/37495988 var850 var867 (cast-from-var785-to-var2343 var3661))) ; Statement: specialinvoke $r3.<com.google.gson.JsonIOException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r1) 

(declare-const var850!1 var1901)
(declare-const var867!1 String)
(declare-const var3661!1 var785)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var1938_getAccessibleObjectDescription/-550785423=([java.lang.reflect.AccessibleObject, boolean], java.lang.String), var1901-init=([], com.google.gson.JsonIOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/37495988=([com.google.gson.JsonIOException, java.lang.String, java.lang.Throwable], void), cast-from-var785-to-var2343=([java.lang.Exception], java.lang.Throwable)}
; {var3018=java.lang.reflect.AccessibleObject, var371=r0, var785=java.lang.Exception, var3661=$r1, var1938=com.google.gson.internal.reflect.ReflectionHelper, var3426=r2, var1901=com.google.gson.JsonIOException, var850=$r3, var1911=$r4, var849=$r5, var1052=$r6, var3580=$r7, var867=$r8, var2343=java.lang.Throwable}
; {java.lang.reflect.AccessibleObject=var3018, r0=var371, java.lang.Exception=var785, $r1=var3661, com.google.gson.internal.reflect.ReflectionHelper=var1938, r2=var3426, com.google.gson.JsonIOException=var1901, $r3=var850, $r4=var1911, $r5=var849, $r6=var1052, $r7=var3580, $r8=var867, java.lang.Throwable=var2343}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.AccessibleObject;	$r1 := @caughtexception;	r2 = staticinvoke <com.google.gson.internal.reflect.ReflectionHelper: java.lang.String getAccessibleObjectDescription(java.lang.reflect.AccessibleObject,boolean)>(r0, 0);	$r3 = new com.google.gson.JsonIOException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed making ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" accessible; either increase its visibility or write a custom TypeAdapter for its declaring type.");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<com.google.gson.JsonIOException: void <init>(java.lang.String,java.lang.Throwable)>($r8, $r1);	throw $r3
;block_num 2