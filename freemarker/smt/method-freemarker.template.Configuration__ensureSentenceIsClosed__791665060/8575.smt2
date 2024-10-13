(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3605 0)
(declare-sort var3998 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3605 var3605)
(declare-const null-String String)
(declare-const var2250 var3605) ; Statement: r4 := @this: freemarker.template.Configuration 
(assert (not (= var2250 null-var3605)))
(declare-const var1936 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1936 null-String)))
 ; Statement: if r0 == null goto return r0 
(assert (not (= var1936 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var1945 Int (length/-134980193 var1936)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (not (= var1945 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3605=freemarker.template.Configuration, var2250=r4, var1936=r0, var3998=null_type, var1945=$i0}
; {freemarker.template.Configuration=var3605, r4=var2250, r0=var1936, null_type=var3998, $i0=var1945}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r4 := @this: freemarker.template.Configuration;	r0 := @parameter0: java.lang.String;	if r0 == null goto return r0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>();	return r0
;block_num 3