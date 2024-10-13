(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3967 0)
(declare-sort var1604 0)
(declare-sort var2994 0)
(declare-sort var839 0)
(declare-sort var3906 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3967) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var3967) String)
(declare-fun isAnonymous/1126038692 (var3967) Bool)
(declare-fun isExternal/1126038692 (var3967) Bool)
(declare-fun getId/1126038692 (var3967) String)
(declare-fun getParts/1126038692 (var3967) var2994)
(declare-fun hashCode/1337417431 (var2994) Int)
(declare-fun getAlternateId/1126038692 (var3967) String)
(declare-fun getDesc/1126038692 (var3967) String)
(declare-fun getMeaning/1126038692 (var3967) String)
(declare-fun isHidden/1126038692 (var3967) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3967) var839)
(declare-fun hashCode/-1247371579 (var839) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3967) var839)
(declare-fun jsPlaceholderNames/1126038692 (var3967) var3906)
(declare-fun hashCode/1818408063 (var3906) Int)
(declare-const null-var3967 var3967)
(declare-const null-String String)
(declare-const var3575 var3967) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3575 null-var3967)))
(define-const var365 String (getSourceName/1126038692 var3575)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var365 null-String))) ; Cond: $r1 != null 
(define-const var1504 String (getSourceName/1126038692 var3575)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var1723 Int (hashCode/-467973558 var1504)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1289 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1723)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3314 Int (* var1289 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var331 String (getKey/1126038692 var3575)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1312 Int (hashCode/-467973558 var331)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2012 Int (bv2nat (bvxor ((_ int2bv 64) var3314) ((_ int2bv 64) var1312)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3659 Int (* var2012 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var200 Bool (isAnonymous/1126038692 var3575)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var200 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1208 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3333 Int (bv2nat (bvxor ((_ int2bv 64) var3659) ((_ int2bv 64) var1208)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2498 Int (* var3333 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3160 Bool (isExternal/1126038692 var3575)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3160 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1934 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2029 Int (bv2nat (bvxor ((_ int2bv 64) var2498) ((_ int2bv 64) var1934)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1410 Int (* var2029 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var905 String (getId/1126038692 var3575)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1458 Int (hashCode/-467973558 var905)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1227 Int (bv2nat (bvxor ((_ int2bv 64) var1410) ((_ int2bv 64) var1458)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1450 Int (* var1227 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var305 var2994 (getParts/1126038692 var3575)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2190 Int (hashCode/1337417431 var305)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2591 Int (bv2nat (bvxor ((_ int2bv 64) var1450) ((_ int2bv 64) var2190)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1743 Int (* var2591 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3164 String (getAlternateId/1126038692 var3575)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var3164 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1733 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var1551 Int (bv2nat (bvxor ((_ int2bv 64) var1743) ((_ int2bv 64) var1733)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var692 Int (* var1551 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2725 String (getDesc/1126038692 var3575)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2725 null-String))) ; Cond: $r8 != null 
(define-const var3690 String (getDesc/1126038692 var3575)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2795 Int (hashCode/-467973558 var3690)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3852 Int (bv2nat (bvxor ((_ int2bv 64) var692) ((_ int2bv 64) var2795)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2126 Int (* var3852 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2143 String (getMeaning/1126038692 var3575)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var2143 null-String))) ; Cond: $r10 != null 
(define-const var262 String (getMeaning/1126038692 var3575)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var3182 Int (hashCode/-467973558 var262)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var590 Int (bv2nat (bvxor ((_ int2bv 64) var2126) ((_ int2bv 64) var3182)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1391 Int (* var590 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2929 Bool (isHidden/1126038692 var3575)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2929 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2477 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2784 Int (bv2nat (bvxor ((_ int2bv 64) var1391) ((_ int2bv 64) var2477)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var626 Int (* var2784 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var431 var839 (getPlaceholderNameToExampleMap/1126038692 var3575)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3664 Int (hashCode/-1247371579 var431)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1926 Int (bv2nat (bvxor ((_ int2bv 64) var626) ((_ int2bv 64) var3664)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1480 Int (* var1926 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3618 var839 (getPlaceholderNameToOriginalCodeMap/1126038692 var3575)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2619 Int (hashCode/-1247371579 var3618)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var337 Int (bv2nat (bvxor ((_ int2bv 64) var1480) ((_ int2bv 64) var2619)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3193 Int (* var337 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var281 var3906 (jsPlaceholderNames/1126038692 var3575)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1277 Int (hashCode/1818408063 var281)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1687 Int (bv2nat (bvxor ((_ int2bv 64) var3193) ((_ int2bv 64) var1277)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3967=com.google.javascript.jscomp.AutoValue_JsMessage, var3575=r0, var365=$r1, var1604=null_type, var1504=$r2, var1723=$i31, var1289=$i27, var3314=$i28, var331=$r3, var1312=$i0, var2012=$i29, var3659=$i30, var200=$z0, var1208=$s32, var3333=$i25, var2498=$i26, var3160=$z1, var1934=$s33, var2029=$i19, var1410=$i20, var905=$r4, var1458=$i1, var1227=$i21, var1450=$i22, var2994=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var305=$r5, var2190=$i2, var2591=$i23, var1743=$i24, var3164=$r6, var1733=$i34, var1551=$i17, var692=$i18, var2725=$r8, var3690=$r9, var2795=$i35, var3852=$i15, var2126=$i16, var2143=$r10, var262=$r11, var3182=$i36, var590=$i13, var1391=$i14, var2929=$z2, var2477=$s37, var2784=$i6, var626=$i7, var839=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var431=$r12, var3664=$i3, var1926=$i8, var1480=$i9, var3618=$r13, var2619=$i4, var337=$i10, var3193=$i11, var3906=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var281=$r14, var1277=$i5, var1687=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3967, r0=var3575, $r1=var365, null_type=var1604, $r2=var1504, $i31=var1723, $i27=var1289, $i28=var3314, $r3=var331, $i0=var1312, $i29=var2012, $i30=var3659, $z0=var200, $s32=var1208, $i25=var3333, $i26=var2498, $z1=var3160, $s33=var1934, $i19=var2029, $i20=var1410, $r4=var905, $i1=var1458, $i21=var1227, $i22=var1450, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2994, $r5=var305, $i2=var2190, $i23=var2591, $i24=var1743, $r6=var3164, $i34=var1733, $i17=var1551, $i18=var692, $r8=var2725, $r9=var3690, $i35=var2795, $i15=var3852, $i16=var2126, $r10=var2143, $r11=var262, $i36=var3182, $i13=var590, $i14=var1391, $z2=var2929, $s37=var2477, $i6=var2784, $i7=var626, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var839, $r12=var431, $i3=var3664, $i8=var1926, $i9=var1480, $r13=var3618, $i4=var2619, $i10=var337, $i11=var3193, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3906, $r14=var281, $i5=var1277, $i12=var1687}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15