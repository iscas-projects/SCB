(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var609 0)
(declare-sort var1094 0)
(declare-sort var3246 0)
(declare-sort var486 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun value/1573095867 (var609) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getProject/416672769 (var486) var3246)
(declare-fun cast-from-var609-to-var486 (var609) var486)
(declare-fun replaceProperties/-453140326 (var3246 String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var609 var609)
(declare-const null-String String)
(declare-const var1279 var609) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement 
(assert (not (= var1279 null-var609)))
(declare-const var2266 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2266 null-String)))
(define-const var1725 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1725)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1725!1 String)
(assert (= var1725!1 ""))
(define-const var3601 String (value/1573095867 var1279)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: java.lang.String value> 
(assert true)
(define-const var132 String (append/672562846 var1725!1 var3601)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1725!2 String)
(assert (= var1725!2 (str.++ var1725!1 var3601)))
(assert true)
(define-const var765 var3246 (getProject/416672769 (cast-from-var609-to-var486 var1279))) ; Statement: $r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert true)
(define-const var2758 String (replaceProperties/-453140326 var765 var2266)) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String replaceProperties(java.lang.String)>(r3) 
(assert true)
(define-const var2339 String (append/672562846 var132 var2758)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var132!1 String)
(assert (= var132!1 (str.++ var132 var2758)))
(assert true)
(define-const var1758 String (toString/-2075883882 var2339)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1279!1 var609)
(assert (not (= var1279!1 null-var609)))
(assert (= (value/1573095867 var1279!1) var1758)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: java.lang.String value> = $r8 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), value/1573095867=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var609-to-var486=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), replaceProperties/-453140326=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var609=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement, var1279=r1, var2266=r3, var1094=null_type, var1725=$r0, var3601=$r2, var132=$r6, var3246=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var486=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var765=$r4, var2758=$r5, var2339=$r7, var1758=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement=var609, r1=var1279, r3=var2266, null_type=var1094, $r0=var1725, $r2=var3601, $r6=var132, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3246, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var486, $r4=var765, $r5=var2758, $r7=var2339, $r8=var1758}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement;	r3 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: java.lang.String value>;	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project: java.lang.String replaceProperties(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$TextElement: java.lang.String value> = $r8;	return
;block_num 1