(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1926 0)
(declare-sort var3229 0)
(declare-sort var3638 0)
(declare-sort var603 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1926_getLogger/-1078495866 (String) var1926)
(declare-fun var3229_getDefaultFactory/1806566246 () var3229)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var603) ClassObject)
(declare-fun cast-from-var3229-to-var603 (var3229) var603)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun debug/32568335 (var1926 String) void)
(declare-const null-var3229 var3229)
(declare-const var3638-LOG var1926)
(define-const var3554 var1926 (var1926_getLogger/-1078495866 "freemarker.jsp")) ; Statement: $r0 = staticinvoke <freemarker.log.Logger: freemarker.log.Logger getLogger(java.lang.String)>("freemarker.jsp") 
(define-const var3651 var1926 var3554) ; Statement: <freemarker.ext.jsp._FreeMarkerPageContext2: freemarker.log.Logger LOG> = $r0 
(define-const var2524 var3229 var3229_getDefaultFactory/1806566246) ; Statement: $r1 = staticinvoke <javax.servlet.jsp.JspFactory: javax.servlet.jsp.JspFactory getDefaultFactory()>() 
 ; Statement: if $r1 != null goto $r3 = <freemarker.ext.jsp._FreeMarkerPageContext2: freemarker.log.Logger LOG> 
(assert (not (= var2524 null-var3229))) ; Cond: $r1 != null 
(define-const var99 var1926 var3638-LOG) ; Statement: $r3 = <freemarker.ext.jsp._FreeMarkerPageContext2: freemarker.log.Logger LOG> 
(define-const var3573 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3573)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3573!1 String)
(assert (= var3573!1 ""))
(assert true)
(define-const var2349 String (append/672562846 var3573!1 "Using JspFactory implementation class ")) ; Statement: $r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Using JspFactory implementation class ") 
(declare-const var3573!2 String)
(assert (= var3573!2 (str.++ var3573!1 "Using JspFactory implementation class ")))
(define-const var2679 var3229 var3229_getDefaultFactory/1806566246) ; Statement: $r4 = staticinvoke <javax.servlet.jsp.JspFactory: javax.servlet.jsp.JspFactory getDefaultFactory()>() 
(assert true)
(define-const var3162 ClassObject (getClass/1258963082 (cast-from-var3229-to-var603 var2679))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2158 String (getName/-1958580599 var3162)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var328 String (append/672562846 var2349 var2158)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2349!1 String)
(assert (= var2349!1 (str.++ var2349 var2158)))
(assert true)
(define-const var3518 String (toString/-2075883882 var328)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (debug/32568335 var99 var3518)) ; Statement: virtualinvoke $r3.<freemarker.log.Logger: void debug(java.lang.String)>($r9) 

(declare-const var99!1 var1926)
(declare-const var3518!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1926_getLogger/-1078495866=([java.lang.String], freemarker.log.Logger), var3229_getDefaultFactory/1806566246=([], javax.servlet.jsp.JspFactory), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3229-to-var603=([javax.servlet.jsp.JspFactory], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), debug/32568335=([freemarker.log.Logger, java.lang.String], void)}
; {var1926=freemarker.log.Logger, var3554=$r0, var3651=<freemarker.ext.jsp._FreeMarkerPageContext2: freemarker.log.Logger LOG>, var3229=javax.servlet.jsp.JspFactory, var2524=$r1, var3638=freemarker.ext.jsp._FreeMarkerPageContext2, var99=$r3, var3573=$r2, var2349=$r7, var2679=$r4, var603=java.lang.Object, var3162=$r5, var2158=$r6, var328=$r8, var3518=$r9}
; {freemarker.log.Logger=var1926, $r0=var3554, <freemarker.ext.jsp._FreeMarkerPageContext2: freemarker.log.Logger LOG>=var3651, javax.servlet.jsp.JspFactory=var3229, $r1=var2524, freemarker.ext.jsp._FreeMarkerPageContext2=var3638, $r3=var99, $r2=var3573, $r7=var2349, $r4=var2679, java.lang.Object=var603, $r5=var3162, $r6=var2158, $r8=var328, $r9=var3518}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts $r0 = staticinvoke <freemarker.log.Logger: freemarker.log.Logger getLogger(java.lang.String)>("freemarker.jsp");	<freemarker.ext.jsp._FreeMarkerPageContext2: freemarker.log.Logger LOG> = $r0;	$r1 = staticinvoke <javax.servlet.jsp.JspFactory: javax.servlet.jsp.JspFactory getDefaultFactory()>();	if $r1 != null goto $r3 = <freemarker.ext.jsp._FreeMarkerPageContext2: freemarker.log.Logger LOG>;	$r3 = <freemarker.ext.jsp._FreeMarkerPageContext2: freemarker.log.Logger LOG>;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Using JspFactory implementation class ");	$r4 = staticinvoke <javax.servlet.jsp.JspFactory: javax.servlet.jsp.JspFactory getDefaultFactory()>();	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.Class getClass()>();	$r6 = virtualinvoke $r5.<java.lang.Class: java.lang.String getName()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r3.<freemarker.log.Logger: void debug(java.lang.String)>($r9);	return
;block_num 2