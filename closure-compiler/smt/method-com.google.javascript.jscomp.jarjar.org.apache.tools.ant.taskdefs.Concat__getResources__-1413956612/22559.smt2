(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var298 0)
(declare-sort var3037 0)
(declare-sort var1548 0)
(declare-sort var2701 0)
(declare-sort var3545 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun rc/-134376592 (var298) var3037)
(declare-fun var1548-init () var1548)
(declare-fun getProject/416672769 (var3545) var2701)
(declare-fun cast-from-var298-to-var3545 (var298) var3545)
(declare-fun textBuffer/-134376592 (var298) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/-726711428 (var1548 var2701 String) void)
(declare-const null-var298 var298)
(declare-const null-var3037 var3037)
(declare-const var3075 var298) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat 
(assert (not (= var3075 null-var298)))
(define-const var1795 var3037 (rc/-134376592 var3075)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Resources rc> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource dest> 
(assert (not (not (= var1795 null-var3037)))) ; Negate: Cond: $r1 != null  
(define-const var1517 var1548 var1548-init) ; Statement: $r23 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource 
(assert true)
(define-const var2116 var2701 (getProject/416672769 (cast-from-var298-to-var3545 var3075))) ; Statement: $r26 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(define-const var1190 String (textBuffer/-134376592 var3075)) ; Statement: $r24 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.StringBuffer textBuffer> 
(assert true)
(define-const var1964 String (toString/-222306083 var1190)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-726711428 var1517 var2116 var1964)) ; Statement: specialinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String)>($r26, $r25) 

(declare-const var1517!1 var1548)
(declare-const var2116!1 var2701)
(declare-const var1964!1 String)
 ; Statement: return $r23 
(check-sat)
(get-model)
(get-unsat-core)
; {rc/-134376592=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Resources), var1548-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource), getProject/416672769=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project), cast-from-var298-to-var3545=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), textBuffer/-134376592=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/-726711428=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, java.lang.String], void)}
; {var298=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat, var3075=r0, var3037=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Resources, var1795=$r1, var1548=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource, var1517=$r23, var2701=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3545=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2116=$r26, var1190=$r24, var1964=$r25}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat=var298, r0=var3075, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Resources=var3037, $r1=var1795, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource=var1548, $r23=var1517, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var2701, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var3545, $r26=var2116, $r24=var1190, $r25=var1964}
;seq <java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.Resources rc>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Resource dest>;	$r23 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource;	$r26 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r24 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.StringBuffer textBuffer>;	$r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r23.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.resources.StringResource: void <init>(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project,java.lang.String)>($r26, $r25);	return $r23
;block_num 2