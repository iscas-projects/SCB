(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1660 0)
(declare-sort var1101 0)
(declare-sort var2275 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$clazz/-356231188 (var1660) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun val$typeAdapter/-356231188 (var1660) var1101)
(declare-fun append/-1031950772 (String var2275) String)
(declare-fun cast-from-var1101-to-var2275 (var1101) var2275)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1660 var1660)
(declare-const var459 var1660) ; Statement: r1 := @this: com.google.gson.internal.bind.TypeAdapters$34 
(assert (not (= var459 null-var1660)))
(define-const var912 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var912)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var912!1 String)
(assert (= var912!1 ""))
(assert true)
(define-const var2856 String (append/672562846 var912!1 "Factory[typeHierarchy=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Factory[typeHierarchy=") 
(declare-const var912!2 String)
(assert (= var912!2 (str.++ var912!1 "Factory[typeHierarchy=")))
(define-const var2243 ClassObject (val$clazz/-356231188 var459)) ; Statement: $r2 = r1.<com.google.gson.internal.bind.TypeAdapters$34: java.lang.Class val$clazz> 
(assert true)
(define-const var2027 String (getName/-1958580599 var2243)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1627 String (append/672562846 var2856 var2027)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2856!1 String)
(assert (= var2856!1 (str.++ var2856 var2027)))
(assert true)
(define-const var730 String (append/672562846 var1627 ",adapter=")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",adapter=") 
(declare-const var1627!1 String)
(assert (= var1627!1 (str.++ var1627 ",adapter=")))
(define-const var3948 var1101 (val$typeAdapter/-356231188 var459)) ; Statement: $r6 = r1.<com.google.gson.internal.bind.TypeAdapters$34: com.google.gson.TypeAdapter val$typeAdapter> 
(assert true)
(define-const var69 String (append/-1031950772 var730 (cast-from-var1101-to-var2275 var3948))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var730!1 String)
(assert (str.prefixof var730 var730!1))
(assert true)
(define-const var336 String (append/672562846 var69 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var69!1 String)
(assert (= var69!1 (str.++ var69 "]")))
(assert true)
(define-const var2937 String (toString/-2075883882 var336)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$clazz/-356231188=([com.google.gson.internal.bind.TypeAdapters$34], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), val$typeAdapter/-356231188=([com.google.gson.internal.bind.TypeAdapters$34], com.google.gson.TypeAdapter), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1101-to-var2275=([com.google.gson.TypeAdapter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1660=com.google.gson.internal.bind.TypeAdapters$34, var459=r1, var912=$r0, var2856=$r4, var2243=$r2, var2027=$r3, var1627=$r5, var730=$r7, var1101=com.google.gson.TypeAdapter, var3948=$r6, var2275=java.lang.Object, var69=$r8, var336=$r9, var2937=$r10}
; {com.google.gson.internal.bind.TypeAdapters$34=var1660, r1=var459, $r0=var912, $r4=var2856, $r2=var2243, $r3=var2027, $r5=var1627, $r7=var730, com.google.gson.TypeAdapter=var1101, $r6=var3948, java.lang.Object=var2275, $r8=var69, $r9=var336, $r10=var2937}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.gson.internal.bind.TypeAdapters$34;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Factory[typeHierarchy=");	$r2 = r1.<com.google.gson.internal.bind.TypeAdapters$34: java.lang.Class val$clazz>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",adapter=");	$r6 = r1.<com.google.gson.internal.bind.TypeAdapters$34: com.google.gson.TypeAdapter val$typeAdapter>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1