(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1849 0)
(declare-sort var1960 0)
(declare-sort var3015 0)
(declare-sort var2884 0)
(declare-sort var1690 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1849) String)
(declare-fun getKey/1126038692 (var1849) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1849) Bool)
(declare-fun isExternal/1126038692 (var1849) Bool)
(declare-fun getId/1126038692 (var1849) String)
(declare-fun getParts/1126038692 (var1849) var3015)
(declare-fun hashCode/1337417431 (var3015) Int)
(declare-fun getAlternateId/1126038692 (var1849) String)
(declare-fun getDesc/1126038692 (var1849) String)
(declare-fun getMeaning/1126038692 (var1849) String)
(declare-fun isHidden/1126038692 (var1849) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1849) var2884)
(declare-fun hashCode/-1247371579 (var2884) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1849) var2884)
(declare-fun jsPlaceholderNames/1126038692 (var1849) var1690)
(declare-fun hashCode/1818408063 (var1690) Int)
(declare-const null-var1849 var1849)
(declare-const null-String String)
(declare-const var2756 var1849) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2756 null-var1849)))
(define-const var291 String (getSourceName/1126038692 var2756)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var291 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1382 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var1590 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1382)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var371 Int (* var1590 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3290 String (getKey/1126038692 var2756)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var7 Int (hashCode/-467973558 var3290)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3284 Int (bv2nat (bvxor ((_ int2bv 64) var371) ((_ int2bv 64) var7)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3642 Int (* var3284 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var811 Bool (isAnonymous/1126038692 var2756)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var811 1 0) 0)) ; Cond: $z0 == 0 
(define-const var838 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3709 Int (bv2nat (bvxor ((_ int2bv 64) var3642) ((_ int2bv 64) var838)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3016 Int (* var3709 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1759 Bool (isExternal/1126038692 var2756)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1759 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var350 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var1554 Int (bv2nat (bvxor ((_ int2bv 64) var3016) ((_ int2bv 64) var350)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2257 Int (* var1554 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1624 String (getId/1126038692 var2756)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var359 Int (hashCode/-467973558 var1624)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3369 Int (bv2nat (bvxor ((_ int2bv 64) var2257) ((_ int2bv 64) var359)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3120 Int (* var3369 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1429 var3015 (getParts/1126038692 var2756)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1517 Int (hashCode/1337417431 var1429)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2746 Int (bv2nat (bvxor ((_ int2bv 64) var3120) ((_ int2bv 64) var1517)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1251 Int (* var2746 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2218 String (getAlternateId/1126038692 var2756)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2218 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2680 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2919 Int (bv2nat (bvxor ((_ int2bv 64) var1251) ((_ int2bv 64) var2680)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2364 Int (* var2919 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var493 String (getDesc/1126038692 var2756)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var493 null-String))) ; Cond: $r8 != null 
(define-const var941 String (getDesc/1126038692 var2756)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2573 Int (hashCode/-467973558 var941)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var656 Int (bv2nat (bvxor ((_ int2bv 64) var2364) ((_ int2bv 64) var2573)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var889 Int (* var656 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var973 String (getMeaning/1126038692 var2756)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var973 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2846 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var1511 Int (bv2nat (bvxor ((_ int2bv 64) var889) ((_ int2bv 64) var2846)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1961 Int (* var1511 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3492 Bool (isHidden/1126038692 var2756)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var3492 1 0) 0)) ; Cond: $z2 == 0 
(define-const var18 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var2854 Int (bv2nat (bvxor ((_ int2bv 64) var1961) ((_ int2bv 64) var18)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var692 Int (* var2854 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3821 var2884 (getPlaceholderNameToExampleMap/1126038692 var2756)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1470 Int (hashCode/-1247371579 var3821)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var305 Int (bv2nat (bvxor ((_ int2bv 64) var692) ((_ int2bv 64) var1470)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3795 Int (* var305 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var913 var2884 (getPlaceholderNameToOriginalCodeMap/1126038692 var2756)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var329 Int (hashCode/-1247371579 var913)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1123 Int (bv2nat (bvxor ((_ int2bv 64) var3795) ((_ int2bv 64) var329)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3483 Int (* var1123 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var144 var1690 (jsPlaceholderNames/1126038692 var2756)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2145 Int (hashCode/1818408063 var144)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1850 Int (bv2nat (bvxor ((_ int2bv 64) var3483) ((_ int2bv 64) var2145)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1849=com.google.javascript.jscomp.AutoValue_JsMessage, var2756=r0, var291=$r1, var1960=null_type, var1382=$i31, var1590=$i27, var371=$i28, var3290=$r3, var7=$i0, var3284=$i29, var3642=$i30, var811=$z0, var838=$s32, var3709=$i25, var3016=$i26, var1759=$z1, var350=$s33, var1554=$i19, var2257=$i20, var1624=$r4, var359=$i1, var3369=$i21, var3120=$i22, var3015=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1429=$r5, var1517=$i2, var2746=$i23, var1251=$i24, var2218=$r6, var2680=$i34, var2919=$i17, var2364=$i18, var493=$r8, var941=$r9, var2573=$i35, var656=$i15, var889=$i16, var973=$r10, var2846=$i36, var1511=$i13, var1961=$i14, var3492=$z2, var18=$s37, var2854=$i6, var692=$i7, var2884=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3821=$r12, var1470=$i3, var305=$i8, var3795=$i9, var913=$r13, var329=$i4, var1123=$i10, var3483=$i11, var1690=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var144=$r14, var2145=$i5, var1850=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1849, r0=var2756, $r1=var291, null_type=var1960, $i31=var1382, $i27=var1590, $i28=var371, $r3=var3290, $i0=var7, $i29=var3284, $i30=var3642, $z0=var811, $s32=var838, $i25=var3709, $i26=var3016, $z1=var1759, $s33=var350, $i19=var1554, $i20=var2257, $r4=var1624, $i1=var359, $i21=var3369, $i22=var3120, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3015, $r5=var1429, $i2=var1517, $i23=var2746, $i24=var1251, $r6=var2218, $i34=var2680, $i17=var2919, $i18=var2364, $r8=var493, $r9=var941, $i35=var2573, $i15=var656, $i16=var889, $r10=var973, $i36=var2846, $i13=var1511, $i14=var1961, $z2=var3492, $s37=var18, $i6=var2854, $i7=var692, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2884, $r12=var3821, $i3=var1470, $i8=var305, $i9=var3795, $r13=var913, $i4=var329, $i10=var1123, $i11=var3483, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1690, $r14=var144, $i5=var2145, $i12=var1850}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15