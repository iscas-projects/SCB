(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var257 0)
(declare-sort var2711 0)
(declare-sort var1599 0)
(declare-sort var2573 0)
(declare-sort var2633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var257) String)
(declare-fun getKey/1126038692 (var257) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var257) Bool)
(declare-fun isExternal/1126038692 (var257) Bool)
(declare-fun getId/1126038692 (var257) String)
(declare-fun getParts/1126038692 (var257) var1599)
(declare-fun hashCode/1337417431 (var1599) Int)
(declare-fun getAlternateId/1126038692 (var257) String)
(declare-fun getDesc/1126038692 (var257) String)
(declare-fun getMeaning/1126038692 (var257) String)
(declare-fun isHidden/1126038692 (var257) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var257) var2573)
(declare-fun hashCode/-1247371579 (var2573) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var257) var2573)
(declare-fun jsPlaceholderNames/1126038692 (var257) var2633)
(declare-fun hashCode/1818408063 (var2633) Int)
(declare-const null-var257 var257)
(declare-const null-String String)
(declare-const var658 var257) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var658 null-var257)))
(define-const var2513 String (getSourceName/1126038692 var658)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var2513 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var563 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var3130 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var563)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2571 Int (* var3130 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1938 String (getKey/1126038692 var658)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1788 Int (hashCode/-467973558 var1938)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var236 Int (bv2nat (bvxor ((_ int2bv 64) var2571) ((_ int2bv 64) var1788)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2314 Int (* var236 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2848 Bool (isAnonymous/1126038692 var658)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var2848 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2222 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var1260 Int (bv2nat (bvxor ((_ int2bv 64) var2314) ((_ int2bv 64) var2222)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var360 Int (* var1260 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var602 Bool (isExternal/1126038692 var658)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var602 1 0) 0)) ; Cond: $z1 == 0 
(define-const var8 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var3220 Int (bv2nat (bvxor ((_ int2bv 64) var360) ((_ int2bv 64) var8)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1078 Int (* var3220 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var422 String (getId/1126038692 var658)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var730 Int (hashCode/-467973558 var422)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var709 Int (bv2nat (bvxor ((_ int2bv 64) var1078) ((_ int2bv 64) var730)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1087 Int (* var709 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var413 var1599 (getParts/1126038692 var658)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3555 Int (hashCode/1337417431 var413)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1613 Int (bv2nat (bvxor ((_ int2bv 64) var1087) ((_ int2bv 64) var3555)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2121 Int (* var1613 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3738 String (getAlternateId/1126038692 var658)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3738 null-String))) ; Cond: $r6 != null 
(define-const var3733 String (getAlternateId/1126038692 var658)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1249 Int (hashCode/-467973558 var3733)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2540 Int (bv2nat (bvxor ((_ int2bv 64) var2121) ((_ int2bv 64) var1249)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2862 Int (* var2540 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2670 String (getDesc/1126038692 var658)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var2670 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var1895 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var552 Int (bv2nat (bvxor ((_ int2bv 64) var2862) ((_ int2bv 64) var1895)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1967 Int (* var552 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2992 String (getMeaning/1126038692 var658)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var2992 null-String))) ; Cond: $r10 != null 
(define-const var2883 String (getMeaning/1126038692 var658)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1693 Int (hashCode/-467973558 var2883)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2515 Int (bv2nat (bvxor ((_ int2bv 64) var1967) ((_ int2bv 64) var1693)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var765 Int (* var2515 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var742 Bool (isHidden/1126038692 var658)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var742 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2606 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var141 Int (bv2nat (bvxor ((_ int2bv 64) var765) ((_ int2bv 64) var2606)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1382 Int (* var141 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3556 var2573 (getPlaceholderNameToExampleMap/1126038692 var658)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var543 Int (hashCode/-1247371579 var3556)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3663 Int (bv2nat (bvxor ((_ int2bv 64) var1382) ((_ int2bv 64) var543)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var147 Int (* var3663 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3398 var2573 (getPlaceholderNameToOriginalCodeMap/1126038692 var658)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1125 Int (hashCode/-1247371579 var3398)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2772 Int (bv2nat (bvxor ((_ int2bv 64) var147) ((_ int2bv 64) var1125)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2686 Int (* var2772 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1251 var2633 (jsPlaceholderNames/1126038692 var658)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3404 Int (hashCode/1818408063 var1251)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3145 Int (bv2nat (bvxor ((_ int2bv 64) var2686) ((_ int2bv 64) var3404)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var257=com.google.javascript.jscomp.AutoValue_JsMessage, var658=r0, var2513=$r1, var2711=null_type, var563=$i31, var3130=$i27, var2571=$i28, var1938=$r3, var1788=$i0, var236=$i29, var2314=$i30, var2848=$z0, var2222=$s32, var1260=$i25, var360=$i26, var602=$z1, var8=$s33, var3220=$i19, var1078=$i20, var422=$r4, var730=$i1, var709=$i21, var1087=$i22, var1599=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var413=$r5, var3555=$i2, var1613=$i23, var2121=$i24, var3738=$r6, var3733=$r7, var1249=$i34, var2540=$i17, var2862=$i18, var2670=$r8, var1895=$i35, var552=$i15, var1967=$i16, var2992=$r10, var2883=$r11, var1693=$i36, var2515=$i13, var765=$i14, var742=$z2, var2606=$s37, var141=$i6, var1382=$i7, var2573=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3556=$r12, var543=$i3, var3663=$i8, var147=$i9, var3398=$r13, var1125=$i4, var2772=$i10, var2686=$i11, var2633=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1251=$r14, var3404=$i5, var3145=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var257, r0=var658, $r1=var2513, null_type=var2711, $i31=var563, $i27=var3130, $i28=var2571, $r3=var1938, $i0=var1788, $i29=var236, $i30=var2314, $z0=var2848, $s32=var2222, $i25=var1260, $i26=var360, $z1=var602, $s33=var8, $i19=var3220, $i20=var1078, $r4=var422, $i1=var730, $i21=var709, $i22=var1087, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1599, $r5=var413, $i2=var3555, $i23=var1613, $i24=var2121, $r6=var3738, $r7=var3733, $i34=var1249, $i17=var2540, $i18=var2862, $r8=var2670, $i35=var1895, $i15=var552, $i16=var1967, $r10=var2992, $r11=var2883, $i36=var1693, $i13=var2515, $i14=var765, $z2=var742, $s37=var2606, $i6=var141, $i7=var1382, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2573, $r12=var3556, $i3=var543, $i8=var3663, $i9=var147, $r13=var3398, $i4=var1125, $i10=var2772, $i11=var2686, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2633, $r14=var1251, $i5=var3404, $i12=var3145}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15