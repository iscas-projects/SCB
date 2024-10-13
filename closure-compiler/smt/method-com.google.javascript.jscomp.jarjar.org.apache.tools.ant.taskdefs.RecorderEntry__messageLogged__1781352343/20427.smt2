(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var77 0)
(declare-sort var1713 0)
(declare-sort var596 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun log/-1290978133 (var77 String Int) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun getTask/-1794841133 (var1713) var596)
(declare-fun getMessage/-1178872666 (var1713) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun getPriority/1213607689 (var1713) Int)
(declare-const null-var77 var77)
(declare-const null-var1713 var1713)
(declare-const null-var596 var596)
(declare-const var1473 var77) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry 
(assert (not (= var1473 null-var77)))
(declare-const var3747 var1713) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent 
(assert (not (= var3747 null-var1713)))
(assert true)
;(assert (log/-1290978133 var1473 "--- MESSAGE LOGGED" 4)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void log(java.lang.String,int)>("--- MESSAGE LOGGED", 4) 

(declare-const var1473!1 var77)
(declare-const var951 String)
(declare-const var1663 Int)
(define-const var279 String String-init) ; Statement: $r1 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var279)) ; Statement: specialinvoke $r1.<java.lang.StringBuffer: void <init>()>() 

(declare-const var279!1 String)
(assert true)
(define-const var1986 var596 (getTask/-1794841133 var3747)) ; Statement: $r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task getTask()>() 
 ; Statement: if $r3 == null goto $r11 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: java.lang.String getMessage()>() 
(assert (= var1986 null-var596)) ; Cond: $r3 == null 
(assert true)
(define-const var2192 String (getMessage/-1178872666 var3747)) ; Statement: $r11 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: java.lang.String getMessage()>() 
(assert true)
;(assert (append/1560614132 var279!1 var2192)) ; Statement: virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11) 
(declare-const var279!2 String)
(assert (str.prefixof var279!1 var279!2))
(assert true)
(define-const var1648 String (toString/-222306083 var279!2)) ; Statement: $r12 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
(define-const var2358 Int (getPriority/1213607689 var3747)) ; Statement: $i3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: int getPriority()>() 
(assert true)
;(assert (log/-1290978133 var1473!1 var1648 var2358)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void log(java.lang.String,int)>($r12, $i3) 

(declare-const var1473!2 var77)
(declare-const var1648!1 String)
(declare-const var2358!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {log/-1290978133=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry, java.lang.String, int], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), getTask/-1794841133=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), getMessage/-1178872666=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), getPriority/1213607689=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent], int)}
; {var77=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry, var1473=r0, var1713=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent, var3747=r2, var951="--- MESSAGE LOGGED", var1663=4, var279=$r1, var596=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var1986=$r3, var2192=$r11, var1648=$r12, var2358=$i3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry=var77, r0=var1473, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent=var1713, r2=var3747, "--- MESSAGE LOGGED"=var951, 4=var1663, $r1=var279, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var596, $r3=var1986, $r11=var2192, $r12=var1648, $i3=var2358}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void log(java.lang.String,int)>("--- MESSAGE LOGGED", 4);	$r1 = new java.lang.StringBuffer;	specialinvoke $r1.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task getTask()>();	if $r3 == null goto $r11 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: java.lang.String getMessage()>();	$r11 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: java.lang.String getMessage()>();	virtualinvoke $r1.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r11);	$r12 = virtualinvoke $r1.<java.lang.StringBuffer: java.lang.String toString()>();	$i3 = virtualinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildEvent: int getPriority()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.RecorderEntry: void log(java.lang.String,int)>($r12, $i3);	return
;block_num 2