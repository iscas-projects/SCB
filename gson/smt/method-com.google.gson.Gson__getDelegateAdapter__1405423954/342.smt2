(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3379 0)
(declare-sort var2965 0)
(declare-sort var1167 0)
(declare-sort var2485 0)
(declare-sort var2554 0)
(declare-sort var3023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun factories/1896892294 (var3379) var2485)
(declare-fun var2485_contains/-441121415 (var2485 var2554) Bool)
(declare-fun cast-from-var2965-to-var2554 (var2965) var2554)
(declare-fun var2485_iterator/-912451715 (var2485) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-fun var3023-init () var3023)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2554) String)
(declare-fun cast-from-var1167-to-var2554 (var1167) var2554)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3023 String) void)
(declare-const null-var3379 var3379)
(declare-const null-var2965 var2965)
(declare-const null-var1167 var1167)
(declare-const var1327 var3379) ; Statement: r0 := @this: com.google.gson.Gson 
(assert (not (= var1327 null-var3379)))
(declare-const var1703 var2965) ; Statement: r13 := @parameter0: com.google.gson.TypeAdapterFactory 
(assert (not (= var1703 null-var2965)))
(declare-const var734 var1167) ; Statement: r5 := @parameter1: com.google.gson.reflect.TypeToken 
(assert (not (= var734 null-var1167)))
(define-const var3402 var2485 (factories/1896892294 var1327)) ; Statement: $r1 = r0.<com.google.gson.Gson: java.util.List factories> 
(define-const var1040 Bool (var2485_contains/-441121415 var3402 (cast-from-var2965-to-var2554 var1703))) ; Statement: $z0 = interfaceinvoke $r1.<java.util.List: boolean contains(java.lang.Object)>(r13) 
 ; Statement: if $z0 != 0 goto z1 = 0 
(assert (not (= (ite var1040 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3925 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var1065 var2485 (factories/1896892294 var1327)) ; Statement: $r2 = r0.<com.google.gson.Gson: java.util.List factories> 
(define-const var2756 Iterator (var2485_iterator/-912451715 var1065)) ; Statement: $r12 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var2491 Bool (Iterator_hasNext/-1669924200 var2756)) ; Statement: $z2 = interfaceinvoke $r12.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $r3 = new java.lang.IllegalArgumentException 
(assert (= (ite var2491 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2824 var3023 var3023-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var165 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var165)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var165!1 String)
(assert (= var165!1 ""))
(assert true)
(define-const var682 String (append/672562846 var165!1 "GSON cannot serialize ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("GSON cannot serialize ") 
(declare-const var165!2 String)
(assert (= var165!2 (str.++ var165!1 "GSON cannot serialize ")))
(assert true)
(define-const var769 String (append/-1031950772 var682 (cast-from-var1167-to-var2554 var734))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5) 
(declare-const var682!1 String)
(assert (str.prefixof var682 var682!1))
(assert true)
(define-const var3354 String (toString/-2075883882 var769)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2824 var3354)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2824!1 var3023)
(declare-const var3354!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {factories/1896892294=([com.google.gson.Gson], java.util.List), var2485_contains/-441121415=([java.util.List, java.lang.Object], boolean), cast-from-var2965-to-var2554=([com.google.gson.TypeAdapterFactory], java.lang.Object), var2485_iterator/-912451715=([java.util.List], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), var3023-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1167-to-var2554=([com.google.gson.reflect.TypeToken], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3379=com.google.gson.Gson, var1327=r0, var2965=com.google.gson.TypeAdapterFactory, var1703=r13, var1167=com.google.gson.reflect.TypeToken, var734=r5, var2485=java.util.List, var3402=$r1, var2554=java.lang.Object, var1040=$z0, var3925=z1, var1065=$r2, var2756=$r12, var2491=$z2, var3023=java.lang.IllegalArgumentException, var2824=$r3, var165=$r4, var682=$r6, var769=$r7, var3354=$r8}
; {com.google.gson.Gson=var3379, r0=var1327, com.google.gson.TypeAdapterFactory=var2965, r13=var1703, com.google.gson.reflect.TypeToken=var1167, r5=var734, java.util.List=var2485, $r1=var3402, java.lang.Object=var2554, $z0=var1040, z1=var3925, $r2=var1065, $r12=var2756, $z2=var2491, java.lang.IllegalArgumentException=var3023, $r3=var2824, $r4=var165, $r6=var682, $r7=var769, $r8=var3354}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.gson.Gson;	r13 := @parameter0: com.google.gson.TypeAdapterFactory;	r5 := @parameter1: com.google.gson.reflect.TypeToken;	$r1 = r0.<com.google.gson.Gson: java.util.List factories>;	$z0 = interfaceinvoke $r1.<java.util.List: boolean contains(java.lang.Object)>(r13);	if $z0 != 0 goto z1 = 0;	z1 = 0;	$r2 = r0.<com.google.gson.Gson: java.util.List factories>;	$r12 = interfaceinvoke $r2.<java.util.List: java.util.Iterator iterator()>();	$z2 = interfaceinvoke $r12.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $r3 = new java.lang.IllegalArgumentException;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("GSON cannot serialize ");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r3
;block_num 4