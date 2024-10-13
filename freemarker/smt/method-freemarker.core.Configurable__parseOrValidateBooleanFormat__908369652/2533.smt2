(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var963 0)
(declare-sort var3274 0)
(declare-sort var2649 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3274_check/-951860758 (String var2649) void)
(declare-fun cast-from-String-to-var2649 (String) var2649)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1664 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1664 null-String)))
(declare-const var2099 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var2099 null-Bool)))
;(assert (var3274_check/-951860758 "booleanFormat" (cast-from-String-to-var2649 var1664))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("booleanFormat", r0) 

(declare-const var924 String)
(declare-const var1664!1 String)
(assert true)
(define-const var483 Bool (= var1664!1 "c")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("c") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("true,false") 
(assert (= (ite var483 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2390 Bool (= var1664!1 "true,false")) ; Statement: $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("true,false") 
 ; Statement: if $z1 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(44) 
(assert (not (= (ite var2390 1 0) 0))) ; Negate: Cond: $z1 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3274_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-String-to-var2649=([java.lang.String], java.lang.Object)}
; {var1664=r0, var963=null_type, var2099=z2, var3274=freemarker.template.utility.NullArgumentException, var2649=java.lang.Object, var924="booleanFormat", var483=$z0, var2390=$z1}
; {r0=var1664, null_type=var963, z2=var2099, freemarker.template.utility.NullArgumentException=var3274, java.lang.Object=var2649, "booleanFormat"=var924, $z0=var483, $z1=var2390}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r0 := @parameter0: java.lang.String;	z2 := @parameter1: boolean;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("booleanFormat", r0);	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("c");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("true,false");	$z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("true,false");	if $z1 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(44);	return null
;block_num 3