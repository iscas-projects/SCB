(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2988 0)
(declare-sort var389 0)
(declare-sort var1578 0)
(declare-sort var2264 0)
(declare-sort var956 0)
(declare-sort var1484 0)
(declare-sort var3023 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun memoizedHashCode/-870802073 (var389) Int)
(declare-fun cast-from-var2988-to-var389 (var2988) var389)
(declare-fun var2988_getDescriptor/-2107215384 () var1578)
(declare-fun hashCode/1739917532 (var2264) Int)
(declare-fun cast-from-var1578-to-var2264 (var1578) var2264)
(declare-fun getScript/-191405854 (var2988) var956)
(declare-fun hashCode/1807053962 (var956) Int)
(declare-fun getSourceFile/-644142282 (var2988) Int)
(declare-fun getSourceMappingUrl/-1507356335 (var2988) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun unknownFields/-753216511 (var3023) var1484)
(declare-fun cast-from-var2988-to-var3023 (var2988) var3023)
(declare-fun hashCode/651586753 (var1484) Int)
(declare-const null-var2988 var2988)
(declare-const var1343 var2988) ; Statement: r0 := @this: com.google.javascript.jscomp.serialization.LazyAst 
(assert (not (= var1343 null-var2988)))
(define-const var2289 Int (memoizedHashCode/-870802073 (cast-from-var2988-to-var389 var1343))) ; Statement: $i0 = r0.<com.google.javascript.jscomp.serialization.LazyAst: int memoizedHashCode> 
 ; Statement: if $i0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.serialization.LazyAst: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>() 
(assert (= var2289 0)) ; Cond: $i0 == 0 
(define-const var948 var1578 var2988_getDescriptor/-2107215384) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.serialization.LazyAst: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>() 
(assert true)
(define-const var319 Int (hashCode/1739917532 (cast-from-var1578-to-var2264 var948))) ; Statement: $i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var2632 Int (+ 779 var319)) ; Statement: i14 = 779 + $i1 
(define-const var2608 Int (* 37 var2632)) ; Statement: $i2 = 37 * i14 
(define-const var58 Int (+ var2608 1)) ; Statement: i15 = $i2 + 1 
(define-const var2957 Int (* 53 var58)) ; Statement: $i4 = 53 * i15 
(assert true)
(define-const var1318 var956 (getScript/-191405854 var1343)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.LazyAst: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString getScript()>() 
(assert true)
(define-const var1281 Int (hashCode/1807053962 var1318)) ; Statement: $i3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int hashCode()>() 
(define-const var3422 Int (+ var2957 var1281)) ; Statement: i16 = $i4 + $i3 
(define-const var436 Int (* 37 var3422)) ; Statement: $i5 = 37 * i16 
(define-const var3576 Int (+ var436 2)) ; Statement: i17 = $i5 + 2 
(define-const var2949 Int (* 53 var3576)) ; Statement: $i7 = 53 * i17 
(assert true)
(define-const var1605 Int (getSourceFile/-644142282 var1343)) ; Statement: $i6 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.LazyAst: int getSourceFile()>() 
(define-const var2194 Int (+ var2949 var1605)) ; Statement: i18 = $i7 + $i6 
(define-const var3136 Int (* 37 var2194)) ; Statement: $i8 = 37 * i18 
(define-const var1902 Int (+ var3136 3)) ; Statement: i19 = $i8 + 3 
(define-const var100 Int (* 53 var1902)) ; Statement: $i10 = 53 * i19 
(assert true)
(define-const var2199 String (getSourceMappingUrl/-1507356335 var1343)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.LazyAst: java.lang.String getSourceMappingUrl()>() 
(assert true)
(define-const var3341 Int (hashCode/-467973558 var2199)) ; Statement: $i9 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2864 Int (+ var100 var3341)) ; Statement: i20 = $i10 + $i9 
(define-const var2252 Int (* 29 var2864)) ; Statement: $i12 = 29 * i20 
(define-const var3725 var1484 (unknownFields/-753216511 (cast-from-var2988-to-var3023 var1343))) ; Statement: $r4 = r0.<com.google.javascript.jscomp.serialization.LazyAst: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet unknownFields> 
(assert true)
(define-const var3218 Int (hashCode/651586753 var3725)) ; Statement: $i11 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet: int hashCode()>() 
(define-const var1333 Int (+ var2252 var3218)) ; Statement: i21 = $i12 + $i11 
(declare-const var1343!1 var2988)
(assert (not (= var1343!1 null-var2988)))
(assert (= (memoizedHashCode/-870802073 (cast-from-var2988-to-var389 var1343!1)) var1333)) ; Statement: r0.<com.google.javascript.jscomp.serialization.LazyAst: int memoizedHashCode> = i21 
 ; Statement: return i21 
(check-sat)
(get-model)
(get-unsat-core)
; {memoizedHashCode/-870802073=([com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite], int), cast-from-var2988-to-var389=([com.google.javascript.jscomp.serialization.LazyAst], com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite), var2988_getDescriptor/-2107215384=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), hashCode/1739917532=([java.lang.Object], int), cast-from-var1578-to-var2264=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.Object), getScript/-191405854=([com.google.javascript.jscomp.serialization.LazyAst], com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString), hashCode/1807053962=([com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString], int), getSourceFile/-644142282=([com.google.javascript.jscomp.serialization.LazyAst], int), getSourceMappingUrl/-1507356335=([com.google.javascript.jscomp.serialization.LazyAst], java.lang.String), hashCode/-467973558=([java.lang.String], int), unknownFields/-753216511=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3], com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet), cast-from-var2988-to-var3023=([com.google.javascript.jscomp.serialization.LazyAst], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3), hashCode/651586753=([com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet], int)}
; {var2988=com.google.javascript.jscomp.serialization.LazyAst, var1343=r0, var389=com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite, var2289=$i0, var1578=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var948=$r1, var2264=java.lang.Object, var319=$i1, var2632=i14, var2608=$i2, var58=i15, var2957=$i4, var956=com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString, var1318=$r2, var1281=$i3, var3422=i16, var436=$i5, var3576=i17, var2949=$i7, var1605=$i6, var2194=i18, var3136=$i8, var1902=i19, var100=$i10, var2199=$r3, var3341=$i9, var2864=i20, var2252=$i12, var1484=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet, var3023=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var3725=$r4, var3218=$i11, var1333=i21}
; {com.google.javascript.jscomp.serialization.LazyAst=var2988, r0=var1343, com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite=var389, $i0=var2289, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var1578, $r1=var948, java.lang.Object=var2264, $i1=var319, i14=var2632, $i2=var2608, i15=var58, $i4=var2957, com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString=var956, $r2=var1318, $i3=var1281, i16=var3422, $i5=var436, i17=var3576, $i7=var2949, $i6=var1605, i18=var2194, $i8=var3136, i19=var1902, $i10=var100, $r3=var2199, $i9=var3341, i20=var2864, $i12=var2252, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet=var1484, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var3023, $r4=var3725, $i11=var3218, i21=var1333}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.serialization.LazyAst;	$i0 = r0.<com.google.javascript.jscomp.serialization.LazyAst: int memoizedHashCode>;	if $i0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.serialization.LazyAst: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>();	$r1 = staticinvoke <com.google.javascript.jscomp.serialization.LazyAst: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>();	$i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i14 = 779 + $i1;	$i2 = 37 * i14;	i15 = $i2 + 1;	$i4 = 53 * i15;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.LazyAst: com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString getScript()>();	$i3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.com.google.protobuf.ByteString: int hashCode()>();	i16 = $i4 + $i3;	$i5 = 37 * i16;	i17 = $i5 + 2;	$i7 = 53 * i17;	$i6 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.LazyAst: int getSourceFile()>();	i18 = $i7 + $i6;	$i8 = 37 * i18;	i19 = $i8 + 3;	$i10 = 53 * i19;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.LazyAst: java.lang.String getSourceMappingUrl()>();	$i9 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i20 = $i10 + $i9;	$i12 = 29 * i20;	$r4 = r0.<com.google.javascript.jscomp.serialization.LazyAst: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet unknownFields>;	$i11 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet: int hashCode()>();	i21 = $i12 + $i11;	r0.<com.google.javascript.jscomp.serialization.LazyAst: int memoizedHashCode> = i21;	return i21
;block_num 2