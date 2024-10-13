(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var420 0)
(declare-sort var3730 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3730_length/1752045268 (String) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var3151 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3151 null-String)))
(declare-const var1914 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var1914 null-String)))
(define-const var2030 Int (var3730_length/1752045268 (cast-from-String-to-String var3151))) ; Statement: i5 = staticinvoke <org.apache.commons.lang3.StringUtils: int length(java.lang.CharSequence)>(r0) 
 ; Statement: if i5 != 0 goto (branch) 
(assert (not (= var2030 0))) ; Cond: i5 != 0 
 ; Statement: if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
(assert (not (not (= var1914 null-String)))) ; Negate: Cond: r1 != null  
 ; Statement: if i5 == 0 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i5) 
(assert (= var2030 0)) ; Cond: i5 == 0 
(assert (and true (and (>= 0 0) (>= (str.len var3151) var2030) (>= var2030 0))))
(define-const var1894 String (substring/-1240304868 var3151 0 var2030)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i5) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3730_length/1752045268=([java.lang.CharSequence], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3151=r0, var420=null_type, var1914=r1, var3730=org.apache.commons.lang3.StringUtils, var2030=i5, var1894=$r2}
; {r0=var3151, null_type=var420, r1=var1914, org.apache.commons.lang3.StringUtils=var3730, i5=var2030, $r2=var1894}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	i5 = staticinvoke <org.apache.commons.lang3.StringUtils: int length(java.lang.CharSequence)>(r0);	if i5 != 0 goto (branch);	if r1 != null goto $z0 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if i5 == 0 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i5);	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i5);	return $r2
;block_num 4