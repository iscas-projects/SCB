(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2767 0)
(declare-sort var261 0)
(declare-sort var2204 0)
(declare-sort var799 0)
(declare-sort var180 0)
(declare-sort var1127 0)
(declare-sort var412 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun memoizedHashCode/-870802073 (var261) Int)
(declare-fun cast-from-var2767-to-var261 (var2767) var261)
(declare-fun var2767_getDescriptor/-1742713101 () var2204)
(declare-fun hashCode/1739917532 (var799) Int)
(declare-fun cast-from-var2204-to-var799 (var2204) var799)
(declare-fun getTypeUrl/-2091990195 (var2767) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getValue/1598395313 (var2767) var180)
(declare-fun hashCode/1807053962 (var180) Int)
(declare-fun unknownFields/-753216511 (var412) var1127)
(declare-fun cast-from-var2767-to-var412 (var2767) var412)
(declare-fun hashCode/651586753 (var1127) Int)
(declare-const null-var2767 var2767)
(declare-const var3633 var2767) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Any 
(assert (not (= var3633 null-var2767)))
(define-const var2400 Int (memoizedHashCode/-870802073 (cast-from-var2767-to-var261 var3633))) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: int memoizedHashCode> 
 ; Statement: if $i0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>() 
(assert (= var2400 0)) ; Cond: $i0 == 0 
(define-const var899 var2204 var2767_getDescriptor/-1742713101) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>() 
(assert true)
(define-const var1830 Int (hashCode/1739917532 (cast-from-var2204-to-var799 var899))) ; Statement: $i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var1625 Int (+ 779 var1830)) ; Statement: i11 = 779 + $i1 
(define-const var3803 Int (* 37 var1625)) ; Statement: $i2 = 37 * i11 
(define-const var1226 Int (+ var3803 1)) ; Statement: i12 = $i2 + 1 
(define-const var140 Int (* 53 var1226)) ; Statement: $i4 = 53 * i12 
(assert true)
(define-const var665 String (getTypeUrl/-2091990195 var3633)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: java.lang.String getTypeUrl()>() 
(assert true)
(define-const var1936 Int (hashCode/-467973558 var665)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var612 Int (+ var140 var1936)) ; Statement: i13 = $i4 + $i3 
(define-const var1167 Int (* 37 var612)) ; Statement: $i5 = 37 * i13 
(define-const var1622 Int (+ var1167 2)) ; Statement: i14 = $i5 + 2 
(define-const var1481 Int (* 53 var1622)) ; Statement: $i7 = 53 * i14 
(assert true)
(define-const var780 var180 (getValue/1598395313 var3633)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString getValue()>() 
(assert true)
(define-const var3594 Int (hashCode/1807053962 var780)) ; Statement: $i6 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int hashCode()>() 
(define-const var2038 Int (+ var1481 var3594)) ; Statement: i15 = $i7 + $i6 
(define-const var312 Int (* 29 var2038)) ; Statement: $i9 = 29 * i15 
(define-const var91 var1127 (unknownFields/-753216511 (cast-from-var2767-to-var412 var3633))) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet unknownFields> 
(assert true)
(define-const var567 Int (hashCode/651586753 var91)) ; Statement: $i8 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet: int hashCode()>() 
(define-const var3675 Int (+ var312 var567)) ; Statement: i16 = $i9 + $i8 
(declare-const var3633!1 var2767)
(assert (not (= var3633!1 null-var2767)))
(assert (= (memoizedHashCode/-870802073 (cast-from-var2767-to-var261 var3633!1)) var3675)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: int memoizedHashCode> = i16 
 ; Statement: return i16 
(check-sat)
(get-model)
(get-unsat-core)
; {memoizedHashCode/-870802073=([com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite], int), cast-from-var2767-to-var261=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Any], com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite), var2767_getDescriptor/-1742713101=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), hashCode/1739917532=([java.lang.Object], int), cast-from-var2204-to-var799=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.Object), getTypeUrl/-2091990195=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Any], java.lang.String), hashCode/-467973558=([java.lang.String], int), getValue/1598395313=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Any], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString), hashCode/1807053962=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], int), unknownFields/-753216511=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3], com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet), cast-from-var2767-to-var412=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Any], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3), hashCode/651586753=([com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet], int)}
; {var2767=com.google.javascript.jscomp.jarjar.com.google.protobuf.Any, var3633=r0, var261=com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite, var2400=$i0, var2204=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var899=$r1, var799=java.lang.Object, var1830=$i1, var1625=i11, var3803=$i2, var1226=i12, var140=$i4, var665=$r2, var1936=$i3, var612=i13, var1167=$i5, var1622=i14, var1481=$i7, var180=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var780=$r3, var3594=$i6, var2038=i15, var312=$i9, var1127=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet, var412=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var91=$r4, var567=$i8, var3675=i16}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Any=var2767, r0=var3633, com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite=var261, $i0=var2400, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var2204, $r1=var899, java.lang.Object=var799, $i1=var1830, i11=var1625, $i2=var3803, i12=var1226, $i4=var140, $r2=var665, $i3=var1936, i13=var612, $i5=var1167, i14=var1622, $i7=var1481, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var180, $r3=var780, $i6=var3594, i15=var2038, $i9=var312, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet=var1127, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var412, $r4=var91, $i8=var567, i16=var3675}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Any;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: int memoizedHashCode>;	if $i0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>();	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>();	$i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i11 = 779 + $i1;	$i2 = 37 * i11;	i12 = $i2 + 1;	$i4 = 53 * i12;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: java.lang.String getTypeUrl()>();	$i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i13 = $i4 + $i3;	$i5 = 37 * i13;	i14 = $i5 + 2;	$i7 = 53 * i14;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString getValue()>();	$i6 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int hashCode()>();	i15 = $i7 + $i6;	$i9 = 29 * i15;	$r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet unknownFields>;	$i8 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet: int hashCode()>();	i16 = $i9 + $i8;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Any: int memoizedHashCode> = i16;	return i16
;block_num 2