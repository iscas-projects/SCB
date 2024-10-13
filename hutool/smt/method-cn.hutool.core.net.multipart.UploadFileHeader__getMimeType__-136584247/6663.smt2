(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1715 0)
(declare-sort var1014 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1715 var1715)
(declare-const null-String String)
(declare-const var3632 var1715) ; Statement: r2 := @this: cn.hutool.core.net.multipart.UploadFileHeader 
(assert (not (= var3632 null-var1715)))
(declare-const var3054 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3054 null-String)))
(assert true)
(define-const var3742 Int (indexOf/-1037706067 var3054 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(47) 
(define-const var1061 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, i0) 
(assert (not (= var3742 var1061))) ; Cond: i0 != $i2 
(assert (and true (and (>= 1 0) (>= (str.len var3054) var3742) (>= var3742 1))))
(define-const var2861 String (substring/-1240304868 var3054 1 var3742)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, i0) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1715=cn.hutool.core.net.multipart.UploadFileHeader, var3632=r2, var3054=r0, var1014=null_type, var3742=i0, var1061=$i2, var2861=$r1}
; {cn.hutool.core.net.multipart.UploadFileHeader=var1715, r2=var3632, r0=var3054, null_type=var1014, i0=var3742, $i2=var1061, $r1=var2861}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r2 := @this: cn.hutool.core.net.multipart.UploadFileHeader;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(47);	$i2 = (int) -1;	if i0 != $i2 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, i0);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, i0);	return $r1
;block_num 2