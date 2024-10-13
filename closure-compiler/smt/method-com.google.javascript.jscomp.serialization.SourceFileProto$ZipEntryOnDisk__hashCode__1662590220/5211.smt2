(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2488 0)
(declare-sort var2221 0)
(declare-sort var437 0)
(declare-sort var2341 0)
(declare-sort var3230 0)
(declare-sort var1035 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun memoizedHashCode/-870802073 (var2221) Int)
(declare-fun cast-from-var2488-to-var2221 (var2488) var2221)
(declare-fun var2488_getDescriptor/866990200 () var437)
(declare-fun hashCode/1739917532 (var2341) Int)
(declare-fun cast-from-var437-to-var2341 (var437) var2341)
(declare-fun getZipPath/2106313847 (var2488) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getEntryName/-305084960 (var2488) String)
(declare-fun getCharset/83476561 (var2488) String)
(declare-fun unknownFields/-753216511 (var1035) var3230)
(declare-fun cast-from-var2488-to-var1035 (var2488) var1035)
(declare-fun hashCode/651586753 (var3230) Int)
(declare-const null-var2488 var2488)
(declare-const var2293 var2488) ; Statement: r0 := @this: com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk 
(assert (not (= var2293 null-var2488)))
(define-const var3412 Int (memoizedHashCode/-870802073 (cast-from-var2488-to-var2221 var2293))) ; Statement: $i0 = r0.<com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk: int memoizedHashCode> 
 ; Statement: if $i0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>() 
(assert (= var3412 0)) ; Cond: $i0 == 0 
(define-const var3137 var437 var2488_getDescriptor/866990200) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>() 
(assert true)
(define-const var3478 Int (hashCode/1739917532 (cast-from-var437-to-var2341 var3137))) ; Statement: $i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var1165 Int (+ 779 var3478)) ; Statement: i14 = 779 + $i1 
(define-const var2232 Int (* 37 var1165)) ; Statement: $i2 = 37 * i14 
(define-const var3752 Int (+ var2232 1)) ; Statement: i15 = $i2 + 1 
(define-const var3615 Int (* 53 var3752)) ; Statement: $i4 = 53 * i15 
(assert true)
(define-const var3238 String (getZipPath/2106313847 var2293)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk: java.lang.String getZipPath()>() 
(assert true)
(define-const var1763 Int (hashCode/-467973558 var3238)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var1668 Int (+ var3615 var1763)) ; Statement: i16 = $i4 + $i3 
(define-const var531 Int (* 37 var1668)) ; Statement: $i5 = 37 * i16 
(define-const var576 Int (+ var531 2)) ; Statement: i17 = $i5 + 2 
(define-const var330 Int (* 53 var576)) ; Statement: $i7 = 53 * i17 
(assert true)
(define-const var3093 String (getEntryName/-305084960 var2293)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk: java.lang.String getEntryName()>() 
(assert true)
(define-const var1188 Int (hashCode/-467973558 var3093)) ; Statement: $i6 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3268 Int (+ var330 var1188)) ; Statement: i18 = $i7 + $i6 
(define-const var3731 Int (* 37 var3268)) ; Statement: $i8 = 37 * i18 
(define-const var2578 Int (+ var3731 3)) ; Statement: i19 = $i8 + 3 
(define-const var3090 Int (* 53 var2578)) ; Statement: $i10 = 53 * i19 
(assert true)
(define-const var2460 String (getCharset/83476561 var2293)) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk: java.lang.String getCharset()>() 
(assert true)
(define-const var949 Int (hashCode/-467973558 var2460)) ; Statement: $i9 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2913 Int (+ var3090 var949)) ; Statement: i20 = $i10 + $i9 
(define-const var1879 Int (* 29 var2913)) ; Statement: $i12 = 29 * i20 
(define-const var1664 var3230 (unknownFields/-753216511 (cast-from-var2488-to-var1035 var2293))) ; Statement: $r5 = r0.<com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet unknownFields> 
(assert true)
(define-const var135 Int (hashCode/651586753 var1664)) ; Statement: $i11 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet: int hashCode()>() 
(define-const var2892 Int (+ var1879 var135)) ; Statement: i21 = $i12 + $i11 
(declare-const var2293!1 var2488)
(assert (not (= var2293!1 null-var2488)))
(assert (= (memoizedHashCode/-870802073 (cast-from-var2488-to-var2221 var2293!1)) var2892)) ; Statement: r0.<com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk: int memoizedHashCode> = i21 
 ; Statement: return i21 
(check-sat)
(get-model)
(get-unsat-core)
; {memoizedHashCode/-870802073=([com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite], int), cast-from-var2488-to-var2221=([com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk], com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite), var2488_getDescriptor/866990200=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), hashCode/1739917532=([java.lang.Object], int), cast-from-var437-to-var2341=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.Object), getZipPath/2106313847=([com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk], java.lang.String), hashCode/-467973558=([java.lang.String], int), getEntryName/-305084960=([com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk], java.lang.String), getCharset/83476561=([com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk], java.lang.String), unknownFields/-753216511=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3], com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet), cast-from-var2488-to-var1035=([com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3), hashCode/651586753=([com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet], int)}
; {var2488=com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk, var2293=r0, var2221=com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite, var3412=$i0, var437=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var3137=$r1, var2341=java.lang.Object, var3478=$i1, var1165=i14, var2232=$i2, var3752=i15, var3615=$i4, var3238=$r2, var1763=$i3, var1668=i16, var531=$i5, var576=i17, var330=$i7, var3093=$r3, var1188=$i6, var3268=i18, var3731=$i8, var2578=i19, var3090=$i10, var2460=$r4, var949=$i9, var2913=i20, var1879=$i12, var3230=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet, var1035=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var1664=$r5, var135=$i11, var2892=i21}
; {com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk=var2488, r0=var2293, com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite=var2221, $i0=var3412, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var437, $r1=var3137, java.lang.Object=var2341, $i1=var3478, i14=var1165, $i2=var2232, i15=var3752, $i4=var3615, $r2=var3238, $i3=var1763, i16=var1668, $i5=var531, i17=var576, $i7=var330, $r3=var3093, $i6=var1188, i18=var3268, $i8=var3731, i19=var2578, $i10=var3090, $r4=var2460, $i9=var949, i20=var2913, $i12=var1879, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet=var3230, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var1035, $r5=var1664, $i11=var135, i21=var2892}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk;	$i0 = r0.<com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk: int memoizedHashCode>;	if $i0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>();	$r1 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>();	$i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i14 = 779 + $i1;	$i2 = 37 * i14;	i15 = $i2 + 1;	$i4 = 53 * i15;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk: java.lang.String getZipPath()>();	$i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i16 = $i4 + $i3;	$i5 = 37 * i16;	i17 = $i5 + 2;	$i7 = 53 * i17;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk: java.lang.String getEntryName()>();	$i6 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i18 = $i7 + $i6;	$i8 = 37 * i18;	i19 = $i8 + 3;	$i10 = 53 * i19;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk: java.lang.String getCharset()>();	$i9 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	i20 = $i10 + $i9;	$i12 = 29 * i20;	$r5 = r0.<com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet unknownFields>;	$i11 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet: int hashCode()>();	i21 = $i12 + $i11;	r0.<com.google.javascript.jscomp.serialization.SourceFileProto$ZipEntryOnDisk: int memoizedHashCode> = i21;	return i21
;block_num 2