(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1240 0)
(declare-sort var712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun currentElement/960128408 (var712) String)
(declare-fun cast-from-var1240-to-var712 (var1240) var712)
(declare-const null-var1240 var1240)
(declare-const var492 var1240) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool$1 
(assert (not (= var492 null-var1240)))
(define-const var991 String "type-storage") ; Statement: $r2 = "type-storage" 
(define-const var1737 String (currentElement/960128408 (cast-from-var1240-to-var712 var492))) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool$1: java.lang.String currentElement> 
(assert true)
(define-const var294 Bool (= var991 var1737)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var294 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {currentElement/960128408=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler], java.lang.String), cast-from-var1240-to-var712=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool$1], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler)}
; {var1240=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool$1, var492=r0, var991=$r2, var712=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler, var1737=$r1, var294=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool$1=var1240, r0=var492, $r2=var991, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.DescriptorHandler=var712, $r1=var1737, $z0=var294}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool$1;	$r2 = "type-storage";	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool$1: java.lang.String currentElement>;	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	if $z0 == 0 goto return;	return
;block_num 2