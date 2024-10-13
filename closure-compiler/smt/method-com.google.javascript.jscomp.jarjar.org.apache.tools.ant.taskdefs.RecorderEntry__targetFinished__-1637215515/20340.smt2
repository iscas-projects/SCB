(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3442 0)
(declare-sort var1331 0)
(declare-sort var1731 0)
(declare-sort var649 0)
(declare-sort var1296 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getTarget/-32916101 (var1331) var1731)
(declare-fun append/-1031950772 (String var649) String)
(declare-fun cast-from-var1731-to-var649 (var1731) var649)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1290978133 (var3442 String Int) void)
(declare-fun var1296_currentTimeMillis/630293680 () Int)
(declare-fun targetStartTime/-86263176 (var3442) Int)
(declare-fun var3442_formatTime/-217264036 (Int) String)
(declare-fun flush/599442243 (var3442) void)
(declare-const null-var3442 var3442)
(declare-const null-var1331 var1331)
(declare-const var545 var3442) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry 
(assert (not (= var545 null-var3442)))
(declare-const var1222 var1331) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var1222 null-var1331)))
(define-const var2546 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2546)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2546!1 String)
(assert (= var2546!1 ""))
(assert true)
(define-const var592 String (append/672562846 var2546!1 "<< TARGET FINISHED -- ")) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<< TARGET FINISHED -- ") 
(declare-const var2546!2 String)
(assert (= var2546!2 (str.++ var2546!1 "<< TARGET FINISHED -- ")))
(assert true)
(define-const var3193 var1731 (getTarget/-32916101 var1222)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getTarget()>() 
(assert true)
(define-const var825 String (append/-1031950772 var592 (cast-from-var1731-to-var649 var3193))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3) 
(declare-const var592!1 String)
(assert (str.prefixof var592 var592!1))
(assert true)
(define-const var218 String (toString/-2075883882 var825)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1290978133 var545 var218 4)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void log(java.lang.String,int)>($r6, 4) 

(declare-const var545!1 var3442)
(declare-const var218!1 String)
(declare-const var678 Int)
(define-const var3456 Int var1296_currentTimeMillis/630293680) ; Statement: $l1 = staticinvoke <java.lang.System: long currentTimeMillis()>() 
(define-const var2862 Int (targetStartTime/-86263176 var545!1)) ; Statement: $l0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: long targetStartTime> 
(define-const var1465 Int (- var3456 var2862)) ; Statement: $l2 = $l1 - $l0 
(define-const var2585 String (var3442_formatTime/-217264036 var1465)) ; Statement: r7 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: java.lang.String formatTime(long)>($l2) 
(define-const var297 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var297)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var297!1 String)
(assert (= var297!1 ""))
(assert true)
(define-const var3595 var1731 (getTarget/-32916101 var1222)) ; Statement: $r9 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getTarget()>() 
(assert true)
(define-const var1988 String (append/-1031950772 var297!1 (cast-from-var1731-to-var649 var3595))) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9) 
(declare-const var297!2 String)
(assert (str.prefixof var297!1 var297!2))
(assert true)
(define-const var726 String (append/672562846 var1988 ":  duration ")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":  duration ") 
(declare-const var1988!1 String)
(assert (= var1988!1 (str.++ var1988 ":  duration ")))
(assert true)
(define-const var3088 String (append/672562846 var726 var2585)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7) 
(declare-const var726!1 String)
(assert (= var726!1 (str.++ var726 var2585)))
(assert true)
(define-const var3116 String (toString/-2075883882 var3088)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1290978133 var545!1 var3116 3)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void log(java.lang.String,int)>($r13, 3) 

(declare-const var545!2 var3442)
(declare-const var3116!1 String)
(declare-const var206 Int)
(assert true)
;(assert (flush/599442243 var545!2)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void flush()>() 

(declare-const var545!3 var3442)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getTarget/-32916101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1731-to-var649=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1290978133=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry, java.lang.String, int], void), var1296_currentTimeMillis/630293680=([], long), targetStartTime/-86263176=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry], long), var3442_formatTime/-217264036=([long], java.lang.String), flush/599442243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry], void)}
; {var3442=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry, var545=r0, var1331=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var1222=r2, var2546=$r1, var592=$r4, var1731=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target, var3193=$r3, var649=java.lang.Object, var825=$r5, var218=$r6, var678=4, var1296=java.lang.System, var3456=$l1, var2862=$l0, var1465=$l2, var2585=r7, var297=$r8, var3595=$r9, var1988=$r10, var726=$r11, var3088=$r12, var3116=$r13, var206=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry=var3442, r0=var545, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var1331, r2=var1222, $r1=var2546, $r4=var592, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target=var1731, $r3=var3193, java.lang.Object=var649, $r5=var825, $r6=var218, 4=var678, java.lang.System=var1296, $l1=var3456, $l0=var2862, $l2=var1465, r7=var2585, $r8=var297, $r9=var3595, $r10=var1988, $r11=var726, $r12=var3088, $r13=var3116, 3=var206}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("<< TARGET FINISHED -- ");	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getTarget()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void log(java.lang.String,int)>($r6, 4);	$l1 = staticinvoke <java.lang.System: long currentTimeMillis()>();	$l0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: long targetStartTime>;	$l2 = $l1 - $l0;	r7 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: java.lang.String formatTime(long)>($l2);	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Target getTarget()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r9);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(":  duration ");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r7);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void log(java.lang.String,int)>($r13, 3);	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void flush()>();	return
;block_num 1