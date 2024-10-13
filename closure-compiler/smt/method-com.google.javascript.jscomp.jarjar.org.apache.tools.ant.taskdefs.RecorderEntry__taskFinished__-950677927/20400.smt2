(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2453 0)
(declare-sort var24 0)
(declare-sort var3036 0)
(declare-sort var1239 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTask/-1794841133 (var24) var3036)
(declare-fun append/-1031950772 (String var1239) String)
(declare-fun cast-from-var3036-to-var1239 (var3036) var1239)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1290978133 (var2453 String Int) void)
(declare-fun flush/599442243 (var2453) void)
(declare-const null-var2453 var2453)
(declare-const null-var24 var24)
(declare-const var886 var2453) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry 
(assert (not (= var886 null-var2453)))
(declare-const var2883 var24) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var2883 null-var24)))
(define-const var3007 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3007)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3007!1 String)
(assert (= var3007!1 ""))
(assert true)
(define-const var2407 String (append/672562846 var3007!1 "<<< TASK FINISHED -- ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<<< TASK FINISHED -- ") 
(declare-const var3007!2 String)
(assert (= var3007!2 (str.++ var3007!1 "<<< TASK FINISHED -- ")))
(assert true)
(define-const var3867 var3036 (getTask/-1794841133 var2883)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task getTask()>() 
(assert true)
(define-const var3599 String (append/-1031950772 var2407 (cast-from-var3036-to-var1239 var3867))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var2407!1 String)
(assert (str.prefixof var2407 var2407!1))
(assert true)
(define-const var753 String (toString/-2075883882 var3599)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1290978133 var886 var753 4)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void log(java.lang.String,int)>($r6, 4) 

(declare-const var886!1 var2453)
(declare-const var753!1 String)
(declare-const var2827 Int)
(assert true)
;(assert (flush/599442243 var886!1)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void flush()>() 

(declare-const var886!2 var2453)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTask/-1794841133=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3036-to-var1239=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1290978133=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry, java.lang.String, int], void), flush/599442243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry], void)}
; {var2453=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry, var886=r0, var24=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var2883=r2, var3007=$r1, var2407=$r4, var3036=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3867=$r3, var1239=java.lang.Object, var3599=$r5, var753=$r6, var2827=4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry=var2453, r0=var886, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var24, r2=var2883, $r1=var3007, $r4=var2407, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var3036, $r3=var3867, java.lang.Object=var1239, $r5=var3599, $r6=var753, 4=var2827}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<<< TASK FINISHED -- ");	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task getTask()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void log(java.lang.String,int)>($r6, 4);	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void flush()>();	return
;block_num 1