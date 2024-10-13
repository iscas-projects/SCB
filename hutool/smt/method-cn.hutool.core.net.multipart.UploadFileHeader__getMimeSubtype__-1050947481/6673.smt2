(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1468 0)
(declare-sort var82 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1468 var1468)
(declare-const null-String String)
(declare-const var1507 var1468) ; Statement: r2 := @this: cn.hutool.core.net.multipart.UploadFileHeader 
(assert (not (= var1507 null-var1468)))
(declare-const var3534 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3534 null-String)))
(assert true)
(define-const var321 Int (indexOf/-1037706067 var3534 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(47) 
(define-const var3220 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto i1 = i0 + 1 
(assert (not (not (= var321 var3220)))) ; Negate: Cond: i0 != $i3  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1468=cn.hutool.core.net.multipart.UploadFileHeader, var1507=r2, var3534=r0, var82=null_type, var321=i0, var3220=$i3}
; {cn.hutool.core.net.multipart.UploadFileHeader=var1468, r2=var1507, r0=var3534, null_type=var82, i0=var321, $i3=var3220}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r2 := @this: cn.hutool.core.net.multipart.UploadFileHeader;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(47);	$i3 = (int) -1;	if i0 != $i3 goto i1 = i0 + 1;	return r0
;block_num 2