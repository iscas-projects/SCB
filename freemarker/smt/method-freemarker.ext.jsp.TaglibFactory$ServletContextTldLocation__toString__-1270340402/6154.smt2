(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var243 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fileResourcePath/-2102291274 (var243) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var243 var243)
(declare-const var2931 var243) ; Statement: r1 := @this: freemarker.ext.jsp.TaglibFactory$ServletContextTldLocation 
(assert (not (= var2931 null-var243)))
(define-const var3093 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3093)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3093!1 String)
(assert (= var3093!1 ""))
(assert true)
(define-const var2076 String (append/672562846 var3093!1 "servletContext:")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("servletContext:") 
(declare-const var3093!2 String)
(assert (= var3093!2 (str.++ var3093!1 "servletContext:")))
(define-const var2897 String (fileResourcePath/-2102291274 var2931)) ; Statement: $r2 = r1.<freemarker.ext.jsp.TaglibFactory$ServletContextTldLocation: java.lang.String fileResourcePath> 
(assert true)
(define-const var2445 String (append/672562846 var2076 var2897)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2076!1 String)
(assert (= var2076!1 (str.++ var2076 var2897)))
(assert true)
(define-const var997 String (toString/-2075883882 var2445)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fileResourcePath/-2102291274=([freemarker.ext.jsp.TaglibFactory$ServletContextTldLocation], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var243=freemarker.ext.jsp.TaglibFactory$ServletContextTldLocation, var2931=r1, var3093=$r0, var2076=$r3, var2897=$r2, var2445=$r4, var997=$r5}
; {freemarker.ext.jsp.TaglibFactory$ServletContextTldLocation=var243, r1=var2931, $r0=var3093, $r3=var2076, $r2=var2897, $r4=var2445, $r5=var997}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.jsp.TaglibFactory$ServletContextTldLocation;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("servletContext:");	$r2 = r1.<freemarker.ext.jsp.TaglibFactory$ServletContextTldLocation: java.lang.String fileResourcePath>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1