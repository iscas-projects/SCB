(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2653 0)
(declare-sort var1361 0)
(declare-sort var229 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$boxed/-1400157287 (var2653) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun val$unboxed/-1400157287 (var2653) ClassObject)
(declare-fun val$typeAdapter/-1400157287 (var2653) var1361)
(declare-fun append/-1031950772 (String var229) String)
(declare-fun cast-from-var1361-to-var229 (var1361) var229)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2653 var2653)
(declare-const var349 var2653) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$32 
(assert (not (= var349 null-var2653)))
(define-const var112 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var112)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var112!1 String)
(assert (= var112!1 ""))
(assert true)
(define-const var382 String (append/672562846 var112!1 "Factory[type=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Factory[type=") 
(declare-const var112!2 String)
(assert (= var112!2 (str.++ var112!1 "Factory[type=")))
(define-const var963 ClassObject (val$boxed/-1400157287 var349)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$32: java.lang.Class val$boxed> 
(assert true)
(define-const var1307 String (getName/-1958580599 var963)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var330 String (append/672562846 var382 var1307)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var382!1 String)
(assert (= var382!1 (str.++ var382 var1307)))
(assert true)
(define-const var3170 String (append/672562846 var330 "+")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("+") 
(declare-const var330!1 String)
(assert (= var330!1 (str.++ var330 "+")))
(define-const var322 ClassObject (val$unboxed/-1400157287 var349)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$32: java.lang.Class val$unboxed> 
(assert true)
(define-const var14 String (getName/-1958580599 var322)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1983 String (append/672562846 var3170 var14)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3170!1 String)
(assert (= var3170!1 (str.++ var3170 var14)))
(assert true)
(define-const var3196 String (append/672562846 var1983 ",adapter=")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",adapter=") 
(declare-const var1983!1 String)
(assert (= var1983!1 (str.++ var1983 ",adapter=")))
(define-const var2705 var1361 (val$typeAdapter/-1400157287 var349)) ; Statement: $r10 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$32: com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter val$typeAdapter> 
(assert true)
(define-const var2349 String (append/-1031950772 var3196 (cast-from-var1361-to-var229 var2705))) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10) 
(declare-const var3196!1 String)
(assert (str.prefixof var3196 var3196!1))
(assert true)
(define-const var1100 String (append/672562846 var2349 "]")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2349!1 String)
(assert (= var2349!1 (str.++ var2349 "]")))
(assert true)
(define-const var1554 String (toString/-2075883882 var1100)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$boxed/-1400157287=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$32], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), val$unboxed/-1400157287=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$32], java.lang.Class), val$typeAdapter/-1400157287=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$32], com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1361-to-var229=([com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2653=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$32, var349=r1, var112=$r0, var382=$r4, var963=$r2, var1307=$r3, var330=$r5, var3170=$r8, var322=$r6, var14=$r7, var1983=$r9, var3196=$r11, var1361=com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter, var2705=$r10, var229=java.lang.Object, var2349=$r12, var1100=$r13, var1554=$r14}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$32=var2653, r1=var349, $r0=var112, $r4=var382, $r2=var963, $r3=var1307, $r5=var330, $r8=var3170, $r6=var322, $r7=var14, $r9=var1983, $r11=var3196, com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter=var1361, $r10=var2705, java.lang.Object=var229, $r12=var2349, $r13=var1100, $r14=var1554}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 6,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$32;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Factory[type=");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$32: java.lang.Class val$boxed>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("+");	$r6 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$32: java.lang.Class val$unboxed>;	$r7 = virtualinvoke $r6.<java.lang.Class: java.lang.String getName()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",adapter=");	$r10 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$32: com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter val$typeAdapter>;	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 1