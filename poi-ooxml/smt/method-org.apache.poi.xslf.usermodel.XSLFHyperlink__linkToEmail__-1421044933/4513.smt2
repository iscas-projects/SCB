(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2654 0)
(declare-sort var2317 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun linkToExternal/1799097058 (var2654 String) void)
(declare-fun setLabel/798746864 (var2654 String) void)
(declare-const null-var2654 var2654)
(declare-const null-String String)
(declare-const var5 var2654) ; Statement: r0 := @this: org.apache.poi.xslf.usermodel.XSLFHyperlink 
(assert (not (= var5 null-var2654)))
(declare-const var3310 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3310 null-String)))
(define-const var3823 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3823)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3823!1 String)
(assert (= var3823!1 ""))
(assert true)
(define-const var2566 String (append/672562846 var3823!1 "mailto:")) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("mailto:") 
(declare-const var3823!2 String)
(assert (= var3823!2 (str.++ var3823!1 "mailto:")))
(assert true)
(define-const var2385 String (append/672562846 var2566 var3310)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2566!1 String)
(assert (= var2566!1 (str.++ var2566 var3310)))
(assert true)
(define-const var909 String (toString/-2075883882 var2385)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (linkToExternal/1799097058 var5 var909)) ; Statement: specialinvoke r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: void linkToExternal(java.lang.String)>($r5) 

(declare-const var5!1 var2654)
(declare-const var909!1 String)
(assert true)
;(assert (setLabel/798746864 var5!1 var3310)) ; Statement: virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: void setLabel(java.lang.String)>(r2) 

(declare-const var5!2 var2654)
(declare-const var3310!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), linkToExternal/1799097058=([org.apache.poi.xslf.usermodel.XSLFHyperlink, java.lang.String], void), setLabel/798746864=([org.apache.poi.xslf.usermodel.XSLFHyperlink, java.lang.String], void)}
; {var2654=org.apache.poi.xslf.usermodel.XSLFHyperlink, var5=r0, var3310=r2, var2317=null_type, var3823=$r1, var2566=$r3, var2385=$r4, var909=$r5}
; {org.apache.poi.xslf.usermodel.XSLFHyperlink=var2654, r0=var5, r2=var3310, null_type=var2317, $r1=var3823, $r3=var2566, $r4=var2385, $r5=var909}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.poi.xslf.usermodel.XSLFHyperlink;	r2 := @parameter0: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("mailto:");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: void linkToExternal(java.lang.String)>($r5);	virtualinvoke r0.<org.apache.poi.xslf.usermodel.XSLFHyperlink: void setLabel(java.lang.String)>(r2);	return
;block_num 1