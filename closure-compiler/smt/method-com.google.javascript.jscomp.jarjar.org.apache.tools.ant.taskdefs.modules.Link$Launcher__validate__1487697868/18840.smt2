(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var606 0)
(declare-sort var2411 0)
(declare-sort var523 0)
(declare-sort var1128 0)
(declare-sort var3013 0)
(declare-sort var2287 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-2083790041 (var606) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var523-init () var523)
(declare-fun this$0/-2083790041 (var606) var1128)
(declare-fun getLocation/851674571 (var2287) var3013)
(declare-fun cast-from-var1128-to-var2287 (var1128) var2287)
(declare-fun <init>/-469549130 (var523 String var3013) void)
(declare-const null-var606 var606)
(declare-const null-String String)
(declare-const var1797 var606) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher 
(assert (not (= var1797 null-var606)))
(define-const var3598 String (name/-2083790041 var1797)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String name> 
 ; Statement: if $r1 == null goto $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (not (= var3598 null-String))) ; Negate: Cond: $r1 == null  
(define-const var1975 String (name/-2083790041 var1797)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String name> 
(assert true)
(define-const var3477 Bool (isEmpty/-1285796103 var1975)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String module> 
(assert (not (= (ite var3477 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var538 var523 var523-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1663 var1128 (this$0/-2083790041 var1797)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link this$0> 
(assert true)
(define-const var2322 var3013 (getLocation/851674571 (cast-from-var1128-to-var2287 var1663))) ; Statement: $r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var538 "Launcher must have a name" var2322)) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>("Launcher must have a name", $r4) 

(declare-const var538!1 var523)
(declare-const var735 String)
(declare-const var2322!1 var3013)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-2083790041=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), var523-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), this$0/-2083790041=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1128-to-var2287=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var606=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher, var1797=r0, var3598=$r1, var2411=null_type, var1975=$r5, var3477=$z0, var523=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var538=$r2, var1128=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link, var1663=$r3, var3013=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2287=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2322=$r4, var735="Launcher must have a name"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher=var606, r0=var1797, $r1=var3598, null_type=var2411, $r5=var1975, $z0=var3477, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var523, $r2=var538, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link=var1128, $r3=var1663, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3013, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var2287, $r4=var2322, "Launcher must have a name"=var735}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String name>;	if $r1 == null goto $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String name>;	$z0 = virtualinvoke $r5.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: java.lang.String module>;	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link this$0>;	$r4 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>("Launcher must have a name", $r4);	throw $r2
;block_num 3