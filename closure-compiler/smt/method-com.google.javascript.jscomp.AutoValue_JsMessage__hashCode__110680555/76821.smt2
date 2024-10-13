(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1302 0)
(declare-sort var3230 0)
(declare-sort var3180 0)
(declare-sort var1844 0)
(declare-sort var1602 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1302) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var1302) String)
(declare-fun isAnonymous/1126038692 (var1302) Bool)
(declare-fun isExternal/1126038692 (var1302) Bool)
(declare-fun getId/1126038692 (var1302) String)
(declare-fun getParts/1126038692 (var1302) var3180)
(declare-fun hashCode/1337417431 (var3180) Int)
(declare-fun getAlternateId/1126038692 (var1302) String)
(declare-fun getDesc/1126038692 (var1302) String)
(declare-fun getMeaning/1126038692 (var1302) String)
(declare-fun isHidden/1126038692 (var1302) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1302) var1844)
(declare-fun hashCode/-1247371579 (var1844) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1302) var1844)
(declare-fun jsPlaceholderNames/1126038692 (var1302) var1602)
(declare-fun hashCode/1818408063 (var1602) Int)
(declare-const null-var1302 var1302)
(declare-const null-String String)
(declare-const var2648 var1302) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2648 null-var1302)))
(define-const var2709 String (getSourceName/1126038692 var2648)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var2709 null-String))) ; Cond: $r1 != null 
(define-const var2859 String (getSourceName/1126038692 var2648)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var1370 Int (hashCode/-467973558 var2859)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var475 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1370)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3753 Int (* var475 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2210 String (getKey/1126038692 var2648)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var153 Int (hashCode/-467973558 var2210)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var635 Int (bv2nat (bvxor ((_ int2bv 64) var3753) ((_ int2bv 64) var153)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1837 Int (* var635 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1339 Bool (isAnonymous/1126038692 var2648)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1339 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1561 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var841 Int (bv2nat (bvxor ((_ int2bv 64) var1837) ((_ int2bv 64) var1561)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2503 Int (* var841 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1939 Bool (isExternal/1126038692 var2648)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1939 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3813 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var1490 Int (bv2nat (bvxor ((_ int2bv 64) var2503) ((_ int2bv 64) var3813)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2368 Int (* var1490 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var37 String (getId/1126038692 var2648)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var660 Int (hashCode/-467973558 var37)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2307 Int (bv2nat (bvxor ((_ int2bv 64) var2368) ((_ int2bv 64) var660)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1173 Int (* var2307 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var224 var3180 (getParts/1126038692 var2648)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var468 Int (hashCode/1337417431 var224)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3720 Int (bv2nat (bvxor ((_ int2bv 64) var1173) ((_ int2bv 64) var468)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2684 Int (* var3720 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2902 String (getAlternateId/1126038692 var2648)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var2902 null-String))) ; Cond: $r6 != null 
(define-const var2264 String (getAlternateId/1126038692 var2648)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1751 Int (hashCode/-467973558 var2264)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3467 Int (bv2nat (bvxor ((_ int2bv 64) var2684) ((_ int2bv 64) var1751)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3569 Int (* var3467 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var849 String (getDesc/1126038692 var2648)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var849 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3493 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2072 Int (bv2nat (bvxor ((_ int2bv 64) var3569) ((_ int2bv 64) var3493)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3574 Int (* var2072 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1262 String (getMeaning/1126038692 var2648)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var1262 null-String))) ; Cond: $r10 != null 
(define-const var1894 String (getMeaning/1126038692 var2648)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1686 Int (hashCode/-467973558 var1894)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1393 Int (bv2nat (bvxor ((_ int2bv 64) var3574) ((_ int2bv 64) var1686)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2710 Int (* var1393 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1048 Bool (isHidden/1126038692 var2648)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var1048 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1344 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var1313 Int (bv2nat (bvxor ((_ int2bv 64) var2710) ((_ int2bv 64) var1344)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1008 Int (* var1313 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2954 var1844 (getPlaceholderNameToExampleMap/1126038692 var2648)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1150 Int (hashCode/-1247371579 var2954)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3091 Int (bv2nat (bvxor ((_ int2bv 64) var1008) ((_ int2bv 64) var1150)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2577 Int (* var3091 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var387 var1844 (getPlaceholderNameToOriginalCodeMap/1126038692 var2648)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var751 Int (hashCode/-1247371579 var387)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2703 Int (bv2nat (bvxor ((_ int2bv 64) var2577) ((_ int2bv 64) var751)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2073 Int (* var2703 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var915 var1602 (jsPlaceholderNames/1126038692 var2648)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3624 Int (hashCode/1818408063 var915)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1840 Int (bv2nat (bvxor ((_ int2bv 64) var2073) ((_ int2bv 64) var3624)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1302=com.google.javascript.jscomp.AutoValue_JsMessage, var2648=r0, var2709=$r1, var3230=null_type, var2859=$r2, var1370=$i31, var475=$i27, var3753=$i28, var2210=$r3, var153=$i0, var635=$i29, var1837=$i30, var1339=$z0, var1561=$s32, var841=$i25, var2503=$i26, var1939=$z1, var3813=$s33, var1490=$i19, var2368=$i20, var37=$r4, var660=$i1, var2307=$i21, var1173=$i22, var3180=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var224=$r5, var468=$i2, var3720=$i23, var2684=$i24, var2902=$r6, var2264=$r7, var1751=$i34, var3467=$i17, var3569=$i18, var849=$r8, var3493=$i35, var2072=$i15, var3574=$i16, var1262=$r10, var1894=$r11, var1686=$i36, var1393=$i13, var2710=$i14, var1048=$z2, var1344=$s37, var1313=$i6, var1008=$i7, var1844=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2954=$r12, var1150=$i3, var3091=$i8, var2577=$i9, var387=$r13, var751=$i4, var2703=$i10, var2073=$i11, var1602=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var915=$r14, var3624=$i5, var1840=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1302, r0=var2648, $r1=var2709, null_type=var3230, $r2=var2859, $i31=var1370, $i27=var475, $i28=var3753, $r3=var2210, $i0=var153, $i29=var635, $i30=var1837, $z0=var1339, $s32=var1561, $i25=var841, $i26=var2503, $z1=var1939, $s33=var3813, $i19=var1490, $i20=var2368, $r4=var37, $i1=var660, $i21=var2307, $i22=var1173, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3180, $r5=var224, $i2=var468, $i23=var3720, $i24=var2684, $r6=var2902, $r7=var2264, $i34=var1751, $i17=var3467, $i18=var3569, $r8=var849, $i35=var3493, $i15=var2072, $i16=var3574, $r10=var1262, $r11=var1894, $i36=var1686, $i13=var1393, $i14=var2710, $z2=var1048, $s37=var1344, $i6=var1313, $i7=var1008, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1844, $r12=var2954, $i3=var1150, $i8=var3091, $i9=var2577, $r13=var387, $i4=var751, $i10=var2703, $i11=var2073, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1602, $r14=var915, $i5=var3624, $i12=var1840}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15