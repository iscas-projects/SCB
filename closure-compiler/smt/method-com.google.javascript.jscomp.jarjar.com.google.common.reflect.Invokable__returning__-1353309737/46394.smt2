(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3021 0)
(declare-sort var354 0)
(declare-sort var1561 0)
(declare-sort var104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getReturnType/2026181807 (var3021) var354)
(declare-fun isSupertypeOf/1215961613 (var354 var354) Bool)
(declare-fun var1561-init () var1561)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var104) String)
(declare-fun cast-from-var354-to-var104 (var354) var104)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var1561 String) void)
(declare-const null-var3021 var3021)
(declare-const null-var354 var354)
(declare-const var2581 var3021) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable 
(assert (not (= var2581 null-var3021)))
(declare-const var2504 var354) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken 
(assert (not (= var2504 null-var354)))
(assert true)
(define-const var1035 var354 (getReturnType/2026181807 var2581)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getReturnType()>() 
(assert true)
(define-const var2909 Bool (isSupertypeOf/1215961613 var2504 var1035)) ; Statement: $z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: boolean isSupertypeOf(com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken)>($r2) 
 ; Statement: if $z0 != 0 goto return r1 
(assert (not (not (= (ite var2909 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var3258 var1561 var1561-init) ; Statement: $r3 = new java.lang.IllegalArgumentException 
(define-const var72 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var72)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var72!1 String)
(assert (= var72!1 ""))
(assert true)
(define-const var2736 String (append/672562846 var72!1 "Invokable is known to return ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invokable is known to return ") 
(declare-const var72!2 String)
(assert (= var72!2 (str.++ var72!1 "Invokable is known to return ")))
(assert true)
(define-const var1264 var354 (getReturnType/2026181807 var2581)) ; Statement: $r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getReturnType()>() 
(assert true)
(define-const var3359 String (append/-1031950772 var2736 (cast-from-var354-to-var104 var1264))) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var2736!1 String)
(assert (str.prefixof var2736 var2736!1))
(assert true)
(define-const var96 String (append/672562846 var3359 ", not ")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", not ") 
(declare-const var3359!1 String)
(assert (= var3359!1 (str.++ var3359 ", not ")))
(assert true)
(define-const var1840 String (append/-1031950772 var96 (cast-from-var354-to-var104 var2504))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var96!1 String)
(assert (str.prefixof var96 var96!1))
(assert true)
(define-const var3374 String (toString/-2075883882 var1840)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3258 var3374)) ; Statement: specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var3258!1 var1561)
(declare-const var3374!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getReturnType/2026181807=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable], com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken), isSupertypeOf/1215961613=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken, com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], boolean), var1561-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var354-to-var104=([com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3021=com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable, var2581=r1, var354=com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken, var2504=r0, var1035=$r2, var2909=$z0, var1561=java.lang.IllegalArgumentException, var3258=$r3, var72=$r4, var2736=$r6, var1264=$r5, var104=java.lang.Object, var3359=$r7, var96=$r8, var1840=$r9, var3374=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable=var3021, r1=var2581, com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken=var354, r0=var2504, $r2=var1035, $z0=var2909, java.lang.IllegalArgumentException=var1561, $r3=var3258, $r4=var72, $r6=var2736, $r5=var1264, java.lang.Object=var104, $r7=var3359, $r8=var96, $r9=var1840, $r10=var3374}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken;	$r2 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getReturnType()>();	$z0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken: boolean isSupertypeOf(com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken)>($r2);	if $z0 != 0 goto return r1;	$r3 = new java.lang.IllegalArgumentException;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Invokable is known to return ");	$r5 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.common.reflect.Invokable: com.google.javascript.jscomp.jarjar.com.google.common.reflect.TypeToken getReturnType()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", not ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	throw $r3
;block_num 2