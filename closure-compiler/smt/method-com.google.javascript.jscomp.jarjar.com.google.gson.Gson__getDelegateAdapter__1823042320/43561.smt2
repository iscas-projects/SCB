(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2970 0)
(declare-sort var827 0)
(declare-sort var915 0)
(declare-sort var416 0)
(declare-sort var96 0)
(declare-sort var603 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun factories/1032430839 (var2970) var416)
(declare-fun var416_contains/-441121415 (var416 var96) Bool)
(declare-fun cast-from-var827-to-var96 (var827) var96)
(declare-fun var416_iterator/-912451715 (var416) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var603-init () var603)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var96) String)
(declare-fun cast-from-var915-to-var96 (var915) var96)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var603 String) void)
(declare-const null-var2970 var2970)
(declare-const null-var827 var827)
(declare-const null-var915 var915)
(declare-const var3796 var2970) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.Gson 
(assert (not (= var3796 null-var2970)))
(declare-const var3915 var827) ; Statement: r13 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapterFactory 
(assert (not (= var3915 null-var827)))
(declare-const var2500 var915) ; Statement: r5 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.gson.reflect.TypeToken 
(assert (not (= var2500 null-var915)))
(define-const var605 var416 (factories/1032430839 var3796)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.Gson: java.util.List factories> 
(define-const var1616 Bool (var416_contains/-441121415 var605 (cast-from-var827-to-var96 var3915))) ; Statement: $z0 = interfaceinvoke $r1.<java.util.List: boolean contains(java.lang.Object)>(r13) 
 ; Statement: if $z0 != 0 goto z1 = 0 
(assert (not (= (ite var1616 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3710 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3406 var416 (factories/1032430839 var3796)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.Gson: java.util.List factories> 
(define-const var2164 Iterator (var416_iterator/-912451715 var3406)) ; Statement: $r12 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1359 Bool (Iterator_hasNext/-1669924200 var2164)) ; Statement: $z2 = interfaceinvoke $r12.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $r3 = new java.lang.IllegalArgumentException 
(assert (= (ite var1359 1 0) 0)) ; Cond: $z2 == 0 
(define-const var641 var603 var603-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var1668 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1668)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1668!1 String)
(assert (= var1668!1 ""))
(assert true)
(define-const var2712 String (append/672562846 var1668!1 "GSON cannot serialize ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("GSON cannot serialize ") 
(declare-const var1668!2 String)
(assert (= var1668!2 (str.++ var1668!1 "GSON cannot serialize ")))
(assert true)
(define-const var275 String (append/-1031950772 var2712 (cast-from-var915-to-var96 var2500))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var2712!1 String)
(assert (str.prefixof var2712 var2712!1))
(assert true)
(define-const var565 String (toString/-2075883882 var275)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var641 var565)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var641!1 var603)
(declare-const var565!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {factories/1032430839=([com.google.javascript.jscomp.jarjar.com.google.gson.Gson], java.util.List), var416_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-var827-to-var96=([com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapterFactory], java.lang.Object), var416_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var603-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var915-to-var96=([com.google.javascript.jscomp.jarjar.com.google.gson.reflect.TypeToken], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2970=com.google.javascript.jscomp.jarjar.com.google.gson.Gson, var3796=r0, var827=com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapterFactory, var3915=r13, var915=com.google.javascript.jscomp.jarjar.com.google.gson.reflect.TypeToken, var2500=r5, var416=java.util.List, var605=$r1, var96=java.lang.Object, var1616=$z0, var3710=z1, var3406=$r2, var2164=$r12, var1359=$z2, var603=java.lang.IllegalArgumentException, var641=$r3, var1668=$r4, var2712=$r6, var275=$r7, var565=$r8}
; {com.google.javascript.jscomp.jarjar.com.google.gson.Gson=var2970, r0=var3796, com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapterFactory=var827, r13=var3915, com.google.javascript.jscomp.jarjar.com.google.gson.reflect.TypeToken=var915, r5=var2500, java.util.List=var416, $r1=var605, java.lang.Object=var96, $z0=var1616, z1=var3710, $r2=var3406, $r12=var2164, $z2=var1359, java.lang.IllegalArgumentException=var603, $r3=var641, $r4=var1668, $r6=var2712, $r7=var275, $r8=var565}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.gson.Gson;	r13 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.gson.TypeAdapterFactory;	r5 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.gson.reflect.TypeToken;	$r1 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.Gson: java.util.List factories>;	$z0 = interfaceinvoke $r1.<java.util.List: boolean contains(java.lang.Object)>(r13);	if $z0 != 0 goto z1 = 0;	z1 = 0;	$r2 = r0.<com.google.javascript.jscomp.jarjar.com.google.gson.Gson: java.util.List factories>;	$r12 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z2 = interfaceinvoke $r12.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $r3 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("GSON cannot serialize ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r3
;block_num 4