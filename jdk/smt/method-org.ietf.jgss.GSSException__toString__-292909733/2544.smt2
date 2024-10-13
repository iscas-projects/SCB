(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/-1879663786 (var2109) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2109 var2109)
(declare-const var1280 var2109) ; Statement: r1 := @this: org.ietf.jgss.GSSException 
(assert (not (= var1280 null-var2109)))
(define-const var517 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var517)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var517!1 String)
(assert (= var517!1 ""))
(assert true)
(define-const var1049 String (append/672562846 var517!1 "GSSException: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("GSSException: ") 
(declare-const var517!2 String)
(assert (= var517!2 (str.++ var517!1 "GSSException: ")))
(assert true)
(define-const var1282 String (getMessage/-1879663786 var1280)) ; Statement: $r2 = virtualinvoke r1.<org.ietf.jgss.GSSException: java.lang.String getMessage()>() 
(assert true)
(define-const var2097 String (append/672562846 var1049 var1282)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1049!1 String)
(assert (= var1049!1 (str.++ var1049 var1282)))
(assert true)
(define-const var3336 String (toString/-2075883882 var2097)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/-1879663786=([org.ietf.jgss.GSSException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2109=org.ietf.jgss.GSSException, var1280=r1, var517=$r0, var1049=$r3, var1282=$r2, var2097=$r4, var3336=$r5}
; {org.ietf.jgss.GSSException=var2109, r1=var1280, $r0=var517, $r3=var1049, $r2=var1282, $r4=var2097, $r5=var3336}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.ietf.jgss.GSSException;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("GSSException: ");	$r2 = virtualinvoke r1.<org.ietf.jgss.GSSException: java.lang.String getMessage()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1