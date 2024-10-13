(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var143 0)
(declare-sort var3180 0)
(declare-sort var2716 0)
(declare-sort var490 0)
(declare-sort var2032 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var143) String)
(declare-fun getKey/1126038692 (var143) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var143) Bool)
(declare-fun isExternal/1126038692 (var143) Bool)
(declare-fun getId/1126038692 (var143) String)
(declare-fun getParts/1126038692 (var143) var2716)
(declare-fun hashCode/1337417431 (var2716) Int)
(declare-fun getAlternateId/1126038692 (var143) String)
(declare-fun getDesc/1126038692 (var143) String)
(declare-fun getMeaning/1126038692 (var143) String)
(declare-fun isHidden/1126038692 (var143) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var143) var490)
(declare-fun hashCode/-1247371579 (var490) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var143) var490)
(declare-fun jsPlaceholderNames/1126038692 (var143) var2032)
(declare-fun hashCode/1818408063 (var2032) Int)
(declare-const null-var143 var143)
(declare-const null-String String)
(declare-const var2757 var143) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2757 null-var143)))
(define-const var3764 String (getSourceName/1126038692 var2757)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var3764 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2559 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var16 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2559)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var556 Int (* var16 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var884 String (getKey/1126038692 var2757)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3242 Int (hashCode/-467973558 var884)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1635 Int (bv2nat (bvxor ((_ int2bv 64) var556) ((_ int2bv 64) var3242)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3043 Int (* var1635 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var259 Bool (isAnonymous/1126038692 var2757)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var259 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2657 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var1719 Int (bv2nat (bvxor ((_ int2bv 64) var3043) ((_ int2bv 64) var2657)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1566 Int (* var1719 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var233 Bool (isExternal/1126038692 var2757)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var233 1 0) 0)) ; Cond: $z1 == 0 
(define-const var591 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2464 Int (bv2nat (bvxor ((_ int2bv 64) var1566) ((_ int2bv 64) var591)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2128 Int (* var2464 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3010 String (getId/1126038692 var2757)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var139 Int (hashCode/-467973558 var3010)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1476 Int (bv2nat (bvxor ((_ int2bv 64) var2128) ((_ int2bv 64) var139)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3811 Int (* var1476 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1406 var2716 (getParts/1126038692 var2757)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3576 Int (hashCode/1337417431 var1406)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3216 Int (bv2nat (bvxor ((_ int2bv 64) var3811) ((_ int2bv 64) var3576)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3254 Int (* var3216 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3161 String (getAlternateId/1126038692 var2757)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3161 null-String))) ; Cond: $r6 != null 
(define-const var3407 String (getAlternateId/1126038692 var2757)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1434 Int (hashCode/-467973558 var3407)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1047 Int (bv2nat (bvxor ((_ int2bv 64) var3254) ((_ int2bv 64) var1434)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1550 Int (* var1047 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1412 String (getDesc/1126038692 var2757)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1412 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var1032 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var200 Int (bv2nat (bvxor ((_ int2bv 64) var1550) ((_ int2bv 64) var1032)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var960 Int (* var200 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var212 String (getMeaning/1126038692 var2757)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var212 null-String))) ; Cond: $r10 != null 
(define-const var1562 String (getMeaning/1126038692 var2757)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1589 Int (hashCode/-467973558 var1562)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1281 Int (bv2nat (bvxor ((_ int2bv 64) var960) ((_ int2bv 64) var1589)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var895 Int (* var1281 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var336 Bool (isHidden/1126038692 var2757)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var336 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3476 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var2055 Int (bv2nat (bvxor ((_ int2bv 64) var895) ((_ int2bv 64) var3476)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3441 Int (* var2055 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1468 var490 (getPlaceholderNameToExampleMap/1126038692 var2757)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3370 Int (hashCode/-1247371579 var1468)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var236 Int (bv2nat (bvxor ((_ int2bv 64) var3441) ((_ int2bv 64) var3370)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var820 Int (* var236 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var10 var490 (getPlaceholderNameToOriginalCodeMap/1126038692 var2757)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1888 Int (hashCode/-1247371579 var10)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var592 Int (bv2nat (bvxor ((_ int2bv 64) var820) ((_ int2bv 64) var1888)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3446 Int (* var592 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1990 var2032 (jsPlaceholderNames/1126038692 var2757)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1189 Int (hashCode/1818408063 var1990)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2023 Int (bv2nat (bvxor ((_ int2bv 64) var3446) ((_ int2bv 64) var1189)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var143=com.google.javascript.jscomp.AutoValue_JsMessage, var2757=r0, var3764=$r1, var3180=null_type, var2559=$i31, var16=$i27, var556=$i28, var884=$r3, var3242=$i0, var1635=$i29, var3043=$i30, var259=$z0, var2657=$s32, var1719=$i25, var1566=$i26, var233=$z1, var591=$s33, var2464=$i19, var2128=$i20, var3010=$r4, var139=$i1, var1476=$i21, var3811=$i22, var2716=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1406=$r5, var3576=$i2, var3216=$i23, var3254=$i24, var3161=$r6, var3407=$r7, var1434=$i34, var1047=$i17, var1550=$i18, var1412=$r8, var1032=$i35, var200=$i15, var960=$i16, var212=$r10, var1562=$r11, var1589=$i36, var1281=$i13, var895=$i14, var336=$z2, var3476=$s37, var2055=$i6, var3441=$i7, var490=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1468=$r12, var3370=$i3, var236=$i8, var820=$i9, var10=$r13, var1888=$i4, var592=$i10, var3446=$i11, var2032=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1990=$r14, var1189=$i5, var2023=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var143, r0=var2757, $r1=var3764, null_type=var3180, $i31=var2559, $i27=var16, $i28=var556, $r3=var884, $i0=var3242, $i29=var1635, $i30=var3043, $z0=var259, $s32=var2657, $i25=var1719, $i26=var1566, $z1=var233, $s33=var591, $i19=var2464, $i20=var2128, $r4=var3010, $i1=var139, $i21=var1476, $i22=var3811, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2716, $r5=var1406, $i2=var3576, $i23=var3216, $i24=var3254, $r6=var3161, $r7=var3407, $i34=var1434, $i17=var1047, $i18=var1550, $r8=var1412, $i35=var1032, $i15=var200, $i16=var960, $r10=var212, $r11=var1562, $i36=var1589, $i13=var1281, $i14=var895, $z2=var336, $s37=var3476, $i6=var2055, $i7=var3441, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var490, $r12=var1468, $i3=var3370, $i8=var236, $i9=var820, $r13=var10, $i4=var1888, $i10=var592, $i11=var3446, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2032, $r14=var1990, $i5=var1189, $i12=var2023}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15