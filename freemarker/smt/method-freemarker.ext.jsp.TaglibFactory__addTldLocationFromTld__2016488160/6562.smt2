(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1620 0)
(declare-sort var120 0)
(declare-sort var3750 0)
(declare-sort var973 0)
(declare-sort var2236 0)
(declare-sort var2172 0)
(declare-sort var207 0)
(declare-sort var2540 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var2172) String)
(declare-fun cast-from-var3750-to-var2172 (var3750) var2172)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun error/-784347014 (var2236 String var207) void)
(declare-fun cast-from-var973-to-var207 (var973) var207)
(declare-fun failedTldLocations/-1526934653 (var1620) var2540)
(declare-const null-var1620 var1620)
(declare-const null-var120 var120)
(declare-const null-var3750 var3750)
(declare-const null-var973 var973)
(declare-const var1620-LOG var2236)
(declare-const null-var207 var207)
(declare-const var1197 var1620) ; Statement: r0 := @this: freemarker.ext.jsp.TaglibFactory 
(assert (not (= var1197 null-var1620)))
(declare-const var2415 var120) ; Statement: r1 := @parameter0: java.io.InputStream 
(assert (not (= var2415 null-var120)))
(declare-const var1580 var3750) ; Statement: r2 := @parameter1: freemarker.ext.jsp.TaglibFactory$TldLocation 
(assert (not (= var1580 null-var3750)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1635 var973) ; Statement: $r5 := @caughtexception 
(assert (not (= var1635 null-var973)))
(define-const var3167 var2236 var1620-LOG) ; Statement: $r7 = <freemarker.ext.jsp.TaglibFactory: freemarker.log.Logger LOG> 
(define-const var328 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var328)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var328!1 String)
(assert (= var328!1 ""))
(assert true)
(define-const var157 String (append/672562846 var328!1 "Error while parsing TLD; skipping: ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while parsing TLD; skipping: ") 
(declare-const var328!2 String)
(assert (= var328!2 (str.++ var328!1 "Error while parsing TLD; skipping: ")))
(assert true)
(define-const var320 String (append/-1031950772 var157 (cast-from-var3750-to-var2172 var1580))) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var157!1 String)
(assert (str.prefixof var157 var157!1))
(assert true)
(define-const var1873 String (toString/-2075883882 var320)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (error/-784347014 var3167 var1873 (cast-from-var973-to-var207 var1635))) ; Statement: virtualinvoke $r7.<freemarker.log.Logger: void error(java.lang.String,java.lang.Throwable)>($r10, $r5) 

(declare-const var3167!1 var2236)
(declare-const var1873!1 String)
(declare-const var1635!1 var973)
(define-const var1650 var2540 (failedTldLocations/-1526934653 var1197)) ; Statement: $r11 = r0.<freemarker.ext.jsp.TaglibFactory: java.util.List failedTldLocations> 
 ; Statement: entermonitor $r11 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3650 var207) ; Statement: $r4 := @caughtexception 
(assert (not (= var3650 null-var207)))
(assert true) ; Non Conditional
 ; Statement: exitmonitor $r11 
(assert true) ; Non Conditional
 ; Statement: throw $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3750-to-var2172=([freemarker.ext.jsp.TaglibFactory$TldLocation], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), error/-784347014=([freemarker.log.Logger, java.lang.String, java.lang.Throwable], void), cast-from-var973-to-var207=([org.xml.sax.SAXException], java.lang.Throwable), failedTldLocations/-1526934653=([freemarker.ext.jsp.TaglibFactory], java.util.List)}
; {var1620=freemarker.ext.jsp.TaglibFactory, var1197=r0, var120=java.io.InputStream, var2415=r1, var3750=freemarker.ext.jsp.TaglibFactory$TldLocation, var1580=r2, var973=org.xml.sax.SAXException, var1635=$r5, var2236=freemarker.log.Logger, var3167=$r7, var328=$r6, var157=$r8, var2172=java.lang.Object, var320=$r9, var1873=$r10, var207=java.lang.Throwable, var2540=java.util.List, var1650=$r11, var3650=$r4}
; {freemarker.ext.jsp.TaglibFactory=var1620, r0=var1197, java.io.InputStream=var120, r1=var2415, freemarker.ext.jsp.TaglibFactory$TldLocation=var3750, r2=var1580, org.xml.sax.SAXException=var973, $r5=var1635, freemarker.log.Logger=var2236, $r7=var3167, $r6=var328, $r8=var157, java.lang.Object=var2172, $r9=var320, $r10=var1873, java.lang.Throwable=var207, java.util.List=var2540, $r11=var1650, $r4=var3650}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.ext.jsp.TaglibFactory;	r1 := @parameter0: java.io.InputStream;	r2 := @parameter1: freemarker.ext.jsp.TaglibFactory$TldLocation;	$r5 := @caughtexception;	$r7 = <freemarker.ext.jsp.TaglibFactory: freemarker.log.Logger LOG>;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Error while parsing TLD; skipping: ");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r7.<freemarker.log.Logger: void error(java.lang.String,java.lang.Throwable)>($r10, $r5);	$r11 = r0.<freemarker.ext.jsp.TaglibFactory: java.util.List failedTldLocations>;	entermonitor $r11;	$r4 := @caughtexception;	exitmonitor $r11;	throw $r4
;block_num 5