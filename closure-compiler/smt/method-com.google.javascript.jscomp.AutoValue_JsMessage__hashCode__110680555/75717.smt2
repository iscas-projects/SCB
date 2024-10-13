(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2712 0)
(declare-sort var371 0)
(declare-sort var375 0)
(declare-sort var3013 0)
(declare-sort var3675 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2712) String)
(declare-fun getKey/1126038692 (var2712) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var2712) Bool)
(declare-fun isExternal/1126038692 (var2712) Bool)
(declare-fun getId/1126038692 (var2712) String)
(declare-fun getParts/1126038692 (var2712) var375)
(declare-fun hashCode/1337417431 (var375) Int)
(declare-fun getAlternateId/1126038692 (var2712) String)
(declare-fun getDesc/1126038692 (var2712) String)
(declare-fun getMeaning/1126038692 (var2712) String)
(declare-fun isHidden/1126038692 (var2712) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2712) var3013)
(declare-fun hashCode/-1247371579 (var3013) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2712) var3013)
(declare-fun jsPlaceholderNames/1126038692 (var2712) var3675)
(declare-fun hashCode/1818408063 (var3675) Int)
(declare-const null-var2712 var2712)
(declare-const null-String String)
(declare-const var2864 var2712) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2864 null-var2712)))
(define-const var1966 String (getSourceName/1126038692 var2864)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1966 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var3041 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var3234 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3041)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var598 Int (* var3234 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1591 String (getKey/1126038692 var2864)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3317 Int (hashCode/-467973558 var1591)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var645 Int (bv2nat (bvxor ((_ int2bv 64) var598) ((_ int2bv 64) var3317)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2422 Int (* var645 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3625 Bool (isAnonymous/1126038692 var2864)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var3625 1 0) 0)) ; Cond: $z0 == 0 
(define-const var14 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var291 Int (bv2nat (bvxor ((_ int2bv 64) var2422) ((_ int2bv 64) var14)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1970 Int (* var291 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var694 Bool (isExternal/1126038692 var2864)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var694 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var343 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3002 Int (bv2nat (bvxor ((_ int2bv 64) var1970) ((_ int2bv 64) var343)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1671 Int (* var3002 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1466 String (getId/1126038692 var2864)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1259 Int (hashCode/-467973558 var1466)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1725 Int (bv2nat (bvxor ((_ int2bv 64) var1671) ((_ int2bv 64) var1259)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3562 Int (* var1725 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1255 var375 (getParts/1126038692 var2864)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3702 Int (hashCode/1337417431 var1255)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3695 Int (bv2nat (bvxor ((_ int2bv 64) var3562) ((_ int2bv 64) var3702)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1816 Int (* var3695 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var530 String (getAlternateId/1126038692 var2864)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var530 null-String))) ; Cond: $r6 != null 
(define-const var2691 String (getAlternateId/1126038692 var2864)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var400 Int (hashCode/-467973558 var2691)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3154 Int (bv2nat (bvxor ((_ int2bv 64) var1816) ((_ int2bv 64) var400)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var551 Int (* var3154 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2319 String (getDesc/1126038692 var2864)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2319 null-String))) ; Cond: $r8 != null 
(define-const var23 String (getDesc/1126038692 var2864)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var483 Int (hashCode/-467973558 var23)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var592 Int (bv2nat (bvxor ((_ int2bv 64) var551) ((_ int2bv 64) var483)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1293 Int (* var592 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2556 String (getMeaning/1126038692 var2864)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2556 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var1631 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2621 Int (bv2nat (bvxor ((_ int2bv 64) var1293) ((_ int2bv 64) var1631)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2187 Int (* var2621 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var250 Bool (isHidden/1126038692 var2864)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var250 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3760 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var1761 Int (bv2nat (bvxor ((_ int2bv 64) var2187) ((_ int2bv 64) var3760)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var980 Int (* var1761 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1066 var3013 (getPlaceholderNameToExampleMap/1126038692 var2864)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2677 Int (hashCode/-1247371579 var1066)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var85 Int (bv2nat (bvxor ((_ int2bv 64) var980) ((_ int2bv 64) var2677)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3866 Int (* var85 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var546 var3013 (getPlaceholderNameToOriginalCodeMap/1126038692 var2864)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1241 Int (hashCode/-1247371579 var546)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3383 Int (bv2nat (bvxor ((_ int2bv 64) var3866) ((_ int2bv 64) var1241)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2896 Int (* var3383 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1692 var3675 (jsPlaceholderNames/1126038692 var2864)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var909 Int (hashCode/1818408063 var1692)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1566 Int (bv2nat (bvxor ((_ int2bv 64) var2896) ((_ int2bv 64) var909)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2712=com.google.javascript.jscomp.AutoValue_JsMessage, var2864=r0, var1966=$r1, var371=null_type, var3041=$i31, var3234=$i27, var598=$i28, var1591=$r3, var3317=$i0, var645=$i29, var2422=$i30, var3625=$z0, var14=$s32, var291=$i25, var1970=$i26, var694=$z1, var343=$s33, var3002=$i19, var1671=$i20, var1466=$r4, var1259=$i1, var1725=$i21, var3562=$i22, var375=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1255=$r5, var3702=$i2, var3695=$i23, var1816=$i24, var530=$r6, var2691=$r7, var400=$i34, var3154=$i17, var551=$i18, var2319=$r8, var23=$r9, var483=$i35, var592=$i15, var1293=$i16, var2556=$r10, var1631=$i36, var2621=$i13, var2187=$i14, var250=$z2, var3760=$s37, var1761=$i6, var980=$i7, var3013=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1066=$r12, var2677=$i3, var85=$i8, var3866=$i9, var546=$r13, var1241=$i4, var3383=$i10, var2896=$i11, var3675=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1692=$r14, var909=$i5, var1566=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2712, r0=var2864, $r1=var1966, null_type=var371, $i31=var3041, $i27=var3234, $i28=var598, $r3=var1591, $i0=var3317, $i29=var645, $i30=var2422, $z0=var3625, $s32=var14, $i25=var291, $i26=var1970, $z1=var694, $s33=var343, $i19=var3002, $i20=var1671, $r4=var1466, $i1=var1259, $i21=var1725, $i22=var3562, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var375, $r5=var1255, $i2=var3702, $i23=var3695, $i24=var1816, $r6=var530, $r7=var2691, $i34=var400, $i17=var3154, $i18=var551, $r8=var2319, $r9=var23, $i35=var483, $i15=var592, $i16=var1293, $r10=var2556, $i36=var1631, $i13=var2621, $i14=var2187, $z2=var250, $s37=var3760, $i6=var1761, $i7=var980, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3013, $r12=var1066, $i3=var2677, $i8=var85, $i9=var3866, $r13=var546, $i4=var1241, $i10=var3383, $i11=var2896, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3675, $r14=var1692, $i5=var909, $i12=var1566}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15