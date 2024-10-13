(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3411 0)
(declare-sort var2832 0)
(declare-sort var1467 0)
(declare-sort var3111 0)
(declare-sort var1736 0)
(declare-sort var3567 0)
(declare-sort var920 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/-848562913 (var3411) void)
(declare-fun property/114054978 (var3411) String)
(declare-fun var1467-init () var1467)
(declare-fun cast-from-var1467-to-var3111 (var1467) var3111)
(declare-fun getProject/416672769 (var3567) var1736)
(declare-fun cast-from-var3411-to-var3567 (var3411) var3567)
(declare-fun <init>/-291507523 (var1467 var1736 String) void)
(declare-fun var920-init () var920)
(declare-fun <init>/-1917080009 (var920 var3111) void)
(declare-fun mode/114054978 (var3411) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var3411 var3411)
(declare-const null-String String)
(declare-const var79 var3411) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length 
(assert (not (= var79 null-var3411)))
(assert true)
;(assert (validate/-848562913 var79)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: void validate()>() 

(declare-const var79!1 var3411)
(define-const var2780 String (property/114054978 var79!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String property> 
 ; Statement: if $r1 != null goto $r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PropertyOutputStream 
(assert (not (= var2780 null-String))) ; Cond: $r1 != null 
(define-const var1308 var1467 var1467-init) ; Statement: $r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PropertyOutputStream 
(define-const var204 var3111 (cast-from-var1467-to-var3111 var1308)) ; Statement: $r9 = $r11 
(assert true)
(define-const var3212 var1736 (getProject/416672769 (cast-from-var3411-to-var3567 var79!1))) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var281 String (property/114054978 var79!1)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String property> 
(assert true)
;(assert (<init>/-291507523 var1308 var3212 var281)) ; Statement: specialinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PropertyOutputStream: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String)>($r3, $r2) 

(declare-const var1308!1 var1467)
(declare-const var3212!1 var1736)
(declare-const var281!1 String)
(assert true) ; Non Conditional
(define-const var1723 var920 var920-init) ; Statement: $r12 = new java.io.PrintStream 
(assert true)
;(assert (<init>/-1917080009 var1723 var204)) ; Statement: specialinvoke $r12.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r9) 

(declare-const var1723!1 var920)
(declare-const var204!1 var3111)
(define-const var2965 String (mode/114054978 var79!1)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String mode> 
(define-const var3874 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var3951 Int (hashCode/-467973558 var2965)) ; Statement: $i0 = virtualinvoke $r8.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -891985903: goto $z3 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 96673: goto $z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>("all");     case 3105281: goto $z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>("each");     default: goto tableswitch(b2) {     case 0: goto $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String string>;     case 1: goto $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$EachHandler;     case 2: goto $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AllHandler;     default: goto return; }; } 
(assert (and (not (= var3951 3105281)) (and (not (= var3951 96673)) (and (not (= var3951 (- 891985903))) true)))) ; Intersect: Negate: Cond: $i0 == 3105281   and Intersect: Negate: Cond: $i0 == 96673   and Intersect: Negate: Cond: $i0 == -891985903   and Non Conditional   
 ; Statement: tableswitch(b2) {     case 0: goto $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String string>;     case 1: goto $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$EachHandler;     case 2: goto $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AllHandler;     default: goto return; } 
(assert (and (not (= var3874 2)) (and (not (= var3874 1)) (and (not (= var3874 0)) true)))) ; Intersect: Negate: Cond: b2 == 2   and Intersect: Negate: Cond: b2 == 1   and Intersect: Negate: Cond: b2 == 0   and Non Conditional   
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/-848562913=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length], void), property/114054978=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length], java.lang.String), var1467-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PropertyOutputStream), cast-from-var1467-to-var3111=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PropertyOutputStream], java.io.OutputStream), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var3411-to-var3567=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-291507523=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PropertyOutputStream, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], void), var920-init=([], java.io.PrintStream), <init>/-1917080009=([java.io.PrintStream, java.io.OutputStream], void), mode/114054978=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var3411=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length, var79=r0, var2780=$r1, var2832=null_type, var1467=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PropertyOutputStream, var1308=$r11, var3111=java.io.OutputStream, var204=$r9, var1736=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3567=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3212=$r3, var281=$r2, var920=java.io.PrintStream, var1723=$r12, var2965=$r8, var3874=b2, var3951=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length=var3411, r0=var79, $r1=var2780, null_type=var2832, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PropertyOutputStream=var1467, $r11=var1308, java.io.OutputStream=var3111, $r9=var204, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1736, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3567, $r3=var3212, $r2=var281, java.io.PrintStream=var920, $r12=var1723, $r8=var2965, b2=var3874, $i0=var3951}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: void validate()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String property>;	if $r1 != null goto $r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PropertyOutputStream;	$r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PropertyOutputStream;	$r9 = $r11;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String property>;	specialinvoke $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PropertyOutputStream: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String)>($r3, $r2);	$r12 = new java.io.PrintStream;	specialinvoke $r12.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r9);	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String mode>;	b2 = -1;	$i0 = virtualinvoke $r8.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -891985903: goto $z3 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 96673: goto $z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>("all");     case 3105281: goto $z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>("each");     default: goto tableswitch(b2) {     case 0: goto $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String string>;     case 1: goto $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$EachHandler;     case 2: goto $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AllHandler;     default: goto return; }; };	tableswitch(b2) {     case 0: goto $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String string>;     case 1: goto $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$EachHandler;     case 2: goto $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AllHandler;     default: goto return; };	return
;block_num 5