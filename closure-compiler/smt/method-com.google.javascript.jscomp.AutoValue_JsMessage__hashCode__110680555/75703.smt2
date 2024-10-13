(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1767 0)
(declare-sort var3667 0)
(declare-sort var1543 0)
(declare-sort var433 0)
(declare-sort var2991 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1767) String)
(declare-fun getKey/1126038692 (var1767) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1767) Bool)
(declare-fun isExternal/1126038692 (var1767) Bool)
(declare-fun getId/1126038692 (var1767) String)
(declare-fun getParts/1126038692 (var1767) var1543)
(declare-fun hashCode/1337417431 (var1543) Int)
(declare-fun getAlternateId/1126038692 (var1767) String)
(declare-fun getDesc/1126038692 (var1767) String)
(declare-fun getMeaning/1126038692 (var1767) String)
(declare-fun isHidden/1126038692 (var1767) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1767) var433)
(declare-fun hashCode/-1247371579 (var433) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1767) var433)
(declare-fun jsPlaceholderNames/1126038692 (var1767) var2991)
(declare-fun hashCode/1818408063 (var2991) Int)
(declare-const null-var1767 var1767)
(declare-const null-String String)
(declare-const var3735 var1767) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3735 null-var1767)))
(define-const var1869 String (getSourceName/1126038692 var3735)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1869 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2186 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2870 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2186)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1138 Int (* var2870 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var407 String (getKey/1126038692 var3735)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1794 Int (hashCode/-467973558 var407)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3388 Int (bv2nat (bvxor ((_ int2bv 64) var1138) ((_ int2bv 64) var1794)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var47 Int (* var3388 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2020 Bool (isAnonymous/1126038692 var3735)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var2020 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3791 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3866 Int (bv2nat (bvxor ((_ int2bv 64) var47) ((_ int2bv 64) var3791)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3600 Int (* var3866 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1087 Bool (isExternal/1126038692 var3735)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1087 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2832 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var1069 Int (bv2nat (bvxor ((_ int2bv 64) var3600) ((_ int2bv 64) var2832)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3102 Int (* var1069 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2715 String (getId/1126038692 var3735)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3140 Int (hashCode/-467973558 var2715)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3119 Int (bv2nat (bvxor ((_ int2bv 64) var3102) ((_ int2bv 64) var3140)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2374 Int (* var3119 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2721 var1543 (getParts/1126038692 var3735)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1896 Int (hashCode/1337417431 var2721)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var342 Int (bv2nat (bvxor ((_ int2bv 64) var2374) ((_ int2bv 64) var1896)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1704 Int (* var342 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3212 String (getAlternateId/1126038692 var3735)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3212 null-String))) ; Cond: $r6 != null 
(define-const var185 String (getAlternateId/1126038692 var3735)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1701 Int (hashCode/-467973558 var185)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var180 Int (bv2nat (bvxor ((_ int2bv 64) var1704) ((_ int2bv 64) var1701)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3822 Int (* var180 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var704 String (getDesc/1126038692 var3735)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var704 null-String))) ; Cond: $r8 != null 
(define-const var3872 String (getDesc/1126038692 var3735)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var1610 Int (hashCode/-467973558 var3872)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var856 Int (bv2nat (bvxor ((_ int2bv 64) var3822) ((_ int2bv 64) var1610)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var788 Int (* var856 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3068 String (getMeaning/1126038692 var3735)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3068 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var3376 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var1468 Int (bv2nat (bvxor ((_ int2bv 64) var788) ((_ int2bv 64) var3376)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2371 Int (* var1468 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2972 Bool (isHidden/1126038692 var3735)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2972 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3653 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var3590 Int (bv2nat (bvxor ((_ int2bv 64) var2371) ((_ int2bv 64) var3653)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1804 Int (* var3590 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2136 var433 (getPlaceholderNameToExampleMap/1126038692 var3735)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1373 Int (hashCode/-1247371579 var2136)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var137 Int (bv2nat (bvxor ((_ int2bv 64) var1804) ((_ int2bv 64) var1373)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3493 Int (* var137 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3256 var433 (getPlaceholderNameToOriginalCodeMap/1126038692 var3735)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3019 Int (hashCode/-1247371579 var3256)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3690 Int (bv2nat (bvxor ((_ int2bv 64) var3493) ((_ int2bv 64) var3019)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var225 Int (* var3690 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3553 var2991 (jsPlaceholderNames/1126038692 var3735)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3035 Int (hashCode/1818408063 var3553)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2022 Int (bv2nat (bvxor ((_ int2bv 64) var225) ((_ int2bv 64) var3035)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1767=com.google.javascript.jscomp.AutoValue_JsMessage, var3735=r0, var1869=$r1, var3667=null_type, var2186=$i31, var2870=$i27, var1138=$i28, var407=$r3, var1794=$i0, var3388=$i29, var47=$i30, var2020=$z0, var3791=$s32, var3866=$i25, var3600=$i26, var1087=$z1, var2832=$s33, var1069=$i19, var3102=$i20, var2715=$r4, var3140=$i1, var3119=$i21, var2374=$i22, var1543=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2721=$r5, var1896=$i2, var342=$i23, var1704=$i24, var3212=$r6, var185=$r7, var1701=$i34, var180=$i17, var3822=$i18, var704=$r8, var3872=$r9, var1610=$i35, var856=$i15, var788=$i16, var3068=$r10, var3376=$i36, var1468=$i13, var2371=$i14, var2972=$z2, var3653=$s37, var3590=$i6, var1804=$i7, var433=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2136=$r12, var1373=$i3, var137=$i8, var3493=$i9, var3256=$r13, var3019=$i4, var3690=$i10, var225=$i11, var2991=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3553=$r14, var3035=$i5, var2022=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1767, r0=var3735, $r1=var1869, null_type=var3667, $i31=var2186, $i27=var2870, $i28=var1138, $r3=var407, $i0=var1794, $i29=var3388, $i30=var47, $z0=var2020, $s32=var3791, $i25=var3866, $i26=var3600, $z1=var1087, $s33=var2832, $i19=var1069, $i20=var3102, $r4=var2715, $i1=var3140, $i21=var3119, $i22=var2374, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1543, $r5=var2721, $i2=var1896, $i23=var342, $i24=var1704, $r6=var3212, $r7=var185, $i34=var1701, $i17=var180, $i18=var3822, $r8=var704, $r9=var3872, $i35=var1610, $i15=var856, $i16=var788, $r10=var3068, $i36=var3376, $i13=var1468, $i14=var2371, $z2=var2972, $s37=var3653, $i6=var3590, $i7=var1804, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var433, $r12=var2136, $i3=var1373, $i8=var137, $i9=var3493, $r13=var3256, $i4=var3019, $i10=var3690, $i11=var225, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2991, $r14=var3553, $i5=var3035, $i12=var2022}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15