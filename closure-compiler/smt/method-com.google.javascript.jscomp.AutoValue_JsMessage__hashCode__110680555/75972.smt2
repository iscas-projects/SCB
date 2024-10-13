(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3723 0)
(declare-sort var2724 0)
(declare-sort var3997 0)
(declare-sort var1709 0)
(declare-sort var2373 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3723) String)
(declare-fun getKey/1126038692 (var3723) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3723) Bool)
(declare-fun isExternal/1126038692 (var3723) Bool)
(declare-fun getId/1126038692 (var3723) String)
(declare-fun getParts/1126038692 (var3723) var3997)
(declare-fun hashCode/1337417431 (var3997) Int)
(declare-fun getAlternateId/1126038692 (var3723) String)
(declare-fun getDesc/1126038692 (var3723) String)
(declare-fun getMeaning/1126038692 (var3723) String)
(declare-fun isHidden/1126038692 (var3723) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3723) var1709)
(declare-fun hashCode/-1247371579 (var1709) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3723) var1709)
(declare-fun jsPlaceholderNames/1126038692 (var3723) var2373)
(declare-fun hashCode/1818408063 (var2373) Int)
(declare-const null-var3723 var3723)
(declare-const null-String String)
(declare-const var2992 var3723) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2992 null-var3723)))
(define-const var2682 String (getSourceName/1126038692 var2992)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var2682 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var987 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var3759 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var987)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2512 Int (* var3759 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3905 String (getKey/1126038692 var2992)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2010 Int (hashCode/-467973558 var3905)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var679 Int (bv2nat (bvxor ((_ int2bv 64) var2512) ((_ int2bv 64) var2010)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var990 Int (* var679 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2625 Bool (isAnonymous/1126038692 var2992)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var2625 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1918 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var789 Int (bv2nat (bvxor ((_ int2bv 64) var990) ((_ int2bv 64) var1918)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var129 Int (* var789 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2936 Bool (isExternal/1126038692 var2992)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2936 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2702 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var873 Int (bv2nat (bvxor ((_ int2bv 64) var129) ((_ int2bv 64) var2702)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1605 Int (* var873 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var12 String (getId/1126038692 var2992)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1387 Int (hashCode/-467973558 var12)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3828 Int (bv2nat (bvxor ((_ int2bv 64) var1605) ((_ int2bv 64) var1387)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1165 Int (* var3828 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2467 var3997 (getParts/1126038692 var2992)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1671 Int (hashCode/1337417431 var2467)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3384 Int (bv2nat (bvxor ((_ int2bv 64) var1165) ((_ int2bv 64) var1671)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var438 Int (* var3384 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2447 String (getAlternateId/1126038692 var2992)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var2447 null-String))) ; Cond: $r6 != null 
(define-const var1253 String (getAlternateId/1126038692 var2992)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var2451 Int (hashCode/-467973558 var1253)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3830 Int (bv2nat (bvxor ((_ int2bv 64) var438) ((_ int2bv 64) var2451)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3303 Int (* var3830 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var148 String (getDesc/1126038692 var2992)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var148 null-String))) ; Cond: $r8 != null 
(define-const var2749 String (getDesc/1126038692 var2992)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var1720 Int (hashCode/-467973558 var2749)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3825 Int (bv2nat (bvxor ((_ int2bv 64) var3303) ((_ int2bv 64) var1720)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3716 Int (* var3825 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2148 String (getMeaning/1126038692 var2992)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var2148 null-String))) ; Cond: $r10 != null 
(define-const var1968 String (getMeaning/1126038692 var2992)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1041 Int (hashCode/-467973558 var1968)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2025 Int (bv2nat (bvxor ((_ int2bv 64) var3716) ((_ int2bv 64) var1041)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3284 Int (* var2025 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var926 Bool (isHidden/1126038692 var2992)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var926 1 0) 0)) ; Cond: $z2 == 0 
(define-const var317 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var1058 Int (bv2nat (bvxor ((_ int2bv 64) var3284) ((_ int2bv 64) var317)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1521 Int (* var1058 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2224 var1709 (getPlaceholderNameToExampleMap/1126038692 var2992)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2587 Int (hashCode/-1247371579 var2224)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2848 Int (bv2nat (bvxor ((_ int2bv 64) var1521) ((_ int2bv 64) var2587)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1146 Int (* var2848 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2884 var1709 (getPlaceholderNameToOriginalCodeMap/1126038692 var2992)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3107 Int (hashCode/-1247371579 var2884)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3634 Int (bv2nat (bvxor ((_ int2bv 64) var1146) ((_ int2bv 64) var3107)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var276 Int (* var3634 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3344 var2373 (jsPlaceholderNames/1126038692 var2992)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1827 Int (hashCode/1818408063 var3344)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1855 Int (bv2nat (bvxor ((_ int2bv 64) var276) ((_ int2bv 64) var1827)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3723=com.google.javascript.jscomp.AutoValue_JsMessage, var2992=r0, var2682=$r1, var2724=null_type, var987=$i31, var3759=$i27, var2512=$i28, var3905=$r3, var2010=$i0, var679=$i29, var990=$i30, var2625=$z0, var1918=$s32, var789=$i25, var129=$i26, var2936=$z1, var2702=$s33, var873=$i19, var1605=$i20, var12=$r4, var1387=$i1, var3828=$i21, var1165=$i22, var3997=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2467=$r5, var1671=$i2, var3384=$i23, var438=$i24, var2447=$r6, var1253=$r7, var2451=$i34, var3830=$i17, var3303=$i18, var148=$r8, var2749=$r9, var1720=$i35, var3825=$i15, var3716=$i16, var2148=$r10, var1968=$r11, var1041=$i36, var2025=$i13, var3284=$i14, var926=$z2, var317=$s37, var1058=$i6, var1521=$i7, var1709=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2224=$r12, var2587=$i3, var2848=$i8, var1146=$i9, var2884=$r13, var3107=$i4, var3634=$i10, var276=$i11, var2373=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3344=$r14, var1827=$i5, var1855=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3723, r0=var2992, $r1=var2682, null_type=var2724, $i31=var987, $i27=var3759, $i28=var2512, $r3=var3905, $i0=var2010, $i29=var679, $i30=var990, $z0=var2625, $s32=var1918, $i25=var789, $i26=var129, $z1=var2936, $s33=var2702, $i19=var873, $i20=var1605, $r4=var12, $i1=var1387, $i21=var3828, $i22=var1165, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3997, $r5=var2467, $i2=var1671, $i23=var3384, $i24=var438, $r6=var2447, $r7=var1253, $i34=var2451, $i17=var3830, $i18=var3303, $r8=var148, $r9=var2749, $i35=var1720, $i15=var3825, $i16=var3716, $r10=var2148, $r11=var1968, $i36=var1041, $i13=var2025, $i14=var3284, $z2=var926, $s37=var317, $i6=var1058, $i7=var1521, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1709, $r12=var2224, $i3=var2587, $i8=var2848, $i9=var1146, $r13=var2884, $i4=var3107, $i10=var3634, $i11=var276, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2373, $r14=var3344, $i5=var1827, $i12=var1855}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15