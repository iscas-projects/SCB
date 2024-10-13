(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2840 0)
(declare-sort var1435 0)
(declare-sort var631 0)
(declare-sort var1815 0)
(declare-sort var3855 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTarget/-32916101 (var1435) var631)
(declare-fun append/-1031950772 (String var1815) String)
(declare-fun cast-from-var631-to-var1815 (var631) var1815)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1290978133 (var2840 String Int) void)
(declare-fun arr-var1815-init () (Array Int var1815))
(declare-fun getName/589876253 (var631) String)
(declare-fun cast-from-String-to-var1815 (String) var1815)
(declare-fun String_format/1339386452 (String (Array Int var1815)) String)
(declare-fun var3855_currentTimeMillis/630293680 () Int)
(declare-fun targetStartTime/-86263176 (var2840) Int)
(declare-const null-var2840 var2840)
(declare-const null-var1435 var1435)
(declare-const null-__Array__Int__var1815__ (Array Int var1815))
(declare-const var1564 var2840) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry 
(assert (not (= var1564 null-var2840)))
(declare-const var2666 var1435) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var2666 null-var1435)))
(define-const var834 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var834)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var834!1 String)
(assert (= var834!1 ""))
(assert true)
(define-const var698 String (append/672562846 var834!1 ">> TARGET STARTED -- ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">> TARGET STARTED -- ") 
(declare-const var834!2 String)
(assert (= var834!2 (str.++ var834!1 ">> TARGET STARTED -- ")))
(assert true)
(define-const var2267 var631 (getTarget/-32916101 var2666)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getTarget()>() 
(assert true)
(define-const var3094 String (append/-1031950772 var698 (cast-from-var631-to-var1815 var2267))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var698!1 String)
(assert (str.prefixof var698 var698!1))
(assert true)
(define-const var2951 String (toString/-2075883882 var3094)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1290978133 var1564 var2951 4)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void log(java.lang.String,int)>($r6, 4) 

(declare-const var1564!1 var2840)
(declare-const var2951!1 String)
(declare-const var2790 Int)
(define-const var1561 (Array Int var1815) arr-var1815-init) ; Statement: $r7 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var820 var631 (getTarget/-32916101 var2666)) ; Statement: $r8 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getTarget()>() 
(assert true)
(define-const var1109 String (getName/589876253 var820)) ; Statement: $r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String getName()>() 
(declare-const var1561!1 (Array Int var1815))
(assert (not (= var1561!1 null-__Array__Int__var1815__)))
(assert (= (select var1561!1 0) (cast-from-String-to-var1815 var1109))) ; Statement: $r7[0] = $r9 
(define-const var1506 String (String_format/1339386452 "%n%s:" var1561!1)) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s:", $r7) 
(assert true)
;(assert (log/-1290978133 var1564!1 var1506 2)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void log(java.lang.String,int)>($r10, 2) 

(declare-const var1564!2 var2840)
(declare-const var1506!1 String)
(declare-const var2560 Int)
(define-const var3083 Int var3855_currentTimeMillis/630293680) ; Statement: $l0 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(declare-const var1564!3 var2840)
(assert (not (= var1564!3 null-var2840)))
(assert (= (targetStartTime/-86263176 var1564!3) var3083)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: long targetStartTime> = $l0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTarget/-32916101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var631-to-var1815=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1290978133=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry, java.lang.String, int], void), arr-var1815-init=([], java.lang.Object[]), getName/589876253=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], java.lang.String), cast-from-String-to-var1815=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), var3855_currentTimeMillis/630293680=([], long), targetStartTime/-86263176=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry], long)}
; {var2840=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry, var1564=r0, var1435=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var2666=r2, var834=$r1, var698=$r4, var631=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var2267=$r3, var1815=java.lang.Object, var3094=$r5, var2951=$r6, var2790=4, var1561=$r7, var820=$r8, var1109=$r9, var1506=$r10, var2560=2, var3855=java.lang.System, var3083=$l0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry=var2840, r0=var1564, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var1435, r2=var2666, $r1=var834, $r4=var698, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var631, $r3=var2267, java.lang.Object=var1815, $r5=var3094, $r6=var2951, 4=var2790, $r7=var1561, $r8=var820, $r9=var1109, $r10=var1506, 2=var2560, java.lang.System=var3855, $l0=var3083}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(">> TARGET STARTED -- ");	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getTarget()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void log(java.lang.String,int)>($r6, 4);	$r7 = newarray (java.lang.Object)[1];	$r8 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getTarget()>();	$r9 = virtualinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target: java.lang.String getName()>();	$r7[0] = $r9;	$r10 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("%n%s:", $r7);	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void log(java.lang.String,int)>($r10, 2);	$l0 = staticinvoke <java.lang.System: long currentTimeMillis()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: long targetStartTime> = $l0;	return
;block_num 1