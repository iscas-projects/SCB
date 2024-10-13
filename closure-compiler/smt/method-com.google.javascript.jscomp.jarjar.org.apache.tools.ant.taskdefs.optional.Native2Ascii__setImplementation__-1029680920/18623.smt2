(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2857 0)
(declare-sort var745 0)
(declare-sort var2651 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun facade/250360136 (var2857) var2651)
(declare-fun setImplementation/1643654972 (var2651 String) void)
(declare-const null-var2857 var2857)
(declare-const null-String String)
(declare-const var2971 var2857) ; Statement: r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii 
(assert (not (= var2971 null-var2857)))
(declare-const var2147 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2147 null-String)))
(define-const var2841 String "default") ; Statement: $r1 = "default" 
(assert true)
(define-const var870 Bool (= var2841 var2147)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper facade> 
(assert (= (ite var870 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2135 var2651 (facade/250360136 var2971)) ; Statement: $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper facade> 
(assert true)
;(assert (setImplementation/1643654972 var2135 var2147)) ; Statement: virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper: void setImplementation(java.lang.String)>(r0) 

(declare-const var2135!1 var2651)
(declare-const var2147!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {facade/250360136=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper), setImplementation/1643654972=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper, java.lang.String], void)}
; {var2857=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii, var2971=r2, var2147=r0, var745=null_type, var2841=$r1, var870=$z0, var2651=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper, var2135=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii=var2857, r2=var2971, r0=var2147, null_type=var745, $r1=var2841, $z0=var870, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper=var2651, $r3=var2135}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii;	r0 := @parameter0: java.lang.String;	$r1 = "default";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper facade>;	$r3 = r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.Native2Ascii: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper facade>;	virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.facade.FacadeTaskHelper: void setImplementation(java.lang.String)>(r0);	return
;block_num 3