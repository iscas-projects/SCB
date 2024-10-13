(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3273 0)
(declare-sort var3201 0)
(declare-sort var1988 0)
(declare-sort var2800 0)
(declare-sort var462 0)
(declare-sort var24 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun memoizedHashCode/-870802073 (var3201) Int)
(declare-fun cast-from-var3273-to-var3201 (var3273) var3201)
(declare-fun var3273_getDescriptor/-312436021 () var1988)
(declare-fun hashCode/1739917532 (var2800) Int)
(declare-fun cast-from-var1988-to-var2800 (var1988) var2800)
(declare-fun getFileName/-154802071 (var3273) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun unknownFields/-753216511 (var24) var462)
(declare-fun cast-from-var3273-to-var24 (var3273) var24)
(declare-fun hashCode/651586753 (var462) Int)
(declare-const null-var3273 var3273)
(declare-const var1805 var3273) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext 
(assert (not (= var1805 null-var3273)))
(define-const var1843 Int (memoizedHashCode/-870802073 (cast-from-var3273-to-var3201 var1805))) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext: int memoizedHashCode> 
 ; Statement: if $i0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>() 
(assert (= var1843 0)) ; Cond: $i0 == 0 
(define-const var93 var1988 var3273_getDescriptor/-312436021) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>() 
(assert true)
(define-const var1732 Int (hashCode/1739917532 (cast-from-var1988-to-var2800 var93))) ; Statement: $i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>() 
(define-const var3877 Int (+ 779 var1732)) ; Statement: i8 = 779 + $i1 
(define-const var693 Int (* 37 var3877)) ; Statement: $i2 = 37 * i8 
(define-const var2829 Int (+ var693 1)) ; Statement: i9 = $i2 + 1 
(define-const var2271 Int (* 53 var2829)) ; Statement: $i4 = 53 * i9 
(assert true)
(define-const var2110 String (getFileName/-154802071 var1805)) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext: java.lang.String getFileName()>() 
(assert true)
(define-const var313 Int (hashCode/-467973558 var2110)) ; Statement: $i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var706 Int (+ var2271 var313)) ; Statement: i10 = $i4 + $i3 
(define-const var1667 Int (* 29 var706)) ; Statement: $i6 = 29 * i10 
(define-const var1961 var462 (unknownFields/-753216511 (cast-from-var3273-to-var24 var1805))) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet unknownFields> 
(assert true)
(define-const var830 Int (hashCode/651586753 var1961)) ; Statement: $i5 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet: int hashCode()>() 
(define-const var3985 Int (+ var1667 var830)) ; Statement: i11 = $i6 + $i5 
(declare-const var1805!1 var3273)
(assert (not (= var1805!1 null-var3273)))
(assert (= (memoizedHashCode/-870802073 (cast-from-var3273-to-var3201 var1805!1)) var3985)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext: int memoizedHashCode> = i11 
 ; Statement: return i11 
(check-sat)
(get-model)
(get-unsat-core)
; {memoizedHashCode/-870802073=([com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite], int), cast-from-var3273-to-var3201=([com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext], com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite), var3273_getDescriptor/-312436021=([], com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor), hashCode/1739917532=([java.lang.Object], int), cast-from-var1988-to-var2800=([com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor], java.lang.Object), getFileName/-154802071=([com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext], java.lang.String), hashCode/-467973558=([java.lang.String], int), unknownFields/-753216511=([com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3], com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet), cast-from-var3273-to-var24=([com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext], com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3), hashCode/651586753=([com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet], int)}
; {var3273=com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext, var1805=r0, var3201=com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite, var1843=$i0, var1988=com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor, var93=$r1, var2800=java.lang.Object, var1732=$i1, var3877=i8, var693=$i2, var2829=i9, var2271=$i4, var2110=$r2, var313=$i3, var706=i10, var1667=$i6, var462=com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet, var24=com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3, var1961=$r3, var830=$i5, var3985=i11}
; {com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext=var3273, r0=var1805, com.google.javascript.jscomp.jarjar.com.google.protobuf.AbstractMessageLite=var3201, $i0=var1843, com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor=var1988, $r1=var93, java.lang.Object=var2800, $i1=var1732, i8=var3877, $i2=var693, i9=var2829, $i4=var2271, $r2=var2110, $i3=var313, i10=var706, $i6=var1667, com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet=var462, com.google.javascript.jscomp.jarjar.com.google.protobuf.GeneratedMessageV3=var24, $r3=var1961, $i5=var830, i11=var3985}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext: int memoizedHashCode>;	if $i0 == 0 goto $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>();	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext: com.google.javascript.jscomp.jarjar.com.google.protobuf.Descriptors$Descriptor getDescriptor()>();	$i1 = virtualinvoke $r1.<java.lang.Object: int hashCode()>();	i8 = 779 + $i1;	$i2 = 37 * i8;	i9 = $i2 + 1;	$i4 = 53 * i9;	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext: java.lang.String getFileName()>();	$i3 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i10 = $i4 + $i3;	$i6 = 29 * i10;	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext: com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet unknownFields>;	$i5 = virtualinvoke $r3.<com.google.javascript.jscomp.jarjar.com.google.protobuf.UnknownFieldSet: int hashCode()>();	i11 = $i6 + $i5;	r0.<com.google.javascript.jscomp.jarjar.com.google.protobuf.SourceContext: int memoizedHashCode> = i11;	return i11
;block_num 2