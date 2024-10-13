(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1967 0)
(declare-sort var2100 0)
(declare-sort var1679 0)
(declare-sort var3406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3406_checkNotNull/1446102589 (var1679) var1679)
(declare-fun cast-from-String-to-var1679 (String) var1679)
(declare-fun cast-from-var1679-to-String (var1679) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/1824947533 (var1967) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1967_from/1900663528 (String) var1967)
(declare-const null-var1967 var1967)
(declare-const null-String String)
(declare-const var1857 var1967) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName 
(assert (not (= var1857 null-var1967)))
(declare-const var3314 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3314 null-String)))
(define-const var1214 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1214)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1214!1 String)
(assert (= var1214!1 ""))
(define-const var3047 var1679 (var3406_checkNotNull/1446102589 (cast-from-String-to-var1679 var3314))) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1) 
(define-const var3007 String (cast-from-var1679-to-String var3047)) ; Statement: $r3 = (java.lang.String) $r2 
(assert true)
(define-const var2065 String (append/672562846 var1214!1 var3007)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1214!2 String)
(assert (= var1214!2 (str.++ var1214!1 var3007)))
(assert true)
(define-const var2948 String (append/672562846 var2065 ".")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var2065!1 String)
(assert (= var2065!1 (str.++ var2065 ".")))
(define-const var1207 String (name/1824947533 var1857)) ; Statement: $r6 = r5.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: java.lang.String name> 
(assert true)
(define-const var3113 String (append/672562846 var2948 var1207)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2948!1 String)
(assert (= var2948!1 (str.++ var2948 var1207)))
(assert true)
(define-const var581 String (toString/-2075883882 var3113)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3822 var1967 (var1967_from/1900663528 var581)) ; Statement: $r10 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName 'from'(java.lang.String)>($r9) 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3406_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var1679=([java.lang.String], java.lang.Object), cast-from-var1679-to-String=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/1824947533=([com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1967_from/1900663528=([java.lang.String], com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName)}
; {var1967=com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName, var1857=r5, var3314=r1, var2100=null_type, var1214=$r0, var1679=java.lang.Object, var3406=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3047=$r2, var3007=$r3, var2065=$r4, var2948=$r7, var1207=$r6, var3113=$r8, var581=$r9, var3822=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName=var1967, r5=var1857, r1=var3314, null_type=var2100, $r0=var1214, java.lang.Object=var1679, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3406, $r2=var3047, $r3=var3007, $r4=var2065, $r7=var2948, $r6=var1207, $r8=var3113, $r9=var581, $r10=var3822}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r1);	$r3 = (java.lang.String) $r2;	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r6 = r5.<com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: java.lang.String name>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r10 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName: com.google.javascript.jscomp.jarjar.com.google.common.net.InternetDomainName 'from'(java.lang.String)>($r9);	return $r10
;block_num 1