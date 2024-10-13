(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1442 0)
(declare-sort var398 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1442 var1442)
(declare-const null-String String)
(declare-const var3210 var1442) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor 
(assert (not (= var3210 null-var1442)))
(declare-const var2474 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var2474 null-String)))
(assert true)
(define-const var3723 Int (indexOf/-1037706067 var2474 46)) ; Statement: $i0 = virtualinvoke r10.<java.lang.String: int indexOf(int)>(46) 
(define-const var1576 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 == $i2 goto r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: java.lang.String getPackage()>() 
(assert (not (= var3723 var1576))) ; Negate: Cond: $i0 == $i2  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1442=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var3210=r0, var2474=r10, var398=null_type, var3723=$i0, var1576=$i2}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var1442, r0=var3210, r10=var2474, null_type=var398, $i0=var3723, $i2=var1576}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor;	r10 := @parameter0: java.lang.String;	$i0 = virtualinvoke r10.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if $i0 == $i2 goto r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: java.lang.String getPackage()>();	return null
;block_num 2