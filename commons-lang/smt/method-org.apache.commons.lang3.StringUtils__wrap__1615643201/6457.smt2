(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var187 0)
(declare-sort var2857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2857_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun concat/1917019066 ((s String) (next String)) String (str.++ s next))
(declare-const null-String String)
(declare-const var2973 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2973 null-String)))
(declare-const var3689 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3689 null-String)))
(define-const var1979 Bool (var2857_isEmpty/1595667738 (cast-from-String-to-String var2973))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var1979 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2176 Bool (var2857_isEmpty/1595667738 (cast-from-String-to-String var3689))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String concat(java.lang.String)>(r0) 
(assert (= (ite var2176 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1296 String (concat/1917019066 var3689 var2973)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String concat(java.lang.String)>(r0) 
(assert true)
(define-const var761 String (concat/1917019066 var1296 var3689)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.String: java.lang.String concat(java.lang.String)>(r1) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {var2857_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), concat/1917019066=([java.lang.String, java.lang.String], java.lang.String)}
; {var2973=r0, var187=null_type, var3689=r1, var2857=org.apache.commons.lang3.StringUtils, var1979=$z0, var2176=$z1, var1296=$r2, var761=$r3}
; {r0=var2973, null_type=var187, r1=var3689, org.apache.commons.lang3.StringUtils=var2857, $z0=var1979, $z1=var2176, $r2=var1296, $r3=var761}
;seq <java.lang.String: java.lang.String concat(java.lang.String)>;	<java.lang.String: java.lang.String concat(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String concat(java.lang.String)>": 2}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String concat(java.lang.String)>(r0);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String concat(java.lang.String)>(r0);	$r3 = virtualinvoke $r2.<java.lang.String: java.lang.String concat(java.lang.String)>(r1);	return $r3
;block_num 3