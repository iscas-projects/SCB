(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3819 0)
(declare-sort var3656 0)
(declare-sort var2468 0)
(declare-sort var388 0)
(declare-sort var2955 0)
(declare-sort var3623 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun memoizedHashCode/-870802073 (var3656) Int)
(declare-fun cast-from-var3819-to-var3656 (var3819) var3656)
(declare-fun var3819_getDescriptor/-2060082946 () var2468)
(declare-fun hashCode/1739917532 (var388) Int)
(declare-fun cast-from-var2468-to-var388 (var2468) var388)
(declare-fun getName/826251960 (var3819) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getRoot/484401409 (var3819) String)
(declare-fun unknownFields/-753216511 (var3623) var2955)
(declare-fun cast-from-var3819-to-var3623 (var3819) var3623)
(declare-fun hashCode/651586753 (var2955) Int)
(declare-const null-var3819 var3819)
(declare-const var3747 var3819) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin 
(assert (not (= var3747 null-var3819)))
(define-const var2381 Int (memoizedHashCode/-870802073 (cast-from-var3819-to-var3656 var3747))) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin: int memoizedHashCode> 
 ; Statement: if $i0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>() 
(assert (= var2381 0)) ; Cond: $i0 == 0 
(define-const var3245 var2468 var3819_getDescriptor/-2060082946) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>() 
(assert true)
(define-const var2273 Int (hashCode/1739917532 (cast-from-var2468-to-var388 var3245))) ; Statement: $i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var3253 Int (+ 779 var2273)) ; Statement: i11 = 779 + $i1 
(define-const var3455 Int (* 37 var3253)) ; Statement: $i2 = 37 * i11 
(define-const var199 Int (+ var3455 1)) ; Statement: i12 = $i2 + 1 
(define-const var7 Int (* 53 var199)) ; Statement: $i4 = 53 * i12 
(assert true)
(define-const var2287 String (getName/826251960 var3747)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin: java.lang.String getName()>() 
(assert true)
(define-const var3015 Int (hashCode/-467973558 var2287)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1525 Int (+ var7 var3015)) ; Statement: i13 = $i4 + $i3 
(define-const var263 Int (* 37 var1525)) ; Statement: $i5 = 37 * i13 
(define-const var1006 Int (+ var263 2)) ; Statement: i14 = $i5 + 2 
(define-const var74 Int (* 53 var1006)) ; Statement: $i7 = 53 * i14 
(assert true)
(define-const var1915 String (getRoot/484401409 var3747)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin: java.lang.String getRoot()>() 
(assert true)
(define-const var2075 Int (hashCode/-467973558 var1915)) ; Statement: $i6 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3370 Int (+ var74 var2075)) ; Statement: i15 = $i7 + $i6 
(define-const var704 Int (* 29 var3370)) ; Statement: $i9 = 29 * i15 
(define-const var2111 var2955 (unknownFields/-753216511 (cast-from-var3819-to-var3623 var3747))) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet unknownFields> 
(assert true)
(define-const var1834 Int (hashCode/651586753 var2111)) ; Statement: $i8 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet: int hashCode()>() 
(define-const var894 Int (+ var704 var1834)) ; Statement: i16 = $i9 + $i8 
(declare-const var3747!1 var3819)
(assert (not (= var3747!1 null-var3819)))
(assert (= (memoizedHashCode/-870802073 (cast-from-var3819-to-var3656 var3747!1)) var894)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin: int memoizedHashCode> = i16 
 ; Statement: return i16 
(check-sat)
(get-model)
(get-unsat-core)
; {memoizedHashCode/-870802073=([com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite], int), cast-from-var3819-to-var3656=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin], com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite), var3819_getDescriptor/-2060082946=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), hashCode/1739917532=([java.lang.Object], int), cast-from-var2468-to-var388=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.Object), getName/826251960=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin], java.lang.String), hashCode/-467973558=([java.lang.String], int), getRoot/484401409=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin], java.lang.String), unknownFields/-753216511=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3], com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet), cast-from-var3819-to-var3623=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3), hashCode/651586753=([com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet], int)}
; {var3819=com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin, var3747=r0, var3656=com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite, var2381=$i0, var2468=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var3245=$r1, var388=java.lang.Object, var2273=$i1, var3253=i11, var3455=$i2, var199=i12, var7=$i4, var2287=$r2, var3015=$i3, var1525=i13, var263=$i5, var1006=i14, var74=$i7, var1915=$r3, var2075=$i6, var3370=i15, var704=$i9, var2955=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet, var3623=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var2111=$r4, var1834=$i8, var894=i16}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin=var3819, r0=var3747, com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite=var3656, $i0=var2381, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var2468, $r1=var3245, java.lang.Object=var388, $i1=var2273, i11=var3253, $i2=var3455, i12=var199, $i4=var7, $r2=var2287, $i3=var3015, i13=var1525, $i5=var263, i14=var1006, $i7=var74, $r3=var1915, $i6=var2075, i15=var3370, $i9=var704, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet=var2955, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var3623, $r4=var2111, $i8=var1834, i16=var894}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin: int memoizedHashCode>;	if $i0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>();	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>();	$i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i11 = 779 + $i1;	$i2 = 37 * i11;	i12 = $i2 + 1;	$i4 = 53 * i12;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin: java.lang.String getName()>();	$i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i13 = $i4 + $i3;	$i5 = 37 * i13;	i14 = $i5 + 2;	$i7 = 53 * i14;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin: java.lang.String getRoot()>();	$i6 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i15 = $i7 + $i6;	$i9 = 29 * i15;	$r4 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet unknownFields>;	$i8 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet: int hashCode()>();	i16 = $i9 + $i8;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.Mixin: int memoizedHashCode> = i16;	return i16
;block_num 2