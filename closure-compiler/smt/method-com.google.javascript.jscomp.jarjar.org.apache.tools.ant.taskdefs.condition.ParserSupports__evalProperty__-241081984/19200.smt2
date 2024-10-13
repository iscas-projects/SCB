(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1149 0)
(declare-sort var1756 0)
(declare-sort var2978 0)
(declare-sort var2868 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getReader/-248274685 (var1149) var1756)
(declare-fun property/1708253778 (var1149) String)
(declare-fun value/1708253778 (var1149) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1039617696 (var2868 String Int) void)
(declare-fun cast-from-var1149-to-var2868 (var1149) var2868)
(declare-const null-var1149 var1149)
(declare-const null-var2978 var2978)
(declare-const var383 var1149) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports 
(assert (not (= var383 null-var1149)))
(assert true)
(define-const var1308 var1756 (getReader/-248274685 var383)) ; Statement: r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: org.xml.sax.XMLReader getReader()>() 
(define-const var1770 String (property/1708253778 var383)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String property> 
(define-const var3349 String (value/1708253778 var383)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String value> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var502 var2978) ; Statement: $r10 := @caughtexception 
(assert (not (= var502 null-var2978)))
(define-const var1984 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1984)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1984!1 String)
(assert (= var1984!1 ""))
(assert true)
(define-const var2136 String (append/672562846 var1984!1 "property not recognized: ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("property not recognized: ") 
(declare-const var1984!2 String)
(assert (= var1984!2 (str.++ var1984!1 "property not recognized: ")))
(define-const var610 String (property/1708253778 var383)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String property> 
(assert true)
(define-const var231 String (append/672562846 var2136 var610)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var2136!1 String)
(assert (= var2136!1 (str.++ var2136 var610)))
(assert true)
(define-const var3047 String (toString/-2075883882 var231)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1039617696 (cast-from-var1149-to-var2868 var383) var3047 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: void log(java.lang.String,int)>($r15, 3) 

(declare-const var383!1 var1149)
(declare-const var3047!1 String)
(declare-const var819 Int)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getReader/-248274685=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports], org.xml.sax.XMLReader), property/1708253778=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports], java.lang.String), value/1708253778=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1039617696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, java.lang.String, int], void), cast-from-var1149-to-var2868=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent)}
; {var1149=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports, var383=r0, var1756=org.xml.sax.XMLReader, var1308=r1, var1770=$r3, var3349=$r2, var2978=org.xml.sax.SAXNotRecognizedException, var502=$r10, var1984=$r11, var2136=$r13, var610=$r12, var231=$r14, var3047=$r15, var2868=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var819=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports=var1149, r0=var383, org.xml.sax.XMLReader=var1756, r1=var1308, $r3=var1770, $r2=var3349, org.xml.sax.SAXNotRecognizedException=var2978, $r10=var502, $r11=var1984, $r13=var2136, $r12=var610, $r14=var231, $r15=var3047, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2868, 3=var819}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports;	r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: org.xml.sax.XMLReader getReader()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String property>;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String value>;	$r10 := @caughtexception;	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("property not recognized: ");	$r12 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String property>;	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: void log(java.lang.String,int)>($r15, 3);	return 0
;block_num 2