(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2716 0)
(declare-sort var3031 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2716 var2716)
(declare-const null-String String)
(declare-const var391 var2716) ; Statement: r2 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var391 null-var2716)))
(declare-const var3256 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3256 null-String)))
(assert true)
(define-const var2346 Int (indexOf/-1209756239 var3256 "ON UPDATE")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("ON UPDATE") 
(define-const var2811 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 == $i3 goto return 1 
(assert (= var2346 var2811)) ; Cond: i0 == $i3 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var2716=com.mysql.cj.jdbc.DatabaseMetaData, var391=r2, var3256=r0, var3031=null_type, var2346=i0, var2811=$i3}
; {com.mysql.cj.jdbc.DatabaseMetaData=var2716, r2=var391, r0=var3256, null_type=var3031, i0=var2346, $i3=var2811}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r2 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("ON UPDATE");	$i3 = (int) -1;	if i0 == $i3 goto return 1;	return 1
;block_num 2