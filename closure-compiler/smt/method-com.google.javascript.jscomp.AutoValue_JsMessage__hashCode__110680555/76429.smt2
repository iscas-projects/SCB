(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var149 0)
(declare-sort var2811 0)
(declare-sort var3160 0)
(declare-sort var3353 0)
(declare-sort var3960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var149) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var149) String)
(declare-fun isAnonymous/1126038692 (var149) Bool)
(declare-fun isExternal/1126038692 (var149) Bool)
(declare-fun getId/1126038692 (var149) String)
(declare-fun getParts/1126038692 (var149) var3160)
(declare-fun hashCode/1337417431 (var3160) Int)
(declare-fun getAlternateId/1126038692 (var149) String)
(declare-fun getDesc/1126038692 (var149) String)
(declare-fun getMeaning/1126038692 (var149) String)
(declare-fun isHidden/1126038692 (var149) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var149) var3353)
(declare-fun hashCode/-1247371579 (var3353) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var149) var3353)
(declare-fun jsPlaceholderNames/1126038692 (var149) var3960)
(declare-fun hashCode/1818408063 (var3960) Int)
(declare-const null-var149 var149)
(declare-const null-String String)
(declare-const var2060 var149) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2060 null-var149)))
(define-const var855 String (getSourceName/1126038692 var2060)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var855 null-String))) ; Cond: $r1 != null 
(define-const var2760 String (getSourceName/1126038692 var2060)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var2175 Int (hashCode/-467973558 var2760)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var983 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2175)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var300 Int (* var983 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1927 String (getKey/1126038692 var2060)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1191 Int (hashCode/-467973558 var1927)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1679 Int (bv2nat (bvxor ((_ int2bv 64) var300) ((_ int2bv 64) var1191)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3272 Int (* var1679 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3871 Bool (isAnonymous/1126038692 var2060)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var3871 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2504 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var2398 Int (bv2nat (bvxor ((_ int2bv 64) var3272) ((_ int2bv 64) var2504)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3927 Int (* var2398 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3875 Bool (isExternal/1126038692 var2060)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3875 1 0) 0)) ; Cond: $z1 == 0 
(define-const var707 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var861 Int (bv2nat (bvxor ((_ int2bv 64) var3927) ((_ int2bv 64) var707)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1158 Int (* var861 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3906 String (getId/1126038692 var2060)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1127 Int (hashCode/-467973558 var3906)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1482 Int (bv2nat (bvxor ((_ int2bv 64) var1158) ((_ int2bv 64) var1127)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var772 Int (* var1482 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var800 var3160 (getParts/1126038692 var2060)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1279 Int (hashCode/1337417431 var800)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2782 Int (bv2nat (bvxor ((_ int2bv 64) var772) ((_ int2bv 64) var1279)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var212 Int (* var2782 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3162 String (getAlternateId/1126038692 var2060)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3162 null-String))) ; Cond: $r6 != null 
(define-const var3579 String (getAlternateId/1126038692 var2060)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var236 Int (hashCode/-467973558 var3579)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1966 Int (bv2nat (bvxor ((_ int2bv 64) var212) ((_ int2bv 64) var236)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1669 Int (* var1966 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1351 String (getDesc/1126038692 var2060)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1351 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var2563 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2194 Int (bv2nat (bvxor ((_ int2bv 64) var1669) ((_ int2bv 64) var2563)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2587 Int (* var2194 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var750 String (getMeaning/1126038692 var2060)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var750 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2973 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var3261 Int (bv2nat (bvxor ((_ int2bv 64) var2587) ((_ int2bv 64) var2973)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var354 Int (* var3261 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1199 Bool (isHidden/1126038692 var2060)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var1199 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2188 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var457 Int (bv2nat (bvxor ((_ int2bv 64) var354) ((_ int2bv 64) var2188)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2190 Int (* var457 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3649 var3353 (getPlaceholderNameToExampleMap/1126038692 var2060)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1407 Int (hashCode/-1247371579 var3649)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2063 Int (bv2nat (bvxor ((_ int2bv 64) var2190) ((_ int2bv 64) var1407)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var296 Int (* var2063 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var271 var3353 (getPlaceholderNameToOriginalCodeMap/1126038692 var2060)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1121 Int (hashCode/-1247371579 var271)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3633 Int (bv2nat (bvxor ((_ int2bv 64) var296) ((_ int2bv 64) var1121)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var546 Int (* var3633 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var528 var3960 (jsPlaceholderNames/1126038692 var2060)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3473 Int (hashCode/1818408063 var528)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1745 Int (bv2nat (bvxor ((_ int2bv 64) var546) ((_ int2bv 64) var3473)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var149=com.google.javascript.jscomp.AutoValue_JsMessage, var2060=r0, var855=$r1, var2811=null_type, var2760=$r2, var2175=$i31, var983=$i27, var300=$i28, var1927=$r3, var1191=$i0, var1679=$i29, var3272=$i30, var3871=$z0, var2504=$s32, var2398=$i25, var3927=$i26, var3875=$z1, var707=$s33, var861=$i19, var1158=$i20, var3906=$r4, var1127=$i1, var1482=$i21, var772=$i22, var3160=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var800=$r5, var1279=$i2, var2782=$i23, var212=$i24, var3162=$r6, var3579=$r7, var236=$i34, var1966=$i17, var1669=$i18, var1351=$r8, var2563=$i35, var2194=$i15, var2587=$i16, var750=$r10, var2973=$i36, var3261=$i13, var354=$i14, var1199=$z2, var2188=$s37, var457=$i6, var2190=$i7, var3353=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3649=$r12, var1407=$i3, var2063=$i8, var296=$i9, var271=$r13, var1121=$i4, var3633=$i10, var546=$i11, var3960=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var528=$r14, var3473=$i5, var1745=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var149, r0=var2060, $r1=var855, null_type=var2811, $r2=var2760, $i31=var2175, $i27=var983, $i28=var300, $r3=var1927, $i0=var1191, $i29=var1679, $i30=var3272, $z0=var3871, $s32=var2504, $i25=var2398, $i26=var3927, $z1=var3875, $s33=var707, $i19=var861, $i20=var1158, $r4=var3906, $i1=var1127, $i21=var1482, $i22=var772, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3160, $r5=var800, $i2=var1279, $i23=var2782, $i24=var212, $r6=var3162, $r7=var3579, $i34=var236, $i17=var1966, $i18=var1669, $r8=var1351, $i35=var2563, $i15=var2194, $i16=var2587, $r10=var750, $i36=var2973, $i13=var3261, $i14=var354, $z2=var1199, $s37=var2188, $i6=var457, $i7=var2190, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3353, $r12=var3649, $i3=var1407, $i8=var2063, $i9=var296, $r13=var271, $i4=var1121, $i10=var3633, $i11=var546, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3960, $r14=var528, $i5=var3473, $i12=var1745}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15