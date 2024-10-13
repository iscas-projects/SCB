(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var995 0)
(declare-sort var3700 0)
(declare-sort var2229 0)
(declare-sort var1961 0)
(declare-sort var2657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var995) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var995) String)
(declare-fun isAnonymous/1126038692 (var995) Bool)
(declare-fun isExternal/1126038692 (var995) Bool)
(declare-fun getId/1126038692 (var995) String)
(declare-fun getParts/1126038692 (var995) var2229)
(declare-fun hashCode/1337417431 (var2229) Int)
(declare-fun getAlternateId/1126038692 (var995) String)
(declare-fun getDesc/1126038692 (var995) String)
(declare-fun getMeaning/1126038692 (var995) String)
(declare-fun isHidden/1126038692 (var995) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var995) var1961)
(declare-fun hashCode/-1247371579 (var1961) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var995) var1961)
(declare-fun jsPlaceholderNames/1126038692 (var995) var2657)
(declare-fun hashCode/1818408063 (var2657) Int)
(declare-const null-var995 var995)
(declare-const null-String String)
(declare-const var3589 var995) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3589 null-var995)))
(define-const var3803 String (getSourceName/1126038692 var3589)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var3803 null-String))) ; Cond: $r1 != null 
(define-const var3574 String (getSourceName/1126038692 var3589)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var477 Int (hashCode/-467973558 var3574)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2033 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var477)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1275 Int (* var2033 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var606 String (getKey/1126038692 var3589)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1819 Int (hashCode/-467973558 var606)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3717 Int (bv2nat (bvxor ((_ int2bv 64) var1275) ((_ int2bv 64) var1819)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var396 Int (* var3717 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2403 Bool (isAnonymous/1126038692 var3589)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var2403 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1531 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var1959 Int (bv2nat (bvxor ((_ int2bv 64) var396) ((_ int2bv 64) var1531)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3299 Int (* var1959 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var406 Bool (isExternal/1126038692 var3589)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var406 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1863 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var2958 Int (bv2nat (bvxor ((_ int2bv 64) var3299) ((_ int2bv 64) var1863)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1244 Int (* var2958 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3205 String (getId/1126038692 var3589)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1121 Int (hashCode/-467973558 var3205)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2966 Int (bv2nat (bvxor ((_ int2bv 64) var1244) ((_ int2bv 64) var1121)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1713 Int (* var2966 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3883 var2229 (getParts/1126038692 var3589)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2891 Int (hashCode/1337417431 var3883)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var519 Int (bv2nat (bvxor ((_ int2bv 64) var1713) ((_ int2bv 64) var2891)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2892 Int (* var519 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1758 String (getAlternateId/1126038692 var3589)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1758 null-String))) ; Cond: $r6 != null 
(define-const var520 String (getAlternateId/1126038692 var3589)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1650 Int (hashCode/-467973558 var520)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2922 Int (bv2nat (bvxor ((_ int2bv 64) var2892) ((_ int2bv 64) var1650)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1335 Int (* var2922 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3189 String (getDesc/1126038692 var3589)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3189 null-String))) ; Cond: $r8 != null 
(define-const var3922 String (getDesc/1126038692 var3589)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2586 Int (hashCode/-467973558 var3922)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2827 Int (bv2nat (bvxor ((_ int2bv 64) var1335) ((_ int2bv 64) var2586)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var712 Int (* var2827 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var885 String (getMeaning/1126038692 var3589)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var885 null-String))) ; Cond: $r10 != null 
(define-const var3524 String (getMeaning/1126038692 var3589)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1879 Int (hashCode/-467973558 var3524)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2541 Int (bv2nat (bvxor ((_ int2bv 64) var712) ((_ int2bv 64) var1879)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var16 Int (* var2541 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2166 Bool (isHidden/1126038692 var3589)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2166 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2114 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2351 Int (bv2nat (bvxor ((_ int2bv 64) var16) ((_ int2bv 64) var2114)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2846 Int (* var2351 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3206 var1961 (getPlaceholderNameToExampleMap/1126038692 var3589)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3640 Int (hashCode/-1247371579 var3206)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3483 Int (bv2nat (bvxor ((_ int2bv 64) var2846) ((_ int2bv 64) var3640)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var138 Int (* var3483 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var623 var1961 (getPlaceholderNameToOriginalCodeMap/1126038692 var3589)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1443 Int (hashCode/-1247371579 var623)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2882 Int (bv2nat (bvxor ((_ int2bv 64) var138) ((_ int2bv 64) var1443)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1250 Int (* var2882 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3872 var2657 (jsPlaceholderNames/1126038692 var3589)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var272 Int (hashCode/1818408063 var3872)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3464 Int (bv2nat (bvxor ((_ int2bv 64) var1250) ((_ int2bv 64) var272)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var995=com.google.javascript.jscomp.AutoValue_JsMessage, var3589=r0, var3803=$r1, var3700=null_type, var3574=$r2, var477=$i31, var2033=$i27, var1275=$i28, var606=$r3, var1819=$i0, var3717=$i29, var396=$i30, var2403=$z0, var1531=$s32, var1959=$i25, var3299=$i26, var406=$z1, var1863=$s33, var2958=$i19, var1244=$i20, var3205=$r4, var1121=$i1, var2966=$i21, var1713=$i22, var2229=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3883=$r5, var2891=$i2, var519=$i23, var2892=$i24, var1758=$r6, var520=$r7, var1650=$i34, var2922=$i17, var1335=$i18, var3189=$r8, var3922=$r9, var2586=$i35, var2827=$i15, var712=$i16, var885=$r10, var3524=$r11, var1879=$i36, var2541=$i13, var16=$i14, var2166=$z2, var2114=$s37, var2351=$i6, var2846=$i7, var1961=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3206=$r12, var3640=$i3, var3483=$i8, var138=$i9, var623=$r13, var1443=$i4, var2882=$i10, var1250=$i11, var2657=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3872=$r14, var272=$i5, var3464=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var995, r0=var3589, $r1=var3803, null_type=var3700, $r2=var3574, $i31=var477, $i27=var2033, $i28=var1275, $r3=var606, $i0=var1819, $i29=var3717, $i30=var396, $z0=var2403, $s32=var1531, $i25=var1959, $i26=var3299, $z1=var406, $s33=var1863, $i19=var2958, $i20=var1244, $r4=var3205, $i1=var1121, $i21=var2966, $i22=var1713, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2229, $r5=var3883, $i2=var2891, $i23=var519, $i24=var2892, $r6=var1758, $r7=var520, $i34=var1650, $i17=var2922, $i18=var1335, $r8=var3189, $r9=var3922, $i35=var2586, $i15=var2827, $i16=var712, $r10=var885, $r11=var3524, $i36=var1879, $i13=var2541, $i14=var16, $z2=var2166, $s37=var2114, $i6=var2351, $i7=var2846, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1961, $r12=var3206, $i3=var3640, $i8=var3483, $i9=var138, $r13=var623, $i4=var1443, $i10=var2882, $i11=var1250, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2657, $r14=var3872, $i5=var272, $i12=var3464}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 6}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15