(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2231 0)
(declare-sort var2887 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun var2887_containsNone/143425682 (String (Array Int Int)) Bool)
(declare-const null-String String)
(declare-const var606 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var606 null-String)))
(declare-const var3075 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var3075 null-String)))
 ; Statement: if r0 != null goto $r2 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(assert (not (= var3075 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var1267 (Array Int Int) (toCharArray/415275702 var3075)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>() 
(define-const var740 Bool (var2887_containsNone/143425682 var606 var1267)) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean containsNone(java.lang.CharSequence,char[])>(r1, $r2) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {toCharArray/415275702=([java.lang.String], char[]), var2887_containsNone/143425682=([java.lang.CharSequence, char[]], boolean)}
; {var606=r1, var3075=r0, var2231=null_type, var1267=$r2, var2887=org.apache.commons.lang3.StringUtils, var740=$z0}
; {r1=var606, r0=var3075, null_type=var2231, $r2=var1267, org.apache.commons.lang3.StringUtils=var2887, $z0=var740}
;seq <java.lang.String: char[] toCharArray()>
;cnt {"<java.lang.String: char[] toCharArray()>": 1}
;stmts r1 := @parameter0: java.lang.CharSequence;	r0 := @parameter1: java.lang.String;	if r0 != null goto $r2 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$r2 = virtualinvoke r0.<java.lang.String: char[] toCharArray()>();	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean containsNone(java.lang.CharSequence,char[])>(r1, $r2);	return $z0
;block_num 2