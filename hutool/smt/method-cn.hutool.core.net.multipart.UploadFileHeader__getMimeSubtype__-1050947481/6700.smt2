(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1226 0)
(declare-sort var152 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var1226 var1226)
(declare-const null-String String)
(declare-const var243 var1226) ; Statement: r2 := @this: cn.hutool.core.net.multipart.UploadFileHeader 
(assert (not (= var243 null-var1226)))
(declare-const var2468 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2468 null-String)))
(assert true)
(define-const var3963 Int (indexOf/-1037706067 var2468 47)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(47) 
(define-const var272 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i3 = (int) -1 
 ; Statement: if i0 != $i3 goto i1 = i0 + 1 
(assert (not (= var3963 var272))) ; Cond: i0 != $i3 
(define-const var2713 Int (+ var3963 1)) ; Statement: i1 = i0 + 1 
(assert (and true (and (>= var2713 0) (>= (str.len var2468) var2713))))
(define-const var2268 String (substring/850833817 var2468 var2713)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i1) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var1226=cn.hutool.core.net.multipart.UploadFileHeader, var243=r2, var2468=r0, var152=null_type, var3963=i0, var272=$i3, var2713=i1, var2268=$r1}
; {cn.hutool.core.net.multipart.UploadFileHeader=var1226, r2=var243, r0=var2468, null_type=var152, i0=var3963, $i3=var272, i1=var2713, $r1=var2268}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r2 := @this: cn.hutool.core.net.multipart.UploadFileHeader;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(47);	$i3 = (int) -1;	if i0 != $i3 goto i1 = i0 + 1;	i1 = i0 + 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i1);	return $r1
;block_num 2