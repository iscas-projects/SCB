(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2352 0)
(declare-sort var2217 0)
(declare-sort var3986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-ClassObject-1 ((Array Int ClassObject)) Int)
(declare-fun var2217-init () var2217)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var3986) String)
(declare-fun cast-from-ClassObject-to-var3986 (ClassObject) var3986)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun cast-from-var2352-to-var3986 (var2352) var3986)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2217 String) void)
(declare-const null-var2352 var2352)
(declare-const null-ClassObject ClassObject)
(declare-const null-__Array__Int__ClassObject__ (Array Int ClassObject))
(declare-const var1477 var2352) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken 
(assert (not (= var1477 null-var2352)))
(declare-const var3917 ClassObject) ; Statement: r3 := @parameter0: java.lang.Class 
(assert (not (= var3917 null-ClassObject)))
(declare-const var727 (Array Int ClassObject)) ; Statement: r0 := @parameter1: java.lang.reflect.Type[] 
(assert (not (= var727 null-__Array__Int__ClassObject__)))
(define-const var1828 Int (getLength-Arr-ClassObject-1 var727)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 <= 0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (<= var1828 0)) ; Cond: $i0 <= 0 
(define-const var520 var2217 var2217-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var357 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var357)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var357!1 String)
(assert (= var357!1 ""))
(assert true)
(define-const var3240 String (append/-1031950772 var357!1 (cast-from-ClassObject-to-var3986 var3917))) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3) 
(declare-const var357!2 String)
(assert (str.prefixof var357!1 var357!2))
(assert true)
(define-const var1960 String (append/672562846 var3240 " isn\u0027t a subclass of ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" isn\'t a subclass of ") 
(declare-const var3240!1 String)
(assert (= var3240!1 (str.++ var3240 " isn\u0027t a subclass of ")))
(assert true)
(define-const var84 String (append/-1031950772 var1960 (cast-from-var2352-to-var3986 var1477))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var1960!1 String)
(assert (str.prefixof var1960 var1960!1))
(assert true)
(define-const var2805 String (toString/-2075883882 var84)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var520 var2805)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var520!1 var2217)
(declare-const var2805!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-ClassObject-1=([java.lang.reflect.Type[]], int), var2217-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3986=([java.lang.Class], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), cast-from-var2352-to-var3986=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2352=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken, var1477=r5, var3917=r3, var727=r0, var1828=$i0, var2217=java.lang.IllegalArgumentException, var520=$r1, var357=$r2, var3986=java.lang.Object, var3240=$r4, var1960=$r6, var84=$r7, var2805=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken=var2352, r5=var1477, r3=var3917, r0=var727, $i0=var1828, java.lang.IllegalArgumentException=var2217, $r1=var520, $r2=var357, java.lang.Object=var3986, $r4=var3240, $r6=var1960, $r7=var84, $r8=var2805}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken;	r3 := @parameter0: java.lang.Class;	r0 := @parameter1: java.lang.reflect.Type[];	$i0 = lengthof r0;	if $i0 <= 0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" isn\'t a subclass of ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 2