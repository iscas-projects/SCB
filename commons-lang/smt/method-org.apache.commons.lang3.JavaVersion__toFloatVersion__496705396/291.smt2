(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1020 0)
(declare-sort var987 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun var987_toFloat/-1162720090 (String Float32) Float32)
(declare-const null-String String)
(declare-const var1053 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1053 null-String)))
(assert true)
(define-const var3819 Bool (contains/1009244746 var1053 (cast-from-String-to-String "."))) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(".") 
 ; Statement: if $z0 != 0 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.") 
(assert (not (not (= (ite var3819 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1991 Float32 (var987_toFloat/-1162720090 var1053 ((_ to_fp 8 24) #xbf800000))) ; Statement: $f1 = staticinvoke <org.apache.commons.lang3.math.NumberUtils: float toFloat(java.lang.String,float)>(r0, -1.0F) 
 ; Statement: return $f1 
(check-sat)
(get-model)
(get-unsat-core)
; {contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), var987_toFloat/-1162720090=([java.lang.String, float], float)}
; {var1053=r0, var1020=null_type, var3819=$z0, var987=org.apache.commons.lang3.math.NumberUtils, var1991=$f1}
; {r0=var1053, null_type=var1020, $z0=var3819, org.apache.commons.lang3.math.NumberUtils=var987, $f1=var1991}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean contains(java.lang.CharSequence)>(".");	if $z0 != 0 goto r1 = virtualinvoke r0.<java.lang.String: java.lang.String[] split(java.lang.String)>("\\.");	$f1 = staticinvoke <org.apache.commons.lang3.math.NumberUtils: float toFloat(java.lang.String,float)>(r0, -1.0F);	return $f1
;block_num 2