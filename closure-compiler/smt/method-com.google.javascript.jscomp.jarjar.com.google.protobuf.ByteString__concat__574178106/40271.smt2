(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1884 0)
(declare-sort var383 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun size/716358372 (var1884) Int)
(declare-fun var383_concatenate/-1643057940 (var1884 var1884) var1884)
(declare-const null-var1884 var1884)
(declare-const var3163 var1884) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString 
(assert (not (= var3163 null-var1884)))
(declare-const var3711 var1884) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString 
(assert (not (= var3711 null-var1884)))
(assert true)
(define-const var3490 Int (size/716358372 var3163)) ; Statement: $i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
(define-const var1212 Int (- 2147483647 var3490)) ; Statement: $i2 = 2147483647 - $i0 
(assert true)
(define-const var92 Int (size/716358372 var3711)) ; Statement: $i1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>() 
 ; Statement: if $i2 >= $i1 goto $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString concatenate(com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString,com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString)>(r0, r1) 
(assert (>= var1212 var92)) ; Cond: $i2 >= $i1 
(define-const var3455 var1884 (var383_concatenate/-1643057940 var3163 var3711)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString concatenate(com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString,com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString)>(r0, r1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {size/716358372=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], int), var383_concatenate/-1643057940=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString)}
; {var1884=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var3163=r0, var3711=r1, var3490=$i0, var1212=$i2, var92=$i1, var383=com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString, var3455=$r2}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var1884, r0=var3163, r1=var3711, $i0=var3490, $i2=var1212, $i1=var92, com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString=var383, $r2=var3455}
;seq 
;cnt {}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString;	$i0 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	$i2 = 2147483647 - $i0;	$i1 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int size()>();	if $i2 >= $i1 goto $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString concatenate(com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString,com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString)>(r0, r1);	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.RopeByteString: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString concatenate(com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString,com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString)>(r0, r1);	return $r2
;block_num 2