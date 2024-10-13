(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1294 0)
(declare-sort var1409 0)
(declare-sort var2390 0)
(declare-sort var2468 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1409-init () var1409)
(declare-fun var2468-init () var2468)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2468 String) void)
(declare-const null-String String)
(declare-const null-var1409 var1409)
(declare-const null-var2390 var2390)
(declare-const var3813 String) ; Statement: r28 := @parameter0: java.lang.String 
(assert (not (= var3813 null-String)))
(define-const var2616 var1409 null-var1409) ; Statement: r29 = null 
(define-const var1040 var1409 var1409-init) ; Statement: $r43 = new java.net.URL 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var141 var2390) ; Statement: $r27 := @caughtexception 
(assert (not (= var141 null-var2390)))
(assert true) ; Non Conditional
 ; Statement: if r29 == null goto $r45 = new java.lang.IllegalArgumentException 
(assert (= var2616 null-var1409)) ; Cond: r29 == null 
(define-const var3336 var2468 var2468-init) ; Statement: $r45 = new java.lang.IllegalArgumentException 
(define-const var1298 String String-init) ; Statement: $r44 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1298)) ; Statement: specialinvoke $r44.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1298!1 String)
(assert (= var1298!1 ""))
(assert true)
(define-const var474 String (append/672562846 var1298!1 "Can only handle valid file: URIs, not ")) ; Statement: $r3 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can only handle valid file: URIs, not ") 
(declare-const var1298!2 String)
(assert (= var1298!2 (str.++ var1298!1 "Can only handle valid file: URIs, not ")))
(assert true)
(define-const var3134 String (append/672562846 var474 var3813)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r28) 
(declare-const var474!1 String)
(assert (= var474!1 (str.++ var474 var3813)))
(assert true)
(define-const var2514 String (toString/-2075883882 var3134)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var3336 var2514)) ; Statement: specialinvoke $r45.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5) 

(declare-const var3336!1 var2468)
(declare-const var2514!1 String)
 ; Statement: throw $r45 
(check-sat)
(get-model)
(get-unsat-core)
; {var1409-init=([], java.net.URL), var2468-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3813=r28, var1294=null_type, var1409=java.net.URL, var2616=r29, var1040=$r43, var2390=java.net.MalformedURLException, var141=$r27, var2468=java.lang.IllegalArgumentException, var3336=$r45, var1298=$r44, var474=$r3, var3134=$r4, var2514=$r5}
; {r28=var3813, null_type=var1294, java.net.URL=var1409, r29=var2616, $r43=var1040, java.net.MalformedURLException=var2390, $r27=var141, java.lang.IllegalArgumentException=var2468, $r45=var3336, $r44=var1298, $r3=var474, $r4=var3134, $r5=var2514}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r28 := @parameter0: java.lang.String;	r29 = null;	$r43 = new java.net.URL;	$r27 := @caughtexception;	if r29 == null goto $r45 = new java.lang.IllegalArgumentException;	$r45 = new java.lang.IllegalArgumentException;	$r44 = new java.lang.StringBuilder;	specialinvoke $r44.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Can only handle valid file: URIs, not ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r28);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r45.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r5);	throw $r45
;block_num 4