(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var735 0)
(declare-sort var1214 0)
(declare-sort var1125 0)
(declare-sort var99 0)
(declare-sort var2141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var735) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var735) String)
(declare-fun isAnonymous/1126038692 (var735) Bool)
(declare-fun isExternal/1126038692 (var735) Bool)
(declare-fun getId/1126038692 (var735) String)
(declare-fun getParts/1126038692 (var735) var1125)
(declare-fun hashCode/1337417431 (var1125) Int)
(declare-fun getAlternateId/1126038692 (var735) String)
(declare-fun getDesc/1126038692 (var735) String)
(declare-fun getMeaning/1126038692 (var735) String)
(declare-fun isHidden/1126038692 (var735) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var735) var99)
(declare-fun hashCode/-1247371579 (var99) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var735) var99)
(declare-fun jsPlaceholderNames/1126038692 (var735) var2141)
(declare-fun hashCode/1818408063 (var2141) Int)
(declare-const null-var735 var735)
(declare-const null-String String)
(declare-const var92 var735) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var92 null-var735)))
(define-const var1318 String (getSourceName/1126038692 var92)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var1318 null-String))) ; Cond: $r1 != null 
(define-const var3831 String (getSourceName/1126038692 var92)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var1818 Int (hashCode/-467973558 var3831)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var978 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1818)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2945 Int (* var978 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3863 String (getKey/1126038692 var92)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2864 Int (hashCode/-467973558 var3863)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3298 Int (bv2nat (bvxor ((_ int2bv 64) var2945) ((_ int2bv 64) var2864)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3970 Int (* var3298 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3919 Bool (isAnonymous/1126038692 var92)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var3919 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3239 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var2656 Int (bv2nat (bvxor ((_ int2bv 64) var3970) ((_ int2bv 64) var3239)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var448 Int (* var2656 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2839 Bool (isExternal/1126038692 var92)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2839 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2218 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var638 Int (bv2nat (bvxor ((_ int2bv 64) var448) ((_ int2bv 64) var2218)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2757 Int (* var638 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var704 String (getId/1126038692 var92)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3862 Int (hashCode/-467973558 var704)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3718 Int (bv2nat (bvxor ((_ int2bv 64) var2757) ((_ int2bv 64) var3862)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1039 Int (* var3718 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2589 var1125 (getParts/1126038692 var92)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var656 Int (hashCode/1337417431 var2589)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3109 Int (bv2nat (bvxor ((_ int2bv 64) var1039) ((_ int2bv 64) var656)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3623 Int (* var3109 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var127 String (getAlternateId/1126038692 var92)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var127 null-String))) ; Cond: $r6 != null 
(define-const var451 String (getAlternateId/1126038692 var92)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var761 Int (hashCode/-467973558 var451)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1964 Int (bv2nat (bvxor ((_ int2bv 64) var3623) ((_ int2bv 64) var761)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1391 Int (* var1964 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1741 String (getDesc/1126038692 var92)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1741 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var2788 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2947 Int (bv2nat (bvxor ((_ int2bv 64) var1391) ((_ int2bv 64) var2788)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2139 Int (* var2947 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var807 String (getMeaning/1126038692 var92)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var807 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2384 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2950 Int (bv2nat (bvxor ((_ int2bv 64) var2139) ((_ int2bv 64) var2384)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3682 Int (* var2950 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3649 Bool (isHidden/1126038692 var92)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3649 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3116 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2439 Int (bv2nat (bvxor ((_ int2bv 64) var3682) ((_ int2bv 64) var3116)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1527 Int (* var2439 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3289 var99 (getPlaceholderNameToExampleMap/1126038692 var92)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1667 Int (hashCode/-1247371579 var3289)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3487 Int (bv2nat (bvxor ((_ int2bv 64) var1527) ((_ int2bv 64) var1667)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var533 Int (* var3487 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1258 var99 (getPlaceholderNameToOriginalCodeMap/1126038692 var92)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3984 Int (hashCode/-1247371579 var1258)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2636 Int (bv2nat (bvxor ((_ int2bv 64) var533) ((_ int2bv 64) var3984)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var436 Int (* var2636 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var425 var2141 (jsPlaceholderNames/1126038692 var92)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1404 Int (hashCode/1818408063 var425)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3378 Int (bv2nat (bvxor ((_ int2bv 64) var436) ((_ int2bv 64) var1404)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var735=com.google.javascript.jscomp.AutoValue_JsMessage, var92=r0, var1318=$r1, var1214=null_type, var3831=$r2, var1818=$i31, var978=$i27, var2945=$i28, var3863=$r3, var2864=$i0, var3298=$i29, var3970=$i30, var3919=$z0, var3239=$s32, var2656=$i25, var448=$i26, var2839=$z1, var2218=$s33, var638=$i19, var2757=$i20, var704=$r4, var3862=$i1, var3718=$i21, var1039=$i22, var1125=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2589=$r5, var656=$i2, var3109=$i23, var3623=$i24, var127=$r6, var451=$r7, var761=$i34, var1964=$i17, var1391=$i18, var1741=$r8, var2788=$i35, var2947=$i15, var2139=$i16, var807=$r10, var2384=$i36, var2950=$i13, var3682=$i14, var3649=$z2, var3116=$s37, var2439=$i6, var1527=$i7, var99=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3289=$r12, var1667=$i3, var3487=$i8, var533=$i9, var1258=$r13, var3984=$i4, var2636=$i10, var436=$i11, var2141=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var425=$r14, var1404=$i5, var3378=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var735, r0=var92, $r1=var1318, null_type=var1214, $r2=var3831, $i31=var1818, $i27=var978, $i28=var2945, $r3=var3863, $i0=var2864, $i29=var3298, $i30=var3970, $z0=var3919, $s32=var3239, $i25=var2656, $i26=var448, $z1=var2839, $s33=var2218, $i19=var638, $i20=var2757, $r4=var704, $i1=var3862, $i21=var3718, $i22=var1039, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1125, $r5=var2589, $i2=var656, $i23=var3109, $i24=var3623, $r6=var127, $r7=var451, $i34=var761, $i17=var1964, $i18=var1391, $r8=var1741, $i35=var2788, $i15=var2947, $i16=var2139, $r10=var807, $i36=var2384, $i13=var2950, $i14=var3682, $z2=var3649, $s37=var3116, $i6=var2439, $i7=var1527, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var99, $r12=var3289, $i3=var1667, $i8=var3487, $i9=var533, $r13=var1258, $i4=var3984, $i10=var2636, $i11=var436, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2141, $r14=var425, $i5=var1404, $i12=var3378}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15