(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3854 0)
(declare-sort var3365 0)
(declare-sort var1629 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun map/689614030 (var3854) var3365)
(declare-fun append/-1031950772 (String var1629) String)
(declare-fun cast-from-var3365-to-var1629 (var3365) var1629)
(declare-fun defaultValue/689614030 (var3854) var1629)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3854 var3854)
(declare-const var944 var3854) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ForMapWithDefault 
(assert (not (= var944 null-var3854)))
(define-const var3111 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3111)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3111!1 String)
(assert (= var3111!1 ""))
(assert true)
(define-const var2840 String (append/672562846 var3111!1 "Functions.forMap(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Functions.forMap(") 
(declare-const var3111!2 String)
(assert (= var3111!2 (str.++ var3111!1 "Functions.forMap(")))
(define-const var3810 var3365 (map/689614030 var944)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ForMapWithDefault: java.util.Map map> 
(assert true)
(define-const var152 String (append/-1031950772 var2840 (cast-from-var3365-to-var1629 var3810))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2840!1 String)
(assert (str.prefixof var2840 var2840!1))
(assert true)
(define-const var3848 String (append/672562846 var152 ", defaultValue=")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", defaultValue=") 
(declare-const var152!1 String)
(assert (= var152!1 (str.++ var152 ", defaultValue=")))
(define-const var2398 var1629 (defaultValue/689614030 var944)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ForMapWithDefault: java.lang.Object defaultValue> 
(assert true)
(define-const var2332 String (append/-1031950772 var3848 var2398)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5) 
(declare-const var3848!1 String)
(assert (str.prefixof var3848 var3848!1))
(assert true)
(define-const var1343 String (append/672562846 var2332 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2332!1 String)
(assert (= var2332!1 (str.++ var2332 ")")))
(assert true)
(define-const var20 String (toString/-2075883882 var1343)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), map/689614030=([com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ForMapWithDefault], java.util.Map), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3365-to-var1629=([java.util.Map], java.lang.Object), defaultValue/689614030=([com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ForMapWithDefault], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3854=com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ForMapWithDefault, var944=r1, var3111=$r0, var2840=$r3, var3365=java.util.Map, var3810=$r2, var1629=java.lang.Object, var152=$r4, var3848=$r6, var2398=$r5, var2332=$r7, var1343=$r8, var20=$r9}
; {com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ForMapWithDefault=var3854, r1=var944, $r0=var3111, $r3=var2840, java.util.Map=var3365, $r2=var3810, java.lang.Object=var1629, $r4=var152, $r6=var3848, $r5=var2398, $r7=var2332, $r8=var1343, $r9=var20}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ForMapWithDefault;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Functions.forMap(");	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ForMapWithDefault: java.util.Map map>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", defaultValue=");	$r5 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.base.Functions$ForMapWithDefault: java.lang.Object defaultValue>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1