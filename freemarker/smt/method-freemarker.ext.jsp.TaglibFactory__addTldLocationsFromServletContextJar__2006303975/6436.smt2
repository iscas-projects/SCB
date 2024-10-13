(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2126 0)
(declare-sort var146 0)
(declare-sort var2545 0)
(declare-sort var976 0)
(declare-sort var1046 0)
(declare-sort var2773 0)
(declare-sort var1735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2126_normalizeJarEntryPath/1401142187 (String Bool) String)
(declare-fun servletContextResourceToFileOrNull/-165379416 (var2126 String) var2545)
(declare-fun isDebugEnabled/505468001 (var976) Bool)
(declare-fun servletContext/-1526934653 (var2126) var1046)
(declare-fun var1046_getResourceAsStream/85022507 (var1046 String) var2773)
(declare-fun var1735-init () var1735)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1557872005 (var1735 String) void)
(declare-const null-var2126 var2126)
(declare-const null-String String)
(declare-const null-var2545 var2545)
(declare-const var2126-LOG var976)
(declare-const null-var2773 var2773)
(declare-const var1768 var2126) ; Statement: r1 := @this: freemarker.ext.jsp.TaglibFactory 
(assert (not (= var1768 null-var2126)))
(declare-const var3558 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3558 null-String)))
(define-const var560 String (var2126_normalizeJarEntryPath/1401142187 "/META-INF/" (ite (= 1 1) true false))) ; Statement: r0 = staticinvoke <freemarker.ext.jsp.TaglibFactory: java.lang.String normalizeJarEntryPath(java.lang.String,boolean)>("/META-INF/", 1) 
(assert true)
(define-const var1539 var2545 (servletContextResourceToFileOrNull/-165379416 var1768 var3558)) ; Statement: r3 = specialinvoke r1.<freemarker.ext.jsp.TaglibFactory: java.util.jar.JarFile servletContextResourceToFileOrNull(java.lang.String)>(r2) 
 ; Statement: if r3 == null goto $r4 = <freemarker.ext.jsp.TaglibFactory: freemarker.log.Logger LOG> 
(assert (= var1539 null-var2545)) ; Cond: r3 == null 
(define-const var151 var976 var2126-LOG) ; Statement: $r4 = <freemarker.ext.jsp.TaglibFactory: freemarker.log.Logger LOG> 
(assert true)
(define-const var3154 Bool (isDebugEnabled/505468001 var151)) ; Statement: $z0 = virtualinvoke $r4.<freemarker.log.Logger: boolean isDebugEnabled()>() 
 ; Statement: if $z0 == 0 goto $r5 = r1.<freemarker.ext.jsp.TaglibFactory: javax.servlet.ServletContext servletContext> 
(assert (= (ite var3154 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2830 var1046 (servletContext/-1526934653 var1768)) ; Statement: $r5 = r1.<freemarker.ext.jsp.TaglibFactory: javax.servlet.ServletContext servletContext> 
(define-const var1121 var2773 (var1046_getResourceAsStream/85022507 var2830 var3558)) ; Statement: $r21 = interfaceinvoke $r5.<javax.servlet.ServletContext: java.io.InputStream getResourceAsStream(java.lang.String)>(r2) 
 ; Statement: if $r21 != null goto $r6 = new java.util.zip.ZipInputStream 
(assert (not (not (= var1121 null-var2773)))) ; Negate: Cond: $r21 != null  
(define-const var1593 var1735 var1735-init) ; Statement: $r11 = new java.io.IOException 
(define-const var3269 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3269)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3269!1 String)
(assert (= var3269!1 ""))
(assert true)
(define-const var2269 String (append/672562846 var3269!1 "ServletContext resource not found: ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ServletContext resource not found: ") 
(declare-const var3269!2 String)
(assert (= var3269!2 (str.++ var3269!1 "ServletContext resource not found: ")))
(assert true)
(define-const var324 String (append/672562846 var2269 var3558)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var2269!1 String)
(assert (= var2269!1 (str.++ var2269 var3558)))
(assert true)
(define-const var1014 String (toString/-2075883882 var324)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1593 var1014)) ; Statement: specialinvoke $r11.<java.io.IOException: void <init>(java.lang.String)>($r15) 

(declare-const var1593!1 var1735)
(declare-const var1014!1 String)
 ; Statement: throw $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var2126_normalizeJarEntryPath/1401142187=([java.lang.String, boolean], java.lang.String), servletContextResourceToFileOrNull/-165379416=([freemarker.ext.jsp.TaglibFactory, java.lang.String], java.util.jar.JarFile), isDebugEnabled/505468001=([freemarker.log.Logger], boolean), servletContext/-1526934653=([freemarker.ext.jsp.TaglibFactory], javax.servlet.ServletContext), var1046_getResourceAsStream/85022507=([javax.servlet.ServletContext, java.lang.String], java.io.InputStream), var1735-init=([], java.io.IOException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var2126=freemarker.ext.jsp.TaglibFactory, var1768=r1, var3558=r2, var146=null_type, var560=r0, var2545=java.util.jar.JarFile, var1539=r3, var976=freemarker.log.Logger, var151=$r4, var3154=$z0, var1046=javax.servlet.ServletContext, var2830=$r5, var2773=java.io.InputStream, var1121=$r21, var1735=java.io.IOException, var1593=$r11, var3269=$r12, var2269=$r13, var324=$r14, var1014=$r15}
; {freemarker.ext.jsp.TaglibFactory=var2126, r1=var1768, r2=var3558, null_type=var146, r0=var560, java.util.jar.JarFile=var2545, r3=var1539, freemarker.log.Logger=var976, $r4=var151, $z0=var3154, javax.servlet.ServletContext=var1046, $r5=var2830, java.io.InputStream=var2773, $r21=var1121, java.io.IOException=var1735, $r11=var1593, $r12=var3269, $r13=var2269, $r14=var324, $r15=var1014}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: freemarker.ext.jsp.TaglibFactory;	r2 := @parameter0: java.lang.String;	r0 = staticinvoke <freemarker.ext.jsp.TaglibFactory: java.lang.String normalizeJarEntryPath(java.lang.String,boolean)>("/META-INF/", 1);	r3 = specialinvoke r1.<freemarker.ext.jsp.TaglibFactory: java.util.jar.JarFile servletContextResourceToFileOrNull(java.lang.String)>(r2);	if r3 == null goto $r4 = <freemarker.ext.jsp.TaglibFactory: freemarker.log.Logger LOG>;	$r4 = <freemarker.ext.jsp.TaglibFactory: freemarker.log.Logger LOG>;	$z0 = virtualinvoke $r4.<freemarker.log.Logger: boolean isDebugEnabled()>();	if $z0 == 0 goto $r5 = r1.<freemarker.ext.jsp.TaglibFactory: javax.servlet.ServletContext servletContext>;	$r5 = r1.<freemarker.ext.jsp.TaglibFactory: javax.servlet.ServletContext servletContext>;	$r21 = interfaceinvoke $r5.<javax.servlet.ServletContext: java.io.InputStream getResourceAsStream(java.lang.String)>(r2);	if $r21 != null goto $r6 = new java.util.zip.ZipInputStream;	$r11 = new java.io.IOException;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ServletContext resource not found: ");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r11.<java.io.IOException: void <init>(java.lang.String)>($r15);	throw $r11
;block_num 4