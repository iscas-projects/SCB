(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2525 0)
(declare-sort var2061 0)
(declare-sort var2741 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun useJdkUnsafe/877806998 (var2525) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2061) String)
(declare-fun cast-from-ClassObject-to-var2061 (ClassObject) var2061)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var2741-init () var2741)
(declare-fun <init>/-654476536 (var2741 var2525 String) void)
(declare-const null-var2525 var2525)
(declare-const null-ClassObject ClassObject)
(declare-const var2831 var2525) ; Statement: r0 := @this: com.google.gson.internal.ConstructorConstructor 
(assert (not (= var2831 null-var2525)))
(declare-const var615 ClassObject) ; Statement: r2 := @parameter0: java.lang.Class 
(assert (not (= var615 null-ClassObject)))
(define-const var3283 Bool (useJdkUnsafe/877806998 var2831)) ; Statement: $z0 = r0.<com.google.gson.internal.ConstructorConstructor: boolean useJdkUnsafe> 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var3283 1 0) 0)) ; Cond: $z0 == 0 
(define-const var83 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var83)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var83!1 String)
(assert (= var83!1 ""))
(assert true)
(define-const var2738 String (append/672562846 var83!1 "Unable to create instance of ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create instance of ") 
(declare-const var83!2 String)
(assert (= var83!2 (str.++ var83!1 "Unable to create instance of ")))
(assert true)
(define-const var489 String (append/-1031950772 var2738 (cast-from-ClassObject-to-var2061 var615))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var2738!1 String)
(assert (str.prefixof var2738 var2738!1))
(assert true)
(define-const var1892 String (append/672562846 var489 "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.") 
(declare-const var489!1 String)
(assert (= var489!1 (str.++ var489 "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.")))
(assert true)
(define-const var3657 String (toString/-2075883882 var1892)) ; Statement: r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2105 var2741 var2741-init) ; Statement: $r7 = new com.google.gson.internal.ConstructorConstructor$20 
(assert true)
;(assert (<init>/-654476536 var2105 var2831 var3657)) ; Statement: specialinvoke $r7.<com.google.gson.internal.ConstructorConstructor$20: void <init>(com.google.gson.internal.ConstructorConstructor,java.lang.String)>(r0, r6) 

(declare-const var2105!1 var2741)
(declare-const var2831!1 var2525)
(declare-const var3657!1 String)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {useJdkUnsafe/877806998=([com.google.gson.internal.ConstructorConstructor], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var2061=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var2741-init=([], com.google.gson.internal.ConstructorConstructor$20), <init>/-654476536=([com.google.gson.internal.ConstructorConstructor$20, com.google.gson.internal.ConstructorConstructor, java.lang.String], void)}
; {var2525=com.google.gson.internal.ConstructorConstructor, var2831=r0, var615=r2, var3283=$z0, var83=$r1, var2738=$r3, var2061=java.lang.Object, var489=$r4, var1892=$r5, var3657=r6, var2741=com.google.gson.internal.ConstructorConstructor$20, var2105=$r7}
; {com.google.gson.internal.ConstructorConstructor=var2525, r0=var2831, r2=var615, $z0=var3283, $r1=var83, $r3=var2738, java.lang.Object=var2061, $r4=var489, $r5=var1892, r6=var3657, com.google.gson.internal.ConstructorConstructor$20=var2741, $r7=var2105}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.internal.ConstructorConstructor;	r2 := @parameter0: java.lang.Class;	$z0 = r0.<com.google.gson.internal.ConstructorConstructor: boolean useJdkUnsafe>;	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to create instance of ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem.");	r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	$r7 = new com.google.gson.internal.ConstructorConstructor$20;	specialinvoke $r7.<com.google.gson.internal.ConstructorConstructor$20: void <init>(com.google.gson.internal.ConstructorConstructor,java.lang.String)>(r0, r6);	return $r7
;block_num 2