(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var503 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$servletContextJarFilePath/2108151020 (var503) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var503 var503)
(declare-const var1970 var503) ; Statement: r1 := @this: freemarker.ext.jsp.TaglibFactory$ServletContextJarEntryTldLocation$1 
(assert (not (= var1970 null-var503)))
(define-const var3502 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3502)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3502!1 String)
(assert (= var3502!1 ""))
(assert true)
(define-const var1727 String (append/672562846 var3502!1 "servletContext:")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("servletContext:") 
(declare-const var3502!2 String)
(assert (= var3502!2 (str.++ var3502!1 "servletContext:")))
(define-const var1566 String (val$servletContextJarFilePath/2108151020 var1970)) ; Statement: $r2 = r1.<freemarker.ext.jsp.TaglibFactory$ServletContextJarEntryTldLocation$1: java.lang.String val$servletContextJarFilePath> 
(assert true)
(define-const var2449 String (append/672562846 var1727 var1566)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1727!1 String)
(assert (= var1727!1 (str.++ var1727 var1566)))
(assert true)
(define-const var2453 String (toString/-2075883882 var2449)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$servletContextJarFilePath/2108151020=([freemarker.ext.jsp.TaglibFactory$ServletContextJarEntryTldLocation$1], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var503=freemarker.ext.jsp.TaglibFactory$ServletContextJarEntryTldLocation$1, var1970=r1, var3502=$r0, var1727=$r3, var1566=$r2, var2449=$r4, var2453=$r5}
; {freemarker.ext.jsp.TaglibFactory$ServletContextJarEntryTldLocation$1=var503, r1=var1970, $r0=var3502, $r3=var1727, $r2=var1566, $r4=var2449, $r5=var2453}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.jsp.TaglibFactory$ServletContextJarEntryTldLocation$1;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("servletContext:");	$r2 = r1.<freemarker.ext.jsp.TaglibFactory$ServletContextJarEntryTldLocation$1: java.lang.String val$servletContextJarFilePath>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1