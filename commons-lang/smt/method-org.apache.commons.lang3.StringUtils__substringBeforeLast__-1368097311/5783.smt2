(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2333 0)
(declare-sort var1007 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1007_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun lastIndexOf/-618837785 (String String) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const var151 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var151 null-String)))
(declare-const var150 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var150 null-String)))
(define-const var3384 Bool (var1007_isEmpty/1595667738 (cast-from-String-to-String var151))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 != 0 goto return r0 
(assert (not (not (= (ite var3384 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1955 Bool (var1007_isEmpty/1595667738 (cast-from-String-to-String var150))) ; Statement: $z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1) 
 ; Statement: if $z1 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(r1) 
(assert (= (ite var1955 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var3713 Int (lastIndexOf/-618837785 var151 var150)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(r1) 
(define-const var184 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(assert (not (not (= var3713 var184)))) ; Negate: Cond: i0 != $i2  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var1007_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), lastIndexOf/-618837785=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var151=r0, var2333=null_type, var150=r1, var1007=org.apache.commons.lang3.StringUtils, var3384=$z0, var1955=$z1, var3713=i0, var184=$i2}
; {r0=var151, null_type=var2333, r1=var150, org.apache.commons.lang3.StringUtils=var1007, $z0=var3384, $z1=var1955, i0=var3713, $i2=var184}
;seq <java.lang.String: int lastIndexOf(java.lang.String)>
;cnt {"<java.lang.String: int lastIndexOf(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 != 0 goto return r0;	$z1 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r1);	if $z1 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(r1);	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(java.lang.String)>(r1);	$i2 = (int) -1;	if i0 != $i2 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	return r0
;block_num 4