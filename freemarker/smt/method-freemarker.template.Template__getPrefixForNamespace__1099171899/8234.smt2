(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3700 0)
(declare-sort var316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun defaultNS/-1785025210 (var3700) String)
(declare-const null-var3700 var3700)
(declare-const null-String String)
(declare-const var906 var3700) ; Statement: r1 := @this: freemarker.template.Template 
(assert (not (= var906 null-var3700)))
(declare-const var1483 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1483 null-String)))
 ; Statement: if r0 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var1483 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var610 Int (length/-134980193 var1483)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r2 = r1.<freemarker.template.Template: java.lang.String defaultNS> 
(assert (not (= var610 0))) ; Cond: $i0 != 0 
(define-const var2439 String (defaultNS/-1785025210 var906)) ; Statement: $r2 = r1.<freemarker.template.Template: java.lang.String defaultNS> 
(assert true)
(define-const var3541 Bool (= var1483 var2439)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 == 0 goto $r3 = r1.<freemarker.template.Template: java.util.Map namespaceURIToPrefixLookup> 
(assert (not (= (ite var3541 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), defaultNS/-1785025210=([freemarker.template.Template], java.lang.String)}
; {var3700=freemarker.template.Template, var906=r1, var1483=r0, var316=null_type, var610=$i0, var2439=$r2, var3541=$z0}
; {freemarker.template.Template=var3700, r1=var906, r0=var1483, null_type=var316, $i0=var610, $r2=var2439, $z0=var3541}
;seq <java.lang.String: int length()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: freemarker.template.Template;	r0 := @parameter0: java.lang.String;	if r0 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $r2 = r1.<freemarker.template.Template: java.lang.String defaultNS>;	$r2 = r1.<freemarker.template.Template: java.lang.String defaultNS>;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>($r2);	if $z0 == 0 goto $r3 = r1.<freemarker.template.Template: java.util.Map namespaceURIToPrefixLookup>;	return ""
;block_num 4