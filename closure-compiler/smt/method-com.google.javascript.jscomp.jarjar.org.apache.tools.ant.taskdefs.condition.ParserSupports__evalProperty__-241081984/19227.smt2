(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3170 0)
(declare-sort var2595 0)
(declare-sort var3116 0)
(declare-sort var925 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getReader/-248274685 (var3170) var2595)
(declare-fun property/1708253778 (var3170) String)
(declare-fun value/1708253778 (var3170) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1039617696 (var925 String Int) void)
(declare-fun cast-from-var3170-to-var925 (var3170) var925)
(declare-const null-var3170 var3170)
(declare-const null-var3116 var3116)
(declare-const var2558 var3170) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports 
(assert (not (= var2558 null-var3170)))
(assert true)
(define-const var3083 var2595 (getReader/-248274685 var2558)) ; Statement: r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: org.xml.sax.XMLReader getReader()>() 
(define-const var2329 String (property/1708253778 var2558)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String property> 
(define-const var1204 String (value/1708253778 var2558)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String value> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3687 var3116) ; Statement: $r4 := @caughtexception 
(assert (not (= var3687 null-var3116)))
(define-const var2972 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2972)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2972!1 String)
(assert (= var2972!1 ""))
(assert true)
(define-const var2926 String (append/672562846 var2972!1 "property not supported: ")) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("property not supported: ") 
(declare-const var2972!2 String)
(assert (= var2972!2 (str.++ var2972!1 "property not supported: ")))
(define-const var3825 String (property/1708253778 var2558)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String property> 
(assert true)
(define-const var1813 String (append/672562846 var2926 var3825)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2926!1 String)
(assert (= var2926!1 (str.++ var2926 var3825)))
(assert true)
(define-const var2271 String (toString/-2075883882 var1813)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1039617696 (cast-from-var3170-to-var925 var2558) var2271 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: void log(java.lang.String,int)>($r9, 3) 

(declare-const var2558!1 var3170)
(declare-const var2271!1 String)
(declare-const var1789 Int)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getReader/-248274685=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports], org.xml.sax.XMLReader), property/1708253778=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports], java.lang.String), value/1708253778=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1039617696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, java.lang.String, int], void), cast-from-var3170-to-var925=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent)}
; {var3170=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports, var2558=r0, var2595=org.xml.sax.XMLReader, var3083=r1, var2329=$r3, var1204=$r2, var3116=org.xml.sax.SAXNotSupportedException, var3687=$r4, var2972=$r5, var2926=$r7, var3825=$r6, var1813=$r8, var2271=$r9, var925=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var1789=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports=var3170, r0=var2558, org.xml.sax.XMLReader=var2595, r1=var3083, $r3=var2329, $r2=var1204, org.xml.sax.SAXNotSupportedException=var3116, $r4=var3687, $r5=var2972, $r7=var2926, $r6=var3825, $r8=var1813, $r9=var2271, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var925, 3=var1789}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports;	r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: org.xml.sax.XMLReader getReader()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String property>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String value>;	$r4 := @caughtexception;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("property not supported: ");	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String property>;	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: void log(java.lang.String,int)>($r9, 3);	return 0
;block_num 2