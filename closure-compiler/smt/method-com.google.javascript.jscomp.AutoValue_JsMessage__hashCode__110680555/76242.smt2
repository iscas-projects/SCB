(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var147 0)
(declare-sort var802 0)
(declare-sort var607 0)
(declare-sort var497 0)
(declare-sort var3814 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var147) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var147) String)
(declare-fun isAnonymous/1126038692 (var147) Bool)
(declare-fun isExternal/1126038692 (var147) Bool)
(declare-fun getId/1126038692 (var147) String)
(declare-fun getParts/1126038692 (var147) var607)
(declare-fun hashCode/1337417431 (var607) Int)
(declare-fun getAlternateId/1126038692 (var147) String)
(declare-fun getDesc/1126038692 (var147) String)
(declare-fun getMeaning/1126038692 (var147) String)
(declare-fun isHidden/1126038692 (var147) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var147) var497)
(declare-fun hashCode/-1247371579 (var497) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var147) var497)
(declare-fun jsPlaceholderNames/1126038692 (var147) var3814)
(declare-fun hashCode/1818408063 (var3814) Int)
(declare-const null-var147 var147)
(declare-const null-String String)
(declare-const var2530 var147) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2530 null-var147)))
(define-const var3292 String (getSourceName/1126038692 var2530)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var3292 null-String))) ; Cond: $r1 != null 
(define-const var879 String (getSourceName/1126038692 var2530)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var2768 Int (hashCode/-467973558 var879)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1834 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2768)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1961 Int (* var1834 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var381 String (getKey/1126038692 var2530)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1397 Int (hashCode/-467973558 var381)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var502 Int (bv2nat (bvxor ((_ int2bv 64) var1961) ((_ int2bv 64) var1397)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2407 Int (* var502 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var150 Bool (isAnonymous/1126038692 var2530)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var150 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2471 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var3402 Int (bv2nat (bvxor ((_ int2bv 64) var2407) ((_ int2bv 64) var2471)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1683 Int (* var3402 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2918 Bool (isExternal/1126038692 var2530)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2918 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2998 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3441 Int (bv2nat (bvxor ((_ int2bv 64) var1683) ((_ int2bv 64) var2998)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3133 Int (* var3441 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1860 String (getId/1126038692 var2530)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2240 Int (hashCode/-467973558 var1860)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3047 Int (bv2nat (bvxor ((_ int2bv 64) var3133) ((_ int2bv 64) var2240)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2892 Int (* var3047 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1987 var607 (getParts/1126038692 var2530)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1404 Int (hashCode/1337417431 var1987)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2708 Int (bv2nat (bvxor ((_ int2bv 64) var2892) ((_ int2bv 64) var1404)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2848 Int (* var2708 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1217 String (getAlternateId/1126038692 var2530)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1217 null-String))) ; Cond: $r6 != null 
(define-const var2959 String (getAlternateId/1126038692 var2530)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var2275 Int (hashCode/-467973558 var2959)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1013 Int (bv2nat (bvxor ((_ int2bv 64) var2848) ((_ int2bv 64) var2275)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1128 Int (* var1013 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2719 String (getDesc/1126038692 var2530)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var2719 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3918 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var1342 Int (bv2nat (bvxor ((_ int2bv 64) var1128) ((_ int2bv 64) var3918)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3248 Int (* var1342 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3696 String (getMeaning/1126038692 var2530)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3696 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var3742 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var3582 Int (bv2nat (bvxor ((_ int2bv 64) var3248) ((_ int2bv 64) var3742)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var196 Int (* var3582 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var918 Bool (isHidden/1126038692 var2530)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var918 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var791 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var3632 Int (bv2nat (bvxor ((_ int2bv 64) var196) ((_ int2bv 64) var791)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1629 Int (* var3632 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1281 var497 (getPlaceholderNameToExampleMap/1126038692 var2530)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2618 Int (hashCode/-1247371579 var1281)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3002 Int (bv2nat (bvxor ((_ int2bv 64) var1629) ((_ int2bv 64) var2618)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3539 Int (* var3002 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var631 var497 (getPlaceholderNameToOriginalCodeMap/1126038692 var2530)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2251 Int (hashCode/-1247371579 var631)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3998 Int (bv2nat (bvxor ((_ int2bv 64) var3539) ((_ int2bv 64) var2251)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1042 Int (* var3998 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3695 var3814 (jsPlaceholderNames/1126038692 var2530)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var838 Int (hashCode/1818408063 var3695)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1433 Int (bv2nat (bvxor ((_ int2bv 64) var1042) ((_ int2bv 64) var838)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var147=com.google.javascript.jscomp.AutoValue_JsMessage, var2530=r0, var3292=$r1, var802=null_type, var879=$r2, var2768=$i31, var1834=$i27, var1961=$i28, var381=$r3, var1397=$i0, var502=$i29, var2407=$i30, var150=$z0, var2471=$s32, var3402=$i25, var1683=$i26, var2918=$z1, var2998=$s33, var3441=$i19, var3133=$i20, var1860=$r4, var2240=$i1, var3047=$i21, var2892=$i22, var607=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1987=$r5, var1404=$i2, var2708=$i23, var2848=$i24, var1217=$r6, var2959=$r7, var2275=$i34, var1013=$i17, var1128=$i18, var2719=$r8, var3918=$i35, var1342=$i15, var3248=$i16, var3696=$r10, var3742=$i36, var3582=$i13, var196=$i14, var918=$z2, var791=$s37, var3632=$i6, var1629=$i7, var497=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1281=$r12, var2618=$i3, var3002=$i8, var3539=$i9, var631=$r13, var2251=$i4, var3998=$i10, var1042=$i11, var3814=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3695=$r14, var838=$i5, var1433=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var147, r0=var2530, $r1=var3292, null_type=var802, $r2=var879, $i31=var2768, $i27=var1834, $i28=var1961, $r3=var381, $i0=var1397, $i29=var502, $i30=var2407, $z0=var150, $s32=var2471, $i25=var3402, $i26=var1683, $z1=var2918, $s33=var2998, $i19=var3441, $i20=var3133, $r4=var1860, $i1=var2240, $i21=var3047, $i22=var2892, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var607, $r5=var1987, $i2=var1404, $i23=var2708, $i24=var2848, $r6=var1217, $r7=var2959, $i34=var2275, $i17=var1013, $i18=var1128, $r8=var2719, $i35=var3918, $i15=var1342, $i16=var3248, $r10=var3696, $i36=var3742, $i13=var3582, $i14=var196, $z2=var918, $s37=var791, $i6=var3632, $i7=var1629, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var497, $r12=var1281, $i3=var2618, $i8=var3002, $i9=var3539, $r13=var631, $i4=var2251, $i10=var3998, $i11=var1042, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3814, $r14=var3695, $i5=var838, $i12=var1433}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15