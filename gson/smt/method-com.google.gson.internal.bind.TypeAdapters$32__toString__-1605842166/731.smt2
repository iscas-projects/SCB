(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var185 0)
(declare-sort var3942 0)
(declare-sort var922 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$boxed/-356231190 (var185) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun val$unboxed/-356231190 (var185) ClassObject)
(declare-fun val$typeAdapter/-356231190 (var185) var3942)
(declare-fun append/-1031950772 (String var922) String)
(declare-fun cast-from-var3942-to-var922 (var3942) var922)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var185 var185)
(declare-const var1531 var185) ; Statement: r1 := @this: com.google.gson.internal.bind.TypeAdapters$32 
(assert (not (= var1531 null-var185)))
(define-const var2282 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2282)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2282!1 String)
(assert (= var2282!1 ""))
(assert true)
(define-const var2187 String (append/672562846 var2282!1 "Factory[type=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Factory[type=") 
(declare-const var2282!2 String)
(assert (= var2282!2 (str.++ var2282!1 "Factory[type=")))
(define-const var2750 ClassObject (val$boxed/-356231190 var1531)) ; Statement: $r2 = r1.<com.google.gson.internal.bind.TypeAdapters$32: java.lang.Class val$boxed> 
(assert true)
(define-const var2276 String (getName/-1958580599 var2750)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2761 String (append/672562846 var2187 var2276)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2187!1 String)
(assert (= var2187!1 (str.++ var2187 var2276)))
(assert true)
(define-const var3530 String (append/672562846 var2761 "+")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("+") 
(declare-const var2761!1 String)
(assert (= var2761!1 (str.++ var2761 "+")))
(define-const var2008 ClassObject (val$unboxed/-356231190 var1531)) ; Statement: $r6 = r1.<com.google.gson.internal.bind.TypeAdapters$32: java.lang.Class val$unboxed> 
(assert true)
(define-const var3341 String (getName/-1958580599 var2008)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1954 String (append/672562846 var3530 var3341)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3530!1 String)
(assert (= var3530!1 (str.++ var3530 var3341)))
(assert true)
(define-const var2636 String (append/672562846 var1954 ",adapter=")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",adapter=") 
(declare-const var1954!1 String)
(assert (= var1954!1 (str.++ var1954 ",adapter=")))
(define-const var1274 var3942 (val$typeAdapter/-356231190 var1531)) ; Statement: $r10 = r1.<com.google.gson.internal.bind.TypeAdapters$32: com.google.gson.TypeAdapter val$typeAdapter> 
(assert true)
(define-const var290 String (append/-1031950772 var2636 (cast-from-var3942-to-var922 var1274))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var2636!1 String)
(assert (str.prefixof var2636 var2636!1))
(assert true)
(define-const var2812 String (append/672562846 var290 "]")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var290!1 String)
(assert (= var290!1 (str.++ var290 "]")))
(assert true)
(define-const var2291 String (toString/-2075883882 var2812)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$boxed/-356231190=([com.google.gson.internal.bind.TypeAdapters$32], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), val$unboxed/-356231190=([com.google.gson.internal.bind.TypeAdapters$32], java.lang.Class), val$typeAdapter/-356231190=([com.google.gson.internal.bind.TypeAdapters$32], com.google.gson.TypeAdapter), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3942-to-var922=([com.google.gson.TypeAdapter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var185=com.google.gson.internal.bind.TypeAdapters$32, var1531=r1, var2282=$r0, var2187=$r4, var2750=$r2, var2276=$r3, var2761=$r5, var3530=$r8, var2008=$r6, var3341=$r7, var1954=$r9, var2636=$r11, var3942=com.google.gson.TypeAdapter, var1274=$r10, var922=java.lang.Object, var290=$r12, var2812=$r13, var2291=$r14}
; {com.google.gson.internal.bind.TypeAdapters$32=var185, r1=var1531, $r0=var2282, $r4=var2187, $r2=var2750, $r3=var2276, $r5=var2761, $r8=var3530, $r6=var2008, $r7=var3341, $r9=var1954, $r11=var2636, com.google.gson.TypeAdapter=var3942, $r10=var1274, java.lang.Object=var922, $r12=var290, $r13=var2812, $r14=var2291}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.gson.internal.bind.TypeAdapters$32;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Factory[type=");	$r2 = r1.<com.google.gson.internal.bind.TypeAdapters$32: java.lang.Class val$boxed>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("+");	$r6 = r1.<com.google.gson.internal.bind.TypeAdapters$32: java.lang.Class val$unboxed>;	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",adapter=");	$r10 = r1.<com.google.gson.internal.bind.TypeAdapters$32: com.google.gson.TypeAdapter val$typeAdapter>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1