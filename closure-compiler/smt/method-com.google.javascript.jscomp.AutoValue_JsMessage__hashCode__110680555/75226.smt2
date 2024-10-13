(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1216 0)
(declare-sort var2384 0)
(declare-sort var961 0)
(declare-sort var477 0)
(declare-sort var3310 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1216) String)
(declare-fun getKey/1126038692 (var1216) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1216) Bool)
(declare-fun isExternal/1126038692 (var1216) Bool)
(declare-fun getId/1126038692 (var1216) String)
(declare-fun getParts/1126038692 (var1216) var961)
(declare-fun hashCode/1337417431 (var961) Int)
(declare-fun getAlternateId/1126038692 (var1216) String)
(declare-fun getDesc/1126038692 (var1216) String)
(declare-fun getMeaning/1126038692 (var1216) String)
(declare-fun isHidden/1126038692 (var1216) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1216) var477)
(declare-fun hashCode/-1247371579 (var477) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1216) var477)
(declare-fun jsPlaceholderNames/1126038692 (var1216) var3310)
(declare-fun hashCode/1818408063 (var3310) Int)
(declare-const null-var1216 var1216)
(declare-const null-String String)
(declare-const var3267 var1216) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3267 null-var1216)))
(define-const var2016 String (getSourceName/1126038692 var3267)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var2016 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1748 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var1197 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1748)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1128 Int (* var1197 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2476 String (getKey/1126038692 var3267)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var323 Int (hashCode/-467973558 var2476)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1534 Int (bv2nat (bvxor ((_ int2bv 64) var1128) ((_ int2bv 64) var323)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2326 Int (* var1534 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2626 Bool (isAnonymous/1126038692 var3267)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2626 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2670 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var166 Int (bv2nat (bvxor ((_ int2bv 64) var2326) ((_ int2bv 64) var2670)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var282 Int (* var166 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2017 Bool (isExternal/1126038692 var3267)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2017 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var62 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var1974 Int (bv2nat (bvxor ((_ int2bv 64) var282) ((_ int2bv 64) var62)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var336 Int (* var1974 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3264 String (getId/1126038692 var3267)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1650 Int (hashCode/-467973558 var3264)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1932 Int (bv2nat (bvxor ((_ int2bv 64) var336) ((_ int2bv 64) var1650)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3485 Int (* var1932 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var225 var961 (getParts/1126038692 var3267)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1492 Int (hashCode/1337417431 var225)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2197 Int (bv2nat (bvxor ((_ int2bv 64) var3485) ((_ int2bv 64) var1492)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var544 Int (* var2197 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2970 String (getAlternateId/1126038692 var3267)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2970 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2833 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2735 Int (bv2nat (bvxor ((_ int2bv 64) var544) ((_ int2bv 64) var2833)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2462 Int (* var2735 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3115 String (getDesc/1126038692 var3267)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3115 null-String))) ; Cond: $r8 != null 
(define-const var411 String (getDesc/1126038692 var3267)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var617 Int (hashCode/-467973558 var411)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1933 Int (bv2nat (bvxor ((_ int2bv 64) var2462) ((_ int2bv 64) var617)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var491 Int (* var1933 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2269 String (getMeaning/1126038692 var3267)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2269 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var1186 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var1085 Int (bv2nat (bvxor ((_ int2bv 64) var491) ((_ int2bv 64) var1186)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1944 Int (* var1085 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2342 Bool (isHidden/1126038692 var3267)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2342 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3762 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2070 Int (bv2nat (bvxor ((_ int2bv 64) var1944) ((_ int2bv 64) var3762)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var429 Int (* var2070 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1277 var477 (getPlaceholderNameToExampleMap/1126038692 var3267)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3489 Int (hashCode/-1247371579 var1277)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var88 Int (bv2nat (bvxor ((_ int2bv 64) var429) ((_ int2bv 64) var3489)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1131 Int (* var88 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3388 var477 (getPlaceholderNameToOriginalCodeMap/1126038692 var3267)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3786 Int (hashCode/-1247371579 var3388)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3043 Int (bv2nat (bvxor ((_ int2bv 64) var1131) ((_ int2bv 64) var3786)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var950 Int (* var3043 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1991 var3310 (jsPlaceholderNames/1126038692 var3267)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2868 Int (hashCode/1818408063 var1991)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3413 Int (bv2nat (bvxor ((_ int2bv 64) var950) ((_ int2bv 64) var2868)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1216=com.google.javascript.jscomp.AutoValue_JsMessage, var3267=r0, var2016=$r1, var2384=null_type, var1748=$i31, var1197=$i27, var1128=$i28, var2476=$r3, var323=$i0, var1534=$i29, var2326=$i30, var2626=$z0, var2670=$s32, var166=$i25, var282=$i26, var2017=$z1, var62=$s33, var1974=$i19, var336=$i20, var3264=$r4, var1650=$i1, var1932=$i21, var3485=$i22, var961=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var225=$r5, var1492=$i2, var2197=$i23, var544=$i24, var2970=$r6, var2833=$i34, var2735=$i17, var2462=$i18, var3115=$r8, var411=$r9, var617=$i35, var1933=$i15, var491=$i16, var2269=$r10, var1186=$i36, var1085=$i13, var1944=$i14, var2342=$z2, var3762=$s37, var2070=$i6, var429=$i7, var477=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1277=$r12, var3489=$i3, var88=$i8, var1131=$i9, var3388=$r13, var3786=$i4, var3043=$i10, var950=$i11, var3310=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1991=$r14, var2868=$i5, var3413=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1216, r0=var3267, $r1=var2016, null_type=var2384, $i31=var1748, $i27=var1197, $i28=var1128, $r3=var2476, $i0=var323, $i29=var1534, $i30=var2326, $z0=var2626, $s32=var2670, $i25=var166, $i26=var282, $z1=var2017, $s33=var62, $i19=var1974, $i20=var336, $r4=var3264, $i1=var1650, $i21=var1932, $i22=var3485, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var961, $r5=var225, $i2=var1492, $i23=var2197, $i24=var544, $r6=var2970, $i34=var2833, $i17=var2735, $i18=var2462, $r8=var3115, $r9=var411, $i35=var617, $i15=var1933, $i16=var491, $r10=var2269, $i36=var1186, $i13=var1085, $i14=var1944, $z2=var2342, $s37=var3762, $i6=var2070, $i7=var429, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var477, $r12=var1277, $i3=var3489, $i8=var88, $i9=var1131, $r13=var3388, $i4=var3786, $i10=var3043, $i11=var950, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3310, $r14=var1991, $i5=var2868, $i12=var3413}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15