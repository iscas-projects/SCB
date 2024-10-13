(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1846 0)
(declare-sort var28 0)
(declare-sort var3797 0)
(declare-sort var520 0)
(declare-sort var1211 0)
(declare-sort var1712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun validate/-848562913 (var1846) void)
(declare-fun property/114054978 (var1846) String)
(declare-fun var3797-init () var3797)
(declare-fun cast-from-var3797-to-var520 (var3797) var520)
(declare-fun <init>/-114067873 (var3797 var1211 Int) void)
(declare-fun cast-from-var1846-to-var1211 (var1846) var1211)
(declare-fun var1712-init () var1712)
(declare-fun <init>/-1917080009 (var1712 var520) void)
(declare-fun mode/114054978 (var1846) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1846 var1846)
(declare-const null-String String)
(declare-const var1740 var1846) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length 
(assert (not (= var1740 null-var1846)))
(assert true)
;(assert (validate/-848562913 var1740)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: void validate()>() 

(declare-const var1740!1 var1846)
(define-const var2130 String (property/114054978 var1740!1)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String property> 
 ; Statement: if $r1 != null goto $r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PropertyOutputStream 
(assert (not (not (= var2130 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var3067 var3797 var3797-init) ; Statement: $r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream 
(define-const var608 var520 (cast-from-var3797-to-var520 var3067)) ; Statement: $r9 = $r10 
(assert true)
;(assert (<init>/-114067873 var3067 (cast-from-var1846-to-var1211 var1740!1) 2)) ; Statement: specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task,int)>(r0, 2) 

(declare-const var3067!1 var3797)
(declare-const var1740!2 var1846)
(declare-const var3205 Int)
 ; Statement: goto [?= $r12 = new java.io.PrintStream] 
(assert true) ; Non Conditional
(define-const var1830 var1712 var1712-init) ; Statement: $r12 = new java.io.PrintStream 
(assert true)
;(assert (<init>/-1917080009 var1830 var608)) ; Statement: specialinvoke $r12.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r9) 

(declare-const var1830!1 var1712)
(declare-const var608!1 var520)
(define-const var2907 String (mode/114054978 var1740!2)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String mode> 
(define-const var3081 Int (- 1)) ; Statement: b2 = -1 
(assert true)
(define-const var1577 Int (hashCode/-467973558 var2907)) ; Statement: $i0 = virtualinvoke $r8.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -891985903: goto $z3 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 96673: goto $z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>("all");     case 3105281: goto $z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>("each");     default: goto tableswitch(b2) {     case 0: goto $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String string>;     case 1: goto $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$EachHandler;     case 2: goto $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AllHandler;     default: goto return; }; } 
(assert (and (not (= var1577 3105281)) (and (not (= var1577 96673)) (and (not (= var1577 (- 891985903))) true)))) ; Intersect: Negate: Cond: $i0 == 3105281   and Intersect: Negate: Cond: $i0 == 96673   and Intersect: Negate: Cond: $i0 == -891985903   and Non Conditional   
 ; Statement: tableswitch(b2) {     case 0: goto $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String string>;     case 1: goto $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$EachHandler;     case 2: goto $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AllHandler;     default: goto return; } 
(assert (and (not (= var3081 2)) (and (not (= var3081 1)) (and (not (= var3081 0)) true)))) ; Intersect: Negate: Cond: b2 == 2   and Intersect: Negate: Cond: b2 == 1   and Intersect: Negate: Cond: b2 == 0   and Non Conditional   
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {validate/-848562913=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length], void), property/114054978=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length], java.lang.String), var3797-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream), cast-from-var3797-to-var520=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream], java.io.OutputStream), <init>/-114067873=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, int], void), cast-from-var1846-to-var1211=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), var1712-init=([], java.io.PrintStream), <init>/-1917080009=([java.io.PrintStream, java.io.OutputStream], void), mode/114054978=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1846=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length, var1740=r0, var2130=$r1, var28=null_type, var3797=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream, var3067=$r10, var520=java.io.OutputStream, var608=$r9, var1211=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3205=2, var1712=java.io.PrintStream, var1830=$r12, var2907=$r8, var3081=b2, var1577=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length=var1846, r0=var1740, $r1=var2130, null_type=var28, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream=var3797, $r10=var3067, java.io.OutputStream=var520, $r9=var608, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1211, 2=var3205, java.io.PrintStream=var1712, $r12=var1830, $r8=var2907, b2=var3081, $i0=var1577}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: void validate()>();	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String property>;	if $r1 != null goto $r11 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.PropertyOutputStream;	$r10 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream;	$r9 = $r10;	specialinvoke $r10.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.LogOutputStream: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task,int)>(r0, 2);	goto [?= $r12 = new java.io.PrintStream];	$r12 = new java.io.PrintStream;	specialinvoke $r12.<java.io.PrintStream: void <init>(java.io.OutputStream)>($r9);	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String mode>;	b2 = -1;	$i0 = virtualinvoke $r8.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -891985903: goto $z3 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>("string");     case 96673: goto $z2 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>("all");     case 3105281: goto $z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>("each");     default: goto tableswitch(b2) {     case 0: goto $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String string>;     case 1: goto $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$EachHandler;     case 2: goto $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AllHandler;     default: goto return; }; };	tableswitch(b2) {     case 0: goto $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length: java.lang.String string>;     case 1: goto $r13 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$EachHandler;     case 2: goto $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Length$AllHandler;     default: goto return; };	return
;block_num 5