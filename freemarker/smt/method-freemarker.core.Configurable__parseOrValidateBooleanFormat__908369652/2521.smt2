(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2081 0)
(declare-sort var3631 0)
(declare-sort var1197 0)
(declare-sort var3064 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3631_check/-951860758 (String var1197) void)
(declare-fun cast-from-String-to-var1197 (String) var1197)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3064-EMPTY_STRING_ARRAY (Array Int String))
(declare-const var2212 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2212 null-String)))
(declare-const var268 Bool) ; Statement: z2 := @parameter1: boolean 
(assert (not (= var268 null-Bool)))
;(assert (var3631_check/-951860758 "booleanFormat" (cast-from-String-to-var1197 var2212))) ; Statement: staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("booleanFormat", r0) 

(declare-const var2747 String)
(declare-const var2212!1 String)
(assert true)
(define-const var1169 Bool (= var2212!1 "c")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("c") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("true,false") 
(assert (not (= (ite var1169 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: if z2 == 0 goto $r11 = <freemarker.template.utility.CollectionUtils: java.lang.String[] EMPTY_STRING_ARRAY> 
(assert (= (ite var268 1 0) 0)) ; Cond: z2 == 0 
(define-const var1683 (Array Int String) var3064-EMPTY_STRING_ARRAY) ; Statement: $r11 = <freemarker.template.utility.CollectionUtils: java.lang.String[] EMPTY_STRING_ARRAY> 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {var3631_check/-951860758=([java.lang.String, java.lang.Object], void), cast-from-String-to-var1197=([java.lang.String], java.lang.Object)}
; {var2212=r0, var2081=null_type, var268=z2, var3631=freemarker.template.utility.NullArgumentException, var1197=java.lang.Object, var2747="booleanFormat", var1169=$z0, var3064=freemarker.template.utility.CollectionUtils, var1683=$r11}
; {r0=var2212, null_type=var2081, z2=var268, freemarker.template.utility.NullArgumentException=var3631, java.lang.Object=var1197, "booleanFormat"=var2747, $z0=var1169, freemarker.template.utility.CollectionUtils=var3064, $r11=var1683}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	z2 := @parameter1: boolean;	staticinvoke <freemarker.template.utility.NullArgumentException: void check(java.lang.String,java.lang.Object)>("booleanFormat", r0);	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("c");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("true,false");	if z2 == 0 goto $r11 = <freemarker.template.utility.CollectionUtils: java.lang.String[] EMPTY_STRING_ARRAY>;	$r11 = <freemarker.template.utility.CollectionUtils: java.lang.String[] EMPTY_STRING_ARRAY>;	return $r11
;block_num 3