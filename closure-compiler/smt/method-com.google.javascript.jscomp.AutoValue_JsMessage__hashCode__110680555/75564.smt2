(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3077 0)
(declare-sort var970 0)
(declare-sort var1571 0)
(declare-sort var2246 0)
(declare-sort var588 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3077) String)
(declare-fun getKey/1126038692 (var3077) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3077) Bool)
(declare-fun isExternal/1126038692 (var3077) Bool)
(declare-fun getId/1126038692 (var3077) String)
(declare-fun getParts/1126038692 (var3077) var1571)
(declare-fun hashCode/1337417431 (var1571) Int)
(declare-fun getAlternateId/1126038692 (var3077) String)
(declare-fun getDesc/1126038692 (var3077) String)
(declare-fun getMeaning/1126038692 (var3077) String)
(declare-fun isHidden/1126038692 (var3077) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3077) var2246)
(declare-fun hashCode/-1247371579 (var2246) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3077) var2246)
(declare-fun jsPlaceholderNames/1126038692 (var3077) var588)
(declare-fun hashCode/1818408063 (var588) Int)
(declare-const null-var3077 var3077)
(declare-const null-String String)
(declare-const var1662 var3077) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1662 null-var3077)))
(define-const var3758 String (getSourceName/1126038692 var1662)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var3758 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var996 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2487 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var996)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2846 Int (* var2487 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1155 String (getKey/1126038692 var1662)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1652 Int (hashCode/-467973558 var1155)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1190 Int (bv2nat (bvxor ((_ int2bv 64) var2846) ((_ int2bv 64) var1652)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var524 Int (* var1190 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1927 Bool (isAnonymous/1126038692 var1662)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1927 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2138 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var3845 Int (bv2nat (bvxor ((_ int2bv 64) var524) ((_ int2bv 64) var2138)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2253 Int (* var3845 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3150 Bool (isExternal/1126038692 var1662)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3150 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3594 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var1123 Int (bv2nat (bvxor ((_ int2bv 64) var2253) ((_ int2bv 64) var3594)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var224 Int (* var1123 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1959 String (getId/1126038692 var1662)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var478 Int (hashCode/-467973558 var1959)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2595 Int (bv2nat (bvxor ((_ int2bv 64) var224) ((_ int2bv 64) var478)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var963 Int (* var2595 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3474 var1571 (getParts/1126038692 var1662)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2951 Int (hashCode/1337417431 var3474)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3926 Int (bv2nat (bvxor ((_ int2bv 64) var963) ((_ int2bv 64) var2951)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2420 Int (* var3926 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var238 String (getAlternateId/1126038692 var1662)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var238 null-String))) ; Cond: $r6 != null 
(define-const var2617 String (getAlternateId/1126038692 var1662)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3654 Int (hashCode/-467973558 var2617)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3421 Int (bv2nat (bvxor ((_ int2bv 64) var2420) ((_ int2bv 64) var3654)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3905 Int (* var3421 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var118 String (getDesc/1126038692 var1662)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var118 null-String))) ; Cond: $r8 != null 
(define-const var313 String (getDesc/1126038692 var1662)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var1040 Int (hashCode/-467973558 var313)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3165 Int (bv2nat (bvxor ((_ int2bv 64) var3905) ((_ int2bv 64) var1040)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3551 Int (* var3165 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3879 String (getMeaning/1126038692 var1662)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var3879 null-String))) ; Cond: $r10 != null 
(define-const var2980 String (getMeaning/1126038692 var1662)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1634 Int (hashCode/-467973558 var2980)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1642 Int (bv2nat (bvxor ((_ int2bv 64) var3551) ((_ int2bv 64) var1634)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1759 Int (* var1642 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3442 Bool (isHidden/1126038692 var1662)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var3442 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2386 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var3133 Int (bv2nat (bvxor ((_ int2bv 64) var1759) ((_ int2bv 64) var2386)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var284 Int (* var3133 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3724 var2246 (getPlaceholderNameToExampleMap/1126038692 var1662)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var623 Int (hashCode/-1247371579 var3724)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3324 Int (bv2nat (bvxor ((_ int2bv 64) var284) ((_ int2bv 64) var623)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2550 Int (* var3324 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var600 var2246 (getPlaceholderNameToOriginalCodeMap/1126038692 var1662)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1468 Int (hashCode/-1247371579 var600)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var145 Int (bv2nat (bvxor ((_ int2bv 64) var2550) ((_ int2bv 64) var1468)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3459 Int (* var145 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2015 var588 (jsPlaceholderNames/1126038692 var1662)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3710 Int (hashCode/1818408063 var2015)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2509 Int (bv2nat (bvxor ((_ int2bv 64) var3459) ((_ int2bv 64) var3710)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3077=com.google.javascript.jscomp.AutoValue_JsMessage, var1662=r0, var3758=$r1, var970=null_type, var996=$i31, var2487=$i27, var2846=$i28, var1155=$r3, var1652=$i0, var1190=$i29, var524=$i30, var1927=$z0, var2138=$s32, var3845=$i25, var2253=$i26, var3150=$z1, var3594=$s33, var1123=$i19, var224=$i20, var1959=$r4, var478=$i1, var2595=$i21, var963=$i22, var1571=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3474=$r5, var2951=$i2, var3926=$i23, var2420=$i24, var238=$r6, var2617=$r7, var3654=$i34, var3421=$i17, var3905=$i18, var118=$r8, var313=$r9, var1040=$i35, var3165=$i15, var3551=$i16, var3879=$r10, var2980=$r11, var1634=$i36, var1642=$i13, var1759=$i14, var3442=$z2, var2386=$s37, var3133=$i6, var284=$i7, var2246=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3724=$r12, var623=$i3, var3324=$i8, var2550=$i9, var600=$r13, var1468=$i4, var145=$i10, var3459=$i11, var588=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2015=$r14, var3710=$i5, var2509=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3077, r0=var1662, $r1=var3758, null_type=var970, $i31=var996, $i27=var2487, $i28=var2846, $r3=var1155, $i0=var1652, $i29=var1190, $i30=var524, $z0=var1927, $s32=var2138, $i25=var3845, $i26=var2253, $z1=var3150, $s33=var3594, $i19=var1123, $i20=var224, $r4=var1959, $i1=var478, $i21=var2595, $i22=var963, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1571, $r5=var3474, $i2=var2951, $i23=var3926, $i24=var2420, $r6=var238, $r7=var2617, $i34=var3654, $i17=var3421, $i18=var3905, $r8=var118, $r9=var313, $i35=var1040, $i15=var3165, $i16=var3551, $r10=var3879, $r11=var2980, $i36=var1634, $i13=var1642, $i14=var1759, $z2=var3442, $s37=var2386, $i6=var3133, $i7=var284, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2246, $r12=var3724, $i3=var623, $i8=var3324, $i9=var2550, $r13=var600, $i4=var1468, $i10=var145, $i11=var3459, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var588, $r14=var2015, $i5=var3710, $i12=var2509}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15