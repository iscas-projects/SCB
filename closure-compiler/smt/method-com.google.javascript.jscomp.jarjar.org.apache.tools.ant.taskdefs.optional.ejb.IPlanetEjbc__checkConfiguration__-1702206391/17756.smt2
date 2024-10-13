(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1840 0)
(declare-sort var687 0)
(declare-sort var1113 0)
(declare-sort var2153 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun stdDescriptor/1631179044 (var1840) var687)
(declare-fun iasDescriptor/1631179044 (var1840) var687)
(declare-fun classpath/1631179044 (var1840) String)
(declare-fun parser/1631179044 (var1840) var2153)
(declare-fun destDirectory/1631179044 (var1840) var687)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun length/-171891354 (String) Int)
(declare-const null-var1840 var1840)
(declare-const null-var687 var687)
(declare-const null-String String)
(declare-const null-var2153 var2153)
(declare-const var3743 var1840) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc 
(assert (not (= var3743 null-var1840)))
(define-const var2555 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2555)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2555!1 String)
(assert (= var2555!1 ""))
(define-const var1465 var687 (stdDescriptor/1631179044 var3743)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File stdDescriptor> 
 ; Statement: if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File iasDescriptor> 
(assert (not (= var1465 null-var687))) ; Cond: $r2 != null 
(define-const var1375 var687 (iasDescriptor/1631179044 var3743)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File iasDescriptor> 
 ; Statement: if $r3 != null goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.lang.String classpath> 
(assert (not (= var1375 null-var687))) ; Cond: $r3 != null 
(define-const var702 String (classpath/1631179044 var3743)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.lang.String classpath> 
 ; Statement: if $r4 != null goto $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser parser> 
(assert (not (= var702 null-String))) ; Cond: $r4 != null 
(define-const var373 var2153 (parser/1631179044 var3743)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser parser> 
 ; Statement: if $r5 != null goto $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory> 
(assert (not (= var373 null-var2153))) ; Cond: $r5 != null 
(define-const var2143 var687 (destDirectory/1631179044 var3743)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory> 
 ; Statement: if $r6 != null goto $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory> 
(assert (not (not (= var2143 null-var687)))) ; Negate: Cond: $r6 != null  
(assert true)
;(assert (append/672562846 var2555!1 "A destination directory must be specified.  ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A destination directory must be specified.  ") 
(declare-const var2555!2 String)
(assert (= var2555!2 (str.++ var2555!1 "A destination directory must be specified.  ")))
 ; Statement: goto [?= $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var948 Int (length/-171891354 var2555!2)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto return 
(assert (<= var948 0)) ; Cond: $i0 <= 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), stdDescriptor/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.io.File), iasDescriptor/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.io.File), classpath/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.lang.String), parser/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser), destDirectory/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.io.File), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int)}
; {var1840=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, var3743=r1, var2555=$r0, var687=java.io.File, var1465=$r2, var1375=$r3, var702=$r4, var1113=null_type, var2153=com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser, var373=$r5, var2143=$r6, var948=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc=var1840, r1=var3743, $r0=var2555, java.io.File=var687, $r2=var1465, $r3=var1375, $r4=var702, null_type=var1113, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser=var2153, $r5=var373, $r6=var2143, $i0=var948}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File stdDescriptor>;	if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File iasDescriptor>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File iasDescriptor>;	if $r3 != null goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.lang.String classpath>;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.lang.String classpath>;	if $r4 != null goto $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser parser>;	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser parser>;	if $r5 != null goto $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory>;	$r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory>;	if $r6 != null goto $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A destination directory must be specified.  ");	goto [?= $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>()];	$i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto return;	return
;block_num 8