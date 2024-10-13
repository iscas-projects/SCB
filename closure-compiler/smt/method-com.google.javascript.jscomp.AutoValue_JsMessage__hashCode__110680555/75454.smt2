(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var864 0)
(declare-sort var2364 0)
(declare-sort var1265 0)
(declare-sort var2415 0)
(declare-sort var286 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var864) String)
(declare-fun getKey/1126038692 (var864) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var864) Bool)
(declare-fun isExternal/1126038692 (var864) Bool)
(declare-fun getId/1126038692 (var864) String)
(declare-fun getParts/1126038692 (var864) var1265)
(declare-fun hashCode/1337417431 (var1265) Int)
(declare-fun getAlternateId/1126038692 (var864) String)
(declare-fun getDesc/1126038692 (var864) String)
(declare-fun getMeaning/1126038692 (var864) String)
(declare-fun isHidden/1126038692 (var864) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var864) var2415)
(declare-fun hashCode/-1247371579 (var2415) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var864) var2415)
(declare-fun jsPlaceholderNames/1126038692 (var864) var286)
(declare-fun hashCode/1818408063 (var286) Int)
(declare-const null-var864 var864)
(declare-const null-String String)
(declare-const var2882 var864) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2882 null-var864)))
(define-const var1685 String (getSourceName/1126038692 var2882)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1685 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var268 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var1948 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var268)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3361 Int (* var1948 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var782 String (getKey/1126038692 var2882)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1237 Int (hashCode/-467973558 var782)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2543 Int (bv2nat (bvxor ((_ int2bv 64) var3361) ((_ int2bv 64) var1237)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1681 Int (* var2543 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3112 Bool (isAnonymous/1126038692 var2882)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var3112 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2113 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var2699 Int (bv2nat (bvxor ((_ int2bv 64) var1681) ((_ int2bv 64) var2113)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1707 Int (* var2699 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2008 Bool (isExternal/1126038692 var2882)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2008 1 0) 0)) ; Cond: $z1 == 0 
(define-const var650 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var1325 Int (bv2nat (bvxor ((_ int2bv 64) var1707) ((_ int2bv 64) var650)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2401 Int (* var1325 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2589 String (getId/1126038692 var2882)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3932 Int (hashCode/-467973558 var2589)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2629 Int (bv2nat (bvxor ((_ int2bv 64) var2401) ((_ int2bv 64) var3932)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2144 Int (* var2629 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1289 var1265 (getParts/1126038692 var2882)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3173 Int (hashCode/1337417431 var1289)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1850 Int (bv2nat (bvxor ((_ int2bv 64) var2144) ((_ int2bv 64) var3173)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var798 Int (* var1850 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3564 String (getAlternateId/1126038692 var2882)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var3564 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2617 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var1755 Int (bv2nat (bvxor ((_ int2bv 64) var798) ((_ int2bv 64) var2617)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3356 Int (* var1755 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var574 String (getDesc/1126038692 var2882)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var574 null-String))) ; Cond: $r8 != null 
(define-const var2851 String (getDesc/1126038692 var2882)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2994 Int (hashCode/-467973558 var2851)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3970 Int (bv2nat (bvxor ((_ int2bv 64) var3356) ((_ int2bv 64) var2994)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3182 Int (* var3970 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2949 String (getMeaning/1126038692 var2882)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var2949 null-String))) ; Cond: $r10 != null 
(define-const var246 String (getMeaning/1126038692 var2882)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var641 Int (hashCode/-467973558 var246)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1152 Int (bv2nat (bvxor ((_ int2bv 64) var3182) ((_ int2bv 64) var641)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3264 Int (* var1152 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2998 Bool (isHidden/1126038692 var2882)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2998 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var272 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2757 Int (bv2nat (bvxor ((_ int2bv 64) var3264) ((_ int2bv 64) var272)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var999 Int (* var2757 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3688 var2415 (getPlaceholderNameToExampleMap/1126038692 var2882)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3152 Int (hashCode/-1247371579 var3688)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3703 Int (bv2nat (bvxor ((_ int2bv 64) var999) ((_ int2bv 64) var3152)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var307 Int (* var3703 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2173 var2415 (getPlaceholderNameToOriginalCodeMap/1126038692 var2882)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3541 Int (hashCode/-1247371579 var2173)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2396 Int (bv2nat (bvxor ((_ int2bv 64) var307) ((_ int2bv 64) var3541)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var364 Int (* var2396 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var467 var286 (jsPlaceholderNames/1126038692 var2882)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var417 Int (hashCode/1818408063 var467)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1615 Int (bv2nat (bvxor ((_ int2bv 64) var364) ((_ int2bv 64) var417)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var864=com.google.javascript.jscomp.AutoValue_JsMessage, var2882=r0, var1685=$r1, var2364=null_type, var268=$i31, var1948=$i27, var3361=$i28, var782=$r3, var1237=$i0, var2543=$i29, var1681=$i30, var3112=$z0, var2113=$s32, var2699=$i25, var1707=$i26, var2008=$z1, var650=$s33, var1325=$i19, var2401=$i20, var2589=$r4, var3932=$i1, var2629=$i21, var2144=$i22, var1265=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1289=$r5, var3173=$i2, var1850=$i23, var798=$i24, var3564=$r6, var2617=$i34, var1755=$i17, var3356=$i18, var574=$r8, var2851=$r9, var2994=$i35, var3970=$i15, var3182=$i16, var2949=$r10, var246=$r11, var641=$i36, var1152=$i13, var3264=$i14, var2998=$z2, var272=$s37, var2757=$i6, var999=$i7, var2415=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3688=$r12, var3152=$i3, var3703=$i8, var307=$i9, var2173=$r13, var3541=$i4, var2396=$i10, var364=$i11, var286=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var467=$r14, var417=$i5, var1615=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var864, r0=var2882, $r1=var1685, null_type=var2364, $i31=var268, $i27=var1948, $i28=var3361, $r3=var782, $i0=var1237, $i29=var2543, $i30=var1681, $z0=var3112, $s32=var2113, $i25=var2699, $i26=var1707, $z1=var2008, $s33=var650, $i19=var1325, $i20=var2401, $r4=var2589, $i1=var3932, $i21=var2629, $i22=var2144, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1265, $r5=var1289, $i2=var3173, $i23=var1850, $i24=var798, $r6=var3564, $i34=var2617, $i17=var1755, $i18=var3356, $r8=var574, $r9=var2851, $i35=var2994, $i15=var3970, $i16=var3182, $r10=var2949, $r11=var246, $i36=var641, $i13=var1152, $i14=var3264, $z2=var2998, $s37=var272, $i6=var2757, $i7=var999, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2415, $r12=var3688, $i3=var3152, $i8=var3703, $i9=var307, $r13=var2173, $i4=var3541, $i10=var2396, $i11=var364, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var286, $r14=var467, $i5=var417, $i12=var1615}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15