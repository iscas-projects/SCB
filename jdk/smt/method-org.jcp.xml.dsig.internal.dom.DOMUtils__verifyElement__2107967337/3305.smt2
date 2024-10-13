(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3886 0)
(declare-sort var1079 0)
(declare-sort var23 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var23-init () var23)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1750215933 (var23 String) void)
(declare-const null-var3886 var3886)
(declare-const null-String String)
(declare-const var3016 var3886) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3016 null-var3886)))
(declare-const var2853 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2853 null-String)))
(declare-const var451 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var451 null-String)))
 ; Statement: if r0 != null goto r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getLocalName()>() 
(assert (not (not (= var3016 null-var3886)))) ; Negate: Cond: r0 != null  
(define-const var427 var23 var23-init) ; Statement: $r5 = new javax.xml.crypto.MarshalException 
(define-const var624 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var624)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var624!1 String)
(assert (= var624!1 ""))
(assert true)
(define-const var3694 String (append/672562846 var624!1 "Missing ")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing ") 
(declare-const var624!2 String)
(assert (= var624!2 (str.++ var624!1 "Missing ")))
(assert true)
(define-const var2057 String (append/672562846 var3694 var2853)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3694!1 String)
(assert (= var3694!1 (str.++ var3694 var2853)))
(assert true)
(define-const var2392 String (append/672562846 var2057 " element")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" element") 
(declare-const var2057!1 String)
(assert (= var2057!1 (str.++ var2057 " element")))
(assert true)
(define-const var433 String (toString/-2075883882 var2392)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1750215933 var427 var433)) ; Statement: specialinvoke $r5.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r10) 

(declare-const var427!1 var23)
(declare-const var433!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var23-init=([], javax.xml.crypto.MarshalException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1750215933=([javax.xml.crypto.MarshalException, java.lang.String], void)}
; {var3886=org.w3c.dom.Element, var3016=r0, var2853=r3, var1079=null_type, var451=r4, var23=javax.xml.crypto.MarshalException, var427=$r5, var624=$r6, var3694=$r7, var2057=$r8, var2392=$r9, var433=$r10}
; {org.w3c.dom.Element=var3886, r0=var3016, r3=var2853, null_type=var1079, r4=var451, javax.xml.crypto.MarshalException=var23, $r5=var427, $r6=var624, $r7=var3694, $r8=var2057, $r9=var2392, $r10=var433}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.w3c.dom.Element;	r3 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	if r0 != null goto r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getLocalName()>();	$r5 = new javax.xml.crypto.MarshalException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing ");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" element");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2