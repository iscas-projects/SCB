(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2901 0)
(declare-sort var3107 0)
(declare-sort var2430 0)
(declare-sort var413 0)
(declare-sort var1027 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2901) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2901) String)
(declare-fun isAnonymous/1126038692 (var2901) Bool)
(declare-fun isExternal/1126038692 (var2901) Bool)
(declare-fun getId/1126038692 (var2901) String)
(declare-fun getParts/1126038692 (var2901) var2430)
(declare-fun hashCode/1337417431 (var2430) Int)
(declare-fun getAlternateId/1126038692 (var2901) String)
(declare-fun getDesc/1126038692 (var2901) String)
(declare-fun getMeaning/1126038692 (var2901) String)
(declare-fun isHidden/1126038692 (var2901) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2901) var413)
(declare-fun hashCode/-1247371579 (var413) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2901) var413)
(declare-fun jsPlaceholderNames/1126038692 (var2901) var1027)
(declare-fun hashCode/1818408063 (var1027) Int)
(declare-const null-var2901 var2901)
(declare-const null-String String)
(declare-const var590 var2901) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var590 null-var2901)))
(define-const var2862 String (getSourceName/1126038692 var590)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var2862 null-String))) ; Cond: $r1 != null 
(define-const var3767 String (getSourceName/1126038692 var590)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3396 Int (hashCode/-467973558 var3767)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var470 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3396)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2192 Int (* var470 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2062 String (getKey/1126038692 var590)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1442 Int (hashCode/-467973558 var2062)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2312 Int (bv2nat (bvxor ((_ int2bv 64) var2192) ((_ int2bv 64) var1442)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3828 Int (* var2312 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2740 Bool (isAnonymous/1126038692 var590)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2740 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3365 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var521 Int (bv2nat (bvxor ((_ int2bv 64) var3828) ((_ int2bv 64) var3365)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3846 Int (* var521 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3540 Bool (isExternal/1126038692 var590)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var3540 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2000 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var458 Int (bv2nat (bvxor ((_ int2bv 64) var3846) ((_ int2bv 64) var2000)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2296 Int (* var458 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var374 String (getId/1126038692 var590)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2767 Int (hashCode/-467973558 var374)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3620 Int (bv2nat (bvxor ((_ int2bv 64) var2296) ((_ int2bv 64) var2767)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2382 Int (* var3620 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3801 var2430 (getParts/1126038692 var590)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2760 Int (hashCode/1337417431 var3801)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var321 Int (bv2nat (bvxor ((_ int2bv 64) var2382) ((_ int2bv 64) var2760)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var551 Int (* var321 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1041 String (getAlternateId/1126038692 var590)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1041 null-String))) ; Cond: $r6 != null 
(define-const var553 String (getAlternateId/1126038692 var590)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var2318 Int (hashCode/-467973558 var553)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3512 Int (bv2nat (bvxor ((_ int2bv 64) var551) ((_ int2bv 64) var2318)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var221 Int (* var3512 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1749 String (getDesc/1126038692 var590)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var1749 null-String))) ; Cond: $r8 != null 
(define-const var3606 String (getDesc/1126038692 var590)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var3982 Int (hashCode/-467973558 var3606)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3479 Int (bv2nat (bvxor ((_ int2bv 64) var221) ((_ int2bv 64) var3982)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1444 Int (* var3479 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2353 String (getMeaning/1126038692 var590)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var2353 null-String))) ; Cond: $r10 != null 
(define-const var3209 String (getMeaning/1126038692 var590)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1294 Int (hashCode/-467973558 var3209)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2988 Int (bv2nat (bvxor ((_ int2bv 64) var1444) ((_ int2bv 64) var1294)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2287 Int (* var2988 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2916 Bool (isHidden/1126038692 var590)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var2916 1 0) 0)) ; Cond: $z2 == 0 
(define-const var480 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var3995 Int (bv2nat (bvxor ((_ int2bv 64) var2287) ((_ int2bv 64) var480)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1972 Int (* var3995 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var190 var413 (getPlaceholderNameToExampleMap/1126038692 var590)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var30 Int (hashCode/-1247371579 var190)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3956 Int (bv2nat (bvxor ((_ int2bv 64) var1972) ((_ int2bv 64) var30)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2579 Int (* var3956 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2179 var413 (getPlaceholderNameToOriginalCodeMap/1126038692 var590)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var753 Int (hashCode/-1247371579 var2179)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3371 Int (bv2nat (bvxor ((_ int2bv 64) var2579) ((_ int2bv 64) var753)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2182 Int (* var3371 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var680 var1027 (jsPlaceholderNames/1126038692 var590)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1082 Int (hashCode/1818408063 var680)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3882 Int (bv2nat (bvxor ((_ int2bv 64) var2182) ((_ int2bv 64) var1082)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2901=com.google.javascript.jscomp.AutoValue_JsMessage, var590=r0, var2862=$r1, var3107=null_type, var3767=$r2, var3396=$i31, var470=$i27, var2192=$i28, var2062=$r3, var1442=$i0, var2312=$i29, var3828=$i30, var2740=$z0, var3365=$s32, var521=$i25, var3846=$i26, var3540=$z1, var2000=$s33, var458=$i19, var2296=$i20, var374=$r4, var2767=$i1, var3620=$i21, var2382=$i22, var2430=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3801=$r5, var2760=$i2, var321=$i23, var551=$i24, var1041=$r6, var553=$r7, var2318=$i34, var3512=$i17, var221=$i18, var1749=$r8, var3606=$r9, var3982=$i35, var3479=$i15, var1444=$i16, var2353=$r10, var3209=$r11, var1294=$i36, var2988=$i13, var2287=$i14, var2916=$z2, var480=$s37, var3995=$i6, var1972=$i7, var413=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var190=$r12, var30=$i3, var3956=$i8, var2579=$i9, var2179=$r13, var753=$i4, var3371=$i10, var2182=$i11, var1027=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var680=$r14, var1082=$i5, var3882=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2901, r0=var590, $r1=var2862, null_type=var3107, $r2=var3767, $i31=var3396, $i27=var470, $i28=var2192, $r3=var2062, $i0=var1442, $i29=var2312, $i30=var3828, $z0=var2740, $s32=var3365, $i25=var521, $i26=var3846, $z1=var3540, $s33=var2000, $i19=var458, $i20=var2296, $r4=var374, $i1=var2767, $i21=var3620, $i22=var2382, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2430, $r5=var3801, $i2=var2760, $i23=var321, $i24=var551, $r6=var1041, $r7=var553, $i34=var2318, $i17=var3512, $i18=var221, $r8=var1749, $r9=var3606, $i35=var3982, $i15=var3479, $i16=var1444, $r10=var2353, $r11=var3209, $i36=var1294, $i13=var2988, $i14=var2287, $z2=var2916, $s37=var480, $i6=var3995, $i7=var1972, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var413, $r12=var190, $i3=var30, $i8=var3956, $i9=var2579, $r13=var2179, $i4=var753, $i10=var3371, $i11=var2182, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1027, $r14=var680, $i5=var1082, $i12=var3882}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 6}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15