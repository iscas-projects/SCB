(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2129 0)
(declare-sort var3183 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var2129 var2129)
(declare-const null-String String)
(declare-const var1303 var2129) ; Statement: r1 := @this: freemarker.core.XMLOutputFormat 
(assert (not (= var1303 null-var2129)))
(declare-const var2082 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2082 null-String)))
(assert true)
(define-const var3177 Bool (= var2082 "xml")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("xml") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var2129=freemarker.core.XMLOutputFormat, var1303=r1, var2082=r0, var3183=null_type, var3177=$z0}
; {freemarker.core.XMLOutputFormat=var2129, r1=var1303, r0=var2082, null_type=var3183, $z0=var3177}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: freemarker.core.XMLOutputFormat;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("xml");	return $z0
;block_num 1