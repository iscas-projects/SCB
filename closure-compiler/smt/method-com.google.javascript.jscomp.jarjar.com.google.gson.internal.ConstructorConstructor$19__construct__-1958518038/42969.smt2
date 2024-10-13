(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var507 0)
(declare-sort var454 0)
(declare-sort var1503 0)
(declare-sort var3635 0)
(declare-sort var1756 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1503-init () var1503)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$rawType/-263628377 (var507) ClassObject)
(declare-fun append/-1031950772 (String var3635) String)
(declare-fun cast-from-ClassObject-to-var3635 (ClassObject) var3635)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var1503 String var1756) void)
(declare-fun cast-from-var454-to-var1756 (var454) var1756)
(declare-const null-var507 var507)
(declare-const null-var454 var454)
(declare-const var2213 var507) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$19 
(assert (not (= var2213 null-var507)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2579 var454) ; Statement: $r3 := @caughtexception 
(assert (not (= var2579 null-var454)))
(define-const var2177 var1503 var1503-init) ; Statement: $r4 = new java.lang.RuntimeException 
(define-const var2619 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2619)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2619!1 String)
(assert (= var2619!1 ""))
(assert true)
(define-const var636 String (append/672562846 var2619!1 "Unable to create instance of ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create instance of ") 
(declare-const var2619!2 String)
(assert (= var2619!2 (str.++ var2619!1 "Unable to create instance of ")))
(define-const var1630 ClassObject (val$rawType/-263628377 var2213)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$19: java.lang.Class val$rawType> 
(assert true)
(define-const var2612 String (append/-1031950772 var636 (cast-from-ClassObject-to-var3635 var1630))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var636!1 String)
(assert (str.prefixof var636 var636!1))
(assert true)
(define-const var1770 String (append/672562846 var2612 ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.") 
(declare-const var2612!1 String)
(assert (= var2612!1 (str.++ var2612 ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.")))
(assert true)
(define-const var222 String (toString/-2075883882 var1770)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var2177 var222 (cast-from-var454-to-var1756 var2579))) ; Statement: specialinvoke $r4.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3) 

(declare-const var2177!1 var1503)
(declare-const var222!1 String)
(declare-const var2579!1 var454)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1503-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$rawType/-263628377=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$19], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3635=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var454-to-var1756=([java.lang.Exception], java.lang.Throwable)}
; {var507=com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$19, var2213=r0, var454=java.lang.Exception, var2579=$r3, var1503=java.lang.RuntimeException, var2177=$r4, var2619=$r5, var636=$r7, var1630=$r6, var3635=java.lang.Object, var2612=$r8, var1770=$r9, var222=$r10, var1756=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$19=var507, r0=var2213, java.lang.Exception=var454, $r3=var2579, java.lang.RuntimeException=var1503, $r4=var2177, $r5=var2619, $r7=var636, $r6=var1630, java.lang.Object=var3635, $r8=var2612, $r9=var1770, $r10=var222, java.lang.Throwable=var1756}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$19;	$r3 := @caughtexception;	$r4 = new java.lang.RuntimeException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create instance of ");	$r6 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$19: java.lang.Class val$rawType>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3);	throw $r4
;block_num 2