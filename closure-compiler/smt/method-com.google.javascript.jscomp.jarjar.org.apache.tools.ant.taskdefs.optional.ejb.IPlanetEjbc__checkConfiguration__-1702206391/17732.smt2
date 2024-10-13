(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var578 0)
(declare-sort var1658 0)
(declare-sort var1291 0)
(declare-sort var616 0)
(declare-sort var637 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun stdDescriptor/1631179044 (var578) var1658)
(declare-fun iasDescriptor/1631179044 (var578) var1658)
(declare-fun classpath/1631179044 (var578) String)
(declare-fun parser/1631179044 (var578) var616)
(declare-fun destDirectory/1631179044 (var578) var1658)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun length/-171891354 (String) Int)
(declare-fun var637-init () var637)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1645947725 (var637 var578 String) void)
(declare-const null-var578 var578)
(declare-const null-var1658 var1658)
(declare-const null-String String)
(declare-const null-var616 var616)
(declare-const var2528 var578) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc 
(assert (not (= var2528 null-var578)))
(define-const var1412 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1412)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1412!1 String)
(assert (= var1412!1 ""))
(define-const var2133 var1658 (stdDescriptor/1631179044 var2528)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File stdDescriptor> 
 ; Statement: if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File iasDescriptor> 
(assert (not (= var2133 null-var1658))) ; Cond: $r2 != null 
(define-const var3076 var1658 (iasDescriptor/1631179044 var2528)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File iasDescriptor> 
 ; Statement: if $r3 != null goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.lang.String classpath> 
(assert (not (= var3076 null-var1658))) ; Cond: $r3 != null 
(define-const var1305 String (classpath/1631179044 var2528)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.lang.String classpath> 
 ; Statement: if $r4 != null goto $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser parser> 
(assert (not (= var1305 null-String))) ; Cond: $r4 != null 
(define-const var2091 var616 (parser/1631179044 var2528)) ; Statement: $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser parser> 
 ; Statement: if $r5 != null goto $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory> 
(assert (not (= var2091 null-var616))) ; Cond: $r5 != null 
(define-const var1179 var1658 (destDirectory/1631179044 var2528)) ; Statement: $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory> 
 ; Statement: if $r6 != null goto $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory> 
(assert (not (not (= var1179 null-var1658)))) ; Negate: Cond: $r6 != null  
(assert true)
;(assert (append/672562846 var1412!1 "A destination directory must be specified.  ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A destination directory must be specified.  ") 
(declare-const var1412!2 String)
(assert (= var1412!2 (str.++ var1412!1 "A destination directory must be specified.  ")))
 ; Statement: goto [?= $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var195 Int (length/-171891354 var1412!2)) ; Statement: $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto return 
(assert (not (<= var195 0))) ; Negate: Cond: $i0 <= 0  
(define-const var3258 var637 var637-init) ; Statement: $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException 
(assert true)
(define-const var581 String (toString/-2075883882 var1412!2)) ; Statement: $r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1645947725 var3258 var2528 var581)) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc,java.lang.String)>(r1, $r10) 

(declare-const var3258!1 var637)
(declare-const var2528!1 var578)
(declare-const var581!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), stdDescriptor/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.io.File), iasDescriptor/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.io.File), classpath/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.lang.String), parser/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser), destDirectory/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.io.File), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), var637-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1645947725=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, java.lang.String], void)}
; {var578=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, var2528=r1, var1412=$r0, var1658=java.io.File, var2133=$r2, var3076=$r3, var1305=$r4, var1291=null_type, var616=com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser, var2091=$r5, var1179=$r6, var195=$i0, var637=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException, var3258=$r9, var581=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc=var578, r1=var2528, $r0=var1412, java.io.File=var1658, $r2=var2133, $r3=var3076, $r4=var1305, null_type=var1291, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser=var616, $r5=var2091, $r6=var1179, $i0=var195, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException=var637, $r9=var3258, $r10=var581}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File stdDescriptor>;	if $r2 != null goto $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File iasDescriptor>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File iasDescriptor>;	if $r3 != null goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.lang.String classpath>;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.lang.String classpath>;	if $r4 != null goto $r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser parser>;	$r5 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser parser>;	if $r5 != null goto $r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory>;	$r6 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory>;	if $r6 != null goto $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File destDirectory>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("A destination directory must be specified.  ");	goto [?= $i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>()];	$i0 = virtualinvoke $r0.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto return;	$r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException;	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcException: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc,java.lang.String)>(r1, $r10);	throw $r9
;block_num 8