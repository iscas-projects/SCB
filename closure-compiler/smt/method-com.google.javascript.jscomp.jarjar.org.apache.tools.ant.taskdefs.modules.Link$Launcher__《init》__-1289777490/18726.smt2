(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1198 0)
(declare-sort var545 0)
(declare-sort var1451 0)
(declare-sort var12 0)
(declare-sort var2763 0)
(declare-sort var1847 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-2083790041 (var1198) var545)
(declare-fun <init>/-279557996 (var12) void)
(declare-fun cast-from-var1198-to-var12 (var1198) var12)
(declare-fun var2763_requireNonNull/1378936425 (var12 String) var12)
(declare-fun cast-from-String-to-var12 (String) var12)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(declare-fun var1847-init () var1847)
(declare-fun <init>/1864341934 (var1847 String) void)
(declare-const null-var1198 var1198)
(declare-const null-var545 var545)
(declare-const null-String String)
(declare-const var900 var1198) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher 
(assert (not (= var900 null-var1198)))
(declare-const var2296 var545) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link 
(assert (not (= var2296 null-var545)))
(declare-const var1086 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1086 null-String)))
(declare-const var900!1 var1198)
(assert (not (= var900!1 null-var1198)))
(assert (= (this$0/-2083790041 var900!1) var2296)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link this$0> = r1 
(assert true)
;(assert (<init>/-279557996 (cast-from-var1198-to-var12 var900!1))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var900!2 var1198)
;(assert (var2763_requireNonNull/1378936425 (cast-from-String-to-var12 var1086) "Text cannot be null")) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r2, "Text cannot be null") 

(declare-const var1086!1 String)
(declare-const var1215 String)
(assert true)
(define-const var177 Int (lastIndexOf/-1292097097 var1086!1 61)) ; Statement: i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(61) 
 ; Statement: if i0 >= 1 goto $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (>= var177 1))) ; Negate: Cond: i0 >= 1  
(define-const var612 var1847 var1847-init) ; Statement: $r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
;(assert (<init>/1864341934 var612 "Launcher command must take the form name=module or name=module/mainclass")) ; Statement: specialinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("Launcher command must take the form name=module or name=module/mainclass") 

(declare-const var612!1 var1847)
(declare-const var2236 String)
 ; Statement: throw $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-2083790041=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link), <init>/-279557996=([java.lang.Object], void), cast-from-var1198-to-var12=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher], java.lang.Object), var2763_requireNonNull/1378936425=([java.lang.Object, java.lang.String], java.lang.Object), cast-from-String-to-var12=([java.lang.String], java.lang.Object), lastIndexOf/-1292097097=([java.lang.String, int], int), var1847-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1198=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher, var900=r0, var545=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link, var2296=r1, var1086=r2, var1451=null_type, var12=java.lang.Object, var2763=java.util.Objects, var1215="Text cannot be null", var177=i0, var1847=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var612=$r8, var2236="Launcher command must take the form name=module or name=module/mainclass"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher=var1198, r0=var900, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link=var545, r1=var2296, r2=var1086, null_type=var1451, java.lang.Object=var12, java.util.Objects=var2763, "Text cannot be null"=var1215, i0=var177, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1847, $r8=var612, "Launcher command must take the form name=module or name=module/mainclass"=var2236}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link;	r2 := @parameter1: java.lang.String;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link$Launcher: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link this$0> = r1;	specialinvoke r0.<java.lang.Object: void <init>()>();	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object,java.lang.String)>(r2, "Text cannot be null");	i0 = virtualinvoke r2.<java.lang.String: int lastIndexOf(int)>(61);	if i0 >= 1 goto $r3 = virtualinvoke r2.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r8 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	specialinvoke $r8.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>("Launcher command must take the form name=module or name=module/mainclass");	throw $r8
;block_num 2