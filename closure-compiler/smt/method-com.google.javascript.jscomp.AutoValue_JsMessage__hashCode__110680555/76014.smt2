(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var346 0)
(declare-sort var2193 0)
(declare-sort var2605 0)
(declare-sort var3153 0)
(declare-sort var1125 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var346) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var346) String)
(declare-fun isAnonymous/1126038692 (var346) Bool)
(declare-fun isExternal/1126038692 (var346) Bool)
(declare-fun getId/1126038692 (var346) String)
(declare-fun getParts/1126038692 (var346) var2605)
(declare-fun hashCode/1337417431 (var2605) Int)
(declare-fun getAlternateId/1126038692 (var346) String)
(declare-fun getDesc/1126038692 (var346) String)
(declare-fun getMeaning/1126038692 (var346) String)
(declare-fun isHidden/1126038692 (var346) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var346) var3153)
(declare-fun hashCode/-1247371579 (var3153) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var346) var3153)
(declare-fun jsPlaceholderNames/1126038692 (var346) var1125)
(declare-fun hashCode/1818408063 (var1125) Int)
(declare-const null-var346 var346)
(declare-const null-String String)
(declare-const var3072 var346) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3072 null-var346)))
(define-const var3474 String (getSourceName/1126038692 var3072)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var3474 null-String))) ; Cond: $r1 != null 
(define-const var3890 String (getSourceName/1126038692 var3072)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3159 Int (hashCode/-467973558 var3890)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2485 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3159)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1834 Int (* var2485 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var354 String (getKey/1126038692 var3072)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2604 Int (hashCode/-467973558 var354)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2351 Int (bv2nat (bvxor ((_ int2bv 64) var1834) ((_ int2bv 64) var2604)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var313 Int (* var2351 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3572 Bool (isAnonymous/1126038692 var3072)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var3572 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var281 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var1774 Int (bv2nat (bvxor ((_ int2bv 64) var313) ((_ int2bv 64) var281)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2623 Int (* var1774 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1434 Bool (isExternal/1126038692 var3072)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1434 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1522 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var2645 Int (bv2nat (bvxor ((_ int2bv 64) var2623) ((_ int2bv 64) var1522)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1861 Int (* var2645 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1547 String (getId/1126038692 var3072)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3840 Int (hashCode/-467973558 var1547)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2061 Int (bv2nat (bvxor ((_ int2bv 64) var1861) ((_ int2bv 64) var3840)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3318 Int (* var2061 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1912 var2605 (getParts/1126038692 var3072)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2042 Int (hashCode/1337417431 var1912)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1843 Int (bv2nat (bvxor ((_ int2bv 64) var3318) ((_ int2bv 64) var2042)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3578 Int (* var1843 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3678 String (getAlternateId/1126038692 var3072)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var3678 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1745 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var960 Int (bv2nat (bvxor ((_ int2bv 64) var3578) ((_ int2bv 64) var1745)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3303 Int (* var960 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var944 String (getDesc/1126038692 var3072)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var944 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var59 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2924 Int (bv2nat (bvxor ((_ int2bv 64) var3303) ((_ int2bv 64) var59)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1647 Int (* var2924 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var732 String (getMeaning/1126038692 var3072)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var732 null-String))) ; Cond: $r10 != null 
(define-const var3602 String (getMeaning/1126038692 var3072)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var683 Int (hashCode/-467973558 var3602)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2157 Int (bv2nat (bvxor ((_ int2bv 64) var1647) ((_ int2bv 64) var683)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1405 Int (* var2157 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2425 Bool (isHidden/1126038692 var3072)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var2425 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1712 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var2943 Int (bv2nat (bvxor ((_ int2bv 64) var1405) ((_ int2bv 64) var1712)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2671 Int (* var2943 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1692 var3153 (getPlaceholderNameToExampleMap/1126038692 var3072)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3511 Int (hashCode/-1247371579 var1692)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2659 Int (bv2nat (bvxor ((_ int2bv 64) var2671) ((_ int2bv 64) var3511)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var814 Int (* var2659 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3226 var3153 (getPlaceholderNameToOriginalCodeMap/1126038692 var3072)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2374 Int (hashCode/-1247371579 var3226)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2524 Int (bv2nat (bvxor ((_ int2bv 64) var814) ((_ int2bv 64) var2374)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2270 Int (* var2524 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1483 var1125 (jsPlaceholderNames/1126038692 var3072)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1423 Int (hashCode/1818408063 var1483)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1957 Int (bv2nat (bvxor ((_ int2bv 64) var2270) ((_ int2bv 64) var1423)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var346=com.google.javascript.jscomp.AutoValue_JsMessage, var3072=r0, var3474=$r1, var2193=null_type, var3890=$r2, var3159=$i31, var2485=$i27, var1834=$i28, var354=$r3, var2604=$i0, var2351=$i29, var313=$i30, var3572=$z0, var281=$s32, var1774=$i25, var2623=$i26, var1434=$z1, var1522=$s33, var2645=$i19, var1861=$i20, var1547=$r4, var3840=$i1, var2061=$i21, var3318=$i22, var2605=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1912=$r5, var2042=$i2, var1843=$i23, var3578=$i24, var3678=$r6, var1745=$i34, var960=$i17, var3303=$i18, var944=$r8, var59=$i35, var2924=$i15, var1647=$i16, var732=$r10, var3602=$r11, var683=$i36, var2157=$i13, var1405=$i14, var2425=$z2, var1712=$s37, var2943=$i6, var2671=$i7, var3153=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1692=$r12, var3511=$i3, var2659=$i8, var814=$i9, var3226=$r13, var2374=$i4, var2524=$i10, var2270=$i11, var1125=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1483=$r14, var1423=$i5, var1957=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var346, r0=var3072, $r1=var3474, null_type=var2193, $r2=var3890, $i31=var3159, $i27=var2485, $i28=var1834, $r3=var354, $i0=var2604, $i29=var2351, $i30=var313, $z0=var3572, $s32=var281, $i25=var1774, $i26=var2623, $z1=var1434, $s33=var1522, $i19=var2645, $i20=var1861, $r4=var1547, $i1=var3840, $i21=var2061, $i22=var3318, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2605, $r5=var1912, $i2=var2042, $i23=var1843, $i24=var3578, $r6=var3678, $i34=var1745, $i17=var960, $i18=var3303, $r8=var944, $i35=var59, $i15=var2924, $i16=var1647, $r10=var732, $r11=var3602, $i36=var683, $i13=var2157, $i14=var1405, $z2=var2425, $s37=var1712, $i6=var2943, $i7=var2671, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3153, $r12=var1692, $i3=var3511, $i8=var2659, $i9=var814, $r13=var3226, $i4=var2374, $i10=var2524, $i11=var2270, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1125, $r14=var1483, $i5=var1423, $i12=var1957}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15