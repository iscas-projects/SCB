(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3728 0)
(declare-sort var492 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3728 var3728)
(declare-const null-String String)
(declare-const var3519 var3728) ; Statement: r2 := @this: com.mysql.cj.jdbc.DatabaseMetaData 
(assert (not (= var3519 null-var3728)))
(declare-const var856 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var856 null-String)))
(assert true)
(define-const var3511 Int (indexOf/-1209756239 var856 "ON DELETE")) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("ON DELETE") 
(define-const var2246 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 == $i3 goto return 1 
(assert (= var3511 var2246)) ; Cond: i0 == $i3 
 ; Statement: return 1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var3728=com.mysql.cj.jdbc.DatabaseMetaData, var3519=r2, var856=r0, var492=null_type, var3511=i0, var2246=$i3}
; {com.mysql.cj.jdbc.DatabaseMetaData=var3728, r2=var3519, r0=var856, null_type=var492, i0=var3511, $i3=var2246}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r2 := @this: com.mysql.cj.jdbc.DatabaseMetaData;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(java.lang.String)>("ON DELETE");	$i3 = (int) -1;	if i0 == $i3 goto return 1;	return 1
;block_num 2