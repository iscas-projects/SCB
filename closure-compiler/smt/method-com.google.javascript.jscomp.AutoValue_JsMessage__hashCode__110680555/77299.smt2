(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2051 0)
(declare-sort var2102 0)
(declare-sort var3062 0)
(declare-sort var3614 0)
(declare-sort var3820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2051) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2051) String)
(declare-fun isAnonymous/1126038692 (var2051) Bool)
(declare-fun isExternal/1126038692 (var2051) Bool)
(declare-fun getId/1126038692 (var2051) String)
(declare-fun getParts/1126038692 (var2051) var3062)
(declare-fun hashCode/1337417431 (var3062) Int)
(declare-fun getAlternateId/1126038692 (var2051) String)
(declare-fun getDesc/1126038692 (var2051) String)
(declare-fun getMeaning/1126038692 (var2051) String)
(declare-fun isHidden/1126038692 (var2051) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2051) var3614)
(declare-fun hashCode/-1247371579 (var3614) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2051) var3614)
(declare-fun jsPlaceholderNames/1126038692 (var2051) var3820)
(declare-fun hashCode/1818408063 (var3820) Int)
(declare-const null-var2051 var2051)
(declare-const null-String String)
(declare-const var3303 var2051) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3303 null-var2051)))
(define-const var3308 String (getSourceName/1126038692 var3303)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var3308 null-String))) ; Cond: $r1 != null 
(define-const var1749 String (getSourceName/1126038692 var3303)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3860 Int (hashCode/-467973558 var1749)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1554 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3860)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var278 Int (* var1554 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var95 String (getKey/1126038692 var3303)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2663 Int (hashCode/-467973558 var95)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1236 Int (bv2nat (bvxor ((_ int2bv 64) var278) ((_ int2bv 64) var2663)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var434 Int (* var1236 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1759 Bool (isAnonymous/1126038692 var3303)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1759 1 0) 0)) ; Cond: $z0 == 0 
(define-const var523 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3574 Int (bv2nat (bvxor ((_ int2bv 64) var434) ((_ int2bv 64) var523)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1776 Int (* var3574 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3300 Bool (isExternal/1126038692 var3303)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3300 1 0) 0)) ; Cond: $z1 == 0 
(define-const var329 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var1686 Int (bv2nat (bvxor ((_ int2bv 64) var1776) ((_ int2bv 64) var329)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2902 Int (* var1686 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var811 String (getId/1126038692 var3303)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3771 Int (hashCode/-467973558 var811)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1217 Int (bv2nat (bvxor ((_ int2bv 64) var2902) ((_ int2bv 64) var3771)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3998 Int (* var1217 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var552 var3062 (getParts/1126038692 var3303)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var745 Int (hashCode/1337417431 var552)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3449 Int (bv2nat (bvxor ((_ int2bv 64) var3998) ((_ int2bv 64) var745)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3584 Int (* var3449 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1575 String (getAlternateId/1126038692 var3303)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1575 null-String))) ; Cond: $r6 != null 
(define-const var2502 String (getAlternateId/1126038692 var3303)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3620 Int (hashCode/-467973558 var2502)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var308 Int (bv2nat (bvxor ((_ int2bv 64) var3584) ((_ int2bv 64) var3620)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2207 Int (* var308 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var842 String (getDesc/1126038692 var3303)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var842 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var2206 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var895 Int (bv2nat (bvxor ((_ int2bv 64) var2207) ((_ int2bv 64) var2206)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1155 Int (* var895 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1549 String (getMeaning/1126038692 var3303)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var1549 null-String))) ; Cond: $r10 != null 
(define-const var2156 String (getMeaning/1126038692 var3303)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var287 Int (hashCode/-467973558 var2156)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2446 Int (bv2nat (bvxor ((_ int2bv 64) var1155) ((_ int2bv 64) var287)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2232 Int (* var2446 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1711 Bool (isHidden/1126038692 var3303)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var1711 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3202 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var127 Int (bv2nat (bvxor ((_ int2bv 64) var2232) ((_ int2bv 64) var3202)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2746 Int (* var127 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3498 var3614 (getPlaceholderNameToExampleMap/1126038692 var3303)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2303 Int (hashCode/-1247371579 var3498)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var405 Int (bv2nat (bvxor ((_ int2bv 64) var2746) ((_ int2bv 64) var2303)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1687 Int (* var405 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1062 var3614 (getPlaceholderNameToOriginalCodeMap/1126038692 var3303)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3280 Int (hashCode/-1247371579 var1062)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1926 Int (bv2nat (bvxor ((_ int2bv 64) var1687) ((_ int2bv 64) var3280)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var224 Int (* var1926 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1654 var3820 (jsPlaceholderNames/1126038692 var3303)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3569 Int (hashCode/1818408063 var1654)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1357 Int (bv2nat (bvxor ((_ int2bv 64) var224) ((_ int2bv 64) var3569)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2051=com.google.javascript.jscomp.AutoValue_JsMessage, var3303=r0, var3308=$r1, var2102=null_type, var1749=$r2, var3860=$i31, var1554=$i27, var278=$i28, var95=$r3, var2663=$i0, var1236=$i29, var434=$i30, var1759=$z0, var523=$s32, var3574=$i25, var1776=$i26, var3300=$z1, var329=$s33, var1686=$i19, var2902=$i20, var811=$r4, var3771=$i1, var1217=$i21, var3998=$i22, var3062=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var552=$r5, var745=$i2, var3449=$i23, var3584=$i24, var1575=$r6, var2502=$r7, var3620=$i34, var308=$i17, var2207=$i18, var842=$r8, var2206=$i35, var895=$i15, var1155=$i16, var1549=$r10, var2156=$r11, var287=$i36, var2446=$i13, var2232=$i14, var1711=$z2, var3202=$s37, var127=$i6, var2746=$i7, var3614=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3498=$r12, var2303=$i3, var405=$i8, var1687=$i9, var1062=$r13, var3280=$i4, var1926=$i10, var224=$i11, var3820=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1654=$r14, var3569=$i5, var1357=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2051, r0=var3303, $r1=var3308, null_type=var2102, $r2=var1749, $i31=var3860, $i27=var1554, $i28=var278, $r3=var95, $i0=var2663, $i29=var1236, $i30=var434, $z0=var1759, $s32=var523, $i25=var3574, $i26=var1776, $z1=var3300, $s33=var329, $i19=var1686, $i20=var2902, $r4=var811, $i1=var3771, $i21=var1217, $i22=var3998, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3062, $r5=var552, $i2=var745, $i23=var3449, $i24=var3584, $r6=var1575, $r7=var2502, $i34=var3620, $i17=var308, $i18=var2207, $r8=var842, $i35=var2206, $i15=var895, $i16=var1155, $r10=var1549, $r11=var2156, $i36=var287, $i13=var2446, $i14=var2232, $z2=var1711, $s37=var3202, $i6=var127, $i7=var2746, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3614, $r12=var3498, $i3=var2303, $i8=var405, $i9=var1687, $r13=var1062, $i4=var3280, $i10=var1926, $i11=var224, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3820, $r14=var1654, $i5=var3569, $i12=var1357}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15