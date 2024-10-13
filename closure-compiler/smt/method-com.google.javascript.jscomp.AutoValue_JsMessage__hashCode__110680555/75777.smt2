(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2002 0)
(declare-sort var3412 0)
(declare-sort var2038 0)
(declare-sort var1182 0)
(declare-sort var2765 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2002) String)
(declare-fun getKey/1126038692 (var2002) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var2002) Bool)
(declare-fun isExternal/1126038692 (var2002) Bool)
(declare-fun getId/1126038692 (var2002) String)
(declare-fun getParts/1126038692 (var2002) var2038)
(declare-fun hashCode/1337417431 (var2038) Int)
(declare-fun getAlternateId/1126038692 (var2002) String)
(declare-fun getDesc/1126038692 (var2002) String)
(declare-fun getMeaning/1126038692 (var2002) String)
(declare-fun isHidden/1126038692 (var2002) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2002) var1182)
(declare-fun hashCode/-1247371579 (var1182) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2002) var1182)
(declare-fun jsPlaceholderNames/1126038692 (var2002) var2765)
(declare-fun hashCode/1818408063 (var2765) Int)
(declare-const null-var2002 var2002)
(declare-const null-String String)
(declare-const var2373 var2002) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2373 null-var2002)))
(define-const var1327 String (getSourceName/1126038692 var2373)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1327 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1115 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2362 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1115)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2087 Int (* var2362 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2003 String (getKey/1126038692 var2373)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var389 Int (hashCode/-467973558 var2003)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var402 Int (bv2nat (bvxor ((_ int2bv 64) var2087) ((_ int2bv 64) var389)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1231 Int (* var402 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2 Bool (isAnonymous/1126038692 var2373)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var2 1 0) 0)) ; Cond: $z0 == 0 
(define-const var526 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3198 Int (bv2nat (bvxor ((_ int2bv 64) var1231) ((_ int2bv 64) var526)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1156 Int (* var3198 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var365 Bool (isExternal/1126038692 var2373)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var365 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1099 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var2279 Int (bv2nat (bvxor ((_ int2bv 64) var1156) ((_ int2bv 64) var1099)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2408 Int (* var2279 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1961 String (getId/1126038692 var2373)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2077 Int (hashCode/-467973558 var1961)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var920 Int (bv2nat (bvxor ((_ int2bv 64) var2408) ((_ int2bv 64) var2077)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2156 Int (* var920 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3805 var2038 (getParts/1126038692 var2373)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2879 Int (hashCode/1337417431 var3805)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1750 Int (bv2nat (bvxor ((_ int2bv 64) var2156) ((_ int2bv 64) var2879)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1926 Int (* var1750 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var459 String (getAlternateId/1126038692 var2373)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var459 null-String))) ; Cond: $r6 != null 
(define-const var1020 String (getAlternateId/1126038692 var2373)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3688 Int (hashCode/-467973558 var1020)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var701 Int (bv2nat (bvxor ((_ int2bv 64) var1926) ((_ int2bv 64) var3688)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2557 Int (* var701 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1954 String (getDesc/1126038692 var2373)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var1954 null-String))) ; Cond: $r8 != null 
(define-const var1682 String (getDesc/1126038692 var2373)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var264 Int (hashCode/-467973558 var1682)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1816 Int (bv2nat (bvxor ((_ int2bv 64) var2557) ((_ int2bv 64) var264)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2395 Int (* var1816 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var703 String (getMeaning/1126038692 var2373)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var703 null-String))) ; Cond: $r10 != null 
(define-const var635 String (getMeaning/1126038692 var2373)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var657 Int (hashCode/-467973558 var635)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2271 Int (bv2nat (bvxor ((_ int2bv 64) var2395) ((_ int2bv 64) var657)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2022 Int (* var2271 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3929 Bool (isHidden/1126038692 var2373)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3929 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var539 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var3754 Int (bv2nat (bvxor ((_ int2bv 64) var2022) ((_ int2bv 64) var539)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1795 Int (* var3754 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3666 var1182 (getPlaceholderNameToExampleMap/1126038692 var2373)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3105 Int (hashCode/-1247371579 var3666)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3364 Int (bv2nat (bvxor ((_ int2bv 64) var1795) ((_ int2bv 64) var3105)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var572 Int (* var3364 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var584 var1182 (getPlaceholderNameToOriginalCodeMap/1126038692 var2373)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var781 Int (hashCode/-1247371579 var584)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2942 Int (bv2nat (bvxor ((_ int2bv 64) var572) ((_ int2bv 64) var781)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1194 Int (* var2942 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3177 var2765 (jsPlaceholderNames/1126038692 var2373)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var972 Int (hashCode/1818408063 var3177)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1990 Int (bv2nat (bvxor ((_ int2bv 64) var1194) ((_ int2bv 64) var972)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2002=com.google.javascript.jscomp.AutoValue_JsMessage, var2373=r0, var1327=$r1, var3412=null_type, var1115=$i31, var2362=$i27, var2087=$i28, var2003=$r3, var389=$i0, var402=$i29, var1231=$i30, var2=$z0, var526=$s32, var3198=$i25, var1156=$i26, var365=$z1, var1099=$s33, var2279=$i19, var2408=$i20, var1961=$r4, var2077=$i1, var920=$i21, var2156=$i22, var2038=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3805=$r5, var2879=$i2, var1750=$i23, var1926=$i24, var459=$r6, var1020=$r7, var3688=$i34, var701=$i17, var2557=$i18, var1954=$r8, var1682=$r9, var264=$i35, var1816=$i15, var2395=$i16, var703=$r10, var635=$r11, var657=$i36, var2271=$i13, var2022=$i14, var3929=$z2, var539=$s37, var3754=$i6, var1795=$i7, var1182=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3666=$r12, var3105=$i3, var3364=$i8, var572=$i9, var584=$r13, var781=$i4, var2942=$i10, var1194=$i11, var2765=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3177=$r14, var972=$i5, var1990=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2002, r0=var2373, $r1=var1327, null_type=var3412, $i31=var1115, $i27=var2362, $i28=var2087, $r3=var2003, $i0=var389, $i29=var402, $i30=var1231, $z0=var2, $s32=var526, $i25=var3198, $i26=var1156, $z1=var365, $s33=var1099, $i19=var2279, $i20=var2408, $r4=var1961, $i1=var2077, $i21=var920, $i22=var2156, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2038, $r5=var3805, $i2=var2879, $i23=var1750, $i24=var1926, $r6=var459, $r7=var1020, $i34=var3688, $i17=var701, $i18=var2557, $r8=var1954, $r9=var1682, $i35=var264, $i15=var1816, $i16=var2395, $r10=var703, $r11=var635, $i36=var657, $i13=var2271, $i14=var2022, $z2=var3929, $s37=var539, $i6=var3754, $i7=var1795, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1182, $r12=var3666, $i3=var3105, $i8=var3364, $i9=var572, $r13=var584, $i4=var781, $i10=var2942, $i11=var1194, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2765, $r14=var3177, $i5=var972, $i12=var1990}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15