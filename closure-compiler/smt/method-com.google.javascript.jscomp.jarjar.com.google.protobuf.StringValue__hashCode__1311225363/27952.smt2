(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1380 0)
(declare-sort var519 0)
(declare-sort var2405 0)
(declare-sort var3981 0)
(declare-sort var571 0)
(declare-sort var3874 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun memoizedHashCode/-870802073 (var519) Int)
(declare-fun cast-from-var1380-to-var519 (var1380) var519)
(declare-fun var1380_getDescriptor/2054368127 () var2405)
(declare-fun hashCode/1739917532 (var3981) Int)
(declare-fun cast-from-var2405-to-var3981 (var2405) var3981)
(declare-fun getValue/1136352357 (var1380) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun unknownFields/-753216511 (var3874) var571)
(declare-fun cast-from-var1380-to-var3874 (var1380) var3874)
(declare-fun hashCode/651586753 (var571) Int)
(declare-const null-var1380 var1380)
(declare-const var3849 var1380) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue 
(assert (not (= var3849 null-var1380)))
(define-const var1038 Int (memoizedHashCode/-870802073 (cast-from-var1380-to-var519 var3849))) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue: int memoizedHashCode> 
 ; Statement: if $i0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>() 
(assert (= var1038 0)) ; Cond: $i0 == 0 
(define-const var146 var2405 var1380_getDescriptor/2054368127) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>() 
(assert true)
(define-const var3744 Int (hashCode/1739917532 (cast-from-var2405-to-var3981 var146))) ; Statement: $i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var3838 Int (+ 779 var3744)) ; Statement: i8 = 779 + $i1 
(define-const var922 Int (* 37 var3838)) ; Statement: $i2 = 37 * i8 
(define-const var668 Int (+ var922 1)) ; Statement: i9 = $i2 + 1 
(define-const var1752 Int (* 53 var668)) ; Statement: $i4 = 53 * i9 
(assert true)
(define-const var3462 String (getValue/1136352357 var3849)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue: java.lang.String getValue()>() 
(assert true)
(define-const var422 Int (hashCode/-467973558 var3462)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var3134 Int (+ var1752 var422)) ; Statement: i10 = $i4 + $i3 
(define-const var91 Int (* 29 var3134)) ; Statement: $i6 = 29 * i10 
(define-const var1359 var571 (unknownFields/-753216511 (cast-from-var1380-to-var3874 var3849))) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet unknownFields> 
(assert true)
(define-const var3869 Int (hashCode/651586753 var1359)) ; Statement: $i5 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet: int hashCode()>() 
(define-const var931 Int (+ var91 var3869)) ; Statement: i11 = $i6 + $i5 
(declare-const var3849!1 var1380)
(assert (not (= var3849!1 null-var1380)))
(assert (= (memoizedHashCode/-870802073 (cast-from-var1380-to-var519 var3849!1)) var931)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue: int memoizedHashCode> = i11 
 ; Statement: return i11 
(check-sat)
(get-model)
(get-unsat-core)
; {memoizedHashCode/-870802073=([com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite], int), cast-from-var1380-to-var519=([com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue], com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite), var1380_getDescriptor/2054368127=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), hashCode/1739917532=([java.lang.Object], int), cast-from-var2405-to-var3981=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.Object), getValue/1136352357=([com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue], java.lang.String), hashCode/-467973558=([java.lang.String], int), unknownFields/-753216511=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3], com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet), cast-from-var1380-to-var3874=([com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3), hashCode/651586753=([com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet], int)}
; {var1380=com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue, var3849=r0, var519=com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite, var1038=$i0, var2405=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var146=$r1, var3981=java.lang.Object, var3744=$i1, var3838=i8, var922=$i2, var668=i9, var1752=$i4, var3462=$r2, var422=$i3, var3134=i10, var91=$i6, var571=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet, var3874=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var1359=$r3, var3869=$i5, var931=i11}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue=var1380, r0=var3849, com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite=var519, $i0=var1038, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var2405, $r1=var146, java.lang.Object=var3981, $i1=var3744, i8=var3838, $i2=var922, i9=var668, $i4=var1752, $r2=var3462, $i3=var422, i10=var3134, $i6=var91, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet=var571, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var3874, $r3=var1359, $i5=var3869, i11=var931}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue: int memoizedHashCode>;	if $i0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>();	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>();	$i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i8 = 779 + $i1;	$i2 = 37 * i8;	i9 = $i2 + 1;	$i4 = 53 * i9;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue: java.lang.String getValue()>();	$i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i10 = $i4 + $i3;	$i6 = 29 * i10;	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet unknownFields>;	$i5 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet: int hashCode()>();	i11 = $i6 + $i5;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.StringValue: int memoizedHashCode> = i11;	return i11
;block_num 2