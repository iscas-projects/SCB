(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var879 0)
(declare-sort var2731 0)
(declare-sort var205 0)
(declare-sort var3861 0)
(declare-sort var1326 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var879) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var879) String)
(declare-fun isAnonymous/1126038692 (var879) Bool)
(declare-fun isExternal/1126038692 (var879) Bool)
(declare-fun getId/1126038692 (var879) String)
(declare-fun getParts/1126038692 (var879) var205)
(declare-fun hashCode/1337417431 (var205) Int)
(declare-fun getAlternateId/1126038692 (var879) String)
(declare-fun getDesc/1126038692 (var879) String)
(declare-fun getMeaning/1126038692 (var879) String)
(declare-fun isHidden/1126038692 (var879) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var879) var3861)
(declare-fun hashCode/-1247371579 (var3861) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var879) var3861)
(declare-fun jsPlaceholderNames/1126038692 (var879) var1326)
(declare-fun hashCode/1818408063 (var1326) Int)
(declare-const null-var879 var879)
(declare-const null-String String)
(declare-const var791 var879) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var791 null-var879)))
(define-const var848 String (getSourceName/1126038692 var791)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var848 null-String))) ; Cond: $r1 != null 
(define-const var3194 String (getSourceName/1126038692 var791)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var2370 Int (hashCode/-467973558 var3194)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3487 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2370)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2125 Int (* var3487 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2505 String (getKey/1126038692 var791)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1946 Int (hashCode/-467973558 var2505)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3919 Int (bv2nat (bvxor ((_ int2bv 64) var2125) ((_ int2bv 64) var1946)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var216 Int (* var3919 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2560 Bool (isAnonymous/1126038692 var791)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2560 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var166 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var1287 Int (bv2nat (bvxor ((_ int2bv 64) var216) ((_ int2bv 64) var166)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2297 Int (* var1287 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2214 Bool (isExternal/1126038692 var791)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2214 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3272 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var3100 Int (bv2nat (bvxor ((_ int2bv 64) var2297) ((_ int2bv 64) var3272)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1467 Int (* var3100 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1950 String (getId/1126038692 var791)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2238 Int (hashCode/-467973558 var1950)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1481 Int (bv2nat (bvxor ((_ int2bv 64) var1467) ((_ int2bv 64) var2238)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1504 Int (* var1481 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3007 var205 (getParts/1126038692 var791)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1720 Int (hashCode/1337417431 var3007)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3247 Int (bv2nat (bvxor ((_ int2bv 64) var1504) ((_ int2bv 64) var1720)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2606 Int (* var3247 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2265 String (getAlternateId/1126038692 var791)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2265 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1573 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var1930 Int (bv2nat (bvxor ((_ int2bv 64) var2606) ((_ int2bv 64) var1573)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2397 Int (* var1930 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var993 String (getDesc/1126038692 var791)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var993 null-String))) ; Cond: $r8 != null 
(define-const var461 String (getDesc/1126038692 var791)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var785 Int (hashCode/-467973558 var461)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1622 Int (bv2nat (bvxor ((_ int2bv 64) var2397) ((_ int2bv 64) var785)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2964 Int (* var1622 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var556 String (getMeaning/1126038692 var791)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var556 null-String))) ; Cond: $r10 != null 
(define-const var3237 String (getMeaning/1126038692 var791)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var2022 Int (hashCode/-467973558 var3237)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1454 Int (bv2nat (bvxor ((_ int2bv 64) var2964) ((_ int2bv 64) var2022)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2743 Int (* var1454 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2156 Bool (isHidden/1126038692 var791)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var2156 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2162 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var2597 Int (bv2nat (bvxor ((_ int2bv 64) var2743) ((_ int2bv 64) var2162)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3519 Int (* var2597 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var958 var3861 (getPlaceholderNameToExampleMap/1126038692 var791)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var138 Int (hashCode/-1247371579 var958)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var123 Int (bv2nat (bvxor ((_ int2bv 64) var3519) ((_ int2bv 64) var138)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2972 Int (* var123 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3540 var3861 (getPlaceholderNameToOriginalCodeMap/1126038692 var791)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3793 Int (hashCode/-1247371579 var3540)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2542 Int (bv2nat (bvxor ((_ int2bv 64) var2972) ((_ int2bv 64) var3793)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1696 Int (* var2542 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3973 var1326 (jsPlaceholderNames/1126038692 var791)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var498 Int (hashCode/1818408063 var3973)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3774 Int (bv2nat (bvxor ((_ int2bv 64) var1696) ((_ int2bv 64) var498)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var879=com.google.javascript.jscomp.AutoValue_JsMessage, var791=r0, var848=$r1, var2731=null_type, var3194=$r2, var2370=$i31, var3487=$i27, var2125=$i28, var2505=$r3, var1946=$i0, var3919=$i29, var216=$i30, var2560=$z0, var166=$s32, var1287=$i25, var2297=$i26, var2214=$z1, var3272=$s33, var3100=$i19, var1467=$i20, var1950=$r4, var2238=$i1, var1481=$i21, var1504=$i22, var205=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3007=$r5, var1720=$i2, var3247=$i23, var2606=$i24, var2265=$r6, var1573=$i34, var1930=$i17, var2397=$i18, var993=$r8, var461=$r9, var785=$i35, var1622=$i15, var2964=$i16, var556=$r10, var3237=$r11, var2022=$i36, var1454=$i13, var2743=$i14, var2156=$z2, var2162=$s37, var2597=$i6, var3519=$i7, var3861=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var958=$r12, var138=$i3, var123=$i8, var2972=$i9, var3540=$r13, var3793=$i4, var2542=$i10, var1696=$i11, var1326=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3973=$r14, var498=$i5, var3774=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var879, r0=var791, $r1=var848, null_type=var2731, $r2=var3194, $i31=var2370, $i27=var3487, $i28=var2125, $r3=var2505, $i0=var1946, $i29=var3919, $i30=var216, $z0=var2560, $s32=var166, $i25=var1287, $i26=var2297, $z1=var2214, $s33=var3272, $i19=var3100, $i20=var1467, $r4=var1950, $i1=var2238, $i21=var1481, $i22=var1504, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var205, $r5=var3007, $i2=var1720, $i23=var3247, $i24=var2606, $r6=var2265, $i34=var1573, $i17=var1930, $i18=var2397, $r8=var993, $r9=var461, $i35=var785, $i15=var1622, $i16=var2964, $r10=var556, $r11=var3237, $i36=var2022, $i13=var1454, $i14=var2743, $z2=var2156, $s37=var2162, $i6=var2597, $i7=var3519, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3861, $r12=var958, $i3=var138, $i8=var123, $i9=var2972, $r13=var3540, $i4=var3793, $i10=var2542, $i11=var1696, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1326, $r14=var3973, $i5=var498, $i12=var3774}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15