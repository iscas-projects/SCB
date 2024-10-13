(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3904 0)
(declare-sort var678 0)
(declare-sort var2341 0)
(declare-sort var1181 0)
(declare-sort var1962 0)
(declare-sort var274 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun memoizedHashCode/-870802073 (var678) Int)
(declare-fun cast-from-var3904-to-var678 (var3904) var678)
(declare-fun var3904_getDescriptor/1057019245 () var2341)
(declare-fun hashCode/1739917532 (var1181) Int)
(declare-fun cast-from-var2341-to-var1181 (var2341) var1181)
(declare-fun getActualPath/-2039241313 (var3904) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getCharset/942475452 (var3904) String)
(declare-fun unknownFields/-753216511 (var274) var1962)
(declare-fun cast-from-var3904-to-var274 (var3904) var274)
(declare-fun hashCode/651586753 (var1962) Int)
(declare-const null-var3904 var3904)
(declare-const var397 var3904) ; Statement: r0 := @this: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk 
(assert (not (= var397 null-var3904)))
(define-const var1340 Int (memoizedHashCode/-870802073 (cast-from-var3904-to-var678 var397))) ; Statement: $i0 = r0.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: int memoizedHashCode> 
 ; Statement: if $i0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>() 
(assert (= var1340 0)) ; Cond: $i0 == 0 
(define-const var3001 var2341 var3904_getDescriptor/1057019245) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>() 
(assert true)
(define-const var2910 Int (hashCode/1739917532 (cast-from-var2341-to-var1181 var3001))) ; Statement: $i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var1470 Int (+ 779 var2910)) ; Statement: i11 = 779 + $i1 
(define-const var1006 Int (* 37 var1470)) ; Statement: $i2 = 37 * i11 
(define-const var419 Int (+ var1006 1)) ; Statement: i12 = $i2 + 1 
(define-const var1543 Int (* 53 var419)) ; Statement: $i4 = 53 * i12 
(assert true)
(define-const var68 String (getActualPath/-2039241313 var397)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: java.lang.String getActualPath()>() 
(assert true)
(define-const var1378 Int (hashCode/-467973558 var68)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var3756 Int (+ var1543 var1378)) ; Statement: i13 = $i4 + $i3 
(define-const var2029 Int (* 37 var3756)) ; Statement: $i5 = 37 * i13 
(define-const var1057 Int (+ var2029 2)) ; Statement: i14 = $i5 + 2 
(define-const var1659 Int (* 53 var1057)) ; Statement: $i7 = 53 * i14 
(assert true)
(define-const var1605 String (getCharset/942475452 var397)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: java.lang.String getCharset()>() 
(assert true)
(define-const var263 Int (hashCode/-467973558 var1605)) ; Statement: $i6 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var533 Int (+ var1659 var263)) ; Statement: i15 = $i7 + $i6 
(define-const var3456 Int (* 29 var533)) ; Statement: $i9 = 29 * i15 
(define-const var825 var1962 (unknownFields/-753216511 (cast-from-var3904-to-var274 var397))) ; Statement: $r4 = r0.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet unknownFields> 
(assert true)
(define-const var954 Int (hashCode/651586753 var825)) ; Statement: $i8 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet: int hashCode()>() 
(define-const var2032 Int (+ var3456 var954)) ; Statement: i16 = $i9 + $i8 
(declare-const var397!1 var3904)
(assert (not (= var397!1 null-var3904)))
(assert (= (memoizedHashCode/-870802073 (cast-from-var3904-to-var678 var397!1)) var2032)) ; Statement: r0.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: int memoizedHashCode> = i16 
 ; Statement: return i16 
(check-sat)
(get-model)
(get-unsat-core)
; {memoizedHashCode/-870802073=([com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite], int), cast-from-var3904-to-var678=([com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk], com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite), var3904_getDescriptor/1057019245=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), hashCode/1739917532=([java.lang.Object], int), cast-from-var2341-to-var1181=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.Object), getActualPath/-2039241313=([com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk], java.lang.String), hashCode/-467973558=([java.lang.String], int), getCharset/942475452=([com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk], java.lang.String), unknownFields/-753216511=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3], com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet), cast-from-var3904-to-var274=([com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3), hashCode/651586753=([com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet], int)}
; {var3904=com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk, var397=r0, var678=com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite, var1340=$i0, var2341=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var3001=$r1, var1181=java.lang.Object, var2910=$i1, var1470=i11, var1006=$i2, var419=i12, var1543=$i4, var68=$r2, var1378=$i3, var3756=i13, var2029=$i5, var1057=i14, var1659=$i7, var1605=$r3, var263=$i6, var533=i15, var3456=$i9, var1962=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet, var274=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var825=$r4, var954=$i8, var2032=i16}
; {com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk=var3904, r0=var397, com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite=var678, $i0=var1340, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var2341, $r1=var3001, java.lang.Object=var1181, $i1=var2910, i11=var1470, $i2=var1006, i12=var419, $i4=var1543, $r2=var68, $i3=var1378, i13=var3756, $i5=var2029, i14=var1057, $i7=var1659, $r3=var1605, $i6=var263, i15=var533, $i9=var3456, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet=var1962, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var274, $r4=var825, $i8=var954, i16=var2032}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk;	$i0 = r0.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: int memoizedHashCode>;	if $i0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>();	$r1 = staticinvoke <com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>();	$i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i11 = 779 + $i1;	$i2 = 37 * i11;	i12 = $i2 + 1;	$i4 = 53 * i12;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: java.lang.String getActualPath()>();	$i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i13 = $i4 + $i3;	$i5 = 37 * i13;	i14 = $i5 + 2;	$i7 = 53 * i14;	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: java.lang.String getCharset()>();	$i6 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	i15 = $i7 + $i6;	$i9 = 29 * i15;	$r4 = r0.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet unknownFields>;	$i8 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet: int hashCode()>();	i16 = $i9 + $i8;	r0.<com.google.javascript.jscomp.serialization.SourceFileProto$FileOnDisk: int memoizedHashCode> = i16;	return i16
;block_num 2