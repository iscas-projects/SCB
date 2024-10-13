(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2530 0)
(declare-sort var1422 0)
(declare-sort var1476 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun facade/594480788 (var2530) var1476)
(declare-fun setImplementation/1643654972 (var1476 String) void)
(declare-const null-var2530 var2530)
(declare-const null-String String)
(declare-const var3912 var2530) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah 
(assert (not (= var3912 null-var2530)))
(declare-const var474 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var474 null-String)))
(define-const var3776 String "default") ; Statement: $r1 = "default" 
(assert true)
(define-const var2867 Bool (= var3776 var474)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper facade> 
(assert (= (ite var2867 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1008 var1476 (facade/594480788 var3912)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper facade> 
(assert true)
;(assert (setImplementation/1643654972 var1008 var474)) ; Statement: virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper: void setImplementation(java.lang.String)>(r0) 

(declare-const var1008!1 var1476)
(declare-const var474!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {facade/594480788=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper), setImplementation/1643654972=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper, java.lang.String], void)}
; {var2530=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah, var3912=r2, var474=r0, var1422=null_type, var3776=$r1, var2867=$z0, var1476=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper, var1008=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah=var2530, r2=var3912, r0=var474, null_type=var1422, $r1=var3776, $z0=var2867, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper=var1476, $r3=var1008}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah;	r0 := @parameter0: java.lang.String;	$r1 = "default";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper facade>;	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Javah: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper facade>;	virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper: void setImplementation(java.lang.String)>(r0);	return
;block_num 3