(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2991 0)
(declare-sort var2594 0)
(declare-sort var1953 0)
(declare-sort var3667 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2991_getLogger/-1078495866 (String) var2991)
(declare-fun var2594_getDefaultFactory/1806566246 () var2594)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3667) ClassObject)
(declare-fun cast-from-var2594-to-var3667 (var2594) var3667)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun debug/32568335 (var2991 String) void)
(declare-const null-var2594 var2594)
(declare-const var1953-LOG var2991)
(define-const var515 var2991 (var2991_getLogger/-1078495866 "freemarker.jsp")) ; Statement: $r0 = staticinvoke <freemarker.log.Logger: freemarker.log.Logger getLogger(java.lang.String)>("freemarker.jsp") 
(define-const var3188 var2991 var515) ; Statement: <freemarker.ext.jsp._FreeMarkerPageContext21: freemarker.log.Logger LOG> = $r0 
(define-const var2457 var2594 var2594_getDefaultFactory/1806566246) ; Statement: $r1 = staticinvoke <javax.servlet.jsp.JspFactory: javax.servlet.jsp.JspFactory getDefaultFactory()>() 
 ; Statement: if $r1 != null goto $r3 = <freemarker.ext.jsp._FreeMarkerPageContext21: freemarker.log.Logger LOG> 
(assert (not (= var2457 null-var2594))) ; Cond: $r1 != null 
(define-const var156 var2991 var1953-LOG) ; Statement: $r3 = <freemarker.ext.jsp._FreeMarkerPageContext21: freemarker.log.Logger LOG> 
(define-const var187 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var187)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var187!1 String)
(assert (= var187!1 ""))
(assert true)
(define-const var2895 String (append/672562846 var187!1 "Using JspFactory implementation class ")) ; Statement: $r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Using JspFactory implementation class ") 
(declare-const var187!2 String)
(assert (= var187!2 (str.++ var187!1 "Using JspFactory implementation class ")))
(define-const var1765 var2594 var2594_getDefaultFactory/1806566246) ; Statement: $r4 = staticinvoke <javax.servlet.jsp.JspFactory: javax.servlet.jsp.JspFactory getDefaultFactory()>() 
(assert true)
(define-const var3123 ClassObject (getClass/1258963082 (cast-from-var2594-to-var3667 var1765))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3192 String (getName/-1958580599 var3123)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1405 String (append/672562846 var2895 var3192)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2895!1 String)
(assert (= var2895!1 (str.++ var2895 var3192)))
(assert true)
(define-const var3935 String (toString/-2075883882 var1405)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (debug/32568335 var156 var3935)) ; Statement: virtualinvoke $r3.<freemarker.log.Logger: void debug(java.lang.String)>($r9) 

(declare-const var156!1 var2991)
(declare-const var3935!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2991_getLogger/-1078495866=([java.lang.String], freemarker.log.Logger), var2594_getDefaultFactory/1806566246=([], javax.servlet.jsp.JspFactory), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2594-to-var3667=([javax.servlet.jsp.JspFactory], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), debug/32568335=([freemarker.log.Logger, java.lang.String], void)}
; {var2991=freemarker.log.Logger, var515=$r0, var3188=<freemarker.ext.jsp._FreeMarkerPageContext21: freemarker.log.Logger LOG>, var2594=javax.servlet.jsp.JspFactory, var2457=$r1, var1953=freemarker.ext.jsp._FreeMarkerPageContext21, var156=$r3, var187=$r2, var2895=$r7, var1765=$r4, var3667=java.lang.Object, var3123=$r5, var3192=$r6, var1405=$r8, var3935=$r9}
; {freemarker.log.Logger=var2991, $r0=var515, <freemarker.ext.jsp._FreeMarkerPageContext21: freemarker.log.Logger LOG>=var3188, javax.servlet.jsp.JspFactory=var2594, $r1=var2457, freemarker.ext.jsp._FreeMarkerPageContext21=var1953, $r3=var156, $r2=var187, $r7=var2895, $r4=var1765, java.lang.Object=var3667, $r5=var3123, $r6=var3192, $r8=var1405, $r9=var3935}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = staticinvoke <freemarker.log.Logger: freemarker.log.Logger getLogger(java.lang.String)>("freemarker.jsp");	<freemarker.ext.jsp._FreeMarkerPageContext21: freemarker.log.Logger LOG> = $r0;	$r1 = staticinvoke <javax.servlet.jsp.JspFactory: javax.servlet.jsp.JspFactory getDefaultFactory()>();	if $r1 != null goto $r3 = <freemarker.ext.jsp._FreeMarkerPageContext21: freemarker.log.Logger LOG>;	$r3 = <freemarker.ext.jsp._FreeMarkerPageContext21: freemarker.log.Logger LOG>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Using JspFactory implementation class ");	$r4 = staticinvoke <javax.servlet.jsp.JspFactory: javax.servlet.jsp.JspFactory getDefaultFactory()>();	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r3.<freemarker.log.Logger: void debug(java.lang.String)>($r9);	return
;block_num 2