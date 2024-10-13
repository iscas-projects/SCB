(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2320 0)
(declare-sort var2879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var2320 var2320)
(declare-const null-String String)
(declare-const var3867 var2320) ; Statement: r2 := @this: cn.hutool.core.net.multipart.UploadFileHeader 
(assert (not (= var3867 null-var2320)))
(declare-const var691 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var691 null-String)))
(assert true)
(define-const var1320 Int (indexOf/-1037706067 var691 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(47) 
(define-const var555 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, i0) 
(assert (not (not (= var1320 var555)))) ; Negate: Cond: i0 != $i2  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var2320=cn.hutool.core.net.multipart.UploadFileHeader, var3867=r2, var691=r0, var2879=null_type, var1320=i0, var555=$i2}
; {cn.hutool.core.net.multipart.UploadFileHeader=var2320, r2=var3867, r0=var691, null_type=var2879, i0=var1320, $i2=var555}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r2 := @this: cn.hutool.core.net.multipart.UploadFileHeader;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(47);	$i2 = (int) -1;	if i0 != $i2 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, i0);	return r0
;block_num 2