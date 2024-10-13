(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2911 0)
(declare-sort var2398 0)
(declare-sort var737 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2398_check/-951860758 (String var737) void)
(declare-fun cast-from-String-to-var737 (String) var737)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var1241 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1241 null-String)))
(declare-const var426 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var426 null-Bool)))
;(assert (var2398_check/-951860758 "booleanFormat" (cast-from-String-to-var737 var1241))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("booleanFormat", r0) 

(declare-const var3864 String)
(declare-const var1241!1 String)
(assert true)
(define-const var3755 Bool (= var1241!1 "c")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("c") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("true,false") 
(assert (not (= (ite var3755 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if z2 == 0 goto $r11 = <freemarker.template.utility.CollectionUtils: java.lang.String[] EMPTY_STRING_ARRAY> 
(assert (not (= (ite var426 1 0) 0))) ; Negate: Cond: z2 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var2398_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-String-to-var737=([java.lang.String], java.lang.Object)}
; {var1241=r0, var2911=null_type, var426=z2, var2398=freemarker.template.utility.NullArgumentException, var737=java.lang.Object, var3864="booleanFormat", var3755=$z0}
; {r0=var1241, null_type=var2911, z2=var426, freemarker.template.utility.NullArgumentException=var2398, java.lang.Object=var737, "booleanFormat"=var3864, $z0=var3755}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	z2 := @parameter1: boolean;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("booleanFormat", r0);	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("c");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("true,false");	if z2 == 0 goto $r11 = <freemarker.template.utility.CollectionUtils: java.lang.String[] EMPTY_STRING_ARRAY>;	return null
;block_num 3