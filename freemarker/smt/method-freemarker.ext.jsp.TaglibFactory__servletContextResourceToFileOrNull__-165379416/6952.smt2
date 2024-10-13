(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1117 0)
(declare-sort var2201 0)
(declare-sort var2784 0)
(declare-sort var654 0)
(declare-sort var2366 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun servletContext/-1526934653 (var1117) var2784)
(declare-fun var2784_getResource/672514559 (var2784 String) var654)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun error/-751736262 (var2366 String) void)
(declare-const null-var1117 var1117)
(declare-const null-String String)
(declare-const null-var654 var654)
(declare-const var1117-LOG var2366)
(declare-const var847 var1117) ; Statement: r0 := @this: freemarker.ext.jsp.TaglibFactory 
(assert (not (= var847 null-var1117)))
(declare-const var3793 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3793 null-String)))
(define-const var2870 var2784 (servletContext/-1526934653 var847)) ; Statement: $r2 = r0.<freemarker.ext.jsp.TaglibFactory: javax.servlet.ServletContext servletContext> 
(define-const var1006 var654 (var2784_getResource/672514559 var2870 var3793)) ; Statement: r3 = interfaceinvoke $r2.<javax.servlet.ServletContext: java.net.URL getResource(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto r4 = specialinvoke r0.<freemarker.ext.jsp.TaglibFactory: java.io.File urlToFileOrNull(java.net.URL)>(r3) 
(assert (not (not (= var1006 null-var654)))) ; Negate: Cond: r3 != null  
(define-const var169 var2366 var1117-LOG) ; Statement: $r12 = <freemarker.ext.jsp.TaglibFactory: freemarker.log.Logger LOG> 
(define-const var1692 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1692)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1692!1 String)
(assert (= var1692!1 ""))
(assert true)
(define-const var1470 String (append/672562846 var1692!1 "ServletContext resource URL was null (missing resource?): ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ServletContext resource URL was null (missing resource?): ") 
(declare-const var1692!2 String)
(assert (= var1692!2 (str.++ var1692!1 "ServletContext resource URL was null (missing resource?): ")))
(assert true)
(define-const var991 String (append/672562846 var1470 var3793)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1470!1 String)
(assert (= var1470!1 (str.++ var1470 var3793)))
(assert true)
(define-const var1697 String (toString/-2075883882 var991)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (error/-751736262 var169 var1697)) ; Statement: virtualinvoke $r12.<freemarker.log.Logger: void error(java.lang.String)>($r15) 

(declare-const var169!1 var2366)
(declare-const var1697!1 String)
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {servletContext/-1526934653=([freemarker.ext.jsp.TaglibFactory], javax.servlet.ServletContext), var2784_getResource/672514559=([javax.servlet.ServletContext, java.lang.String], java.net.URL), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), error/-751736262=([freemarker.log.Logger, java.lang.String], void)}
; {var1117=freemarker.ext.jsp.TaglibFactory, var847=r0, var3793=r1, var2201=null_type, var2784=javax.servlet.ServletContext, var2870=$r2, var654=java.net.URL, var1006=r3, var2366=freemarker.log.Logger, var169=$r12, var1692=$r11, var1470=$r13, var991=$r14, var1697=$r15}
; {freemarker.ext.jsp.TaglibFactory=var1117, r0=var847, r1=var3793, null_type=var2201, javax.servlet.ServletContext=var2784, $r2=var2870, java.net.URL=var654, r3=var1006, freemarker.log.Logger=var2366, $r12=var169, $r11=var1692, $r13=var1470, $r14=var991, $r15=var1697}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.jsp.TaglibFactory;	r1 := @parameter0: java.lang.String;	$r2 = r0.<freemarker.ext.jsp.TaglibFactory: javax.servlet.ServletContext servletContext>;	r3 = interfaceinvoke $r2.<javax.servlet.ServletContext: java.net.URL getResource(java.lang.String)>(r1);	if r3 != null goto r4 = specialinvoke r0.<freemarker.ext.jsp.TaglibFactory: java.io.File urlToFileOrNull(java.net.URL)>(r3);	$r12 = <freemarker.ext.jsp.TaglibFactory: freemarker.log.Logger LOG>;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ServletContext resource URL was null (missing resource?): ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r12.<freemarker.log.Logger: void error(java.lang.String)>($r15);	return null
;block_num 2