(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3842 0)
(declare-sort var3280 0)
(declare-sort var890 0)
(declare-sort var1952 0)
(declare-sort var482 0)
(declare-sort var3673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1952-init () var1952)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$rawType/-1307551754 (var3842) ClassObject)
(declare-fun append/-1031950772 (String var482) String)
(declare-fun cast-from-ClassObject-to-var482 (ClassObject) var482)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1642269841 (var1952 String var3673) void)
(declare-fun cast-from-var890-to-var3673 (var890) var3673)
(declare-const null-var3842 var3842)
(declare-const var3280-INSTANCE var3280)
(declare-const null-var890 var890)
(declare-const var3247 var3842) ; Statement: r0 := @this: com.google.gson.internal.ConstructorConstructor$19 
(assert (not (= var3247 null-var3842)))
(define-const var1441 var3280 var3280-INSTANCE) ; Statement: $r2 = <com.google.gson.internal.UnsafeAllocator: com.google.gson.internal.UnsafeAllocator INSTANCE> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2062 var890) ; Statement: $r3 := @caughtexception 
(assert (not (= var2062 null-var890)))
(define-const var2096 var1952 var1952-init) ; Statement: $r4 = new java.lang.RuntimeException 
(define-const var2468 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2468)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2468!1 String)
(assert (= var2468!1 ""))
(assert true)
(define-const var2169 String (append/672562846 var2468!1 "Unable to create instance of ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create instance of ") 
(declare-const var2468!2 String)
(assert (= var2468!2 (str.++ var2468!1 "Unable to create instance of ")))
(define-const var2750 ClassObject (val$rawType/-1307551754 var3247)) ; Statement: $r6 = r0.<com.google.gson.internal.ConstructorConstructor$19: java.lang.Class val$rawType> 
(assert true)
(define-const var623 String (append/-1031950772 var2169 (cast-from-ClassObject-to-var482 var2750))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var2169!1 String)
(assert (str.prefixof var2169 var2169!1))
(assert true)
(define-const var1736 String (append/672562846 var623 ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.") 
(declare-const var623!1 String)
(assert (= var623!1 (str.++ var623 ". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.")))
(assert true)
(define-const var2116 String (toString/-2075883882 var1736)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1642269841 var2096 var2116 (cast-from-var890-to-var3673 var2062))) ; Statement: specialinvoke $r4.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3) 

(declare-const var2096!1 var1952)
(declare-const var2116!1 String)
(declare-const var2062!1 var890)
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1952-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$rawType/-1307551754=([com.google.gson.internal.ConstructorConstructor$19], java.lang.Class), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var482=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1642269841=([java.lang.RuntimeException, java.lang.String, java.lang.Throwable], void), cast-from-var890-to-var3673=([java.lang.Exception], java.lang.Throwable)}
; {var3842=com.google.gson.internal.ConstructorConstructor$19, var3247=r0, var3280=com.google.gson.internal.UnsafeAllocator, var1441=$r2, var890=java.lang.Exception, var2062=$r3, var1952=java.lang.RuntimeException, var2096=$r4, var2468=$r5, var2169=$r7, var2750=$r6, var482=java.lang.Object, var623=$r8, var1736=$r9, var2116=$r10, var3673=java.lang.Throwable}
; {com.google.gson.internal.ConstructorConstructor$19=var3842, r0=var3247, com.google.gson.internal.UnsafeAllocator=var3280, $r2=var1441, java.lang.Exception=var890, $r3=var2062, java.lang.RuntimeException=var1952, $r4=var2096, $r5=var2468, $r7=var2169, $r6=var2750, java.lang.Object=var482, $r8=var623, $r9=var1736, $r10=var2116, java.lang.Throwable=var3673}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.ConstructorConstructor$19;	$r2 = <com.google.gson.internal.UnsafeAllocator: com.google.gson.internal.UnsafeAllocator INSTANCE>;	$r3 := @caughtexception;	$r4 = new java.lang.RuntimeException;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create instance of ");	$r6 = r0.<com.google.gson.internal.ConstructorConstructor$19: java.lang.Class val$rawType>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Registering an InstanceCreator or a TypeAdapter for this type, or adding a no-args constructor may fix this problem.");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r4.<java.lang.RuntimeException: void <init>(java.lang.String,java.lang.Throwable)>($r10, $r3);	throw $r4
;block_num 2