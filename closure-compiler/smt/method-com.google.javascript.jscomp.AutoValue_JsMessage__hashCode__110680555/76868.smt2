(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var931 0)
(declare-sort var3162 0)
(declare-sort var2114 0)
(declare-sort var3212 0)
(declare-sort var3456 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var931) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var931) String)
(declare-fun isAnonymous/1126038692 (var931) Bool)
(declare-fun isExternal/1126038692 (var931) Bool)
(declare-fun getId/1126038692 (var931) String)
(declare-fun getParts/1126038692 (var931) var2114)
(declare-fun hashCode/1337417431 (var2114) Int)
(declare-fun getAlternateId/1126038692 (var931) String)
(declare-fun getDesc/1126038692 (var931) String)
(declare-fun getMeaning/1126038692 (var931) String)
(declare-fun isHidden/1126038692 (var931) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var931) var3212)
(declare-fun hashCode/-1247371579 (var3212) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var931) var3212)
(declare-fun jsPlaceholderNames/1126038692 (var931) var3456)
(declare-fun hashCode/1818408063 (var3456) Int)
(declare-const null-var931 var931)
(declare-const null-String String)
(declare-const var1015 var931) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1015 null-var931)))
(define-const var3172 String (getSourceName/1126038692 var1015)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var3172 null-String))) ; Cond: $r1 != null 
(define-const var1412 String (getSourceName/1126038692 var1015)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3439 Int (hashCode/-467973558 var1412)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1904 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3439)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3678 Int (* var1904 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2653 String (getKey/1126038692 var1015)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1152 Int (hashCode/-467973558 var2653)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1597 Int (bv2nat (bvxor ((_ int2bv 64) var3678) ((_ int2bv 64) var1152)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3497 Int (* var1597 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1927 Bool (isAnonymous/1126038692 var1015)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1927 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1632 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var2902 Int (bv2nat (bvxor ((_ int2bv 64) var3497) ((_ int2bv 64) var1632)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2393 Int (* var2902 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2325 Bool (isExternal/1126038692 var1015)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2325 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var464 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3736 Int (bv2nat (bvxor ((_ int2bv 64) var2393) ((_ int2bv 64) var464)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2753 Int (* var3736 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var797 String (getId/1126038692 var1015)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3367 Int (hashCode/-467973558 var797)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3571 Int (bv2nat (bvxor ((_ int2bv 64) var2753) ((_ int2bv 64) var3367)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2549 Int (* var3571 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3339 var2114 (getParts/1126038692 var1015)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var287 Int (hashCode/1337417431 var3339)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1133 Int (bv2nat (bvxor ((_ int2bv 64) var2549) ((_ int2bv 64) var287)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var794 Int (* var1133 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1800 String (getAlternateId/1126038692 var1015)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1800 null-String))) ; Cond: $r6 != null 
(define-const var1600 String (getAlternateId/1126038692 var1015)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var692 Int (hashCode/-467973558 var1600)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var46 Int (bv2nat (bvxor ((_ int2bv 64) var794) ((_ int2bv 64) var692)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var760 Int (* var46 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2641 String (getDesc/1126038692 var1015)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2641 null-String))) ; Cond: $r8 != null 
(define-const var1340 String (getDesc/1126038692 var1015)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var1863 Int (hashCode/-467973558 var1340)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2284 Int (bv2nat (bvxor ((_ int2bv 64) var760) ((_ int2bv 64) var1863)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2923 Int (* var2284 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var176 String (getMeaning/1126038692 var1015)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var176 null-String))) ; Cond: $r10 != null 
(define-const var1599 String (getMeaning/1126038692 var1015)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var3884 Int (hashCode/-467973558 var1599)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1689 Int (bv2nat (bvxor ((_ int2bv 64) var2923) ((_ int2bv 64) var3884)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2078 Int (* var1689 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1769 Bool (isHidden/1126038692 var1015)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var1769 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2017 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var593 Int (bv2nat (bvxor ((_ int2bv 64) var2078) ((_ int2bv 64) var2017)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var550 Int (* var593 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2457 var3212 (getPlaceholderNameToExampleMap/1126038692 var1015)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var644 Int (hashCode/-1247371579 var2457)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2636 Int (bv2nat (bvxor ((_ int2bv 64) var550) ((_ int2bv 64) var644)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1415 Int (* var2636 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2076 var3212 (getPlaceholderNameToOriginalCodeMap/1126038692 var1015)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2555 Int (hashCode/-1247371579 var2076)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var749 Int (bv2nat (bvxor ((_ int2bv 64) var1415) ((_ int2bv 64) var2555)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3483 Int (* var749 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1890 var3456 (jsPlaceholderNames/1126038692 var1015)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var191 Int (hashCode/1818408063 var1890)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3100 Int (bv2nat (bvxor ((_ int2bv 64) var3483) ((_ int2bv 64) var191)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var931=com.google.javascript.jscomp.AutoValue_JsMessage, var1015=r0, var3172=$r1, var3162=null_type, var1412=$r2, var3439=$i31, var1904=$i27, var3678=$i28, var2653=$r3, var1152=$i0, var1597=$i29, var3497=$i30, var1927=$z0, var1632=$s32, var2902=$i25, var2393=$i26, var2325=$z1, var464=$s33, var3736=$i19, var2753=$i20, var797=$r4, var3367=$i1, var3571=$i21, var2549=$i22, var2114=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3339=$r5, var287=$i2, var1133=$i23, var794=$i24, var1800=$r6, var1600=$r7, var692=$i34, var46=$i17, var760=$i18, var2641=$r8, var1340=$r9, var1863=$i35, var2284=$i15, var2923=$i16, var176=$r10, var1599=$r11, var3884=$i36, var1689=$i13, var2078=$i14, var1769=$z2, var2017=$s37, var593=$i6, var550=$i7, var3212=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2457=$r12, var644=$i3, var2636=$i8, var1415=$i9, var2076=$r13, var2555=$i4, var749=$i10, var3483=$i11, var3456=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1890=$r14, var191=$i5, var3100=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var931, r0=var1015, $r1=var3172, null_type=var3162, $r2=var1412, $i31=var3439, $i27=var1904, $i28=var3678, $r3=var2653, $i0=var1152, $i29=var1597, $i30=var3497, $z0=var1927, $s32=var1632, $i25=var2902, $i26=var2393, $z1=var2325, $s33=var464, $i19=var3736, $i20=var2753, $r4=var797, $i1=var3367, $i21=var3571, $i22=var2549, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2114, $r5=var3339, $i2=var287, $i23=var1133, $i24=var794, $r6=var1800, $r7=var1600, $i34=var692, $i17=var46, $i18=var760, $r8=var2641, $r9=var1340, $i35=var1863, $i15=var2284, $i16=var2923, $r10=var176, $r11=var1599, $i36=var3884, $i13=var1689, $i14=var2078, $z2=var1769, $s37=var2017, $i6=var593, $i7=var550, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3212, $r12=var2457, $i3=var644, $i8=var2636, $i9=var1415, $r13=var2076, $i4=var2555, $i10=var749, $i11=var3483, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3456, $r14=var1890, $i5=var191, $i12=var3100}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 6}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15