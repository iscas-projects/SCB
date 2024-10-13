(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1412 0)
(declare-sort var253 0)
(declare-sort var42 0)
(declare-sort var242 0)
(declare-sort var949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1412) String)
(declare-fun getKey/1126038692 (var1412) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1412) Bool)
(declare-fun isExternal/1126038692 (var1412) Bool)
(declare-fun getId/1126038692 (var1412) String)
(declare-fun getParts/1126038692 (var1412) var42)
(declare-fun hashCode/1337417431 (var42) Int)
(declare-fun getAlternateId/1126038692 (var1412) String)
(declare-fun getDesc/1126038692 (var1412) String)
(declare-fun getMeaning/1126038692 (var1412) String)
(declare-fun isHidden/1126038692 (var1412) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1412) var242)
(declare-fun hashCode/-1247371579 (var242) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1412) var242)
(declare-fun jsPlaceholderNames/1126038692 (var1412) var949)
(declare-fun hashCode/1818408063 (var949) Int)
(declare-const null-var1412 var1412)
(declare-const null-String String)
(declare-const var1781 var1412) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1781 null-var1412)))
(define-const var1113 String (getSourceName/1126038692 var1781)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1113 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1102 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var1264 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1102)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1202 Int (* var1264 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2134 String (getKey/1126038692 var1781)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2016 Int (hashCode/-467973558 var2134)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2371 Int (bv2nat (bvxor ((_ int2bv 64) var1202) ((_ int2bv 64) var2016)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1370 Int (* var2371 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var78 Bool (isAnonymous/1126038692 var1781)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var78 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1436 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var3339 Int (bv2nat (bvxor ((_ int2bv 64) var1370) ((_ int2bv 64) var1436)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3458 Int (* var3339 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1544 Bool (isExternal/1126038692 var1781)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var1544 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3051 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var291 Int (bv2nat (bvxor ((_ int2bv 64) var3458) ((_ int2bv 64) var3051)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1334 Int (* var291 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2362 String (getId/1126038692 var1781)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3515 Int (hashCode/-467973558 var2362)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2825 Int (bv2nat (bvxor ((_ int2bv 64) var1334) ((_ int2bv 64) var3515)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2828 Int (* var2825 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var905 var42 (getParts/1126038692 var1781)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2971 Int (hashCode/1337417431 var905)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2696 Int (bv2nat (bvxor ((_ int2bv 64) var2828) ((_ int2bv 64) var2971)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var141 Int (* var2696 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3068 String (getAlternateId/1126038692 var1781)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var3068 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1958 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3295 Int (bv2nat (bvxor ((_ int2bv 64) var141) ((_ int2bv 64) var1958)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1161 Int (* var3295 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1987 String (getDesc/1126038692 var1781)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1987 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var1337 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var1884 Int (bv2nat (bvxor ((_ int2bv 64) var1161) ((_ int2bv 64) var1337)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2115 Int (* var1884 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1671 String (getMeaning/1126038692 var1781)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var1671 null-String))) ; Cond: $r10 != null 
(define-const var1215 String (getMeaning/1126038692 var1781)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var868 Int (hashCode/-467973558 var1215)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3674 Int (bv2nat (bvxor ((_ int2bv 64) var2115) ((_ int2bv 64) var868)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1472 Int (* var3674 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2715 Bool (isHidden/1126038692 var1781)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2715 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1784 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var738 Int (bv2nat (bvxor ((_ int2bv 64) var1472) ((_ int2bv 64) var1784)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var305 Int (* var738 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3483 var242 (getPlaceholderNameToExampleMap/1126038692 var1781)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3282 Int (hashCode/-1247371579 var3483)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3962 Int (bv2nat (bvxor ((_ int2bv 64) var305) ((_ int2bv 64) var3282)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3728 Int (* var3962 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3677 var242 (getPlaceholderNameToOriginalCodeMap/1126038692 var1781)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1516 Int (hashCode/-1247371579 var3677)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3504 Int (bv2nat (bvxor ((_ int2bv 64) var3728) ((_ int2bv 64) var1516)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3778 Int (* var3504 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2655 var949 (jsPlaceholderNames/1126038692 var1781)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3664 Int (hashCode/1818408063 var2655)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3440 Int (bv2nat (bvxor ((_ int2bv 64) var3778) ((_ int2bv 64) var3664)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1412=com.google.javascript.jscomp.AutoValue_JsMessage, var1781=r0, var1113=$r1, var253=null_type, var1102=$i31, var1264=$i27, var1202=$i28, var2134=$r3, var2016=$i0, var2371=$i29, var1370=$i30, var78=$z0, var1436=$s32, var3339=$i25, var3458=$i26, var1544=$z1, var3051=$s33, var291=$i19, var1334=$i20, var2362=$r4, var3515=$i1, var2825=$i21, var2828=$i22, var42=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var905=$r5, var2971=$i2, var2696=$i23, var141=$i24, var3068=$r6, var1958=$i34, var3295=$i17, var1161=$i18, var1987=$r8, var1337=$i35, var1884=$i15, var2115=$i16, var1671=$r10, var1215=$r11, var868=$i36, var3674=$i13, var1472=$i14, var2715=$z2, var1784=$s37, var738=$i6, var305=$i7, var242=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3483=$r12, var3282=$i3, var3962=$i8, var3728=$i9, var3677=$r13, var1516=$i4, var3504=$i10, var3778=$i11, var949=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2655=$r14, var3664=$i5, var3440=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1412, r0=var1781, $r1=var1113, null_type=var253, $i31=var1102, $i27=var1264, $i28=var1202, $r3=var2134, $i0=var2016, $i29=var2371, $i30=var1370, $z0=var78, $s32=var1436, $i25=var3339, $i26=var3458, $z1=var1544, $s33=var3051, $i19=var291, $i20=var1334, $r4=var2362, $i1=var3515, $i21=var2825, $i22=var2828, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var42, $r5=var905, $i2=var2971, $i23=var2696, $i24=var141, $r6=var3068, $i34=var1958, $i17=var3295, $i18=var1161, $r8=var1987, $i35=var1337, $i15=var1884, $i16=var2115, $r10=var1671, $r11=var1215, $i36=var868, $i13=var3674, $i14=var1472, $z2=var2715, $s37=var1784, $i6=var738, $i7=var305, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var242, $r12=var3483, $i3=var3282, $i8=var3962, $i9=var3728, $r13=var3677, $i4=var1516, $i10=var3504, $i11=var3778, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var949, $r14=var2655, $i5=var3664, $i12=var3440}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15