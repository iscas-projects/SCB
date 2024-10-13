(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3363 0)
(declare-sort var1659 0)
(declare-sort var1874 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$clazz/-1400157285 (var3363) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun val$typeAdapter/-1400157285 (var3363) var1659)
(declare-fun append/-1031950772 (String var1874) String)
(declare-fun cast-from-var1659-to-var1874 (var1659) var1874)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3363 var3363)
(declare-const var2325 var3363) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$34 
(assert (not (= var2325 null-var3363)))
(define-const var3978 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3978)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3978!1 String)
(assert (= var3978!1 ""))
(assert true)
(define-const var3458 String (append/672562846 var3978!1 "Factory[typeHierarchy=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Factory[typeHierarchy=") 
(declare-const var3978!2 String)
(assert (= var3978!2 (str.++ var3978!1 "Factory[typeHierarchy=")))
(define-const var3062 ClassObject (val$clazz/-1400157285 var2325)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$34: java.lang.Class val$clazz> 
(assert true)
(define-const var745 String (getName/-1958580599 var3062)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3051 String (append/672562846 var3458 var745)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3458!1 String)
(assert (= var3458!1 (str.++ var3458 var745)))
(assert true)
(define-const var3881 String (append/672562846 var3051 ",adapter=")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",adapter=") 
(declare-const var3051!1 String)
(assert (= var3051!1 (str.++ var3051 ",adapter=")))
(define-const var3370 var1659 (val$typeAdapter/-1400157285 var2325)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$34: com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter val$typeAdapter> 
(assert true)
(define-const var3404 String (append/-1031950772 var3881 (cast-from-var1659-to-var1874 var3370))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var3881!1 String)
(assert (str.prefixof var3881 var3881!1))
(assert true)
(define-const var0 String (append/672562846 var3404 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3404!1 String)
(assert (= var3404!1 (str.++ var3404 "]")))
(assert true)
(define-const var1708 String (toString/-2075883882 var0)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$clazz/-1400157285=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$34], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), val$typeAdapter/-1400157285=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$34], com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1659-to-var1874=([com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3363=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$34, var2325=r1, var3978=$r0, var3458=$r4, var3062=$r2, var745=$r3, var3051=$r5, var3881=$r7, var1659=com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter, var3370=$r6, var1874=java.lang.Object, var3404=$r8, var0=$r9, var1708=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$34=var3363, r1=var2325, $r0=var3978, $r4=var3458, $r2=var3062, $r3=var745, $r5=var3051, $r7=var3881, com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter=var1659, $r6=var3370, java.lang.Object=var1874, $r8=var3404, $r9=var0, $r10=var1708}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$34;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Factory[typeHierarchy=");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$34: java.lang.Class val$clazz>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",adapter=");	$r6 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$34: com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter val$typeAdapter>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1