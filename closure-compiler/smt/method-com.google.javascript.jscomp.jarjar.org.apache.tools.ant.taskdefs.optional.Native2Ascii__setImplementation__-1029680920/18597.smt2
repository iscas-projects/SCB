(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1477 0)
(declare-sort var1196 0)
(declare-sort var433 0)
(declare-sort var3058 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun facade/250360136 (var1477) var433)
(declare-fun var3058_getDefault/-1917620528 () String)
(declare-fun setImplementation/1643654972 (var433 String) void)
(declare-const null-var1477 var1477)
(declare-const null-String String)
(declare-const var787 var1477) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii 
(assert (not (= var787 null-var1477)))
(declare-const var3499 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3499 null-String)))
(define-const var3195 String "default") ; Statement: $r1 = "default" 
(assert true)
(define-const var1342 Bool (= var3195 var3499)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper facade> 
(assert (not (= (ite var1342 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1887 var433 (facade/250360136 var787)) ; Statement: $r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper facade> 
(define-const var3489 String var3058_getDefault/-1917620528) ; Statement: $r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.native2ascii.Native2AsciiAdapterFactory: java.lang.String getDefault()>() 
(assert true)
;(assert (setImplementation/1643654972 var1887 var3489)) ; Statement: virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper: void setImplementation(java.lang.String)>($r5) 

(declare-const var1887!1 var433)
(declare-const var3489!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {facade/250360136=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper), var3058_getDefault/-1917620528=([], java.lang.String), setImplementation/1643654972=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper, java.lang.String], void)}
; {var1477=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii, var787=r2, var3499=r0, var1196=null_type, var3195=$r1, var1342=$z0, var433=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper, var1887=$r4, var3058=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.native2ascii.Native2AsciiAdapterFactory, var3489=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii=var1477, r2=var787, r0=var3499, null_type=var1196, $r1=var3195, $z0=var1342, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper=var433, $r4=var1887, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.native2ascii.Native2AsciiAdapterFactory=var3058, $r5=var3489}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii;	r0 := @parameter0: java.lang.String;	$r1 = "default";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper facade>;	$r4 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper facade>;	$r5 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.native2ascii.Native2AsciiAdapterFactory: java.lang.String getDefault()>();	virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper: void setImplementation(java.lang.String)>($r5);	goto [?= return];	return
;block_num 3