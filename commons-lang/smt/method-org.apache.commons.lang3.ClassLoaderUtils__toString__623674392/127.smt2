(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3266 0)
(declare-sort var1460 0)
(declare-sort var163 0)
(declare-sort var1356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1031950772 (String var1460) String)
(declare-fun cast-from-var3266-to-var1460 (var3266) var1460)
(declare-fun getURLs/-1564369556 (var3266) (Array Int var163))
(declare-fun var1356_toString/-575966009 ((Array Int var1460)) String)
(declare-fun cast-from-__Array__Int__var163__-to-__Array__Int__var1460__ ((Array Int var163)) (Array Int var1460))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3266 var3266)
(declare-const var825 var3266) ; Statement: r0 := @parameter0: java.net.URLClassLoader 
(assert (not (= var825 null-var3266)))
 ; Statement: if r0 == null goto $r6 = "null" 
(assert (not (= var825 null-var3266))) ; Negate: Cond: r0 == null  
(define-const var454 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var454)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var454!1 String)
(assert (= var454!1 ""))
(assert true)
(define-const var3503 String (append/-1031950772 var454!1 (cast-from-var3266-to-var1460 var825))) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0) 
(declare-const var454!2 String)
(assert (str.prefixof var454!1 var454!2))
(assert true)
(define-const var1677 (Array Int var163) (getURLs/-1564369556 var825)) ; Statement: $r2 = virtualinvoke r0.<java.net.URLClassLoader: java.net.URL[] getURLs()>() 
(define-const var233 String (var1356_toString/-575966009 (cast-from-__Array__Int__var163__-to-__Array__Int__var1460__ var1677))) ; Statement: $r3 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r2) 
(assert true)
(define-const var3633 String (append/672562846 var3503 var233)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3503!1 String)
(assert (= var3503!1 (str.++ var3503 var233)))
(assert true)
(define-const var2212 String (toString/-2075883882 var3633)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r6] 
(assert true) ; Non Conditional
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3266-to-var1460=([java.net.URLClassLoader], java.lang.Object), getURLs/-1564369556=([java.net.URLClassLoader], java.net.URL[]), var1356_toString/-575966009=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var163__-to-__Array__Int__var1460__=([java.net.URL[]], java.lang.Object[]), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3266=java.net.URLClassLoader, var825=r0, var454=$r1, var1460=java.lang.Object, var3503=$r4, var163=java.net.URL, var1677=$r2, var1356=java.util.Arrays, var233=$r3, var3633=$r5, var2212=$r6}
; {java.net.URLClassLoader=var3266, r0=var825, $r1=var454, java.lang.Object=var1460, $r4=var3503, java.net.URL=var163, $r2=var1677, java.util.Arrays=var1356, $r3=var233, $r5=var3633, $r6=var2212}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.util.Arrays: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.net.URLClassLoader;	if r0 == null goto $r6 = "null";	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r0);	$r2 = virtualinvoke r0.<java.net.URLClassLoader: java.net.URL[] getURLs()>();	$r3 = staticinvoke <java.util.Arrays: java.lang.String toString(java.lang.Object[])>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r6];	return $r6
;block_num 3