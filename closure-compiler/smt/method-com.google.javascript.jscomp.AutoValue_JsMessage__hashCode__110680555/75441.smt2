(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2752 0)
(declare-sort var1977 0)
(declare-sort var3598 0)
(declare-sort var3175 0)
(declare-sort var2918 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2752) String)
(declare-fun getKey/1126038692 (var2752) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var2752) Bool)
(declare-fun isExternal/1126038692 (var2752) Bool)
(declare-fun getId/1126038692 (var2752) String)
(declare-fun getParts/1126038692 (var2752) var3598)
(declare-fun hashCode/1337417431 (var3598) Int)
(declare-fun getAlternateId/1126038692 (var2752) String)
(declare-fun getDesc/1126038692 (var2752) String)
(declare-fun getMeaning/1126038692 (var2752) String)
(declare-fun isHidden/1126038692 (var2752) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2752) var3175)
(declare-fun hashCode/-1247371579 (var3175) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2752) var3175)
(declare-fun jsPlaceholderNames/1126038692 (var2752) var2918)
(declare-fun hashCode/1818408063 (var2918) Int)
(declare-const null-var2752 var2752)
(declare-const null-String String)
(declare-const var2868 var2752) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2868 null-var2752)))
(define-const var262 String (getSourceName/1126038692 var2868)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var262 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2015 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var440 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2015)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2049 Int (* var440 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3315 String (getKey/1126038692 var2868)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var96 Int (hashCode/-467973558 var3315)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2313 Int (bv2nat (bvxor ((_ int2bv 64) var2049) ((_ int2bv 64) var96)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3816 Int (* var2313 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1143 Bool (isAnonymous/1126038692 var2868)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1143 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var560 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var1050 Int (bv2nat (bvxor ((_ int2bv 64) var3816) ((_ int2bv 64) var560)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2444 Int (* var1050 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2384 Bool (isExternal/1126038692 var2868)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2384 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3881 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var3154 Int (bv2nat (bvxor ((_ int2bv 64) var2444) ((_ int2bv 64) var3881)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2224 Int (* var3154 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1818 String (getId/1126038692 var2868)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2372 Int (hashCode/-467973558 var1818)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2890 Int (bv2nat (bvxor ((_ int2bv 64) var2224) ((_ int2bv 64) var2372)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2311 Int (* var2890 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var322 var3598 (getParts/1126038692 var2868)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3720 Int (hashCode/1337417431 var322)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var398 Int (bv2nat (bvxor ((_ int2bv 64) var2311) ((_ int2bv 64) var3720)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2371 Int (* var398 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var961 String (getAlternateId/1126038692 var2868)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var961 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var905 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2966 Int (bv2nat (bvxor ((_ int2bv 64) var2371) ((_ int2bv 64) var905)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3842 Int (* var2966 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2645 String (getDesc/1126038692 var2868)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2645 null-String))) ; Cond: $r8 != null 
(define-const var3980 String (getDesc/1126038692 var2868)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var286 Int (hashCode/-467973558 var3980)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3405 Int (bv2nat (bvxor ((_ int2bv 64) var3842) ((_ int2bv 64) var286)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2507 Int (* var3405 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3095 String (getMeaning/1126038692 var2868)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3095 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var1302 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2249 Int (bv2nat (bvxor ((_ int2bv 64) var2507) ((_ int2bv 64) var1302)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var846 Int (* var2249 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var657 Bool (isHidden/1126038692 var2868)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var657 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1574 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var3370 Int (bv2nat (bvxor ((_ int2bv 64) var846) ((_ int2bv 64) var1574)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1643 Int (* var3370 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var663 var3175 (getPlaceholderNameToExampleMap/1126038692 var2868)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2983 Int (hashCode/-1247371579 var663)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1839 Int (bv2nat (bvxor ((_ int2bv 64) var1643) ((_ int2bv 64) var2983)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1952 Int (* var1839 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1648 var3175 (getPlaceholderNameToOriginalCodeMap/1126038692 var2868)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var74 Int (hashCode/-1247371579 var1648)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2424 Int (bv2nat (bvxor ((_ int2bv 64) var1952) ((_ int2bv 64) var74)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var988 Int (* var2424 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var170 var2918 (jsPlaceholderNames/1126038692 var2868)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1844 Int (hashCode/1818408063 var170)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2935 Int (bv2nat (bvxor ((_ int2bv 64) var988) ((_ int2bv 64) var1844)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2752=com.google.javascript.jscomp.AutoValue_JsMessage, var2868=r0, var262=$r1, var1977=null_type, var2015=$i31, var440=$i27, var2049=$i28, var3315=$r3, var96=$i0, var2313=$i29, var3816=$i30, var1143=$z0, var560=$s32, var1050=$i25, var2444=$i26, var2384=$z1, var3881=$s33, var3154=$i19, var2224=$i20, var1818=$r4, var2372=$i1, var2890=$i21, var2311=$i22, var3598=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var322=$r5, var3720=$i2, var398=$i23, var2371=$i24, var961=$r6, var905=$i34, var2966=$i17, var3842=$i18, var2645=$r8, var3980=$r9, var286=$i35, var3405=$i15, var2507=$i16, var3095=$r10, var1302=$i36, var2249=$i13, var846=$i14, var657=$z2, var1574=$s37, var3370=$i6, var1643=$i7, var3175=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var663=$r12, var2983=$i3, var1839=$i8, var1952=$i9, var1648=$r13, var74=$i4, var2424=$i10, var988=$i11, var2918=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var170=$r14, var1844=$i5, var2935=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2752, r0=var2868, $r1=var262, null_type=var1977, $i31=var2015, $i27=var440, $i28=var2049, $r3=var3315, $i0=var96, $i29=var2313, $i30=var3816, $z0=var1143, $s32=var560, $i25=var1050, $i26=var2444, $z1=var2384, $s33=var3881, $i19=var3154, $i20=var2224, $r4=var1818, $i1=var2372, $i21=var2890, $i22=var2311, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3598, $r5=var322, $i2=var3720, $i23=var398, $i24=var2371, $r6=var961, $i34=var905, $i17=var2966, $i18=var3842, $r8=var2645, $r9=var3980, $i35=var286, $i15=var3405, $i16=var2507, $r10=var3095, $i36=var1302, $i13=var2249, $i14=var846, $z2=var657, $s37=var1574, $i6=var3370, $i7=var1643, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3175, $r12=var663, $i3=var2983, $i8=var1839, $i9=var1952, $r13=var1648, $i4=var74, $i10=var2424, $i11=var988, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2918, $r14=var170, $i5=var1844, $i12=var2935}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15