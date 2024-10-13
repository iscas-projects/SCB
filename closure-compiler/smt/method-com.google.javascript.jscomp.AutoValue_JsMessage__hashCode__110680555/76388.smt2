(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2716 0)
(declare-sort var2690 0)
(declare-sort var2038 0)
(declare-sort var3278 0)
(declare-sort var2614 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2716) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2716) String)
(declare-fun isAnonymous/1126038692 (var2716) Bool)
(declare-fun isExternal/1126038692 (var2716) Bool)
(declare-fun getId/1126038692 (var2716) String)
(declare-fun getParts/1126038692 (var2716) var2038)
(declare-fun hashCode/1337417431 (var2038) Int)
(declare-fun getAlternateId/1126038692 (var2716) String)
(declare-fun getDesc/1126038692 (var2716) String)
(declare-fun getMeaning/1126038692 (var2716) String)
(declare-fun isHidden/1126038692 (var2716) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2716) var3278)
(declare-fun hashCode/-1247371579 (var3278) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2716) var3278)
(declare-fun jsPlaceholderNames/1126038692 (var2716) var2614)
(declare-fun hashCode/1818408063 (var2614) Int)
(declare-const null-var2716 var2716)
(declare-const null-String String)
(declare-const var481 var2716) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var481 null-var2716)))
(define-const var1816 String (getSourceName/1126038692 var481)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var1816 null-String))) ; Cond: $r1 != null 
(define-const var2540 String (getSourceName/1126038692 var481)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var1274 Int (hashCode/-467973558 var2540)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3219 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1274)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var882 Int (* var3219 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1451 String (getKey/1126038692 var481)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var87 Int (hashCode/-467973558 var1451)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1267 Int (bv2nat (bvxor ((_ int2bv 64) var882) ((_ int2bv 64) var87)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3933 Int (* var1267 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3847 Bool (isAnonymous/1126038692 var481)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var3847 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2801 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var1096 Int (bv2nat (bvxor ((_ int2bv 64) var3933) ((_ int2bv 64) var2801)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3487 Int (* var1096 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1434 Bool (isExternal/1126038692 var481)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var1434 1 0) 0)) ; Cond: $z1 == 0 
(define-const var391 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2415 Int (bv2nat (bvxor ((_ int2bv 64) var3487) ((_ int2bv 64) var391)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1100 Int (* var2415 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2348 String (getId/1126038692 var481)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3431 Int (hashCode/-467973558 var2348)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3698 Int (bv2nat (bvxor ((_ int2bv 64) var1100) ((_ int2bv 64) var3431)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3881 Int (* var3698 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1553 var2038 (getParts/1126038692 var481)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var440 Int (hashCode/1337417431 var1553)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1759 Int (bv2nat (bvxor ((_ int2bv 64) var3881) ((_ int2bv 64) var440)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1942 Int (* var1759 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1933 String (getAlternateId/1126038692 var481)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1933 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var3043 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var1188 Int (bv2nat (bvxor ((_ int2bv 64) var1942) ((_ int2bv 64) var3043)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var585 Int (* var1188 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1104 String (getDesc/1126038692 var481)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var1104 null-String))) ; Cond: $r8 != null 
(define-const var1995 String (getDesc/1126038692 var481)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var325 Int (hashCode/-467973558 var1995)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var344 Int (bv2nat (bvxor ((_ int2bv 64) var585) ((_ int2bv 64) var325)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1685 Int (* var344 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var229 String (getMeaning/1126038692 var481)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var229 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var113 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var3927 Int (bv2nat (bvxor ((_ int2bv 64) var1685) ((_ int2bv 64) var113)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var78 Int (* var3927 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2900 Bool (isHidden/1126038692 var481)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var2900 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2226 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var1525 Int (bv2nat (bvxor ((_ int2bv 64) var78) ((_ int2bv 64) var2226)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2734 Int (* var1525 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var404 var3278 (getPlaceholderNameToExampleMap/1126038692 var481)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var620 Int (hashCode/-1247371579 var404)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1291 Int (bv2nat (bvxor ((_ int2bv 64) var2734) ((_ int2bv 64) var620)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2073 Int (* var1291 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2529 var3278 (getPlaceholderNameToOriginalCodeMap/1126038692 var481)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1608 Int (hashCode/-1247371579 var2529)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2703 Int (bv2nat (bvxor ((_ int2bv 64) var2073) ((_ int2bv 64) var1608)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2215 Int (* var2703 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1673 var2614 (jsPlaceholderNames/1126038692 var481)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1410 Int (hashCode/1818408063 var1673)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3958 Int (bv2nat (bvxor ((_ int2bv 64) var2215) ((_ int2bv 64) var1410)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2716=com.google.javascript.jscomp.AutoValue_JsMessage, var481=r0, var1816=$r1, var2690=null_type, var2540=$r2, var1274=$i31, var3219=$i27, var882=$i28, var1451=$r3, var87=$i0, var1267=$i29, var3933=$i30, var3847=$z0, var2801=$s32, var1096=$i25, var3487=$i26, var1434=$z1, var391=$s33, var2415=$i19, var1100=$i20, var2348=$r4, var3431=$i1, var3698=$i21, var3881=$i22, var2038=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1553=$r5, var440=$i2, var1759=$i23, var1942=$i24, var1933=$r6, var3043=$i34, var1188=$i17, var585=$i18, var1104=$r8, var1995=$r9, var325=$i35, var344=$i15, var1685=$i16, var229=$r10, var113=$i36, var3927=$i13, var78=$i14, var2900=$z2, var2226=$s37, var1525=$i6, var2734=$i7, var3278=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var404=$r12, var620=$i3, var1291=$i8, var2073=$i9, var2529=$r13, var1608=$i4, var2703=$i10, var2215=$i11, var2614=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1673=$r14, var1410=$i5, var3958=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2716, r0=var481, $r1=var1816, null_type=var2690, $r2=var2540, $i31=var1274, $i27=var3219, $i28=var882, $r3=var1451, $i0=var87, $i29=var1267, $i30=var3933, $z0=var3847, $s32=var2801, $i25=var1096, $i26=var3487, $z1=var1434, $s33=var391, $i19=var2415, $i20=var1100, $r4=var2348, $i1=var3431, $i21=var3698, $i22=var3881, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2038, $r5=var1553, $i2=var440, $i23=var1759, $i24=var1942, $r6=var1933, $i34=var3043, $i17=var1188, $i18=var585, $r8=var1104, $r9=var1995, $i35=var325, $i15=var344, $i16=var1685, $r10=var229, $i36=var113, $i13=var3927, $i14=var78, $z2=var2900, $s37=var2226, $i6=var1525, $i7=var2734, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3278, $r12=var404, $i3=var620, $i8=var1291, $i9=var2073, $r13=var2529, $i4=var1608, $i10=var2703, $i11=var2215, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2614, $r14=var1673, $i5=var1410, $i12=var3958}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15