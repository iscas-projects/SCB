(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1006 0)
(declare-sort var421 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var1006_setAttributeNS/209768256 (var1006 String String String) void)
(declare-const null-var1006 var1006)
(declare-const null-String String)
(declare-const var568 var1006) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var568 null-var1006)))
(declare-const var3884 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var3884 null-String)))
(declare-const var3937 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var3937 null-String)))
(define-const var2123 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2123)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2123!1 String)
(assert (= var2123!1 ""))
(assert true)
(define-const var1651 String (append/672562846 var2123!1 "xmlns:")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xmlns:") 
(declare-const var2123!2 String)
(assert (= var2123!2 (str.++ var2123!1 "xmlns:")))
(assert true)
(define-const var1669 String (append/672562846 var1651 var3884)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1651!1 String)
(assert (= var1651!1 (str.++ var1651 var3884)))
(assert true)
(define-const var3065 String (toString/-2075883882 var1669)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var1006_setAttributeNS/209768256 var568 "http://www.w3.org/2000/xmlns/" var3065 var3937)) ; Statement: interfaceinvoke r0.<org.w3c.dom.Element: void setAttributeNS(java.lang.String,java.lang.String,java.lang.String)>("http://www.w3.org/2000/xmlns/", $r6, r5) 

(declare-const var568!1 var1006)
(declare-const var2481 String)
(declare-const var3065!1 String)
(declare-const var3937!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var1006_setAttributeNS/209768256=([org.w3c.dom.Element, java.lang.String, java.lang.String, java.lang.String], void)}
; {var1006=org.w3c.dom.Element, var568=r0, var3884=r2, var421=null_type, var3937=r5, var2123=$r1, var1651=$r3, var1669=$r4, var3065=$r6, var2481="http://www.w3.org/2000/xmlns/"}
; {org.w3c.dom.Element=var1006, r0=var568, r2=var3884, null_type=var421, r5=var3937, $r1=var2123, $r3=var1651, $r4=var1669, $r6=var3065, "http://www.w3.org/2000/xmlns/"=var2481}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.w3c.dom.Element;	r2 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("xmlns:");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r0.<org.w3c.dom.Element: void setAttributeNS(java.lang.String,java.lang.String,java.lang.String)>("http://www.w3.org/2000/xmlns/", $r6, r5);	return
;block_num 1