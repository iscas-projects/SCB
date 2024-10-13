(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3310 0)
(declare-sort var3581 0)
(declare-sort var1216 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$type/-1400157288 (var3310) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun val$typeAdapter/-1400157288 (var3310) var3581)
(declare-fun append/-1031950772 (String var1216) String)
(declare-fun cast-from-var3581-to-var1216 (var3581) var1216)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3310 var3310)
(declare-const var1447 var3310) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$31 
(assert (not (= var1447 null-var3310)))
(define-const var2681 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2681)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2681!1 String)
(assert (= var2681!1 ""))
(assert true)
(define-const var1642 String (append/672562846 var2681!1 "Factory[type=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Factory[type=") 
(declare-const var2681!2 String)
(assert (= var2681!2 (str.++ var2681!1 "Factory[type=")))
(define-const var57 ClassObject (val$type/-1400157288 var1447)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$31: java.lang.Class val$type> 
(assert true)
(define-const var2890 String (getName/-1958580599 var57)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3784 String (append/672562846 var1642 var2890)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1642!1 String)
(assert (= var1642!1 (str.++ var1642 var2890)))
(assert true)
(define-const var3655 String (append/672562846 var3784 ",adapter=")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",adapter=") 
(declare-const var3784!1 String)
(assert (= var3784!1 (str.++ var3784 ",adapter=")))
(define-const var1363 var3581 (val$typeAdapter/-1400157288 var1447)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$31: com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter val$typeAdapter> 
(assert true)
(define-const var3625 String (append/-1031950772 var3655 (cast-from-var3581-to-var1216 var1363))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var3655!1 String)
(assert (str.prefixof var3655 var3655!1))
(assert true)
(define-const var813 String (append/672562846 var3625 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3625!1 String)
(assert (= var3625!1 (str.++ var3625 "]")))
(assert true)
(define-const var1304 String (toString/-2075883882 var813)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$type/-1400157288=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$31], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), val$typeAdapter/-1400157288=([com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$31], com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3581-to-var1216=([com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3310=com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$31, var1447=r1, var2681=$r0, var1642=$r4, var57=$r2, var2890=$r3, var3784=$r5, var3655=$r7, var3581=com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter, var1363=$r6, var1216=java.lang.Object, var3625=$r8, var813=$r9, var1304=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$31=var3310, r1=var1447, $r0=var2681, $r4=var1642, $r2=var57, $r3=var2890, $r5=var3784, $r7=var3655, com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter=var3581, $r6=var1363, java.lang.Object=var1216, $r8=var3625, $r9=var813, $r10=var1304}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$31;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Factory[type=");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$31: java.lang.Class val$type>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",adapter=");	$r6 = r1.<com.google.javascript.jscomp.jarjar.com.google.gson.internal.bind.TypeAdapters$31: com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapter val$typeAdapter>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1