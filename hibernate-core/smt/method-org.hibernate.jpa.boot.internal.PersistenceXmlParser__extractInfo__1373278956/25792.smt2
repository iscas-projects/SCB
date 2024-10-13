(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2406 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/-2074868419 (var2406) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2406 var2406)
(declare-const var1072 var2406) ; Statement: r0 := @parameter0: org.xml.sax.SAXException 
(assert (not (= var1072 null-var2406)))
(define-const var263 Bool false) ; Statement: $z0 = r0 instanceof org.xml.sax.SAXParseException 
 ; Statement: if $z0 == 0 goto $r1 = new java.lang.StringBuilder 
(assert (= (ite var263 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2064 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2064)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2064!1 String)
(assert (= var2064!1 ""))
(assert true)
(define-const var3347 String (append/672562846 var2064!1 "Error parsing XML : ")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error parsing XML : ") 
(declare-const var2064!2 String)
(assert (= var2064!2 (str.++ var2064!1 "Error parsing XML : ")))
(assert true)
(define-const var70 String (getMessage/-2074868419 var1072)) ; Statement: $r2 = virtualinvoke r0.<org.xml.sax.SAXException: java.lang.String getMessage()>() 
(assert true)
(define-const var1562 String (append/672562846 var3347 var70)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3347!1 String)
(assert (= var3347!1 (str.++ var3347 var70)))
(assert true)
(define-const var1817 String (toString/-2075883882 var1562)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/-2074868419=([org.xml.sax.SAXException], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2406=org.xml.sax.SAXException, var1072=r0, var263=$z0, var2064=$r1, var3347=$r3, var70=$r2, var1562=$r4, var1817=$r5}
; {org.xml.sax.SAXException=var2406, r0=var1072, $z0=var263, $r1=var2064, $r3=var3347, $r2=var70, $r4=var1562, $r5=var1817}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.xml.sax.SAXException;	$z0 = r0 instanceof org.xml.sax.SAXParseException;	if $z0 == 0 goto $r1 = new java.lang.StringBuilder;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error parsing XML : ");	$r2 = virtualinvoke r0.<org.xml.sax.SAXException: java.lang.String getMessage()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 2