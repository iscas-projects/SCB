(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3863 0)
(declare-sort var2334 0)
(declare-sort var2533 0)
(declare-sort var216 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2533-init () var2533)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getDeclaringClass/1477653585 (var3863) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun getName/1618348824 (var3863) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/272304931 (var2533 String var216) void)
(declare-fun cast-from-var2334-to-var216 (var2334) var216)
(declare-const null-var3863 var3863)
(declare-const null-var2334 var2334)
(declare-const var285 var3863) ; Statement: r0 := @parameter0: java.lang.reflect.Field 
(assert (not (= var285 null-var3863)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1129 var2334) ; Statement: $r1 := @caughtexception 
(assert (not (= var1129 null-var2334)))
(define-const var822 var2533 var2533-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException 
(define-const var826 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var826)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var826!1 String)
(assert (= var826!1 ""))
(assert true)
(define-const var3505 String (append/672562846 var826!1 "Failed making field \u0027")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed making field \'") 
(declare-const var826!2 String)
(assert (= var826!2 (str.++ var826!1 "Failed making field \u0027")))
(assert true)
(define-const var1444 ClassObject (getDeclaringClass/1477653585 var285)) ; Statement: $r4 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>() 
(assert true)
(define-const var2544 String (getName/-1958580599 var1444)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var266 String (append/672562846 var3505 var2544)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3505!1 String)
(assert (= var3505!1 (str.++ var3505 var2544)))
(assert true)
(define-const var3733 String (append/672562846 var266 "#")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var266!1 String)
(assert (= var266!1 (str.++ var266 "#")))
(assert true)
(define-const var2391 String (getName/1618348824 var285)) ; Statement: $r8 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
(define-const var2978 String (append/672562846 var3733 var2391)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var3733!1 String)
(assert (= var3733!1 (str.++ var3733 var2391)))
(assert true)
(define-const var189 String (append/672562846 var2978 "\u0027 accessible; either change its visibility or write a custom TypeAdapter for its declaring type")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' accessible; either change its visibility or write a custom TypeAdapter for its declaring type") 
(declare-const var2978!1 String)
(assert (= var2978!1 (str.++ var2978 "\u0027 accessible; either change its visibility or write a custom TypeAdapter for its declaring type")))
(assert true)
(define-const var1074 String (toString/-2075883882 var189)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/272304931 var822 var1074 (cast-from-var2334-to-var216 var1129))) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r1) 

(declare-const var822!1 var2533)
(declare-const var1074!1 String)
(declare-const var1129!1 var2334)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2533-init=([], com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getDeclaringClass/1477653585=([java.lang.reflect.Field], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), getName/1618348824=([java.lang.reflect.Field], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/272304931=([com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException, java.lang.String, java.lang.Throwable], void), cast-from-var2334-to-var216=([java.lang.Exception], java.lang.Throwable)}
; {var3863=java.lang.reflect.Field, var285=r0, var2334=java.lang.Exception, var1129=$r1, var2533=com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException, var822=$r2, var826=$r3, var3505=$r6, var1444=$r4, var2544=$r5, var266=$r7, var3733=$r9, var2391=$r8, var2978=$r10, var189=$r11, var1074=$r12, var216=java.lang.Throwable}
; {java.lang.reflect.Field=var3863, r0=var285, java.lang.Exception=var2334, $r1=var1129, com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException=var2533, $r2=var822, $r3=var826, $r6=var3505, $r4=var1444, $r5=var2544, $r7=var266, $r9=var3733, $r8=var2391, $r10=var2978, $r11=var189, $r12=var1074, java.lang.Throwable=var216}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Field;	$r1 := @caughtexception;	$r2 = new com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed making field \'");	$r4 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.Class getDeclaringClass()>();	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r8 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' accessible; either change its visibility or write a custom TypeAdapter for its declaring type");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.gson.JsonIOException: void <init>(java.lang.String,java.lang.Throwable)>($r12, $r1);	throw $r2
;block_num 2