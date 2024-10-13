(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var113 0)
(declare-sort var416 0)
(declare-sort var2024 0)
(declare-sort var1797 0)
(declare-sort var1725 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var113) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var113) String)
(declare-fun isAnonymous/1126038692 (var113) Bool)
(declare-fun isExternal/1126038692 (var113) Bool)
(declare-fun getId/1126038692 (var113) String)
(declare-fun getParts/1126038692 (var113) var2024)
(declare-fun hashCode/1337417431 (var2024) Int)
(declare-fun getAlternateId/1126038692 (var113) String)
(declare-fun getDesc/1126038692 (var113) String)
(declare-fun getMeaning/1126038692 (var113) String)
(declare-fun isHidden/1126038692 (var113) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var113) var1797)
(declare-fun hashCode/-1247371579 (var1797) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var113) var1797)
(declare-fun jsPlaceholderNames/1126038692 (var113) var1725)
(declare-fun hashCode/1818408063 (var1725) Int)
(declare-const null-var113 var113)
(declare-const null-String String)
(declare-const var3878 var113) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3878 null-var113)))
(define-const var1345 String (getSourceName/1126038692 var3878)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var1345 null-String))) ; Cond: $r1 != null 
(define-const var2581 String (getSourceName/1126038692 var3878)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3767 Int (hashCode/-467973558 var2581)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3635 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3767)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var305 Int (* var3635 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3912 String (getKey/1126038692 var3878)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1715 Int (hashCode/-467973558 var3912)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var432 Int (bv2nat (bvxor ((_ int2bv 64) var305) ((_ int2bv 64) var1715)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3195 Int (* var432 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var325 Bool (isAnonymous/1126038692 var3878)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var325 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3876 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var964 Int (bv2nat (bvxor ((_ int2bv 64) var3195) ((_ int2bv 64) var3876)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3122 Int (* var964 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3430 Bool (isExternal/1126038692 var3878)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3430 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2812 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2926 Int (bv2nat (bvxor ((_ int2bv 64) var3122) ((_ int2bv 64) var2812)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var509 Int (* var2926 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1203 String (getId/1126038692 var3878)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1804 Int (hashCode/-467973558 var1203)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1688 Int (bv2nat (bvxor ((_ int2bv 64) var509) ((_ int2bv 64) var1804)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1383 Int (* var1688 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2951 var2024 (getParts/1126038692 var3878)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1913 Int (hashCode/1337417431 var2951)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2403 Int (bv2nat (bvxor ((_ int2bv 64) var1383) ((_ int2bv 64) var1913)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2912 Int (* var2403 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3169 String (getAlternateId/1126038692 var3878)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3169 null-String))) ; Cond: $r6 != null 
(define-const var1967 String (getAlternateId/1126038692 var3878)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var2950 Int (hashCode/-467973558 var1967)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var578 Int (bv2nat (bvxor ((_ int2bv 64) var2912) ((_ int2bv 64) var2950)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2787 Int (* var578 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1506 String (getDesc/1126038692 var3878)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var1506 null-String))) ; Cond: $r8 != null 
(define-const var3249 String (getDesc/1126038692 var3878)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var3499 Int (hashCode/-467973558 var3249)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3237 Int (bv2nat (bvxor ((_ int2bv 64) var2787) ((_ int2bv 64) var3499)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2808 Int (* var3237 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2281 String (getMeaning/1126038692 var3878)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var2281 null-String))) ; Cond: $r10 != null 
(define-const var959 String (getMeaning/1126038692 var3878)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1171 Int (hashCode/-467973558 var959)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var675 Int (bv2nat (bvxor ((_ int2bv 64) var2808) ((_ int2bv 64) var1171)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1213 Int (* var675 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var820 Bool (isHidden/1126038692 var3878)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var820 1 0) 0)) ; Cond: $z2 == 0 
(define-const var376 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var176 Int (bv2nat (bvxor ((_ int2bv 64) var1213) ((_ int2bv 64) var376)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3119 Int (* var176 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3963 var1797 (getPlaceholderNameToExampleMap/1126038692 var3878)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2003 Int (hashCode/-1247371579 var3963)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1962 Int (bv2nat (bvxor ((_ int2bv 64) var3119) ((_ int2bv 64) var2003)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2078 Int (* var1962 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1574 var1797 (getPlaceholderNameToOriginalCodeMap/1126038692 var3878)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3896 Int (hashCode/-1247371579 var1574)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1129 Int (bv2nat (bvxor ((_ int2bv 64) var2078) ((_ int2bv 64) var3896)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var355 Int (* var1129 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3371 var1725 (jsPlaceholderNames/1126038692 var3878)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2251 Int (hashCode/1818408063 var3371)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1713 Int (bv2nat (bvxor ((_ int2bv 64) var355) ((_ int2bv 64) var2251)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var113=com.google.javascript.jscomp.AutoValue_JsMessage, var3878=r0, var1345=$r1, var416=null_type, var2581=$r2, var3767=$i31, var3635=$i27, var305=$i28, var3912=$r3, var1715=$i0, var432=$i29, var3195=$i30, var325=$z0, var3876=$s32, var964=$i25, var3122=$i26, var3430=$z1, var2812=$s33, var2926=$i19, var509=$i20, var1203=$r4, var1804=$i1, var1688=$i21, var1383=$i22, var2024=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2951=$r5, var1913=$i2, var2403=$i23, var2912=$i24, var3169=$r6, var1967=$r7, var2950=$i34, var578=$i17, var2787=$i18, var1506=$r8, var3249=$r9, var3499=$i35, var3237=$i15, var2808=$i16, var2281=$r10, var959=$r11, var1171=$i36, var675=$i13, var1213=$i14, var820=$z2, var376=$s37, var176=$i6, var3119=$i7, var1797=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3963=$r12, var2003=$i3, var1962=$i8, var2078=$i9, var1574=$r13, var3896=$i4, var1129=$i10, var355=$i11, var1725=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3371=$r14, var2251=$i5, var1713=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var113, r0=var3878, $r1=var1345, null_type=var416, $r2=var2581, $i31=var3767, $i27=var3635, $i28=var305, $r3=var3912, $i0=var1715, $i29=var432, $i30=var3195, $z0=var325, $s32=var3876, $i25=var964, $i26=var3122, $z1=var3430, $s33=var2812, $i19=var2926, $i20=var509, $r4=var1203, $i1=var1804, $i21=var1688, $i22=var1383, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2024, $r5=var2951, $i2=var1913, $i23=var2403, $i24=var2912, $r6=var3169, $r7=var1967, $i34=var2950, $i17=var578, $i18=var2787, $r8=var1506, $r9=var3249, $i35=var3499, $i15=var3237, $i16=var2808, $r10=var2281, $r11=var959, $i36=var1171, $i13=var675, $i14=var1213, $z2=var820, $s37=var376, $i6=var176, $i7=var3119, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1797, $r12=var3963, $i3=var2003, $i8=var1962, $i9=var2078, $r13=var1574, $i4=var3896, $i10=var1129, $i11=var355, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1725, $r14=var3371, $i5=var2251, $i12=var1713}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 6}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15