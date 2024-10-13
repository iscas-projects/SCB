(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2939 0)
(declare-sort var2349 0)
(declare-sort var1835 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2349-init () var2349)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1835) String)
(declare-fun cast-from-var2939-to-var1835 (var2939) var1835)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1998199204 (var2349 String) void)
(declare-const null-var2939 var2939)
(declare-const var2677 var2939) ; Statement: r2 := @parameter0: java.net.URL 
(assert (not (= var2677 null-var2939)))
(define-const var382 var2349 var2349-init) ; Statement: $r0 = new java.net.MalformedURLException 
(define-const var2337 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2337)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2337!1 String)
(assert (= var2337!1 ""))
(assert true)
(define-const var473 String (append/672562846 var2337!1 "Failed to extract jar entry path from: ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to extract jar entry path from: ") 
(declare-const var2337!2 String)
(assert (= var2337!2 (str.++ var2337!1 "Failed to extract jar entry path from: ")))
(assert true)
(define-const var2204 String (append/-1031950772 var473 (cast-from-var2939-to-var1835 var2677))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var473!1 String)
(assert (str.prefixof var473 var473!1))
(assert true)
(define-const var1498 String (toString/-2075883882 var2204)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1998199204 var382 var1498)) ; Statement: specialinvoke $r0.<java.net.MalformedURLException: void <init>(java.lang.String)>($r5) 

(declare-const var382!1 var2349)
(declare-const var1498!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2349-init=([], java.net.MalformedURLException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2939-to-var1835=([java.net.URL], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1998199204=([java.net.MalformedURLException, java.lang.String], void)}
; {var2939=java.net.URL, var2677=r2, var2349=java.net.MalformedURLException, var382=$r0, var2337=$r1, var473=$r3, var1835=java.lang.Object, var2204=$r4, var1498=$r5}
; {java.net.URL=var2939, r2=var2677, java.net.MalformedURLException=var2349, $r0=var382, $r1=var2337, $r3=var473, java.lang.Object=var1835, $r4=var2204, $r5=var1498}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @parameter0: java.net.URL;	$r0 = new java.net.MalformedURLException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to extract jar entry path from: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.net.MalformedURLException: void <init>(java.lang.String)>($r5);	return $r0
;block_num 1