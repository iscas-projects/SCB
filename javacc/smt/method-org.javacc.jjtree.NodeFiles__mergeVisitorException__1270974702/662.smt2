(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1935 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1935_getVisitorException/-1156064091 () String)
(define-const var3327 String var1935_getVisitorException/-1156064091) ; Statement: r4 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getVisitorException()>() 
(define-const var3681 String "") ; Statement: $r0 = "" 
(assert true)
(define-const var3468 Bool (= var3681 var3327)) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>(r4) 
 ; Statement: if $z0 != 0 goto return r4 
(assert (not (= (ite var3468 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1935_getVisitorException/-1156064091=([], java.lang.String)}
; {var1935=org.javacc.jjtree.JJTreeOptions, var3327=r4, var3681=$r0, var3468=$z0}
; {org.javacc.jjtree.JJTreeOptions=var1935, r4=var3327, $r0=var3681, $z0=var3468}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 = staticinvoke <org.javacc.jjtree.JJTreeOptions: java.lang.String getVisitorException()>();	$r0 = "";	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>(r4);	if $z0 != 0 goto return r4;	return r4
;block_num 2