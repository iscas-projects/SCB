(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var153 0)
(declare-sort var717 0)
(declare-sort var1797 0)
(declare-sort var385 0)
(declare-sort var349 0)
(declare-sort var2016 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$constructor/1099874522 (var153) var717)
(declare-fun arr-var1797-init () (Array Int var1797))
(declare-fun var349-init () var349)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1797) String)
(declare-fun cast-from-var717-to-var1797 (var717) var1797)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getTargetException/2075407118 (var385) var2016)
(declare-fun <init>/1642269841 (var349 String var2016) void)
(declare-const null-var153 var153)
(declare-const null-var385 var385)
(declare-const var1268 var153) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9 
(assert (not (= var1268 null-var153)))
(define-const var2170 var717 (val$constructor/1099874522 var1268)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor> 
(define-const var1302 (Array Int var1797) arr-var1797-init) ; Statement: $r1 = newarray (java.lang.Object)[0] 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1457 var385) ; Statement: $r5 := @caughtexception 
(assert (not (= var1457 null-var385)))
(define-const var1561 var349 var349-init) ; Statement: $r6 = new java.lang.RuntimeException 
(define-const var855 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var855)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>()>() 
(declare-const var855!1 String)
(assert (= var855!1 ""))
(assert true)
(define-const var3981 String (append/672562846 var855!1 "Failed to invoke ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to invoke ") 
(declare-const var855!2 String)
(assert (= var855!2 (str.++ var855!1 "Failed to invoke ")))
(define-const var356 var717 (val$constructor/1099874522 var1268)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor> 
(assert true)
(define-const var1884 String (append/-1031950772 var3981 (cast-from-var717-to-var1797 var356))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8) 
(declare-const var3981!1 String)
(assert (str.prefixof var3981 var3981!1))
(assert true)
(define-const var1340 String (append/672562846 var1884 " with no args")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with no args") 
(declare-const var1884!1 String)
(assert (= var1884!1 (str.++ var1884 " with no args")))
(assert true)
(define-const var2333 String (toString/-2075883882 var1340)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var885 var2016 (getTargetException/2075407118 var1457)) ; Statement: $r12 = virtualinvoke $r5.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>() 
(assert true)
;(assert (<init>/1642269841 var1561 var2333 var885)) ; Statement: specialinvoke $r6.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r12) 

(declare-const var1561!1 var349)
(declare-const var2333!1 String)
(declare-const var885!1 var2016)
 ; Statement: throw $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {val$constructor/1099874522=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9], java.lang.reflect.Constructor), arr-var1797-init=([], java.lang.Object[]), var349-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var717-to-var1797=([java.lang.reflect.Constructor], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getTargetException/2075407118=([java.lang.reflect.InvocationTargetException], java.lang.Throwable), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void)}
; {var153=com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9, var1268=r0, var717=java.lang.reflect.Constructor, var2170=$r2, var1797=java.lang.Object, var1302=$r1, var385=java.lang.reflect.InvocationTargetException, var1457=$r5, var349=java.lang.RuntimeException, var1561=$r6, var855=$r7, var3981=$r9, var356=$r8, var1884=$r10, var1340=$r11, var2333=$r13, var2016=java.lang.Throwable, var885=$r12}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9=var153, r0=var1268, java.lang.reflect.Constructor=var717, $r2=var2170, java.lang.Object=var1797, $r1=var1302, java.lang.reflect.InvocationTargetException=var385, $r5=var1457, java.lang.RuntimeException=var349, $r6=var1561, $r7=var855, $r9=var3981, $r8=var356, $r10=var1884, $r11=var1340, $r13=var2333, java.lang.Throwable=var2016, $r12=var885}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor>;	$r1 = newarray (java.lang.Object)[0];	$r5 := @caughtexception;	$r6 = new java.lang.RuntimeException;	$r7 = new java.lang.StringBuilder;	specialinvoke $r7.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to invoke ");	$r8 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$9: java.lang.reflect.Constructor val$constructor>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" with no args");	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = virtualinvoke $r5.<java.lang.reflect.InvocationTargetException: java.lang.Throwable getTargetException()>();	specialinvoke $r6.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r12);	throw $r6
;block_num 2