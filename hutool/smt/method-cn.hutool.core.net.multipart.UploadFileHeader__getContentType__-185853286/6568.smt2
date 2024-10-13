(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var819 0)
(declare-sort var36 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1209756239 ((s String) (subs String)) Int (str.indexof s subs 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var819 var819)
(declare-const null-String String)
(declare-const var1652 var819) ; Statement: r3 := @this: cn.hutool.core.net.multipart.UploadFileHeader 
(assert (not (= var1652 null-var819)))
(declare-const var101 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var101 null-String)))
(define-const var1588 String "Content-Type:") ; Statement: r0 = "Content-Type:" 
(assert true)
(define-const var1245 Int (indexOf/-1209756239 var101 "Content-Type:")) ; Statement: i1 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>("Content-Type:") 
(define-const var1687 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if i1 != $i4 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (not (= var1245 var1687)))) ; Negate: Cond: i1 != $i4  
 ; Statement: return "" 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1209756239=([java.lang.String, java.lang.String], int), cast-from-Int-to-Int=([int], int)}
; {var819=cn.hutool.core.net.multipart.UploadFileHeader, var1652=r3, var101=r1, var36=null_type, var1588=r0, var1245=i1, var1687=$i4}
; {cn.hutool.core.net.multipart.UploadFileHeader=var819, r3=var1652, r1=var101, null_type=var36, r0=var1588, i1=var1245, $i4=var1687}
;seq <java.lang.String: int indexOf(java.lang.String)>
;cnt {"<java.lang.String: int indexOf(java.lang.String)>": 1}
;stmts r3 := @this: cn.hutool.core.net.multipart.UploadFileHeader;	r1 := @parameter0: java.lang.String;	r0 = "Content-Type:";	i1 = virtualinvoke r1.<java.lang.String: int indexOf(java.lang.String)>("Content-Type:");	$i4 = (int) -1;	if i1 != $i4 goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	return ""
;block_num 2