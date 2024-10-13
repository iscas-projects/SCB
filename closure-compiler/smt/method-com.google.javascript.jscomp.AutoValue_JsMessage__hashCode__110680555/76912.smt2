(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1017 0)
(declare-sort var27 0)
(declare-sort var1407 0)
(declare-sort var706 0)
(declare-sort var3908 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1017) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var1017) String)
(declare-fun isAnonymous/1126038692 (var1017) Bool)
(declare-fun isExternal/1126038692 (var1017) Bool)
(declare-fun getId/1126038692 (var1017) String)
(declare-fun getParts/1126038692 (var1017) var1407)
(declare-fun hashCode/1337417431 (var1407) Int)
(declare-fun getAlternateId/1126038692 (var1017) String)
(declare-fun getDesc/1126038692 (var1017) String)
(declare-fun getMeaning/1126038692 (var1017) String)
(declare-fun isHidden/1126038692 (var1017) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1017) var706)
(declare-fun hashCode/-1247371579 (var706) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1017) var706)
(declare-fun jsPlaceholderNames/1126038692 (var1017) var3908)
(declare-fun hashCode/1818408063 (var3908) Int)
(declare-const null-var1017 var1017)
(declare-const null-String String)
(declare-const var3774 var1017) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3774 null-var1017)))
(define-const var929 String (getSourceName/1126038692 var3774)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var929 null-String))) ; Cond: $r1 != null 
(define-const var2198 String (getSourceName/1126038692 var3774)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var1987 Int (hashCode/-467973558 var2198)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3326 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1987)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var843 Int (* var3326 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var339 String (getKey/1126038692 var3774)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var865 Int (hashCode/-467973558 var339)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1558 Int (bv2nat (bvxor ((_ int2bv 64) var843) ((_ int2bv 64) var865)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var219 Int (* var1558 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3404 Bool (isAnonymous/1126038692 var3774)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var3404 1 0) 0)) ; Cond: $z0 == 0 
(define-const var974 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var683 Int (bv2nat (bvxor ((_ int2bv 64) var219) ((_ int2bv 64) var974)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2830 Int (* var683 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1536 Bool (isExternal/1126038692 var3774)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var1536 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3499 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var3054 Int (bv2nat (bvxor ((_ int2bv 64) var2830) ((_ int2bv 64) var3499)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1454 Int (* var3054 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1419 String (getId/1126038692 var3774)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1227 Int (hashCode/-467973558 var1419)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1 Int (bv2nat (bvxor ((_ int2bv 64) var1454) ((_ int2bv 64) var1227)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3822 Int (* var1 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3572 var1407 (getParts/1126038692 var3774)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var793 Int (hashCode/1337417431 var3572)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3307 Int (bv2nat (bvxor ((_ int2bv 64) var3822) ((_ int2bv 64) var793)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1094 Int (* var3307 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3528 String (getAlternateId/1126038692 var3774)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var3528 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2268 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2963 Int (bv2nat (bvxor ((_ int2bv 64) var1094) ((_ int2bv 64) var2268)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1481 Int (* var2963 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var41 String (getDesc/1126038692 var3774)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var41 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3554 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var1183 Int (bv2nat (bvxor ((_ int2bv 64) var1481) ((_ int2bv 64) var3554)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var467 Int (* var1183 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2059 String (getMeaning/1126038692 var3774)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var2059 null-String))) ; Cond: $r10 != null 
(define-const var3479 String (getMeaning/1126038692 var3774)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var3003 Int (hashCode/-467973558 var3479)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3143 Int (bv2nat (bvxor ((_ int2bv 64) var467) ((_ int2bv 64) var3003)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var396 Int (* var3143 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3540 Bool (isHidden/1126038692 var3774)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var3540 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2070 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var3184 Int (bv2nat (bvxor ((_ int2bv 64) var396) ((_ int2bv 64) var2070)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var542 Int (* var3184 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var316 var706 (getPlaceholderNameToExampleMap/1126038692 var3774)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2649 Int (hashCode/-1247371579 var316)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3688 Int (bv2nat (bvxor ((_ int2bv 64) var542) ((_ int2bv 64) var2649)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3886 Int (* var3688 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3602 var706 (getPlaceholderNameToOriginalCodeMap/1126038692 var3774)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2549 Int (hashCode/-1247371579 var3602)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var494 Int (bv2nat (bvxor ((_ int2bv 64) var3886) ((_ int2bv 64) var2549)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1534 Int (* var494 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3796 var3908 (jsPlaceholderNames/1126038692 var3774)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2488 Int (hashCode/1818408063 var3796)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1656 Int (bv2nat (bvxor ((_ int2bv 64) var1534) ((_ int2bv 64) var2488)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1017=com.google.javascript.jscomp.AutoValue_JsMessage, var3774=r0, var929=$r1, var27=null_type, var2198=$r2, var1987=$i31, var3326=$i27, var843=$i28, var339=$r3, var865=$i0, var1558=$i29, var219=$i30, var3404=$z0, var974=$s32, var683=$i25, var2830=$i26, var1536=$z1, var3499=$s33, var3054=$i19, var1454=$i20, var1419=$r4, var1227=$i1, var1=$i21, var3822=$i22, var1407=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3572=$r5, var793=$i2, var3307=$i23, var1094=$i24, var3528=$r6, var2268=$i34, var2963=$i17, var1481=$i18, var41=$r8, var3554=$i35, var1183=$i15, var467=$i16, var2059=$r10, var3479=$r11, var3003=$i36, var3143=$i13, var396=$i14, var3540=$z2, var2070=$s37, var3184=$i6, var542=$i7, var706=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var316=$r12, var2649=$i3, var3688=$i8, var3886=$i9, var3602=$r13, var2549=$i4, var494=$i10, var1534=$i11, var3908=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3796=$r14, var2488=$i5, var1656=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1017, r0=var3774, $r1=var929, null_type=var27, $r2=var2198, $i31=var1987, $i27=var3326, $i28=var843, $r3=var339, $i0=var865, $i29=var1558, $i30=var219, $z0=var3404, $s32=var974, $i25=var683, $i26=var2830, $z1=var1536, $s33=var3499, $i19=var3054, $i20=var1454, $r4=var1419, $i1=var1227, $i21=var1, $i22=var3822, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1407, $r5=var3572, $i2=var793, $i23=var3307, $i24=var1094, $r6=var3528, $i34=var2268, $i17=var2963, $i18=var1481, $r8=var41, $i35=var3554, $i15=var1183, $i16=var467, $r10=var2059, $r11=var3479, $i36=var3003, $i13=var3143, $i14=var396, $z2=var3540, $s37=var2070, $i6=var3184, $i7=var542, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var706, $r12=var316, $i3=var2649, $i8=var3688, $i9=var3886, $r13=var3602, $i4=var2549, $i10=var494, $i11=var1534, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3908, $r14=var3796, $i5=var2488, $i12=var1656}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15