(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3641 0)
(declare-sort var2107 0)
(declare-sort var761 0)
(declare-sort var344 0)
(declare-sort var2583 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3641) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var3641) String)
(declare-fun isAnonymous/1126038692 (var3641) Bool)
(declare-fun isExternal/1126038692 (var3641) Bool)
(declare-fun getId/1126038692 (var3641) String)
(declare-fun getParts/1126038692 (var3641) var761)
(declare-fun hashCode/1337417431 (var761) Int)
(declare-fun getAlternateId/1126038692 (var3641) String)
(declare-fun getDesc/1126038692 (var3641) String)
(declare-fun getMeaning/1126038692 (var3641) String)
(declare-fun isHidden/1126038692 (var3641) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3641) var344)
(declare-fun hashCode/-1247371579 (var344) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3641) var344)
(declare-fun jsPlaceholderNames/1126038692 (var3641) var2583)
(declare-fun hashCode/1818408063 (var2583) Int)
(declare-const null-var3641 var3641)
(declare-const null-String String)
(declare-const var2554 var3641) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2554 null-var3641)))
(define-const var653 String (getSourceName/1126038692 var2554)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var653 null-String))) ; Cond: $r1 != null 
(define-const var3170 String (getSourceName/1126038692 var2554)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var644 Int (hashCode/-467973558 var3170)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2629 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var644)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2084 Int (* var2629 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1048 String (getKey/1126038692 var2554)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1785 Int (hashCode/-467973558 var1048)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1680 Int (bv2nat (bvxor ((_ int2bv 64) var2084) ((_ int2bv 64) var1785)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2762 Int (* var1680 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1055 Bool (isAnonymous/1126038692 var2554)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1055 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2301 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var3290 Int (bv2nat (bvxor ((_ int2bv 64) var2762) ((_ int2bv 64) var2301)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1067 Int (* var3290 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1319 Bool (isExternal/1126038692 var2554)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1319 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3422 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3177 Int (bv2nat (bvxor ((_ int2bv 64) var1067) ((_ int2bv 64) var3422)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2140 Int (* var3177 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2610 String (getId/1126038692 var2554)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3665 Int (hashCode/-467973558 var2610)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1473 Int (bv2nat (bvxor ((_ int2bv 64) var2140) ((_ int2bv 64) var3665)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2168 Int (* var1473 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3513 var761 (getParts/1126038692 var2554)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1170 Int (hashCode/1337417431 var3513)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3709 Int (bv2nat (bvxor ((_ int2bv 64) var2168) ((_ int2bv 64) var1170)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3105 Int (* var3709 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1204 String (getAlternateId/1126038692 var2554)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1204 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1595 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var1462 Int (bv2nat (bvxor ((_ int2bv 64) var3105) ((_ int2bv 64) var1595)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var122 Int (* var1462 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1486 String (getDesc/1126038692 var2554)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1486 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var563 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var1439 Int (bv2nat (bvxor ((_ int2bv 64) var122) ((_ int2bv 64) var563)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2893 Int (* var1439 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3174 String (getMeaning/1126038692 var2554)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3174 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var3784 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var613 Int (bv2nat (bvxor ((_ int2bv 64) var2893) ((_ int2bv 64) var3784)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var480 Int (* var613 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var604 Bool (isHidden/1126038692 var2554)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var604 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3233 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var1366 Int (bv2nat (bvxor ((_ int2bv 64) var480) ((_ int2bv 64) var3233)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3043 Int (* var1366 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3398 var344 (getPlaceholderNameToExampleMap/1126038692 var2554)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1468 Int (hashCode/-1247371579 var3398)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var251 Int (bv2nat (bvxor ((_ int2bv 64) var3043) ((_ int2bv 64) var1468)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1998 Int (* var251 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1662 var344 (getPlaceholderNameToOriginalCodeMap/1126038692 var2554)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1789 Int (hashCode/-1247371579 var1662)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var485 Int (bv2nat (bvxor ((_ int2bv 64) var1998) ((_ int2bv 64) var1789)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var491 Int (* var485 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2592 var2583 (jsPlaceholderNames/1126038692 var2554)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var348 Int (hashCode/1818408063 var2592)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var909 Int (bv2nat (bvxor ((_ int2bv 64) var491) ((_ int2bv 64) var348)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3641=com.google.javascript.jscomp.AutoValue_JsMessage, var2554=r0, var653=$r1, var2107=null_type, var3170=$r2, var644=$i31, var2629=$i27, var2084=$i28, var1048=$r3, var1785=$i0, var1680=$i29, var2762=$i30, var1055=$z0, var2301=$s32, var3290=$i25, var1067=$i26, var1319=$z1, var3422=$s33, var3177=$i19, var2140=$i20, var2610=$r4, var3665=$i1, var1473=$i21, var2168=$i22, var761=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3513=$r5, var1170=$i2, var3709=$i23, var3105=$i24, var1204=$r6, var1595=$i34, var1462=$i17, var122=$i18, var1486=$r8, var563=$i35, var1439=$i15, var2893=$i16, var3174=$r10, var3784=$i36, var613=$i13, var480=$i14, var604=$z2, var3233=$s37, var1366=$i6, var3043=$i7, var344=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3398=$r12, var1468=$i3, var251=$i8, var1998=$i9, var1662=$r13, var1789=$i4, var485=$i10, var491=$i11, var2583=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2592=$r14, var348=$i5, var909=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3641, r0=var2554, $r1=var653, null_type=var2107, $r2=var3170, $i31=var644, $i27=var2629, $i28=var2084, $r3=var1048, $i0=var1785, $i29=var1680, $i30=var2762, $z0=var1055, $s32=var2301, $i25=var3290, $i26=var1067, $z1=var1319, $s33=var3422, $i19=var3177, $i20=var2140, $r4=var2610, $i1=var3665, $i21=var1473, $i22=var2168, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var761, $r5=var3513, $i2=var1170, $i23=var3709, $i24=var3105, $r6=var1204, $i34=var1595, $i17=var1462, $i18=var122, $r8=var1486, $i35=var563, $i15=var1439, $i16=var2893, $r10=var3174, $i36=var3784, $i13=var613, $i14=var480, $z2=var604, $s37=var3233, $i6=var1366, $i7=var3043, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var344, $r12=var3398, $i3=var1468, $i8=var251, $i9=var1998, $r13=var1662, $i4=var1789, $i10=var485, $i11=var491, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2583, $r14=var2592, $i5=var348, $i12=var909}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15