(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3640 0)
(declare-sort var498 0)
(declare-sort var125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$type/-356231191 (var3640) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun val$typeAdapter/-356231191 (var3640) var498)
(declare-fun append/-1031950772 (String var125) String)
(declare-fun cast-from-var498-to-var125 (var498) var125)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3640 var3640)
(declare-const var430 var3640) ; Statement: r1 := @this: com.google.gson.internal.bind.TypeAdapters$31 
(assert (not (= var430 null-var3640)))
(define-const var3958 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3958)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3958!1 String)
(assert (= var3958!1 ""))
(assert true)
(define-const var2015 String (append/672562846 var3958!1 "Factory[type=")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Factory[type=") 
(declare-const var3958!2 String)
(assert (= var3958!2 (str.++ var3958!1 "Factory[type=")))
(define-const var840 ClassObject (val$type/-356231191 var430)) ; Statement: $r2 = r1.<com.google.gson.internal.bind.TypeAdapters$31: java.lang.Class val$type> 
(assert true)
(define-const var1467 String (getName/-1958580599 var840)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1160 String (append/672562846 var2015 var1467)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2015!1 String)
(assert (= var2015!1 (str.++ var2015 var1467)))
(assert true)
(define-const var41 String (append/672562846 var1160 ",adapter=")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",adapter=") 
(declare-const var1160!1 String)
(assert (= var1160!1 (str.++ var1160 ",adapter=")))
(define-const var2326 var498 (val$typeAdapter/-356231191 var430)) ; Statement: $r6 = r1.<com.google.gson.internal.bind.TypeAdapters$31: com.google.gson.TypeAdapter val$typeAdapter> 
(assert true)
(define-const var3630 String (append/-1031950772 var41 (cast-from-var498-to-var125 var2326))) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6) 
(declare-const var41!1 String)
(assert (str.prefixof var41 var41!1))
(assert true)
(define-const var1887 String (append/672562846 var3630 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3630!1 String)
(assert (= var3630!1 (str.++ var3630 "]")))
(assert true)
(define-const var2178 String (toString/-2075883882 var1887)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$type/-356231191=([com.google.gson.internal.bind.TypeAdapters$31], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), val$typeAdapter/-356231191=([com.google.gson.internal.bind.TypeAdapters$31], com.google.gson.TypeAdapter), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var498-to-var125=([com.google.gson.TypeAdapter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3640=com.google.gson.internal.bind.TypeAdapters$31, var430=r1, var3958=$r0, var2015=$r4, var840=$r2, var1467=$r3, var1160=$r5, var41=$r7, var498=com.google.gson.TypeAdapter, var2326=$r6, var125=java.lang.Object, var3630=$r8, var1887=$r9, var2178=$r10}
; {com.google.gson.internal.bind.TypeAdapters$31=var3640, r1=var430, $r0=var3958, $r4=var2015, $r2=var840, $r3=var1467, $r5=var1160, $r7=var41, com.google.gson.TypeAdapter=var498, $r6=var2326, java.lang.Object=var125, $r8=var3630, $r9=var1887, $r10=var2178}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.gson.internal.bind.TypeAdapters$31;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Factory[type=");	$r2 = r1.<com.google.gson.internal.bind.TypeAdapters$31: java.lang.Class val$type>;	$r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",adapter=");	$r6 = r1.<com.google.gson.internal.bind.TypeAdapters$31: com.google.gson.TypeAdapter val$typeAdapter>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 1