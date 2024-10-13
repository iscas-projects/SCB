(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1919 0)
(declare-sort var949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun setCmp/577674808 (var1919 Bool) void)
(declare-const null-var1919 var1919)
(declare-const null-String String)
(declare-const var2818 var1919) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo 
(assert (not (= var2818 null-var1919)))
(declare-const var2586 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2586 null-String)))
(define-const var2659 String "Container") ; Statement: $r2 = "Container" 
(assert true)
(define-const var3642 Bool (= var2659 var2586)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
(assert true)
;(assert (setCmp/577674808 var2818 var3642)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: void setCmp(boolean)>($z0) 

(declare-const var2818!1 var1919)
(declare-const var3642!1 Bool)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {setCmp/577674808=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo, boolean], void)}
; {var1919=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo, var2818=r0, var2586=r1, var949=null_type, var2659=$r2, var3642=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo=var1919, r0=var2818, r1=var2586, null_type=var949, $r2=var2659, $z0=var3642}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo;	r1 := @parameter0: java.lang.String;	$r2 = "Container";	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r1);	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo: void setCmp(boolean)>($z0);	return
;block_num 1