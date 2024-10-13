(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3378 0)
(declare-sort var2646 0)
(declare-sort var2063 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2063-init () var2063)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1750215933 (var2063 String) void)
(declare-const null-var3378 var3378)
(declare-const null-String String)
(declare-const var3892 var3378) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3892 null-var3378)))
(declare-const var1070 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1070 null-String)))
 ; Statement: if r0 != null goto r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getLocalName()>() 
(assert (not (not (= var3892 null-var3378)))) ; Negate: Cond: r0 != null  
(define-const var2316 var2063 var2063-init) ; Statement: $r10 = new javax.xml.crypto.MarshalException 
(define-const var3750 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3750)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3750!1 String)
(assert (= var3750!1 ""))
(assert true)
(define-const var1721 String (append/672562846 var3750!1 "Missing ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing ") 
(declare-const var3750!2 String)
(assert (= var3750!2 (str.++ var3750!1 "Missing ")))
(assert true)
(define-const var1756 String (append/672562846 var1721 var1070)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1721!1 String)
(assert (= var1721!1 (str.++ var1721 var1070)))
(assert true)
(define-const var258 String (append/672562846 var1756 " element")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" element") 
(declare-const var1756!1 String)
(assert (= var1756!1 (str.++ var1756 " element")))
(assert true)
(define-const var2730 String (toString/-2075883882 var258)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1750215933 var2316 var2730)) ; Statement: specialinvoke $r10.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r15) 

(declare-const var2316!1 var2063)
(declare-const var2730!1 String)
 ; Statement: throw $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {var2063-init=([], javax.xml.crypto.MarshalException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1750215933=([javax.xml.crypto.MarshalException, java.lang.String], void)}
; {var3378=org.w3c.dom.Element, var3892=r0, var1070=r2, var2646=null_type, var2063=javax.xml.crypto.MarshalException, var2316=$r10, var3750=$r11, var1721=$r12, var1756=$r13, var258=$r14, var2730=$r15}
; {org.w3c.dom.Element=var3378, r0=var3892, r2=var1070, null_type=var2646, javax.xml.crypto.MarshalException=var2063, $r10=var2316, $r11=var3750, $r12=var1721, $r13=var1756, $r14=var258, $r15=var2730}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.w3c.dom.Element;	r2 := @parameter1: java.lang.String;	if r0 != null goto r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getLocalName()>();	$r10 = new javax.xml.crypto.MarshalException;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing ");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" element");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r10.<javax.xml.crypto.MarshalException: void <init>(java.lang.String)>($r15);	throw $r10
;block_num 2