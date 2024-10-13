(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var555 0)
(declare-sort var3904 0)
(declare-sort var2396 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun scope/-849797657 (var555) var3904)
(declare-fun st/-361780184 (var3904) var2396)
(declare-fun getName/621987389 (var2396) String)
(declare-fun name/-849797657 (var555) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var555 var555)
(declare-const var2274 var555) ; Statement: r1 := @this: org.stringtemplate.v4.misc.STNoSuchAttributeException 
(assert (not (= var2274 null-var555)))
(define-const var3589 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3589)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3589!1 String)
(assert (= var3589!1 ""))
(assert true)
(define-const var916 String (append/672562846 var3589!1 "from template ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("from template ") 
(declare-const var3589!2 String)
(assert (= var3589!2 (str.++ var3589!1 "from template ")))
(define-const var3887 var3904 (scope/-849797657 var2274)) ; Statement: $r2 = r1.<org.stringtemplate.v4.misc.STNoSuchAttributeException: org.stringtemplate.v4.InstanceScope scope> 
(define-const var162 var2396 (st/-361780184 var3887)) ; Statement: $r3 = $r2.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st> 
(assert true)
(define-const var2449 String (getName/621987389 var162)) ; Statement: $r4 = virtualinvoke $r3.<org.stringtemplate.v4.ST: java.lang.String getName()>() 
(assert true)
(define-const var270 String (append/672562846 var916 var2449)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var916!1 String)
(assert (= var916!1 (str.++ var916 var2449)))
(assert true)
(define-const var72 String (append/672562846 var270 " no attribute ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" no attribute ") 
(declare-const var270!1 String)
(assert (= var270!1 (str.++ var270 " no attribute ")))
(define-const var3385 String (name/-849797657 var2274)) ; Statement: $r7 = r1.<org.stringtemplate.v4.misc.STNoSuchAttributeException: java.lang.String name> 
(assert true)
(define-const var88 String (append/672562846 var72 var3385)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var72!1 String)
(assert (= var72!1 (str.++ var72 var3385)))
(assert true)
(define-const var2270 String (append/672562846 var88 " is visible")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is visible") 
(declare-const var88!1 String)
(assert (= var88!1 (str.++ var88 " is visible")))
(assert true)
(define-const var3489 String (toString/-2075883882 var2270)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), scope/-849797657=([org.stringtemplate.v4.misc.STNoSuchAttributeException], org.stringtemplate.v4.InstanceScope), st/-361780184=([org.stringtemplate.v4.InstanceScope], org.stringtemplate.v4.ST), getName/621987389=([org.stringtemplate.v4.ST], java.lang.String), name/-849797657=([org.stringtemplate.v4.misc.STNoSuchAttributeException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var555=org.stringtemplate.v4.misc.STNoSuchAttributeException, var2274=r1, var3589=$r0, var916=$r5, var3904=org.stringtemplate.v4.InstanceScope, var3887=$r2, var2396=org.stringtemplate.v4.ST, var162=$r3, var2449=$r4, var270=$r6, var72=$r8, var3385=$r7, var88=$r9, var2270=$r10, var3489=$r11}
; {org.stringtemplate.v4.misc.STNoSuchAttributeException=var555, r1=var2274, $r0=var3589, $r5=var916, org.stringtemplate.v4.InstanceScope=var3904, $r2=var3887, org.stringtemplate.v4.ST=var2396, $r3=var162, $r4=var2449, $r6=var270, $r8=var72, $r7=var3385, $r9=var88, $r10=var2270, $r11=var3489}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.stringtemplate.v4.misc.STNoSuchAttributeException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("from template ");	$r2 = r1.<org.stringtemplate.v4.misc.STNoSuchAttributeException: org.stringtemplate.v4.InstanceScope scope>;	$r3 = $r2.<org.stringtemplate.v4.InstanceScope: org.stringtemplate.v4.ST st>;	$r4 = virtualinvoke $r3.<org.stringtemplate.v4.ST: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" no attribute ");	$r7 = r1.<org.stringtemplate.v4.misc.STNoSuchAttributeException: java.lang.String name>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is visible");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r11
;block_num 1