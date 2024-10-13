(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1275 0)
(declare-sort var1419 0)
(declare-sort var2367 0)
(declare-sort var951 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun var951_extractUriFromComponentName/-258959328 (String) String)
(declare-fun println/-1226480079 (var1419 String) void)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var1275 var1275)
(declare-const null-var1419 var1419)
(declare-const null-String String)
(declare-const var1080 var1275) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper 
(assert (not (= var1080 null-var1275)))
(declare-const var2947 var1419) ; Statement: r2 := @parameter0: java.io.PrintWriter 
(assert (not (= var2947 null-var1419)))
(declare-const var2602 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var2602 null-String)))
(declare-const var1708 String) ; Statement: r19 := @parameter2: java.lang.String 
(assert (not (= var1708 null-String)))
(assert true)
(define-const var835 Bool (startsWith/-1785782452 var2602 "antlib:")) ; Statement: z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("antlib:") 
(define-const var2863 String (var951_extractUriFromComponentName/-258959328 var2602)) ; Statement: r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: java.lang.String extractUriFromComponentName(java.lang.String)>(r0) 
(assert true)
;(assert (println/-1226480079 var2947 "Cause: The name is undefined.")) ; Statement: virtualinvoke r2.<java.io.PrintWriter: void println(java.lang.String)>("Cause: The name is undefined.") 

(declare-const var2947!1 var1419)
(declare-const var3551 String)
(assert true)
;(assert (println/-1226480079 var2947!1 "Action: Check the spelling.")) ; Statement: virtualinvoke r2.<java.io.PrintWriter: void println(java.lang.String)>("Action: Check the spelling.") 

(declare-const var2947!2 var1419)
(declare-const var3477 String)
(assert true)
;(assert (println/-1226480079 var2947!2 "Action: Check that any custom tasks/types have been declared.")) ; Statement: virtualinvoke r2.<java.io.PrintWriter: void println(java.lang.String)>("Action: Check that any custom tasks/types have been declared.") 

(declare-const var2947!3 var1419)
(declare-const var2332 String)
(assert true)
;(assert (println/-1226480079 var2947!3 "Action: Check that any <presetdef>/<macrodef> declarations have taken place.")) ; Statement: virtualinvoke r2.<java.io.PrintWriter: void println(java.lang.String)>("Action: Check that any <presetdef>/<macrodef> declarations have taken place.") 

(declare-const var2947!4 var1419)
(declare-const var3899 String)
(assert true)
(define-const var2918 Bool (isEmpty/-1285796103 var2863)) ; Statement: $z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z1 != 0 goto return 
(assert (not (= (ite var2918 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), var951_extractUriFromComponentName/-258959328=([java.lang.String], java.lang.String), println/-1226480079=([java.io.PrintWriter, java.lang.String], void), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var1275=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper, var1080=r3, var1419=java.io.PrintWriter, var2947=r2, var2602=r0, var2367=null_type, var1708=r19, var835=z0, var951=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper, var2863=r1, var3551="Cause: The name is undefined.", var3477="Action: Check the spelling.", var2332="Action: Check that any custom tasks/types have been declared.", var3899="Action: Check that any <presetdef>/<macrodef> declarations have taken place.", var2918=$z1}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper=var1275, r3=var1080, java.io.PrintWriter=var1419, r2=var2947, r0=var2602, null_type=var2367, r19=var1708, z0=var835, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper=var951, r1=var2863, "Cause: The name is undefined."=var3551, "Action: Check the spelling."=var3477, "Action: Check that any custom tasks/types have been declared."=var2332, "Action: Check that any <presetdef>/<macrodef> declarations have taken place."=var3899, $z1=var2918}
;seq <java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ComponentHelper;	r2 := @parameter0: java.io.PrintWriter;	r0 := @parameter1: java.lang.String;	r19 := @parameter2: java.lang.String;	z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("antlib:");	r1 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectHelper: java.lang.String extractUriFromComponentName(java.lang.String)>(r0);	virtualinvoke r2.<java.io.PrintWriter: void println(java.lang.String)>("Cause: The name is undefined.");	virtualinvoke r2.<java.io.PrintWriter: void println(java.lang.String)>("Action: Check the spelling.");	virtualinvoke r2.<java.io.PrintWriter: void println(java.lang.String)>("Action: Check that any custom tasks/types have been declared.");	virtualinvoke r2.<java.io.PrintWriter: void println(java.lang.String)>("Action: Check that any <presetdef>/<macrodef> declarations have taken place.");	$z1 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z1 != 0 goto return;	return
;block_num 2