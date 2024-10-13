(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var798 0)
(declare-sort var2132 0)
(declare-sort var366 0)
(declare-sort var3366 0)
(declare-sort var1555 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var798) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var798) String)
(declare-fun isAnonymous/1126038692 (var798) Bool)
(declare-fun isExternal/1126038692 (var798) Bool)
(declare-fun getId/1126038692 (var798) String)
(declare-fun getParts/1126038692 (var798) var366)
(declare-fun hashCode/1337417431 (var366) Int)
(declare-fun getAlternateId/1126038692 (var798) String)
(declare-fun getDesc/1126038692 (var798) String)
(declare-fun getMeaning/1126038692 (var798) String)
(declare-fun isHidden/1126038692 (var798) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var798) var3366)
(declare-fun hashCode/-1247371579 (var3366) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var798) var3366)
(declare-fun jsPlaceholderNames/1126038692 (var798) var1555)
(declare-fun hashCode/1818408063 (var1555) Int)
(declare-const null-var798 var798)
(declare-const null-String String)
(declare-const var2834 var798) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2834 null-var798)))
(define-const var426 String (getSourceName/1126038692 var2834)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var426 null-String))) ; Cond: $r1 != null 
(define-const var2122 String (getSourceName/1126038692 var2834)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var1360 Int (hashCode/-467973558 var2122)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var545 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1360)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var659 Int (* var545 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var52 String (getKey/1126038692 var2834)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3350 Int (hashCode/-467973558 var52)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1866 Int (bv2nat (bvxor ((_ int2bv 64) var659) ((_ int2bv 64) var3350)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1974 Int (* var1866 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3340 Bool (isAnonymous/1126038692 var2834)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var3340 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2656 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var103 Int (bv2nat (bvxor ((_ int2bv 64) var1974) ((_ int2bv 64) var2656)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1945 Int (* var103 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1241 Bool (isExternal/1126038692 var2834)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var1241 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3650 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var1140 Int (bv2nat (bvxor ((_ int2bv 64) var1945) ((_ int2bv 64) var3650)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1655 Int (* var1140 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2064 String (getId/1126038692 var2834)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var528 Int (hashCode/-467973558 var2064)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3275 Int (bv2nat (bvxor ((_ int2bv 64) var1655) ((_ int2bv 64) var528)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3672 Int (* var3275 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var142 var366 (getParts/1126038692 var2834)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1075 Int (hashCode/1337417431 var142)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1830 Int (bv2nat (bvxor ((_ int2bv 64) var3672) ((_ int2bv 64) var1075)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var94 Int (* var1830 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3211 String (getAlternateId/1126038692 var2834)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3211 null-String))) ; Cond: $r6 != null 
(define-const var3953 String (getAlternateId/1126038692 var2834)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var2867 Int (hashCode/-467973558 var3953)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1069 Int (bv2nat (bvxor ((_ int2bv 64) var94) ((_ int2bv 64) var2867)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1527 Int (* var1069 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var246 String (getDesc/1126038692 var2834)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var246 null-String))) ; Cond: $r8 != null 
(define-const var1165 String (getDesc/1126038692 var2834)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var553 Int (hashCode/-467973558 var1165)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var779 Int (bv2nat (bvxor ((_ int2bv 64) var1527) ((_ int2bv 64) var553)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1487 Int (* var779 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1786 String (getMeaning/1126038692 var2834)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var1786 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2019 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var3618 Int (bv2nat (bvxor ((_ int2bv 64) var1487) ((_ int2bv 64) var2019)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3465 Int (* var3618 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var213 Bool (isHidden/1126038692 var2834)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var213 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3787 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var1844 Int (bv2nat (bvxor ((_ int2bv 64) var3465) ((_ int2bv 64) var3787)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var819 Int (* var1844 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var845 var3366 (getPlaceholderNameToExampleMap/1126038692 var2834)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1839 Int (hashCode/-1247371579 var845)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2117 Int (bv2nat (bvxor ((_ int2bv 64) var819) ((_ int2bv 64) var1839)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3915 Int (* var2117 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1966 var3366 (getPlaceholderNameToOriginalCodeMap/1126038692 var2834)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3893 Int (hashCode/-1247371579 var1966)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var703 Int (bv2nat (bvxor ((_ int2bv 64) var3915) ((_ int2bv 64) var3893)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2374 Int (* var703 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3096 var1555 (jsPlaceholderNames/1126038692 var2834)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1113 Int (hashCode/1818408063 var3096)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3369 Int (bv2nat (bvxor ((_ int2bv 64) var2374) ((_ int2bv 64) var1113)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var798=com.google.javascript.jscomp.AutoValue_JsMessage, var2834=r0, var426=$r1, var2132=null_type, var2122=$r2, var1360=$i31, var545=$i27, var659=$i28, var52=$r3, var3350=$i0, var1866=$i29, var1974=$i30, var3340=$z0, var2656=$s32, var103=$i25, var1945=$i26, var1241=$z1, var3650=$s33, var1140=$i19, var1655=$i20, var2064=$r4, var528=$i1, var3275=$i21, var3672=$i22, var366=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var142=$r5, var1075=$i2, var1830=$i23, var94=$i24, var3211=$r6, var3953=$r7, var2867=$i34, var1069=$i17, var1527=$i18, var246=$r8, var1165=$r9, var553=$i35, var779=$i15, var1487=$i16, var1786=$r10, var2019=$i36, var3618=$i13, var3465=$i14, var213=$z2, var3787=$s37, var1844=$i6, var819=$i7, var3366=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var845=$r12, var1839=$i3, var2117=$i8, var3915=$i9, var1966=$r13, var3893=$i4, var703=$i10, var2374=$i11, var1555=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3096=$r14, var1113=$i5, var3369=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var798, r0=var2834, $r1=var426, null_type=var2132, $r2=var2122, $i31=var1360, $i27=var545, $i28=var659, $r3=var52, $i0=var3350, $i29=var1866, $i30=var1974, $z0=var3340, $s32=var2656, $i25=var103, $i26=var1945, $z1=var1241, $s33=var3650, $i19=var1140, $i20=var1655, $r4=var2064, $i1=var528, $i21=var3275, $i22=var3672, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var366, $r5=var142, $i2=var1075, $i23=var1830, $i24=var94, $r6=var3211, $r7=var3953, $i34=var2867, $i17=var1069, $i18=var1527, $r8=var246, $r9=var1165, $i35=var553, $i15=var779, $i16=var1487, $r10=var1786, $i36=var2019, $i13=var3618, $i14=var3465, $z2=var213, $s37=var3787, $i6=var1844, $i7=var819, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3366, $r12=var845, $i3=var1839, $i8=var2117, $i9=var3915, $r13=var1966, $i4=var3893, $i10=var703, $i11=var2374, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1555, $r14=var3096, $i5=var1113, $i12=var3369}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15