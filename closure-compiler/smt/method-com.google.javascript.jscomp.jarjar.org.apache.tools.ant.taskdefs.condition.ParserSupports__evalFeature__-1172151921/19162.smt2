(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2194 0)
(declare-sort var2312 0)
(declare-sort var1389 0)
(declare-sort var3985 0)
(declare-sort var2860 0)
(declare-sort var2822 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getReader/-248274685 (var2194) var2312)
(declare-fun value/1708253778 (var2194) String)
(declare-fun var3985_toBoolean/-25100023 (String) Bool)
(declare-fun feature/1708253778 (var2194) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1039617696 (var2822 String Int) void)
(declare-fun cast-from-var2194-to-var2822 (var2194) var2822)
(declare-const null-var2194 var2194)
(declare-const null-String String)
(declare-const null-var2860 var2860)
(declare-const var849 var2194) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports 
(assert (not (= var849 null-var2194)))
(assert true)
(define-const var312 var2312 (getReader/-248274685 var849)) ; Statement: r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: org.xml.sax.XMLReader getReader()>() 
(define-const var1533 String (value/1708253778 var849)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String value> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String value> 
(assert (not (= var1533 null-String))) ; Cond: $r2 != null 
(define-const var195 String (value/1708253778 var849)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String value> 
(define-const var2594 Bool (var3985_toBoolean/-25100023 var195)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: boolean toBoolean(java.lang.String)>($r3) 
(define-const var385 String (feature/1708253778 var849)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String feature> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2206 var2860) ; Statement: $r11 := @caughtexception 
(assert (not (= var2206 null-var2860)))
(define-const var3244 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3244)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3244!1 String)
(assert (= var3244!1 ""))
(assert true)
(define-const var1091 String (append/672562846 var3244!1 "feature not recognized: ")) ; Statement: $r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("feature not recognized: ") 
(declare-const var3244!2 String)
(assert (= var3244!2 (str.++ var3244!1 "feature not recognized: ")))
(define-const var3118 String (feature/1708253778 var849)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String feature> 
(assert true)
(define-const var3475 String (append/672562846 var1091 var3118)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13) 
(declare-const var1091!1 String)
(assert (= var1091!1 (str.++ var1091 var3118)))
(assert true)
(define-const var1986 String (toString/-2075883882 var3475)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1039617696 (cast-from-var2194-to-var2822 var849) var1986 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: void log(java.lang.String,int)>($r16, 3) 

(declare-const var849!1 var2194)
(declare-const var1986!1 String)
(declare-const var3502 Int)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getReader/-248274685=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports], org.xml.sax.XMLReader), value/1708253778=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports], java.lang.String), var3985_toBoolean/-25100023=([java.lang.String], boolean), feature/1708253778=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1039617696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, java.lang.String, int], void), cast-from-var2194-to-var2822=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent)}
; {var2194=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports, var849=r0, var2312=org.xml.sax.XMLReader, var312=r1, var1533=$r2, var1389=null_type, var195=$r3, var3985=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2594=$z0, var385=$r4, var2860=org.xml.sax.SAXNotRecognizedException, var2206=$r11, var3244=$r12, var1091=$r14, var3118=$r13, var3475=$r15, var1986=$r16, var2822=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3502=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports=var2194, r0=var849, org.xml.sax.XMLReader=var2312, r1=var312, $r2=var1533, null_type=var1389, $r3=var195, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3985, $z0=var2594, $r4=var385, org.xml.sax.SAXNotRecognizedException=var2860, $r11=var2206, $r12=var3244, $r14=var1091, $r13=var3118, $r15=var3475, $r16=var1986, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2822, 3=var3502}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports;	r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: org.xml.sax.XMLReader getReader()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String value>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String value>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String value>;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: boolean toBoolean(java.lang.String)>($r3);	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String feature>;	$r11 := @caughtexception;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r14 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("feature not recognized: ");	$r13 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String feature>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: void log(java.lang.String,int)>($r16, 3);	return 0
;block_num 3