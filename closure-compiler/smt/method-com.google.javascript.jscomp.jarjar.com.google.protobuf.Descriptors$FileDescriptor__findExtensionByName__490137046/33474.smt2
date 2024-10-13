(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1562 0)
(declare-sort var2169 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1562 var1562)
(declare-const null-String String)
(declare-const var1998 var1562) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor 
(assert (not (= var1998 null-var1562)))
(declare-const var430 String) ; Statement: r10 := @parameter0: java.lang.String 
(assert (not (= var430 null-String)))
(assert true)
(define-const var2413 Int (indexOf/-1037706067 var430 46)) ; Statement: $i0 = virtualinvoke r10.<java.lang.String: int indexOf(int)>(46) 
(define-const var1273 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 == $i2 goto r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: java.lang.String getPackage()>() 
(assert (not (= var2413 var1273))) ; Negate: Cond: $i0 == $i2  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var1562=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor, var1998=r0, var430=r10, var2169=null_type, var2413=$i0, var1273=$i2}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor=var1562, r0=var1998, r10=var430, null_type=var2169, $i0=var2413, $i2=var1273}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor;	r10 := @parameter0: java.lang.String;	$i0 = virtualinvoke r10.<java.lang.String: int indexOf(int)>(46);	$i2 = (int) -1;	if $i0 == $i2 goto r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$FileDescriptor: java.lang.String getPackage()>();	return null
;block_num 2