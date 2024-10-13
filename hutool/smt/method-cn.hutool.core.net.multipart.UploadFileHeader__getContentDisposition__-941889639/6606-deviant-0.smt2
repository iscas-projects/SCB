(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2240 0)
(declare-sort var1996 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var2240 var2240)
(declare-const null-String String)
(declare-const var2324 var2240) ; Statement: r2 := @this: cn.hutool.core.net.multipart.UploadFileHeader 
(assert (not (= var2324 null-var2240)))
(declare-const var721 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var721 null-String)))
(assert true)
(define-const var3216 Int (indexOf/-1037706067 var721 58)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58) 
(define-const var3449 Int (+ var3216 1)) ; Statement: i1 = $i0 + 1 
(assert true)
(define-const var1789 Int (indexOf/-1037706067 var721 59)) ; Statement: i2 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(59) 
(assert (not (and true (and (>= var3449 0) (>= (str.len var721) var1789) (>= var1789 var3449)))))
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2240=cn.hutool.core.net.multipart.UploadFileHeader, var2324=r2, var721=r0, var1996=null_type, var3216=$i0, var3449=i1, var1789=i2, var3508=$r1}
; {cn.hutool.core.net.multipart.UploadFileHeader=var2240, r2=var2324, r0=var721, null_type=var1996, $i0=var3216, i1=var3449, i2=var1789, $r1=var3508}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int indexOf(int)>": 2,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r2 := @this: cn.hutool.core.net.multipart.UploadFileHeader;	r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(58);	i1 = $i0 + 1;	i2 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(59);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i1, i2);	return $r1
;block_num 1