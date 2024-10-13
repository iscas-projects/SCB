(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1418 0)
(declare-sort var728 0)
(declare-sort var120 0)
(declare-sort var1317 0)
(declare-sort var220 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTaskType/1957558293 (var728) String)
(declare-fun cast-from-var1418-to-var728 (var1418) var728)
(declare-fun baseDir/1286477936 (var1418) var120)
(declare-fun xslResource/1286477936 (var1418) var1317)
(declare-fun xslFile/1286477936 (var1418) String)
(declare-fun handleError/-1922909772 (var1418 String) void)
(declare-const null-var1418 var1418)
(declare-const null-var1317 var1317)
(declare-const null-String String)
(declare-const var105 var1418) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess 
(assert (not (= var105 null-var1418)))
(define-const var1909 String "style") ; Statement: $r2 = "style" 
(assert true)
(define-const var2648 String (getTaskType/1957558293 (cast-from-var1418-to-var728 var105))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.lang.String getTaskType()>() 
(assert true)
(define-const var808 Bool (= var1909 var2648)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto $r87 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.io.File baseDir> 
(assert (= (ite var808 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3616 var120 (baseDir/1286477936 var105)) ; Statement: $r87 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.io.File baseDir> 
(define-const var376 var1317 (xslResource/1286477936 var105)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource xslResource> 
 ; Statement: if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource xslResource> 
(assert (not (not (= var376 null-var1317)))) ; Negate: Cond: $r3 != null  
(define-const var2464 String (xslFile/1286477936 var105)) ; Statement: $r86 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.lang.String xslFile> 
 ; Statement: if $r86 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource xslResource> 
(assert (not (not (= var2464 null-String)))) ; Negate: Cond: $r86 != null  
(assert true)
;(assert (handleError/-1922909772 var105 "specify the stylesheet either as a filename in style attribute or as a nested resource")) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void handleError(java.lang.String)>("specify the stylesheet either as a filename in style attribute or as a nested resource") 

(declare-const var105!1 var1418)
(declare-const var3132 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getTaskType/1957558293=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task], java.lang.String), cast-from-var1418-to-var728=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), baseDir/1286477936=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess], java.io.File), xslResource/1286477936=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource), xslFile/1286477936=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess], java.lang.String), handleError/-1922909772=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess, java.lang.String], void)}
; {var1418=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess, var105=r0, var1909=$r2, var728=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var2648=$r1, var808=$z0, var120=java.io.File, var3616=$r87, var1317=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource, var376=$r3, var2464=$r86, var220=null_type, var3132="specify the stylesheet either as a filename in style attribute or as a nested resource"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess=var1418, r0=var105, $r2=var1909, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var728, $r1=var2648, $z0=var808, java.io.File=var120, $r87=var3616, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource=var1317, $r3=var376, $r86=var2464, null_type=var220, "specify the stylesheet either as a filename in style attribute or as a nested resource"=var3132}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess;	$r2 = "style";	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.lang.String getTaskType()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto $r87 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.io.File baseDir>;	$r87 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.io.File baseDir>;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource xslResource>;	if $r3 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource xslResource>;	$r86 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: java.lang.String xslFile>;	if $r86 != null goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource xslResource>;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.XSLTProcess: void handleError(java.lang.String)>("specify the stylesheet either as a filename in style attribute or as a nested resource");	return
;block_num 4