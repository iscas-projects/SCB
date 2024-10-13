(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3343 0)
(declare-sort var829 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var3343 var3343)
(declare-const null-String String)
(declare-const var1844 var3343) ; Statement: r3 := @this: cn.hutool.core.net.multipart.UploadFileHeader 
(assert (not (= var1844 null-var3343)))
(declare-const var176 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var176 null-String)))
(define-const var3038 String "Content-Type:") ; Statement: r0 = "Content-Type:" 
(assert true)
(define-const var3965 Int (indexOf/-1209756239 var176 "Content-Type:")) ; Statement: i1 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>("Content-Type:") 
(define-const var2934 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i1 != $i4 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var3965 var2934))) ; Cond: i1 != $i4 
(assert true)
(define-const var2027 Int (length/-134980193 var3038)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3052 Int (+ var3965 var2027)) ; Statement: i2 = i1 + $i0 
(assert (not (and true (and (>= var3052 0) (>= (str.len var176) var3052)))))
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var3343=cn.hutool.core.net.multipart.UploadFileHeader, var1844=r3, var176=r1, var829=null_type, var3038=r0, var3965=i1, var2934=$i4, var2027=$i0, var3052=i2, var820=$r2}
; {cn.hutool.core.net.multipart.UploadFileHeader=var3343, r3=var1844, r1=var176, null_type=var829, r0=var3038, i1=var3965, $i4=var2934, $i0=var2027, i2=var3052, $r2=var820}
;seq <java.lang.String: int indexOf(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r3 := @this: cn.hutool.core.net.multipart.UploadFileHeader;	r1 := @parameter0: java.lang.String;	r0 = "Content-Type:";	i1 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>("Content-Type:");	$i4 = (int) -1;	if i1 != $i4 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	i2 = i1 + $i0;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2);	return $r2
;block_num 2