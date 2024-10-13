(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3076 0)
(declare-sort var383 0)
(declare-sort var3893 0)
(declare-sort var3433 0)
(declare-sort var3375 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3076) String)
(declare-fun getKey/1126038692 (var3076) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3076) Bool)
(declare-fun isExternal/1126038692 (var3076) Bool)
(declare-fun getId/1126038692 (var3076) String)
(declare-fun getParts/1126038692 (var3076) var3893)
(declare-fun hashCode/1337417431 (var3893) Int)
(declare-fun getAlternateId/1126038692 (var3076) String)
(declare-fun getDesc/1126038692 (var3076) String)
(declare-fun getMeaning/1126038692 (var3076) String)
(declare-fun isHidden/1126038692 (var3076) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3076) var3433)
(declare-fun hashCode/-1247371579 (var3433) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3076) var3433)
(declare-fun jsPlaceholderNames/1126038692 (var3076) var3375)
(declare-fun hashCode/1818408063 (var3375) Int)
(declare-const null-var3076 var3076)
(declare-const null-String String)
(declare-const var2663 var3076) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2663 null-var3076)))
(define-const var2351 String (getSourceName/1126038692 var2663)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var2351 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1992 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2959 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1992)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2710 Int (* var2959 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var277 String (getKey/1126038692 var2663)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2225 Int (hashCode/-467973558 var277)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3530 Int (bv2nat (bvxor ((_ int2bv 64) var2710) ((_ int2bv 64) var2225)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3448 Int (* var3530 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3139 Bool (isAnonymous/1126038692 var2663)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var3139 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2076 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var3369 Int (bv2nat (bvxor ((_ int2bv 64) var3448) ((_ int2bv 64) var2076)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3059 Int (* var3369 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2554 Bool (isExternal/1126038692 var2663)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2554 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var665 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3093 Int (bv2nat (bvxor ((_ int2bv 64) var3059) ((_ int2bv 64) var665)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3624 Int (* var3093 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var987 String (getId/1126038692 var2663)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2437 Int (hashCode/-467973558 var987)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1775 Int (bv2nat (bvxor ((_ int2bv 64) var3624) ((_ int2bv 64) var2437)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1496 Int (* var1775 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2618 var3893 (getParts/1126038692 var2663)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var995 Int (hashCode/1337417431 var2618)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1232 Int (bv2nat (bvxor ((_ int2bv 64) var1496) ((_ int2bv 64) var995)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3406 Int (* var1232 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3275 String (getAlternateId/1126038692 var2663)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3275 null-String))) ; Cond: $r6 != null 
(define-const var2992 String (getAlternateId/1126038692 var2663)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1325 Int (hashCode/-467973558 var2992)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3183 Int (bv2nat (bvxor ((_ int2bv 64) var3406) ((_ int2bv 64) var1325)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1215 Int (* var3183 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2236 String (getDesc/1126038692 var2663)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2236 null-String))) ; Cond: $r8 != null 
(define-const var3921 String (getDesc/1126038692 var2663)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var3026 Int (hashCode/-467973558 var3921)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1653 Int (bv2nat (bvxor ((_ int2bv 64) var1215) ((_ int2bv 64) var3026)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var348 Int (* var1653 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3480 String (getMeaning/1126038692 var2663)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var3480 null-String))) ; Cond: $r10 != null 
(define-const var1050 String (getMeaning/1126038692 var2663)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1389 Int (hashCode/-467973558 var1050)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3031 Int (bv2nat (bvxor ((_ int2bv 64) var348) ((_ int2bv 64) var1389)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3185 Int (* var3031 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2465 Bool (isHidden/1126038692 var2663)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2465 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var172 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var504 Int (bv2nat (bvxor ((_ int2bv 64) var3185) ((_ int2bv 64) var172)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var932 Int (* var504 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3007 var3433 (getPlaceholderNameToExampleMap/1126038692 var2663)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1916 Int (hashCode/-1247371579 var3007)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2854 Int (bv2nat (bvxor ((_ int2bv 64) var932) ((_ int2bv 64) var1916)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2023 Int (* var2854 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1339 var3433 (getPlaceholderNameToOriginalCodeMap/1126038692 var2663)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1304 Int (hashCode/-1247371579 var1339)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1591 Int (bv2nat (bvxor ((_ int2bv 64) var2023) ((_ int2bv 64) var1304)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3906 Int (* var1591 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1897 var3375 (jsPlaceholderNames/1126038692 var2663)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2886 Int (hashCode/1818408063 var1897)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2262 Int (bv2nat (bvxor ((_ int2bv 64) var3906) ((_ int2bv 64) var2886)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3076=com.google.javascript.jscomp.AutoValue_JsMessage, var2663=r0, var2351=$r1, var383=null_type, var1992=$i31, var2959=$i27, var2710=$i28, var277=$r3, var2225=$i0, var3530=$i29, var3448=$i30, var3139=$z0, var2076=$s32, var3369=$i25, var3059=$i26, var2554=$z1, var665=$s33, var3093=$i19, var3624=$i20, var987=$r4, var2437=$i1, var1775=$i21, var1496=$i22, var3893=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2618=$r5, var995=$i2, var1232=$i23, var3406=$i24, var3275=$r6, var2992=$r7, var1325=$i34, var3183=$i17, var1215=$i18, var2236=$r8, var3921=$r9, var3026=$i35, var1653=$i15, var348=$i16, var3480=$r10, var1050=$r11, var1389=$i36, var3031=$i13, var3185=$i14, var2465=$z2, var172=$s37, var504=$i6, var932=$i7, var3433=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3007=$r12, var1916=$i3, var2854=$i8, var2023=$i9, var1339=$r13, var1304=$i4, var1591=$i10, var3906=$i11, var3375=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1897=$r14, var2886=$i5, var2262=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3076, r0=var2663, $r1=var2351, null_type=var383, $i31=var1992, $i27=var2959, $i28=var2710, $r3=var277, $i0=var2225, $i29=var3530, $i30=var3448, $z0=var3139, $s32=var2076, $i25=var3369, $i26=var3059, $z1=var2554, $s33=var665, $i19=var3093, $i20=var3624, $r4=var987, $i1=var2437, $i21=var1775, $i22=var1496, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3893, $r5=var2618, $i2=var995, $i23=var1232, $i24=var3406, $r6=var3275, $r7=var2992, $i34=var1325, $i17=var3183, $i18=var1215, $r8=var2236, $r9=var3921, $i35=var3026, $i15=var1653, $i16=var348, $r10=var3480, $r11=var1050, $i36=var1389, $i13=var3031, $i14=var3185, $z2=var2465, $s37=var172, $i6=var504, $i7=var932, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3433, $r12=var3007, $i3=var1916, $i8=var2854, $i9=var2023, $r13=var1339, $i4=var1304, $i10=var1591, $i11=var3906, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3375, $r14=var1897, $i5=var2886, $i12=var2262}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15