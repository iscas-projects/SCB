(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var624 0)
(declare-sort var885 0)
(declare-sort var1251 0)
(declare-sort var449 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var885-init () var885)
(declare-fun <init>/964458484 (var885) void)
(declare-fun file/980999332 (var624) var1251)
(declare-fun key/980999332 (var624) String)
(declare-fun value/980999332 (var624) String)
(declare-fun setProperty/703705272 (var885 String String) var449)
(declare-const null-var624 var624)
(declare-const null-var1251 var1251)
(declare-const var3214 var624) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry 
(assert (not (= var3214 null-var624)))
(define-const var1930 var885 var885-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var1930)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var1930!1 var885)
(define-const var1036 var1251 (file/980999332 var3214)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: java.io.File file> 
 ; Statement: if $r2 == null goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: java.lang.String key> 
(assert (= var1036 null-var1251)) ; Cond: $r2 == null 
(define-const var1239 String (key/980999332 var3214)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: java.lang.String key> 
(define-const var2360 String (value/980999332 var3214)) ; Statement: $r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: java.lang.String value> 
(assert true)
;(assert (setProperty/703705272 var1930!1 var1239 var2360)) ; Statement: virtualinvoke $r0.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>($r4, $r3) 

(declare-const var1930!2 var885)
(declare-const var1239!1 String)
(declare-const var2360!1 String)
(assert true) ; Non Conditional
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var885-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), file/980999332=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry], java.io.File), key/980999332=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry], java.lang.String), value/980999332=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry], java.lang.String), setProperty/703705272=([java.util.Properties, java.lang.String, java.lang.String], java.lang.Object)}
; {var624=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry, var3214=r1, var885=java.util.Properties, var1930=$r0, var1251=java.io.File, var1036=$r2, var1239=$r4, var2360=$r3, var449=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry=var624, r1=var3214, java.util.Properties=var885, $r0=var1930, java.io.File=var1251, $r2=var1036, $r4=var1239, $r3=var2360, java.lang.Object=var449}
;seq 
;cnt {}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry;	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: java.io.File file>;	if $r2 == null goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: java.lang.String key>;	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: java.lang.String key>;	$r3 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$ReleaseInfoEntry: java.lang.String value>;	virtualinvoke $r0.<java.util.Properties: java.lang.Object setProperty(java.lang.String,java.lang.String)>($r4, $r3);	return $r0
;block_num 3