(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2108 0)
(declare-sort var1064 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1064-init () var1064)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun fileResourcePath/-2102291274 (var2108) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1064 String) void)
(declare-const null-var2108 var2108)
(declare-const var3046 var2108) ; Statement: r2 := @this: freemarker.ext.jsp.TaglibFactory$ServletContextTldLocation 
(assert (not (= var3046 null-var2108)))
(define-const var1085 var1064 var1064-init) ; Statement: $r0 = new java.io.IOException 
(define-const var487 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var487)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var487!1 String)
(assert (= var487!1 ""))
(assert true)
(define-const var3862 String (append/672562846 var487!1 "Resource not found: servletContext:")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resource not found: servletContext:") 
(declare-const var487!2 String)
(assert (= var487!2 (str.++ var487!1 "Resource not found: servletContext:")))
(define-const var159 String (fileResourcePath/-2102291274 var3046)) ; Statement: $r3 = r2.<freemarker.ext.jsp.TaglibFactory$ServletContextTldLocation: java.lang.String fileResourcePath> 
(assert true)
(define-const var456 String (append/672562846 var3862 var159)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3862!1 String)
(assert (= var3862!1 (str.++ var3862 var159)))
(assert true)
(define-const var3631 String (toString/-2075883882 var456)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1085 var3631)) ; Statement: specialinvoke $r0.<java.io.IOException: void <init>(java.lang.String)>($r6) 

(declare-const var1085!1 var1064)
(declare-const var3631!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1064-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), fileResourcePath/-2102291274=([freemarker.ext.jsp.TaglibFactory$ServletContextTldLocation], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var2108=freemarker.ext.jsp.TaglibFactory$ServletContextTldLocation, var3046=r2, var1064=java.io.IOException, var1085=$r0, var487=$r1, var3862=$r4, var159=$r3, var456=$r5, var3631=$r6}
; {freemarker.ext.jsp.TaglibFactory$ServletContextTldLocation=var2108, r2=var3046, java.io.IOException=var1064, $r0=var1085, $r1=var487, $r4=var3862, $r3=var159, $r5=var456, $r6=var3631}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: freemarker.ext.jsp.TaglibFactory$ServletContextTldLocation;	$r0 = new java.io.IOException;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resource not found: servletContext:");	$r3 = r2.<freemarker.ext.jsp.TaglibFactory$ServletContextTldLocation: java.lang.String fileResourcePath>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.IOException: void <init>(java.lang.String)>($r6);	return $r0
;block_num 1