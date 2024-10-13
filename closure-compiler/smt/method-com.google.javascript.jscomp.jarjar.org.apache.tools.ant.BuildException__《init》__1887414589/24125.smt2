(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1684 0)
(declare-sort var616 0)
(declare-sort var190 0)
(declare-sort var557 0)
(declare-sort var2483 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String_format/1339386452 (String (Array Int var190)) String)
(declare-fun <init>/-1084991535 (var557 String) void)
(declare-fun cast-from-var1684-to-var557 (var1684) var557)
(declare-fun location/-991957120 (var1684) var2483)
(declare-const null-var1684 var1684)
(declare-const null-String String)
(declare-const null-__Array__Int__var190__ (Array Int var190))
(declare-const var2483-UNKNOWN_LOCATION var2483)
(declare-const var1832 var1684) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (not (= var1832 null-var1684)))
(declare-const var3998 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3998 null-String)))
(declare-const var3361 (Array Int var190)) ; Statement: r2 := @parameter1: java.lang.Object[] 
(assert (not (= var3361 null-__Array__Int__var190__)))
(define-const var3404 String (String_format/1339386452 var3998 var3361)) ; Statement: $r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r1, r2) 
(assert true)
;(assert (<init>/-1084991535 (cast-from-var1684-to-var557 var1832) var3404)) ; Statement: specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r3) 

(declare-const var1832!1 var1684)
(declare-const var3404!1 String)
(define-const var1182 var2483 var2483-UNKNOWN_LOCATION) ; Statement: $r4 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location UNKNOWN_LOCATION> 
(declare-const var1832!2 var1684)
(assert (not (= var1832!2 null-var1684)))
(assert (= (location/-991957120 var1832!2) var1182)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location location> = $r4 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1084991535=([java.lang.RuntimeException, java.lang.String], void), cast-from-var1684-to-var557=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException], java.lang.RuntimeException), location/-991957120=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)}
; {var1684=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1832=r0, var3998=r1, var616=null_type, var190=java.lang.Object, var3361=r2, var3404=$r3, var557=java.lang.RuntimeException, var2483=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1182=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1684, r0=var1832, r1=var3998, null_type=var616, java.lang.Object=var190, r2=var3361, $r3=var3404, java.lang.RuntimeException=var557, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2483, $r4=var1182}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.Object[];	$r3 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(r1, r2);	specialinvoke r0.<java.lang.RuntimeException: void <init>(java.lang.String)>($r3);	$r4 = <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location UNKNOWN_LOCATION>;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location location> = $r4;	return
;block_num 1