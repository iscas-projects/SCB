(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2449 0)
(declare-sort var2579 0)
(declare-sort var356 0)
(declare-sort var1414 0)
(declare-sort var3851 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2449) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2449) String)
(declare-fun isAnonymous/1126038692 (var2449) Bool)
(declare-fun isExternal/1126038692 (var2449) Bool)
(declare-fun getId/1126038692 (var2449) String)
(declare-fun getParts/1126038692 (var2449) var356)
(declare-fun hashCode/1337417431 (var356) Int)
(declare-fun getAlternateId/1126038692 (var2449) String)
(declare-fun getDesc/1126038692 (var2449) String)
(declare-fun getMeaning/1126038692 (var2449) String)
(declare-fun isHidden/1126038692 (var2449) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2449) var1414)
(declare-fun hashCode/-1247371579 (var1414) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2449) var1414)
(declare-fun jsPlaceholderNames/1126038692 (var2449) var3851)
(declare-fun hashCode/1818408063 (var3851) Int)
(declare-const null-var2449 var2449)
(declare-const null-String String)
(declare-const var1406 var2449) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1406 null-var2449)))
(define-const var2820 String (getSourceName/1126038692 var1406)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var2820 null-String))) ; Cond: $r1 != null 
(define-const var827 String (getSourceName/1126038692 var1406)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var866 Int (hashCode/-467973558 var827)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2029 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var866)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var768 Int (* var2029 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2034 String (getKey/1126038692 var1406)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1379 Int (hashCode/-467973558 var2034)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3969 Int (bv2nat (bvxor ((_ int2bv 64) var768) ((_ int2bv 64) var1379)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3870 Int (* var3969 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2351 Bool (isAnonymous/1126038692 var1406)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2351 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3047 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var3514 Int (bv2nat (bvxor ((_ int2bv 64) var3870) ((_ int2bv 64) var3047)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var792 Int (* var3514 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3526 Bool (isExternal/1126038692 var1406)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var3526 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1279 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var2148 Int (bv2nat (bvxor ((_ int2bv 64) var792) ((_ int2bv 64) var1279)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2964 Int (* var2148 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1515 String (getId/1126038692 var1406)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var832 Int (hashCode/-467973558 var1515)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var528 Int (bv2nat (bvxor ((_ int2bv 64) var2964) ((_ int2bv 64) var832)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1074 Int (* var528 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var580 var356 (getParts/1126038692 var1406)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3190 Int (hashCode/1337417431 var580)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3581 Int (bv2nat (bvxor ((_ int2bv 64) var1074) ((_ int2bv 64) var3190)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1684 Int (* var3581 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var397 String (getAlternateId/1126038692 var1406)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var397 null-String))) ; Cond: $r6 != null 
(define-const var723 String (getAlternateId/1126038692 var1406)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var2853 Int (hashCode/-467973558 var723)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1527 Int (bv2nat (bvxor ((_ int2bv 64) var1684) ((_ int2bv 64) var2853)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var72 Int (* var1527 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1674 String (getDesc/1126038692 var1406)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1674 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var2921 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2373 Int (bv2nat (bvxor ((_ int2bv 64) var72) ((_ int2bv 64) var2921)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1561 Int (* var2373 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2749 String (getMeaning/1126038692 var1406)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2749 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var1524 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var3726 Int (bv2nat (bvxor ((_ int2bv 64) var1561) ((_ int2bv 64) var1524)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var759 Int (* var3726 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3173 Bool (isHidden/1126038692 var1406)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var3173 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2541 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var223 Int (bv2nat (bvxor ((_ int2bv 64) var759) ((_ int2bv 64) var2541)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3238 Int (* var223 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var454 var1414 (getPlaceholderNameToExampleMap/1126038692 var1406)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1073 Int (hashCode/-1247371579 var454)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2372 Int (bv2nat (bvxor ((_ int2bv 64) var3238) ((_ int2bv 64) var1073)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1540 Int (* var2372 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2117 var1414 (getPlaceholderNameToOriginalCodeMap/1126038692 var1406)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1116 Int (hashCode/-1247371579 var2117)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var125 Int (bv2nat (bvxor ((_ int2bv 64) var1540) ((_ int2bv 64) var1116)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var539 Int (* var125 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3073 var3851 (jsPlaceholderNames/1126038692 var1406)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2312 Int (hashCode/1818408063 var3073)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3721 Int (bv2nat (bvxor ((_ int2bv 64) var539) ((_ int2bv 64) var2312)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2449=com.google.javascript.jscomp.AutoValue_JsMessage, var1406=r0, var2820=$r1, var2579=null_type, var827=$r2, var866=$i31, var2029=$i27, var768=$i28, var2034=$r3, var1379=$i0, var3969=$i29, var3870=$i30, var2351=$z0, var3047=$s32, var3514=$i25, var792=$i26, var3526=$z1, var1279=$s33, var2148=$i19, var2964=$i20, var1515=$r4, var832=$i1, var528=$i21, var1074=$i22, var356=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var580=$r5, var3190=$i2, var3581=$i23, var1684=$i24, var397=$r6, var723=$r7, var2853=$i34, var1527=$i17, var72=$i18, var1674=$r8, var2921=$i35, var2373=$i15, var1561=$i16, var2749=$r10, var1524=$i36, var3726=$i13, var759=$i14, var3173=$z2, var2541=$s37, var223=$i6, var3238=$i7, var1414=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var454=$r12, var1073=$i3, var2372=$i8, var1540=$i9, var2117=$r13, var1116=$i4, var125=$i10, var539=$i11, var3851=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3073=$r14, var2312=$i5, var3721=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2449, r0=var1406, $r1=var2820, null_type=var2579, $r2=var827, $i31=var866, $i27=var2029, $i28=var768, $r3=var2034, $i0=var1379, $i29=var3969, $i30=var3870, $z0=var2351, $s32=var3047, $i25=var3514, $i26=var792, $z1=var3526, $s33=var1279, $i19=var2148, $i20=var2964, $r4=var1515, $i1=var832, $i21=var528, $i22=var1074, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var356, $r5=var580, $i2=var3190, $i23=var3581, $i24=var1684, $r6=var397, $r7=var723, $i34=var2853, $i17=var1527, $i18=var72, $r8=var1674, $i35=var2921, $i15=var2373, $i16=var1561, $r10=var2749, $i36=var1524, $i13=var3726, $i14=var759, $z2=var3173, $s37=var2541, $i6=var223, $i7=var3238, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1414, $r12=var454, $i3=var1073, $i8=var2372, $i9=var1540, $r13=var2117, $i4=var1116, $i10=var125, $i11=var539, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3851, $r14=var3073, $i5=var2312, $i12=var3721}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15