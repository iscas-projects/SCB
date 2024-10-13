(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var22 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var22!class ClassObject)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-const var3926 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3926)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3926!1 String)
(assert (= var3926!1 ""))
(define-const var1200 ClassObject var22!class) ; Statement: $r1 = class "Lfreemarker/ext/jsp/FreeMarkerJspFactory21;" 
(assert true)
(define-const var1995 String (getName/-1958580599 var1200)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var382 String (append/672562846 var3926!1 var1995)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3926!2 String)
(assert (= var3926!2 (str.++ var3926!1 var1995)))
(assert true)
(define-const var3621 String (append/672562846 var382 "#jspAppContext")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#jspAppContext") 
(declare-const var382!1 String)
(assert (= var382!1 (str.++ var382 "#jspAppContext")))
(assert true)
(define-const var907 String (toString/-2075883882 var3621)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var2607 String var907) ; Statement: <freemarker.ext.jsp.FreeMarkerJspFactory21: java.lang.String JSPCTX_KEY> = $r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/-1958580599=([java.lang.Class], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3926=$r0, var22=freemarker.ext.jsp.FreeMarkerJspFactory21, var1200=$r1, var1995=$r2, var382=$r3, var3621=$r4, var907=$r5, var2607=<freemarker.ext.jsp.FreeMarkerJspFactory21: java.lang.String JSPCTX_KEY>}
; {$r0=var3926, freemarker.ext.jsp.FreeMarkerJspFactory21=var22, $r1=var1200, $r2=var1995, $r3=var382, $r4=var3621, $r5=var907, <freemarker.ext.jsp.FreeMarkerJspFactory21: java.lang.String JSPCTX_KEY>=var2607}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = class "Lfreemarker/ext/jsp/FreeMarkerJspFactory21;";	$r2 = virtualinvoke $r1.<java.lang.Class: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#jspAppContext");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	<freemarker.ext.jsp.FreeMarkerJspFactory21: java.lang.String JSPCTX_KEY> = $r5;	return
;block_num 1