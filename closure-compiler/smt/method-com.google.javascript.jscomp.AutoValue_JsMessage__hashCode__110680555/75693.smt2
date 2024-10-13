(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1640 0)
(declare-sort var2881 0)
(declare-sort var2687 0)
(declare-sort var3555 0)
(declare-sort var3997 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1640) String)
(declare-fun getKey/1126038692 (var1640) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1640) Bool)
(declare-fun isExternal/1126038692 (var1640) Bool)
(declare-fun getId/1126038692 (var1640) String)
(declare-fun getParts/1126038692 (var1640) var2687)
(declare-fun hashCode/1337417431 (var2687) Int)
(declare-fun getAlternateId/1126038692 (var1640) String)
(declare-fun getDesc/1126038692 (var1640) String)
(declare-fun getMeaning/1126038692 (var1640) String)
(declare-fun isHidden/1126038692 (var1640) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1640) var3555)
(declare-fun hashCode/-1247371579 (var3555) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1640) var3555)
(declare-fun jsPlaceholderNames/1126038692 (var1640) var3997)
(declare-fun hashCode/1818408063 (var3997) Int)
(declare-const null-var1640 var1640)
(declare-const null-String String)
(declare-const var1768 var1640) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1768 null-var1640)))
(define-const var3220 String (getSourceName/1126038692 var1768)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var3220 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1649 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2226 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1649)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3692 Int (* var2226 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3196 String (getKey/1126038692 var1768)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2411 Int (hashCode/-467973558 var3196)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2408 Int (bv2nat (bvxor ((_ int2bv 64) var3692) ((_ int2bv 64) var2411)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1047 Int (* var2408 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2766 Bool (isAnonymous/1126038692 var1768)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var2766 1 0) 0)) ; Cond: $z0 == 0 
(define-const var77 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var1131 Int (bv2nat (bvxor ((_ int2bv 64) var1047) ((_ int2bv 64) var77)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3681 Int (* var1131 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1978 Bool (isExternal/1126038692 var1768)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1978 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var599 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var1749 Int (bv2nat (bvxor ((_ int2bv 64) var3681) ((_ int2bv 64) var599)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3707 Int (* var1749 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var607 String (getId/1126038692 var1768)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3036 Int (hashCode/-467973558 var607)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2318 Int (bv2nat (bvxor ((_ int2bv 64) var3707) ((_ int2bv 64) var3036)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var600 Int (* var2318 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3904 var2687 (getParts/1126038692 var1768)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1836 Int (hashCode/1337417431 var3904)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3756 Int (bv2nat (bvxor ((_ int2bv 64) var600) ((_ int2bv 64) var1836)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1417 Int (* var3756 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3635 String (getAlternateId/1126038692 var1768)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3635 null-String))) ; Cond: $r6 != null 
(define-const var2164 String (getAlternateId/1126038692 var1768)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var2953 Int (hashCode/-467973558 var2164)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var11 Int (bv2nat (bvxor ((_ int2bv 64) var1417) ((_ int2bv 64) var2953)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2871 Int (* var11 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1897 String (getDesc/1126038692 var1768)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1897 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var476 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var1605 Int (bv2nat (bvxor ((_ int2bv 64) var2871) ((_ int2bv 64) var476)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var156 Int (* var1605 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1136 String (getMeaning/1126038692 var1768)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var1136 null-String))) ; Cond: $r10 != null 
(define-const var2534 String (getMeaning/1126038692 var1768)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var2572 Int (hashCode/-467973558 var2534)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3505 Int (bv2nat (bvxor ((_ int2bv 64) var156) ((_ int2bv 64) var2572)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var984 Int (* var3505 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2619 Bool (isHidden/1126038692 var1768)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var2619 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1036 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var2434 Int (bv2nat (bvxor ((_ int2bv 64) var984) ((_ int2bv 64) var1036)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var539 Int (* var2434 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1915 var3555 (getPlaceholderNameToExampleMap/1126038692 var1768)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2186 Int (hashCode/-1247371579 var1915)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3275 Int (bv2nat (bvxor ((_ int2bv 64) var539) ((_ int2bv 64) var2186)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2279 Int (* var3275 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1449 var3555 (getPlaceholderNameToOriginalCodeMap/1126038692 var1768)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2228 Int (hashCode/-1247371579 var1449)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3917 Int (bv2nat (bvxor ((_ int2bv 64) var2279) ((_ int2bv 64) var2228)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1728 Int (* var3917 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2536 var3997 (jsPlaceholderNames/1126038692 var1768)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var263 Int (hashCode/1818408063 var2536)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1769 Int (bv2nat (bvxor ((_ int2bv 64) var1728) ((_ int2bv 64) var263)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1640=com.google.javascript.jscomp.AutoValue_JsMessage, var1768=r0, var3220=$r1, var2881=null_type, var1649=$i31, var2226=$i27, var3692=$i28, var3196=$r3, var2411=$i0, var2408=$i29, var1047=$i30, var2766=$z0, var77=$s32, var1131=$i25, var3681=$i26, var1978=$z1, var599=$s33, var1749=$i19, var3707=$i20, var607=$r4, var3036=$i1, var2318=$i21, var600=$i22, var2687=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3904=$r5, var1836=$i2, var3756=$i23, var1417=$i24, var3635=$r6, var2164=$r7, var2953=$i34, var11=$i17, var2871=$i18, var1897=$r8, var476=$i35, var1605=$i15, var156=$i16, var1136=$r10, var2534=$r11, var2572=$i36, var3505=$i13, var984=$i14, var2619=$z2, var1036=$s37, var2434=$i6, var539=$i7, var3555=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1915=$r12, var2186=$i3, var3275=$i8, var2279=$i9, var1449=$r13, var2228=$i4, var3917=$i10, var1728=$i11, var3997=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2536=$r14, var263=$i5, var1769=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1640, r0=var1768, $r1=var3220, null_type=var2881, $i31=var1649, $i27=var2226, $i28=var3692, $r3=var3196, $i0=var2411, $i29=var2408, $i30=var1047, $z0=var2766, $s32=var77, $i25=var1131, $i26=var3681, $z1=var1978, $s33=var599, $i19=var1749, $i20=var3707, $r4=var607, $i1=var3036, $i21=var2318, $i22=var600, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2687, $r5=var3904, $i2=var1836, $i23=var3756, $i24=var1417, $r6=var3635, $r7=var2164, $i34=var2953, $i17=var11, $i18=var2871, $r8=var1897, $i35=var476, $i15=var1605, $i16=var156, $r10=var1136, $r11=var2534, $i36=var2572, $i13=var3505, $i14=var984, $z2=var2619, $s37=var1036, $i6=var2434, $i7=var539, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3555, $r12=var1915, $i3=var2186, $i8=var3275, $i9=var2279, $r13=var1449, $i4=var2228, $i10=var3917, $i11=var1728, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3997, $r14=var2536, $i5=var263, $i12=var1769}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15