(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1011 0)
(declare-sort var526 0)
(declare-sort var669 0)
(declare-sort var2149 0)
(declare-sort var704 0)
(declare-sort var1282 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun dsakf/1513571470 (var1011) var669)
(declare-fun var704-init () var704)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var1282) String)
(declare-fun cast-from-var2149-to-var1282 (var2149) var1282)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1084991535 (var704 String) void)
(declare-const null-var1011 var1011)
(declare-const null-var526 var526)
(declare-const null-var669 var669)
(declare-const null-var2149 var2149)
(declare-const var1469 var1011) ; Statement: r0 := @this: org.jcp.xml.dsig.internal.dom.DOMKeyValue$DSA 
(assert (not (= var1469 null-var1011)))
(declare-const var1743 var526) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1743 null-var526)))
(define-const var1357 var669 (dsakf/1513571470 var1469)) ; Statement: $r1 = r0.<org.jcp.xml.dsig.internal.dom.DOMKeyValue$DSA: java.security.KeyFactory dsakf> 
 ; Statement: if $r1 != null goto $r15 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element getFirstChildElement(org.w3c.dom.Node)>(r2) 
(assert (not (not (= var1357 null-var669)))) ; Negate: Cond: $r1 != null  
(declare-const var71 var2149) ; Statement: $r16 := @caughtexception 
(assert (not (= var71 null-var2149)))
(define-const var2580 var704 var704-init) ; Statement: $r17 = new java.lang.RuntimeException 
(define-const var1801 String String-init) ; Statement: $r18 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1801)) ; Statement: specialinvoke $r18.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1801!1 String)
(assert (= var1801!1 ""))
(assert true)
(define-const var3713 String (append/672562846 var1801!1 "unable to create DSA KeyFactory: ")) ; Statement: $r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unable to create DSA KeyFactory: ") 
(declare-const var1801!2 String)
(assert (= var1801!2 (str.++ var1801!1 "unable to create DSA KeyFactory: ")))
(assert true)
(define-const var206 String (getMessage/849299655 (cast-from-var2149-to-var1282 var71))) ; Statement: $r19 = virtualinvoke $r16.<java.security.NoSuchAlgorithmException: java.lang.String getMessage()>() 
(assert true)
(define-const var1938 String (append/672562846 var3713 var206)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19) 
(declare-const var3713!1 String)
(assert (= var3713!1 (str.++ var3713 var206)))
(assert true)
(define-const var3065 String (toString/-2075883882 var1938)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1084991535 var2580 var3065)) ; Statement: specialinvoke $r17.<java.lang.RuntimeException: void <init>(java.lang.String)>($r22) 

(declare-const var2580!1 var704)
(declare-const var3065!1 String)
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {dsakf/1513571470=([org.jcp.xml.dsig.internal.dom.DOMKeyValue$DSA], java.security.KeyFactory), var704-init=([], java.lang.RuntimeException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2149-to-var1282=([java.security.NoSuchAlgorithmException], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void)}
; {var1011=org.jcp.xml.dsig.internal.dom.DOMKeyValue$DSA, var1469=r0, var526=org.w3c.dom.Element, var1743=r2, var669=java.security.KeyFactory, var1357=$r1, var2149=java.security.NoSuchAlgorithmException, var71=$r16, var704=java.lang.RuntimeException, var2580=$r17, var1801=$r18, var3713=$r20, var1282=java.lang.Throwable, var206=$r19, var1938=$r21, var3065=$r22}
; {org.jcp.xml.dsig.internal.dom.DOMKeyValue$DSA=var1011, r0=var1469, org.w3c.dom.Element=var526, r2=var1743, java.security.KeyFactory=var669, $r1=var1357, java.security.NoSuchAlgorithmException=var2149, $r16=var71, java.lang.RuntimeException=var704, $r17=var2580, $r18=var1801, $r20=var3713, java.lang.Throwable=var1282, $r19=var206, $r21=var1938, $r22=var3065}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.jcp.xml.dsig.internal.dom.DOMKeyValue$DSA;	r2 := @parameter0: org.w3c.dom.Element;	$r1 = r0.<org.jcp.xml.dsig.internal.dom.DOMKeyValue$DSA: java.security.KeyFactory dsakf>;	if $r1 != null goto $r15 = staticinvoke <org.jcp.xml.dsig.internal.dom.DOMUtils: org.w3c.dom.Element getFirstChildElement(org.w3c.dom.Node)>(r2);	$r16 := @caughtexception;	$r17 = new java.lang.RuntimeException;	$r18 = new java.lang.StringBuilder;	specialinvoke $r18.<java.lang.StringBuilder: void <init>()>();	$r20 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("unable to create DSA KeyFactory: ");	$r19 = virtualinvoke $r16.<java.security.NoSuchAlgorithmException: java.lang.String getMessage()>();	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r19);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r17.<java.lang.RuntimeException: void <init>(java.lang.String)>($r22);	throw $r17
;block_num 2