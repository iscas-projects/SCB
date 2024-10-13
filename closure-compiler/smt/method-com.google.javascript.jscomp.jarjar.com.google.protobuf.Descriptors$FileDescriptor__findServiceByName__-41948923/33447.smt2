(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1936 0)
(declare-sort var3879 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1936 var1936)
(declare-const null-String String)
(declare-const var361 var1936) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor 
(assert (not (= var361 null-var1936)))
(declare-const var780 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var780 null-String)))
(assert true)
(define-const var3948 Int (indexOf/-1037706067 var780 46)) ; Statement: $i0 = virtualinvoke r10.<java.lang.String: int indexOf(int)>(46) 
(define-const var1133 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 == $i2 goto r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: java.lang.String getPackage()>() 
(assert (not (= var3948 var1133))) ; Negate: Cond: $i0 == $i2  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1936=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var361=r0, var780=r10, var3879=null_type, var3948=$i0, var1133=$i2}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var1936, r0=var361, r10=var780, null_type=var3879, $i0=var3948, $i2=var1133}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor;	r10 := @parameter0: java.lang.String;	$i0 = virtualinvoke r10.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if $i0 == $i2 goto r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: java.lang.String getPackage()>();	return null
;block_num 2