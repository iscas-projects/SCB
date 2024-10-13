(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1058 0)
(declare-sort var1033 0)
(declare-sort var2553 0)
(declare-sort var3484 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTask/-1794841133 (var1033) var2553)
(declare-fun append/-1031950772 (String var3484) String)
(declare-fun cast-from-var2553-to-var3484 (var2553) var3484)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1290978133 (var1058 String Int) void)
(declare-const null-var1058 var1058)
(declare-const null-var1033 var1033)
(declare-const var2462 var1058) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry 
(assert (not (= var2462 null-var1058)))
(declare-const var1276 var1033) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var1276 null-var1033)))
(define-const var3221 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3221)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3221!1 String)
(assert (= var3221!1 ""))
(assert true)
(define-const var3550 String (append/672562846 var3221!1 ">>> TASK STARTED -- ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">>> TASK STARTED -- ") 
(declare-const var3221!2 String)
(assert (= var3221!2 (str.++ var3221!1 ">>> TASK STARTED -- ")))
(assert true)
(define-const var2063 var2553 (getTask/-1794841133 var1276)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task getTask()>() 
(assert true)
(define-const var1867 String (append/-1031950772 var3550 (cast-from-var2553-to-var3484 var2063))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var3550!1 String)
(assert (str.prefixof var3550 var3550!1))
(assert true)
(define-const var1384 String (toString/-2075883882 var1867)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1290978133 var2462 var1384 4)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void log(java.lang.String,int)>($r6, 4) 

(declare-const var2462!1 var1058)
(declare-const var1384!1 String)
(declare-const var2236 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTask/-1794841133=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2553-to-var3484=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1290978133=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry, java.lang.String, int], void)}
; {var1058=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry, var2462=r0, var1033=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var1276=r2, var3221=$r1, var3550=$r4, var2553=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2063=$r3, var3484=java.lang.Object, var1867=$r5, var1384=$r6, var2236=4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry=var1058, r0=var2462, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var1033, r2=var1276, $r1=var3221, $r4=var3550, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var2553, $r3=var2063, java.lang.Object=var3484, $r5=var1867, $r6=var1384, 4=var2236}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">>> TASK STARTED -- ");	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task getTask()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void log(java.lang.String,int)>($r6, 4);	return
;block_num 1