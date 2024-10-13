(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3951 0)
(declare-sort var316 0)
(declare-sort var2774 0)
(declare-sort var650 0)
(declare-sort var3633 0)
(declare-sort var2948 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getReader/-248274685 (var3951) var316)
(declare-fun value/1708253778 (var3951) String)
(declare-fun var650_toBoolean/-25100023 (String) Bool)
(declare-fun feature/1708253778 (var3951) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1039617696 (var2948 String Int) void)
(declare-fun cast-from-var3951-to-var2948 (var3951) var2948)
(declare-const null-var3951 var3951)
(declare-const null-String String)
(declare-const null-var3633 var3633)
(declare-const var2587 var3951) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports 
(assert (not (= var2587 null-var3951)))
(assert true)
(define-const var1427 var316 (getReader/-248274685 var2587)) ; Statement: r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: org.xml.sax.XMLReader getReader()>() 
(define-const var3530 String (value/1708253778 var2587)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String value> 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String value> 
(assert (not (= var3530 null-String))) ; Cond: $r2 != null 
(define-const var1142 String (value/1708253778 var2587)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String value> 
(define-const var3305 Bool (var650_toBoolean/-25100023 var1142)) ; Statement: $z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: boolean toBoolean(java.lang.String)>($r3) 
(define-const var3728 String (feature/1708253778 var2587)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String feature> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1845 var3633) ; Statement: $r5 := @caughtexception 
(assert (not (= var1845 null-var3633)))
(define-const var2539 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2539)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2539!1 String)
(assert (= var2539!1 ""))
(assert true)
(define-const var3908 String (append/672562846 var2539!1 "feature not supported: ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("feature not supported: ") 
(declare-const var2539!2 String)
(assert (= var2539!2 (str.++ var2539!1 "feature not supported: ")))
(define-const var3800 String (feature/1708253778 var2587)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String feature> 
(assert true)
(define-const var1163 String (append/672562846 var3908 var3800)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3908!1 String)
(assert (= var3908!1 (str.++ var3908 var3800)))
(assert true)
(define-const var2287 String (toString/-2075883882 var1163)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1039617696 (cast-from-var3951-to-var2948 var2587) var2287 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: void log(java.lang.String,int)>($r10, 3) 

(declare-const var2587!1 var3951)
(declare-const var2287!1 String)
(declare-const var773 Int)
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {getReader/-248274685=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports], org.xml.sax.XMLReader), value/1708253778=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports], java.lang.String), var650_toBoolean/-25100023=([java.lang.String], boolean), feature/1708253778=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1039617696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, java.lang.String, int], void), cast-from-var3951-to-var2948=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent)}
; {var3951=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports, var2587=r0, var316=org.xml.sax.XMLReader, var1427=r1, var3530=$r2, var2774=null_type, var1142=$r3, var650=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3305=$z0, var3728=$r4, var3633=org.xml.sax.SAXNotSupportedException, var1845=$r5, var2539=$r6, var3908=$r8, var3800=$r7, var1163=$r9, var2287=$r10, var2948=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var773=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports=var3951, r0=var2587, org.xml.sax.XMLReader=var316, r1=var1427, $r2=var3530, null_type=var2774, $r3=var1142, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var650, $z0=var3305, $r4=var3728, org.xml.sax.SAXNotSupportedException=var3633, $r5=var1845, $r6=var2539, $r8=var3908, $r7=var3800, $r9=var1163, $r10=var2287, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2948, 3=var773}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports;	r1 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: org.xml.sax.XMLReader getReader()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String value>;	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String value>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String value>;	$z0 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: boolean toBoolean(java.lang.String)>($r3);	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String feature>;	$r5 := @caughtexception;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("feature not supported: ");	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: java.lang.String feature>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ParserSupports: void log(java.lang.String,int)>($r10, 3);	return 0
;block_num 3