(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1239 0)
(declare-sort var1482 0)
(declare-sort var2824 0)
(declare-sort var1814 0)
(declare-sort var1668 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1239) String)
(declare-fun getKey/1126038692 (var1239) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1239) Bool)
(declare-fun isExternal/1126038692 (var1239) Bool)
(declare-fun getId/1126038692 (var1239) String)
(declare-fun getParts/1126038692 (var1239) var2824)
(declare-fun hashCode/1337417431 (var2824) Int)
(declare-fun getAlternateId/1126038692 (var1239) String)
(declare-fun getDesc/1126038692 (var1239) String)
(declare-fun getMeaning/1126038692 (var1239) String)
(declare-fun isHidden/1126038692 (var1239) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1239) var1814)
(declare-fun hashCode/-1247371579 (var1814) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1239) var1814)
(declare-fun jsPlaceholderNames/1126038692 (var1239) var1668)
(declare-fun hashCode/1818408063 (var1668) Int)
(declare-const null-var1239 var1239)
(declare-const null-String String)
(declare-const var3325 var1239) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3325 null-var1239)))
(define-const var2022 String (getSourceName/1126038692 var3325)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var2022 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2876 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var3802 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2876)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1278 Int (* var3802 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1660 String (getKey/1126038692 var3325)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var195 Int (hashCode/-467973558 var1660)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2990 Int (bv2nat (bvxor ((_ int2bv 64) var1278) ((_ int2bv 64) var195)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1968 Int (* var2990 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1245 Bool (isAnonymous/1126038692 var3325)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1245 1 0) 0)) ; Cond: $z0 == 0 
(define-const var579 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var756 Int (bv2nat (bvxor ((_ int2bv 64) var1968) ((_ int2bv 64) var579)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1032 Int (* var756 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1073 Bool (isExternal/1126038692 var3325)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var1073 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1810 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var604 Int (bv2nat (bvxor ((_ int2bv 64) var1032) ((_ int2bv 64) var1810)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var231 Int (* var604 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2070 String (getId/1126038692 var3325)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2020 Int (hashCode/-467973558 var2070)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3072 Int (bv2nat (bvxor ((_ int2bv 64) var231) ((_ int2bv 64) var2020)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var636 Int (* var3072 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1119 var2824 (getParts/1126038692 var3325)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3041 Int (hashCode/1337417431 var1119)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1627 Int (bv2nat (bvxor ((_ int2bv 64) var636) ((_ int2bv 64) var3041)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3693 Int (* var1627 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var781 String (getAlternateId/1126038692 var3325)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var781 null-String))) ; Cond: $r6 != null 
(define-const var3074 String (getAlternateId/1126038692 var3325)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1786 Int (hashCode/-467973558 var3074)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3200 Int (bv2nat (bvxor ((_ int2bv 64) var3693) ((_ int2bv 64) var1786)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3490 Int (* var3200 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var228 String (getDesc/1126038692 var3325)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var228 null-String))) ; Cond: $r8 != null 
(define-const var2601 String (getDesc/1126038692 var3325)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2398 Int (hashCode/-467973558 var2601)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1734 Int (bv2nat (bvxor ((_ int2bv 64) var3490) ((_ int2bv 64) var2398)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3266 Int (* var1734 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2506 String (getMeaning/1126038692 var3325)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2506 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2908 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var102 Int (bv2nat (bvxor ((_ int2bv 64) var3266) ((_ int2bv 64) var2908)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2803 Int (* var102 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2543 Bool (isHidden/1126038692 var3325)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2543 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2503 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1877 Int (bv2nat (bvxor ((_ int2bv 64) var2803) ((_ int2bv 64) var2503)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var613 Int (* var1877 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2388 var1814 (getPlaceholderNameToExampleMap/1126038692 var3325)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1655 Int (hashCode/-1247371579 var2388)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2211 Int (bv2nat (bvxor ((_ int2bv 64) var613) ((_ int2bv 64) var1655)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var895 Int (* var2211 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2751 var1814 (getPlaceholderNameToOriginalCodeMap/1126038692 var3325)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var575 Int (hashCode/-1247371579 var2751)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var764 Int (bv2nat (bvxor ((_ int2bv 64) var895) ((_ int2bv 64) var575)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2496 Int (* var764 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var946 var1668 (jsPlaceholderNames/1126038692 var3325)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2501 Int (hashCode/1818408063 var946)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var941 Int (bv2nat (bvxor ((_ int2bv 64) var2496) ((_ int2bv 64) var2501)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1239=com.google.javascript.jscomp.AutoValue_JsMessage, var3325=r0, var2022=$r1, var1482=null_type, var2876=$i31, var3802=$i27, var1278=$i28, var1660=$r3, var195=$i0, var2990=$i29, var1968=$i30, var1245=$z0, var579=$s32, var756=$i25, var1032=$i26, var1073=$z1, var1810=$s33, var604=$i19, var231=$i20, var2070=$r4, var2020=$i1, var3072=$i21, var636=$i22, var2824=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1119=$r5, var3041=$i2, var1627=$i23, var3693=$i24, var781=$r6, var3074=$r7, var1786=$i34, var3200=$i17, var3490=$i18, var228=$r8, var2601=$r9, var2398=$i35, var1734=$i15, var3266=$i16, var2506=$r10, var2908=$i36, var102=$i13, var2803=$i14, var2543=$z2, var2503=$s37, var1877=$i6, var613=$i7, var1814=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2388=$r12, var1655=$i3, var2211=$i8, var895=$i9, var2751=$r13, var575=$i4, var764=$i10, var2496=$i11, var1668=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var946=$r14, var2501=$i5, var941=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1239, r0=var3325, $r1=var2022, null_type=var1482, $i31=var2876, $i27=var3802, $i28=var1278, $r3=var1660, $i0=var195, $i29=var2990, $i30=var1968, $z0=var1245, $s32=var579, $i25=var756, $i26=var1032, $z1=var1073, $s33=var1810, $i19=var604, $i20=var231, $r4=var2070, $i1=var2020, $i21=var3072, $i22=var636, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2824, $r5=var1119, $i2=var3041, $i23=var1627, $i24=var3693, $r6=var781, $r7=var3074, $i34=var1786, $i17=var3200, $i18=var3490, $r8=var228, $r9=var2601, $i35=var2398, $i15=var1734, $i16=var3266, $r10=var2506, $i36=var2908, $i13=var102, $i14=var2803, $z2=var2543, $s37=var2503, $i6=var1877, $i7=var613, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1814, $r12=var2388, $i3=var1655, $i8=var2211, $i9=var895, $r13=var2751, $i4=var575, $i10=var764, $i11=var2496, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1668, $r14=var946, $i5=var2501, $i12=var941}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15