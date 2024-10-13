(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var765 0)
(declare-sort var2378 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun filename/2130057547 (var765) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun revision/2130057547 (var765) String)
(declare-fun prevRevision/2130057547 (var765) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var765 var765)
(declare-const null-String String)
(declare-const var2664 var765) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry 
(assert (not (= var2664 null-var765)))
(define-const var718 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var718)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var718!1 String)
(assert (= var718!1 ""))
(define-const var333 String (filename/2130057547 var2664)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry: java.lang.String filename> 
(assert true)
;(assert (append/672562846 var718!1 var333)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var718!2 String)
(assert (= var718!2 (str.++ var718!1 var333)))
(define-const var3352 String (revision/2130057547 var2664)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry: java.lang.String revision> 
 ; Statement: if $r3 != null goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry: java.lang.String prevRevision> 
(assert (not (not (= var3352 null-String)))) ; Negate: Cond: $r3 != null  
(assert true)
;(assert (append/672562846 var718!2 " was removed")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was removed") 
(declare-const var718!3 String)
(assert (= var718!3 (str.++ var718!2 " was removed")))
(define-const var724 String (prevRevision/2130057547 var2664)) ; Statement: $r12 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry: java.lang.String prevRevision> 
 ; Statement: if $r12 == null goto $r15 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= var724 null-String)) ; Cond: $r12 == null 
(assert true)
(define-const var673 String (toString/-2075883882 var718!3)) ; Statement: $r15 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), filename/2130057547=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), revision/2130057547=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry], java.lang.String), prevRevision/2130057547=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var765=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry, var2664=r1, var718=$r0, var333=$r2, var3352=$r3, var2378=null_type, var724=$r12, var673=$r15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry=var765, r1=var2664, $r0=var718, $r2=var333, $r3=var3352, null_type=var2378, $r12=var724, $r15=var673}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry: java.lang.String filename>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry: java.lang.String revision>;	if $r3 != null goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry: java.lang.String prevRevision>;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" was removed");	$r12 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.cvslib.CvsTagEntry: java.lang.String prevRevision>;	if $r12 == null goto $r15 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 3