(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var241 0)
(declare-sort var2363 0)
(declare-sort var3298 0)
(declare-sort var2218 0)
(declare-sort var2109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var241) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var241) String)
(declare-fun isAnonymous/1126038692 (var241) Bool)
(declare-fun isExternal/1126038692 (var241) Bool)
(declare-fun getId/1126038692 (var241) String)
(declare-fun getParts/1126038692 (var241) var3298)
(declare-fun hashCode/1337417431 (var3298) Int)
(declare-fun getAlternateId/1126038692 (var241) String)
(declare-fun getDesc/1126038692 (var241) String)
(declare-fun getMeaning/1126038692 (var241) String)
(declare-fun isHidden/1126038692 (var241) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var241) var2218)
(declare-fun hashCode/-1247371579 (var2218) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var241) var2218)
(declare-fun jsPlaceholderNames/1126038692 (var241) var2109)
(declare-fun hashCode/1818408063 (var2109) Int)
(declare-const null-var241 var241)
(declare-const null-String String)
(declare-const var3688 var241) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3688 null-var241)))
(define-const var1339 String (getSourceName/1126038692 var3688)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var1339 null-String))) ; Cond: $r1 != null 
(define-const var723 String (getSourceName/1126038692 var3688)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var915 Int (hashCode/-467973558 var723)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1214 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var915)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var537 Int (* var1214 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2471 String (getKey/1126038692 var3688)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2912 Int (hashCode/-467973558 var2471)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1781 Int (bv2nat (bvxor ((_ int2bv 64) var537) ((_ int2bv 64) var2912)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var61 Int (* var1781 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2820 Bool (isAnonymous/1126038692 var3688)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2820 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1032 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var272 Int (bv2nat (bvxor ((_ int2bv 64) var61) ((_ int2bv 64) var1032)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1217 Int (* var272 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var291 Bool (isExternal/1126038692 var3688)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var291 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1242 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var1824 Int (bv2nat (bvxor ((_ int2bv 64) var1217) ((_ int2bv 64) var1242)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3207 Int (* var1824 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3185 String (getId/1126038692 var3688)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2382 Int (hashCode/-467973558 var3185)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1949 Int (bv2nat (bvxor ((_ int2bv 64) var3207) ((_ int2bv 64) var2382)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1542 Int (* var1949 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1860 var3298 (getParts/1126038692 var3688)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3865 Int (hashCode/1337417431 var1860)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3980 Int (bv2nat (bvxor ((_ int2bv 64) var1542) ((_ int2bv 64) var3865)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2594 Int (* var3980 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2343 String (getAlternateId/1126038692 var3688)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2343 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var3209 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3593 Int (bv2nat (bvxor ((_ int2bv 64) var2594) ((_ int2bv 64) var3209)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3382 Int (* var3593 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3375 String (getDesc/1126038692 var3688)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3375 null-String))) ; Cond: $r8 != null 
(define-const var1859 String (getDesc/1126038692 var3688)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2884 Int (hashCode/-467973558 var1859)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2010 Int (bv2nat (bvxor ((_ int2bv 64) var3382) ((_ int2bv 64) var2884)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var447 Int (* var2010 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var554 String (getMeaning/1126038692 var3688)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var554 null-String))) ; Cond: $r10 != null 
(define-const var1935 String (getMeaning/1126038692 var3688)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var406 Int (hashCode/-467973558 var1935)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var277 Int (bv2nat (bvxor ((_ int2bv 64) var447) ((_ int2bv 64) var406)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1041 Int (* var277 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2275 Bool (isHidden/1126038692 var3688)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2275 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var706 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1150 Int (bv2nat (bvxor ((_ int2bv 64) var1041) ((_ int2bv 64) var706)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3258 Int (* var1150 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1546 var2218 (getPlaceholderNameToExampleMap/1126038692 var3688)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3216 Int (hashCode/-1247371579 var1546)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1683 Int (bv2nat (bvxor ((_ int2bv 64) var3258) ((_ int2bv 64) var3216)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3347 Int (* var1683 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3482 var2218 (getPlaceholderNameToOriginalCodeMap/1126038692 var3688)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1646 Int (hashCode/-1247371579 var3482)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var790 Int (bv2nat (bvxor ((_ int2bv 64) var3347) ((_ int2bv 64) var1646)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3274 Int (* var790 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var394 var2109 (jsPlaceholderNames/1126038692 var3688)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1470 Int (hashCode/1818408063 var394)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var482 Int (bv2nat (bvxor ((_ int2bv 64) var3274) ((_ int2bv 64) var1470)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var241=com.google.javascript.jscomp.AutoValue_JsMessage, var3688=r0, var1339=$r1, var2363=null_type, var723=$r2, var915=$i31, var1214=$i27, var537=$i28, var2471=$r3, var2912=$i0, var1781=$i29, var61=$i30, var2820=$z0, var1032=$s32, var272=$i25, var1217=$i26, var291=$z1, var1242=$s33, var1824=$i19, var3207=$i20, var3185=$r4, var2382=$i1, var1949=$i21, var1542=$i22, var3298=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1860=$r5, var3865=$i2, var3980=$i23, var2594=$i24, var2343=$r6, var3209=$i34, var3593=$i17, var3382=$i18, var3375=$r8, var1859=$r9, var2884=$i35, var2010=$i15, var447=$i16, var554=$r10, var1935=$r11, var406=$i36, var277=$i13, var1041=$i14, var2275=$z2, var706=$s37, var1150=$i6, var3258=$i7, var2218=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1546=$r12, var3216=$i3, var1683=$i8, var3347=$i9, var3482=$r13, var1646=$i4, var790=$i10, var3274=$i11, var2109=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var394=$r14, var1470=$i5, var482=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var241, r0=var3688, $r1=var1339, null_type=var2363, $r2=var723, $i31=var915, $i27=var1214, $i28=var537, $r3=var2471, $i0=var2912, $i29=var1781, $i30=var61, $z0=var2820, $s32=var1032, $i25=var272, $i26=var1217, $z1=var291, $s33=var1242, $i19=var1824, $i20=var3207, $r4=var3185, $i1=var2382, $i21=var1949, $i22=var1542, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3298, $r5=var1860, $i2=var3865, $i23=var3980, $i24=var2594, $r6=var2343, $i34=var3209, $i17=var3593, $i18=var3382, $r8=var3375, $r9=var1859, $i35=var2884, $i15=var2010, $i16=var447, $r10=var554, $r11=var1935, $i36=var406, $i13=var277, $i14=var1041, $z2=var2275, $s37=var706, $i6=var1150, $i7=var3258, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2218, $r12=var1546, $i3=var3216, $i8=var1683, $i9=var3347, $r13=var3482, $i4=var1646, $i10=var790, $i11=var3274, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2109, $r14=var394, $i5=var1470, $i12=var482}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15