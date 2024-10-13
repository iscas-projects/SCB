(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3553 0)
(declare-sort var133 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3553 var3553)
(declare-const null-String String)
(declare-const var2390 var3553) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor 
(assert (not (= var2390 null-var3553)))
(declare-const var2994 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var2994 null-String)))
(assert true)
(define-const var2944 Int (indexOf/-1037706067 var2994 46)) ; Statement: $i0 = virtualinvoke r10.<java.lang.String: int indexOf(int)>(46) 
(define-const var1497 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 == $i2 goto r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: java.lang.String getPackage()>() 
(assert (not (= var2944 var1497))) ; Negate: Cond: $i0 == $i2  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var3553=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var2390=r0, var2994=r10, var133=null_type, var2944=$i0, var1497=$i2}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var3553, r0=var2390, r10=var2994, null_type=var133, $i0=var2944, $i2=var1497}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor;	r10 := @parameter0: java.lang.String;	$i0 = virtualinvoke r10.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if $i0 == $i2 goto r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: java.lang.String getPackage()>();	return null
;block_num 2