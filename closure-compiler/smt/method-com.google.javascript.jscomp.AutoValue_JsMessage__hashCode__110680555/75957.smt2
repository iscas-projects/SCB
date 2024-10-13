(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3035 0)
(declare-sort var1245 0)
(declare-sort var2244 0)
(declare-sort var2005 0)
(declare-sort var136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3035) String)
(declare-fun getKey/1126038692 (var3035) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3035) Bool)
(declare-fun isExternal/1126038692 (var3035) Bool)
(declare-fun getId/1126038692 (var3035) String)
(declare-fun getParts/1126038692 (var3035) var2244)
(declare-fun hashCode/1337417431 (var2244) Int)
(declare-fun getAlternateId/1126038692 (var3035) String)
(declare-fun getDesc/1126038692 (var3035) String)
(declare-fun getMeaning/1126038692 (var3035) String)
(declare-fun isHidden/1126038692 (var3035) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3035) var2005)
(declare-fun hashCode/-1247371579 (var2005) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3035) var2005)
(declare-fun jsPlaceholderNames/1126038692 (var3035) var136)
(declare-fun hashCode/1818408063 (var136) Int)
(declare-const null-var3035 var3035)
(declare-const null-String String)
(declare-const var2832 var3035) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2832 null-var3035)))
(define-const var3070 String (getSourceName/1126038692 var2832)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var3070 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var101 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var1329 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var101)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3226 Int (* var1329 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3962 String (getKey/1126038692 var2832)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var814 Int (hashCode/-467973558 var3962)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1294 Int (bv2nat (bvxor ((_ int2bv 64) var3226) ((_ int2bv 64) var814)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3768 Int (* var1294 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1236 Bool (isAnonymous/1126038692 var2832)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1236 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1420 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3317 Int (bv2nat (bvxor ((_ int2bv 64) var3768) ((_ int2bv 64) var1420)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3346 Int (* var3317 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1190 Bool (isExternal/1126038692 var2832)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var1190 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3743 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var1770 Int (bv2nat (bvxor ((_ int2bv 64) var3346) ((_ int2bv 64) var3743)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3817 Int (* var1770 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var77 String (getId/1126038692 var2832)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1610 Int (hashCode/-467973558 var77)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var399 Int (bv2nat (bvxor ((_ int2bv 64) var3817) ((_ int2bv 64) var1610)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2650 Int (* var399 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1688 var2244 (getParts/1126038692 var2832)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1869 Int (hashCode/1337417431 var1688)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3408 Int (bv2nat (bvxor ((_ int2bv 64) var2650) ((_ int2bv 64) var1869)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var914 Int (* var3408 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2520 String (getAlternateId/1126038692 var2832)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var2520 null-String))) ; Cond: $r6 != null 
(define-const var3161 String (getAlternateId/1126038692 var2832)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1 Int (hashCode/-467973558 var3161)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var691 Int (bv2nat (bvxor ((_ int2bv 64) var914) ((_ int2bv 64) var1)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1631 Int (* var691 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2283 String (getDesc/1126038692 var2832)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2283 null-String))) ; Cond: $r8 != null 
(define-const var1581 String (getDesc/1126038692 var2832)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var3805 Int (hashCode/-467973558 var1581)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1862 Int (bv2nat (bvxor ((_ int2bv 64) var1631) ((_ int2bv 64) var3805)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3381 Int (* var1862 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1270 String (getMeaning/1126038692 var2832)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var1270 null-String))) ; Cond: $r10 != null 
(define-const var1316 String (getMeaning/1126038692 var2832)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var460 Int (hashCode/-467973558 var1316)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1150 Int (bv2nat (bvxor ((_ int2bv 64) var3381) ((_ int2bv 64) var460)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1374 Int (* var1150 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3862 Bool (isHidden/1126038692 var2832)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3862 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3933 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var3339 Int (bv2nat (bvxor ((_ int2bv 64) var1374) ((_ int2bv 64) var3933)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2259 Int (* var3339 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2354 var2005 (getPlaceholderNameToExampleMap/1126038692 var2832)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var185 Int (hashCode/-1247371579 var2354)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1810 Int (bv2nat (bvxor ((_ int2bv 64) var2259) ((_ int2bv 64) var185)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3814 Int (* var1810 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2500 var2005 (getPlaceholderNameToOriginalCodeMap/1126038692 var2832)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3772 Int (hashCode/-1247371579 var2500)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1160 Int (bv2nat (bvxor ((_ int2bv 64) var3814) ((_ int2bv 64) var3772)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1063 Int (* var1160 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2591 var136 (jsPlaceholderNames/1126038692 var2832)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2358 Int (hashCode/1818408063 var2591)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1265 Int (bv2nat (bvxor ((_ int2bv 64) var1063) ((_ int2bv 64) var2358)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3035=com.google.javascript.jscomp.AutoValue_JsMessage, var2832=r0, var3070=$r1, var1245=null_type, var101=$i31, var1329=$i27, var3226=$i28, var3962=$r3, var814=$i0, var1294=$i29, var3768=$i30, var1236=$z0, var1420=$s32, var3317=$i25, var3346=$i26, var1190=$z1, var3743=$s33, var1770=$i19, var3817=$i20, var77=$r4, var1610=$i1, var399=$i21, var2650=$i22, var2244=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1688=$r5, var1869=$i2, var3408=$i23, var914=$i24, var2520=$r6, var3161=$r7, var1=$i34, var691=$i17, var1631=$i18, var2283=$r8, var1581=$r9, var3805=$i35, var1862=$i15, var3381=$i16, var1270=$r10, var1316=$r11, var460=$i36, var1150=$i13, var1374=$i14, var3862=$z2, var3933=$s37, var3339=$i6, var2259=$i7, var2005=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2354=$r12, var185=$i3, var1810=$i8, var3814=$i9, var2500=$r13, var3772=$i4, var1160=$i10, var1063=$i11, var136=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2591=$r14, var2358=$i5, var1265=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3035, r0=var2832, $r1=var3070, null_type=var1245, $i31=var101, $i27=var1329, $i28=var3226, $r3=var3962, $i0=var814, $i29=var1294, $i30=var3768, $z0=var1236, $s32=var1420, $i25=var3317, $i26=var3346, $z1=var1190, $s33=var3743, $i19=var1770, $i20=var3817, $r4=var77, $i1=var1610, $i21=var399, $i22=var2650, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2244, $r5=var1688, $i2=var1869, $i23=var3408, $i24=var914, $r6=var2520, $r7=var3161, $i34=var1, $i17=var691, $i18=var1631, $r8=var2283, $r9=var1581, $i35=var3805, $i15=var1862, $i16=var3381, $r10=var1270, $r11=var1316, $i36=var460, $i13=var1150, $i14=var1374, $z2=var3862, $s37=var3933, $i6=var3339, $i7=var2259, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2005, $r12=var2354, $i3=var185, $i8=var1810, $i9=var3814, $r13=var2500, $i4=var3772, $i10=var1160, $i11=var1063, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var136, $r14=var2591, $i5=var2358, $i12=var1265}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15