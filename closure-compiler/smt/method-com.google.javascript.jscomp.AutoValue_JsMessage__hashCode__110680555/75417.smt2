(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3780 0)
(declare-sort var2449 0)
(declare-sort var2326 0)
(declare-sort var1104 0)
(declare-sort var2744 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3780) String)
(declare-fun getKey/1126038692 (var3780) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3780) Bool)
(declare-fun isExternal/1126038692 (var3780) Bool)
(declare-fun getId/1126038692 (var3780) String)
(declare-fun getParts/1126038692 (var3780) var2326)
(declare-fun hashCode/1337417431 (var2326) Int)
(declare-fun getAlternateId/1126038692 (var3780) String)
(declare-fun getDesc/1126038692 (var3780) String)
(declare-fun getMeaning/1126038692 (var3780) String)
(declare-fun isHidden/1126038692 (var3780) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3780) var1104)
(declare-fun hashCode/-1247371579 (var1104) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3780) var1104)
(declare-fun jsPlaceholderNames/1126038692 (var3780) var2744)
(declare-fun hashCode/1818408063 (var2744) Int)
(declare-const null-var3780 var3780)
(declare-const null-String String)
(declare-const var2226 var3780) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2226 null-var3780)))
(define-const var729 String (getSourceName/1126038692 var2226)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var729 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var3021 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var1938 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3021)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3634 Int (* var1938 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3201 String (getKey/1126038692 var2226)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3770 Int (hashCode/-467973558 var3201)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var382 Int (bv2nat (bvxor ((_ int2bv 64) var3634) ((_ int2bv 64) var3770)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1111 Int (* var382 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2093 Bool (isAnonymous/1126038692 var2226)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2093 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1358 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var440 Int (bv2nat (bvxor ((_ int2bv 64) var1111) ((_ int2bv 64) var1358)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3442 Int (* var440 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3755 Bool (isExternal/1126038692 var2226)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3755 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2939 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2455 Int (bv2nat (bvxor ((_ int2bv 64) var3442) ((_ int2bv 64) var2939)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1484 Int (* var2455 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var329 String (getId/1126038692 var2226)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var384 Int (hashCode/-467973558 var329)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var604 Int (bv2nat (bvxor ((_ int2bv 64) var1484) ((_ int2bv 64) var384)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var948 Int (* var604 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1449 var2326 (getParts/1126038692 var2226)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1137 Int (hashCode/1337417431 var1449)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3086 Int (bv2nat (bvxor ((_ int2bv 64) var948) ((_ int2bv 64) var1137)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var639 Int (* var3086 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2938 String (getAlternateId/1126038692 var2226)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2938 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1529 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var1976 Int (bv2nat (bvxor ((_ int2bv 64) var639) ((_ int2bv 64) var1529)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var813 Int (* var1976 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1867 String (getDesc/1126038692 var2226)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1867 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var2239 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3976 Int (bv2nat (bvxor ((_ int2bv 64) var813) ((_ int2bv 64) var2239)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var907 Int (* var3976 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3985 String (getMeaning/1126038692 var2226)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var3985 null-String))) ; Cond: $r10 != null 
(define-const var3549 String (getMeaning/1126038692 var2226)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var3300 Int (hashCode/-467973558 var3549)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var607 Int (bv2nat (bvxor ((_ int2bv 64) var907) ((_ int2bv 64) var3300)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3536 Int (* var607 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var897 Bool (isHidden/1126038692 var2226)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var897 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1280 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var3743 Int (bv2nat (bvxor ((_ int2bv 64) var3536) ((_ int2bv 64) var1280)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1745 Int (* var3743 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3542 var1104 (getPlaceholderNameToExampleMap/1126038692 var2226)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var946 Int (hashCode/-1247371579 var3542)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var303 Int (bv2nat (bvxor ((_ int2bv 64) var1745) ((_ int2bv 64) var946)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3108 Int (* var303 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1156 var1104 (getPlaceholderNameToOriginalCodeMap/1126038692 var2226)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1920 Int (hashCode/-1247371579 var1156)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1974 Int (bv2nat (bvxor ((_ int2bv 64) var3108) ((_ int2bv 64) var1920)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var69 Int (* var1974 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3633 var2744 (jsPlaceholderNames/1126038692 var2226)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1462 Int (hashCode/1818408063 var3633)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1115 Int (bv2nat (bvxor ((_ int2bv 64) var69) ((_ int2bv 64) var1462)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3780=com.google.javascript.jscomp.AutoValue_JsMessage, var2226=r0, var729=$r1, var2449=null_type, var3021=$i31, var1938=$i27, var3634=$i28, var3201=$r3, var3770=$i0, var382=$i29, var1111=$i30, var2093=$z0, var1358=$s32, var440=$i25, var3442=$i26, var3755=$z1, var2939=$s33, var2455=$i19, var1484=$i20, var329=$r4, var384=$i1, var604=$i21, var948=$i22, var2326=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1449=$r5, var1137=$i2, var3086=$i23, var639=$i24, var2938=$r6, var1529=$i34, var1976=$i17, var813=$i18, var1867=$r8, var2239=$i35, var3976=$i15, var907=$i16, var3985=$r10, var3549=$r11, var3300=$i36, var607=$i13, var3536=$i14, var897=$z2, var1280=$s37, var3743=$i6, var1745=$i7, var1104=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3542=$r12, var946=$i3, var303=$i8, var3108=$i9, var1156=$r13, var1920=$i4, var1974=$i10, var69=$i11, var2744=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3633=$r14, var1462=$i5, var1115=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3780, r0=var2226, $r1=var729, null_type=var2449, $i31=var3021, $i27=var1938, $i28=var3634, $r3=var3201, $i0=var3770, $i29=var382, $i30=var1111, $z0=var2093, $s32=var1358, $i25=var440, $i26=var3442, $z1=var3755, $s33=var2939, $i19=var2455, $i20=var1484, $r4=var329, $i1=var384, $i21=var604, $i22=var948, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2326, $r5=var1449, $i2=var1137, $i23=var3086, $i24=var639, $r6=var2938, $i34=var1529, $i17=var1976, $i18=var813, $r8=var1867, $i35=var2239, $i15=var3976, $i16=var907, $r10=var3985, $r11=var3549, $i36=var3300, $i13=var607, $i14=var3536, $z2=var897, $s37=var1280, $i6=var3743, $i7=var1745, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1104, $r12=var3542, $i3=var946, $i8=var303, $i9=var3108, $r13=var1156, $i4=var1920, $i10=var1974, $i11=var69, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2744, $r14=var3633, $i5=var1462, $i12=var1115}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15