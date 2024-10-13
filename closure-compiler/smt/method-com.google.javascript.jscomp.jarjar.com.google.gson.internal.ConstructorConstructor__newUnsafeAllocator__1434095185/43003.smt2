(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2563 0)
(declare-sort var93 0)
(declare-sort var3080 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun useJdkUnsafe/-1607792251 (var2563) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var93) String)
(declare-fun cast-from-ClassObject-to-var93 (ClassObject) var93)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3080-init () var3080)
(declare-fun <init>/1581691882 (var3080 var2563 String) void)
(declare-const null-var2563 var2563)
(declare-const null-ClassObject ClassObject)
(declare-const var554 var2563) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor 
(assert (not (= var554 null-var2563)))
(declare-const var116 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var116 null-ClassObject)))
(define-const var3432 Bool (useJdkUnsafe/-1607792251 var554)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor: boolean useJdkUnsafe> 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var3432 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3481 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3481)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3481!1 String)
(assert (= var3481!1 ""))
(assert true)
(define-const var1292 String (append/672562846 var3481!1 "Unable to create instance of ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create instance of ") 
(declare-const var3481!2 String)
(assert (= var3481!2 (str.++ var3481!1 "Unable to create instance of ")))
(assert true)
(define-const var3197 String (append/-1031950772 var1292 (cast-from-ClassObject-to-var93 var116))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var1292!1 String)
(assert (str.prefixof var1292 var1292!1))
(assert true)
(define-const var170 String (append/672562846 var3197 "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.") 
(declare-const var3197!1 String)
(assert (= var3197!1 (str.++ var3197 "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.")))
(assert true)
(define-const var3231 String (toString/-2075883882 var170)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2025 var3080 var3080-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$20 
(assert true)
;(assert (<init>/1581691882 var2025 var554 var3231)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$20: void <init>(com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor,java.lang.String)>(r0, r6) 

(declare-const var2025!1 var3080)
(declare-const var554!1 var2563)
(declare-const var3231!1 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {useJdkUnsafe/-1607792251=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var93=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3080-init=([], com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$20), <init>/1581691882=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$20, com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor, java.lang.String], void)}
; {var2563=com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor, var554=r0, var116=r2, var3432=$z0, var3481=$r1, var1292=$r3, var93=java.lang.Object, var3197=$r4, var170=$r5, var3231=r6, var3080=com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$20, var2025=$r7}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor=var2563, r0=var554, r2=var116, $z0=var3432, $r1=var3481, $r3=var1292, java.lang.Object=var93, $r4=var3197, $r5=var170, r6=var3231, com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$20=var3080, $r7=var2025}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor;	r2 := @parameter0: java.lang.Class;	$z0 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor: boolean useJdkUnsafe>;	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create instance of ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.");	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$20;	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor$20: void <init>(com.google.javascript.jscomp.jarjar.com.google.gson.internal.ConstructorConstructor,java.lang.String)>(r0, r6);	return $r7
;block_num 2