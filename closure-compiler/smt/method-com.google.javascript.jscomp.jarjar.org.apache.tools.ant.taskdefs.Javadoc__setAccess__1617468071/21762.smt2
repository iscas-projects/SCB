(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3119 0)
(declare-sort var3122 0)
(declare-sort var2641 0)
(declare-sort var359 0)
(declare-sort var2769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cmd/1653374714 (var3119) var2641)
(declare-fun createArgument/-916843187 (var2641) var359)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getValue/-1445752687 (var2769) String)
(declare-fun cast-from-var3122-to-var2769 (var3122) var2769)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun setValue/2115864135 (var359 String) void)
(declare-const null-var3119 var3119)
(declare-const null-var3122 var3122)
(declare-const var2905 var3119) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc 
(assert (not (= var2905 null-var3119)))
(declare-const var69 var3122) ; Statement: r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$AccessType 
(assert (not (= var69 null-var3122)))
(define-const var940 var2641 (cmd/1653374714 var2905)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmd> 
(assert true)
(define-const var2232 var359 (createArgument/-916843187 var940)) ; Statement: $r8 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>() 
(define-const var1719 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1719)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1719!1 String)
(assert (= var1719!1 ""))
(assert true)
(define-const var1533 String (append/672562846 var1719!1 "-")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-") 
(declare-const var1719!2 String)
(assert (= var1719!2 (str.++ var1719!1 "-")))
(assert true)
(define-const var3380 String (getValue/-1445752687 (cast-from-var3122-to-var2769 var69))) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$AccessType: java.lang.String getValue()>() 
(assert true)
(define-const var221 String (append/672562846 var1533 var3380)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1533!1 String)
(assert (= var1533!1 (str.++ var1533 var3380)))
(assert true)
(define-const var1372 String (toString/-2075883882 var221)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (setValue/2115864135 var2232 var1372)) ; Statement: virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r7) 

(declare-const var2232!1 var359)
(declare-const var1372!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cmd/1653374714=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline), createArgument/-916843187=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var3122-to-var2769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$AccessType], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), setValue/2115864135=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, java.lang.String], void)}
; {var3119=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, var2905=r0, var3122=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$AccessType, var69=r3, var2641=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline, var940=$r1, var359=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument, var2232=$r8, var1719=$r2, var1533=$r5, var2769=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var3380=$r4, var221=$r6, var1372=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc=var3119, r0=var2905, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$AccessType=var3122, r3=var69, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline=var2641, $r1=var940, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument=var359, $r8=var2232, $r2=var1719, $r5=var1533, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var2769, $r4=var3380, $r6=var221, $r7=var1372}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc;	r3 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$AccessType;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline cmd>;	$r8 = virtualinvoke $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument createArgument()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-");	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc$AccessType: java.lang.String getValue()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Argument: void setValue(java.lang.String)>($r7);	return
;block_num 1