(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1469 0)
(declare-sort var704 0)
(declare-sort var1035 0)
(declare-sort var2964 0)
(declare-sort var1395 0)
(declare-sort var3236 0)
(declare-sort var3305 0)
(declare-sort var1624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTaskName/237633316 (var704) String)
(declare-fun cast-from-var1469-to-var704 (var1469) var704)
(declare-fun checkConfiguration/2064294199 (var1035) void)
(declare-fun cast-from-var1469-to-var1035 (var1469) var1035)
(declare-fun filesets/-497078696 (var1469) var2964)
(declare-fun isEmpty/633059479 (var2964) Bool)
(declare-fun resources/-497078696 (var1469) var1395)
(declare-fun var3236-init () var3236)
(declare-fun getLocation/851674571 (var1624) var3305)
(declare-fun cast-from-var1469-to-var1624 (var1469) var1624)
(declare-fun <init>/-469549130 (var3236 String var3305) void)
(declare-const null-var1469 var1469)
(declare-const null-var1395 var1395)
(declare-const var3349 var1469) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn 
(assert (not (= var3349 null-var1469)))
(define-const var137 String "execon") ; Statement: $r2 = "execon" 
(assert true)
(define-const var3289 String (getTaskName/237633316 (cast-from-var1469-to-var704 var3349))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: java.lang.String getTaskName()>() 
(assert true)
(define-const var2973 Bool (= var137 var3289)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: void checkConfiguration()>() 
(assert (= (ite var2973 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
;(assert (checkConfiguration/2064294199 (cast-from-var1469-to-var1035 var3349))) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: void checkConfiguration()>() 

(declare-const var3349!1 var1469)
(define-const var2177 var2964 (filesets/-497078696 var3349!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: java.util.Vector filesets> 
(assert true)
(define-const var1195 Bool (isEmpty/633059479 var2177)) ; Statement: $z1 = virtualinvoke $r3.<java.util.Vector: boolean isEmpty()>() 
 ; Statement: if $z1 == 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker targetFilePos> 
(assert (not (= (ite var1195 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var217 var1395 (resources/-497078696 var3349!1)) ; Statement: $r15 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Union resources> 
 ; Statement: if $r15 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker targetFilePos> 
(assert (not (not (= var217 null-var1395)))) ; Negate: Cond: $r15 != null  
(define-const var3128 var3236 var3236-init) ; Statement: $r16 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
(define-const var481 var3305 (getLocation/851674571 (cast-from-var1469-to-var1624 var3349!1))) ; Statement: $r17 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var3128 "no resources specified" var481)) ; Statement: specialinvoke $r16.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>("no resources specified", $r17) 

(declare-const var3128!1 var3236)
(declare-const var1429 String)
(declare-const var481!1 var3305)
 ; Statement: throw $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {getTaskName/237633316=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var1469-to-var704=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), checkConfiguration/2064294199=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask], void), cast-from-var1469-to-var1035=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask), filesets/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], java.util.Vector), isEmpty/633059479=([java.util.Vector], boolean), resources/-497078696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Union), var3236-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), getLocation/851674571=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), cast-from-var1469-to-var1624=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var1469=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn, var3349=r0, var137=$r2, var704=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var3289=$r1, var2973=$z0, var1035=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, var2964=java.util.Vector, var2177=$r3, var1195=$z1, var1395=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Union, var217=$r15, var3236=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var3128=$r16, var3305=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1624=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var481=$r17, var1429="no resources specified"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn=var1469, r0=var3349, $r2=var137, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var704, $r1=var3289, $z0=var2973, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask=var1035, java.util.Vector=var2964, $r3=var2177, $z1=var1195, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Union=var1395, $r15=var217, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3236, $r16=var3128, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3305, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1624, $r17=var481, "no resources specified"=var1429}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn;	$r2 = "execon";	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: java.lang.String getTaskName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: void checkConfiguration()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask: void checkConfiguration()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: java.util.Vector filesets>;	$z1 = virtualinvoke $r3.<java.util.Vector: boolean isEmpty()>();	if $z1 == 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker targetFilePos>;	$r15 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Union resources>;	if $r15 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Commandline$Marker targetFilePos>;	$r16 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r17 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteOn: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r16.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>("no resources specified", $r17);	throw $r16
;block_num 4