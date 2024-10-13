(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3766 0)
(declare-sort var3589 0)
(declare-sort var2115 0)
(declare-sort var3182 0)
(declare-sort var1831 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3766) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var3766) String)
(declare-fun isAnonymous/1126038692 (var3766) Bool)
(declare-fun isExternal/1126038692 (var3766) Bool)
(declare-fun getId/1126038692 (var3766) String)
(declare-fun getParts/1126038692 (var3766) var2115)
(declare-fun hashCode/1337417431 (var2115) Int)
(declare-fun getAlternateId/1126038692 (var3766) String)
(declare-fun getDesc/1126038692 (var3766) String)
(declare-fun getMeaning/1126038692 (var3766) String)
(declare-fun isHidden/1126038692 (var3766) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3766) var3182)
(declare-fun hashCode/-1247371579 (var3182) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3766) var3182)
(declare-fun jsPlaceholderNames/1126038692 (var3766) var1831)
(declare-fun hashCode/1818408063 (var1831) Int)
(declare-const null-var3766 var3766)
(declare-const null-String String)
(declare-const var957 var3766) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var957 null-var3766)))
(define-const var2764 String (getSourceName/1126038692 var957)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var2764 null-String))) ; Cond: $r1 != null 
(define-const var3293 String (getSourceName/1126038692 var957)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var1378 Int (hashCode/-467973558 var3293)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3901 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1378)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1834 Int (* var3901 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var150 String (getKey/1126038692 var957)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1471 Int (hashCode/-467973558 var150)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1309 Int (bv2nat (bvxor ((_ int2bv 64) var1834) ((_ int2bv 64) var1471)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2871 Int (* var1309 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3752 Bool (isAnonymous/1126038692 var957)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var3752 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var645 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var2791 Int (bv2nat (bvxor ((_ int2bv 64) var2871) ((_ int2bv 64) var645)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1679 Int (* var2791 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2324 Bool (isExternal/1126038692 var957)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2324 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1955 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var2612 Int (bv2nat (bvxor ((_ int2bv 64) var1679) ((_ int2bv 64) var1955)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var805 Int (* var2612 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var570 String (getId/1126038692 var957)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3215 Int (hashCode/-467973558 var570)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1501 Int (bv2nat (bvxor ((_ int2bv 64) var805) ((_ int2bv 64) var3215)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1204 Int (* var1501 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2945 var2115 (getParts/1126038692 var957)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1431 Int (hashCode/1337417431 var2945)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3810 Int (bv2nat (bvxor ((_ int2bv 64) var1204) ((_ int2bv 64) var1431)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2826 Int (* var3810 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2561 String (getAlternateId/1126038692 var957)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2561 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var611 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var274 Int (bv2nat (bvxor ((_ int2bv 64) var2826) ((_ int2bv 64) var611)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var295 Int (* var274 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var69 String (getDesc/1126038692 var957)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var69 null-String))) ; Cond: $r8 != null 
(define-const var2847 String (getDesc/1126038692 var957)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var1191 Int (hashCode/-467973558 var2847)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var39 Int (bv2nat (bvxor ((_ int2bv 64) var295) ((_ int2bv 64) var1191)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1418 Int (* var39 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2263 String (getMeaning/1126038692 var957)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var2263 null-String))) ; Cond: $r10 != null 
(define-const var3137 String (getMeaning/1126038692 var957)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var2393 Int (hashCode/-467973558 var3137)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3793 Int (bv2nat (bvxor ((_ int2bv 64) var1418) ((_ int2bv 64) var2393)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1362 Int (* var3793 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3983 Bool (isHidden/1126038692 var957)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var3983 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1598 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var2257 Int (bv2nat (bvxor ((_ int2bv 64) var1362) ((_ int2bv 64) var1598)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3494 Int (* var2257 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var250 var3182 (getPlaceholderNameToExampleMap/1126038692 var957)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1531 Int (hashCode/-1247371579 var250)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2024 Int (bv2nat (bvxor ((_ int2bv 64) var3494) ((_ int2bv 64) var1531)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2113 Int (* var2024 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2068 var3182 (getPlaceholderNameToOriginalCodeMap/1126038692 var957)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2075 Int (hashCode/-1247371579 var2068)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3846 Int (bv2nat (bvxor ((_ int2bv 64) var2113) ((_ int2bv 64) var2075)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1096 Int (* var3846 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2274 var1831 (jsPlaceholderNames/1126038692 var957)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2345 Int (hashCode/1818408063 var2274)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3388 Int (bv2nat (bvxor ((_ int2bv 64) var1096) ((_ int2bv 64) var2345)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3766=com.google.javascript.jscomp.AutoValue_JsMessage, var957=r0, var2764=$r1, var3589=null_type, var3293=$r2, var1378=$i31, var3901=$i27, var1834=$i28, var150=$r3, var1471=$i0, var1309=$i29, var2871=$i30, var3752=$z0, var645=$s32, var2791=$i25, var1679=$i26, var2324=$z1, var1955=$s33, var2612=$i19, var805=$i20, var570=$r4, var3215=$i1, var1501=$i21, var1204=$i22, var2115=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2945=$r5, var1431=$i2, var3810=$i23, var2826=$i24, var2561=$r6, var611=$i34, var274=$i17, var295=$i18, var69=$r8, var2847=$r9, var1191=$i35, var39=$i15, var1418=$i16, var2263=$r10, var3137=$r11, var2393=$i36, var3793=$i13, var1362=$i14, var3983=$z2, var1598=$s37, var2257=$i6, var3494=$i7, var3182=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var250=$r12, var1531=$i3, var2024=$i8, var2113=$i9, var2068=$r13, var2075=$i4, var3846=$i10, var1096=$i11, var1831=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2274=$r14, var2345=$i5, var3388=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3766, r0=var957, $r1=var2764, null_type=var3589, $r2=var3293, $i31=var1378, $i27=var3901, $i28=var1834, $r3=var150, $i0=var1471, $i29=var1309, $i30=var2871, $z0=var3752, $s32=var645, $i25=var2791, $i26=var1679, $z1=var2324, $s33=var1955, $i19=var2612, $i20=var805, $r4=var570, $i1=var3215, $i21=var1501, $i22=var1204, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2115, $r5=var2945, $i2=var1431, $i23=var3810, $i24=var2826, $r6=var2561, $i34=var611, $i17=var274, $i18=var295, $r8=var69, $r9=var2847, $i35=var1191, $i15=var39, $i16=var1418, $r10=var2263, $r11=var3137, $i36=var2393, $i13=var3793, $i14=var1362, $z2=var3983, $s37=var1598, $i6=var2257, $i7=var3494, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3182, $r12=var250, $i3=var1531, $i8=var2024, $i9=var2113, $r13=var2068, $i4=var2075, $i10=var3846, $i11=var1096, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1831, $r14=var2274, $i5=var2345, $i12=var3388}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15