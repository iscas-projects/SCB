(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3243 0)
(declare-sort var3254 0)
(declare-sort var511 0)
(declare-sort var3300 0)
(declare-sort var3748 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3243) String)
(declare-fun getKey/1126038692 (var3243) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3243) Bool)
(declare-fun isExternal/1126038692 (var3243) Bool)
(declare-fun getId/1126038692 (var3243) String)
(declare-fun getParts/1126038692 (var3243) var511)
(declare-fun hashCode/1337417431 (var511) Int)
(declare-fun getAlternateId/1126038692 (var3243) String)
(declare-fun getDesc/1126038692 (var3243) String)
(declare-fun getMeaning/1126038692 (var3243) String)
(declare-fun isHidden/1126038692 (var3243) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3243) var3300)
(declare-fun hashCode/-1247371579 (var3300) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3243) var3300)
(declare-fun jsPlaceholderNames/1126038692 (var3243) var3748)
(declare-fun hashCode/1818408063 (var3748) Int)
(declare-const null-var3243 var3243)
(declare-const null-String String)
(declare-const var901 var3243) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var901 null-var3243)))
(define-const var1602 String (getSourceName/1126038692 var901)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1602 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var3252 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2377 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3252)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var881 Int (* var2377 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var457 String (getKey/1126038692 var901)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1203 Int (hashCode/-467973558 var457)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1433 Int (bv2nat (bvxor ((_ int2bv 64) var881) ((_ int2bv 64) var1203)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3915 Int (* var1433 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1819 Bool (isAnonymous/1126038692 var901)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1819 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1535 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var645 Int (bv2nat (bvxor ((_ int2bv 64) var3915) ((_ int2bv 64) var1535)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2683 Int (* var645 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var966 Bool (isExternal/1126038692 var901)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var966 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1011 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3514 Int (bv2nat (bvxor ((_ int2bv 64) var2683) ((_ int2bv 64) var1011)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2019 Int (* var3514 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1137 String (getId/1126038692 var901)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var727 Int (hashCode/-467973558 var1137)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3686 Int (bv2nat (bvxor ((_ int2bv 64) var2019) ((_ int2bv 64) var727)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2473 Int (* var3686 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2420 var511 (getParts/1126038692 var901)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var809 Int (hashCode/1337417431 var2420)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1741 Int (bv2nat (bvxor ((_ int2bv 64) var2473) ((_ int2bv 64) var809)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var377 Int (* var1741 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2352 String (getAlternateId/1126038692 var901)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var2352 null-String))) ; Cond: $r6 != null 
(define-const var84 String (getAlternateId/1126038692 var901)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1743 Int (hashCode/-467973558 var84)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2401 Int (bv2nat (bvxor ((_ int2bv 64) var377) ((_ int2bv 64) var1743)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var516 Int (* var2401 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var947 String (getDesc/1126038692 var901)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var947 null-String))) ; Cond: $r8 != null 
(define-const var2996 String (getDesc/1126038692 var901)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2094 Int (hashCode/-467973558 var2996)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var443 Int (bv2nat (bvxor ((_ int2bv 64) var516) ((_ int2bv 64) var2094)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2769 Int (* var443 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2703 String (getMeaning/1126038692 var901)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var2703 null-String))) ; Cond: $r10 != null 
(define-const var1610 String (getMeaning/1126038692 var901)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var56 Int (hashCode/-467973558 var1610)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var366 Int (bv2nat (bvxor ((_ int2bv 64) var2769) ((_ int2bv 64) var56)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2822 Int (* var366 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2250 Bool (isHidden/1126038692 var901)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var2250 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2393 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var3352 Int (bv2nat (bvxor ((_ int2bv 64) var2822) ((_ int2bv 64) var2393)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var381 Int (* var3352 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3163 var3300 (getPlaceholderNameToExampleMap/1126038692 var901)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2422 Int (hashCode/-1247371579 var3163)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1016 Int (bv2nat (bvxor ((_ int2bv 64) var381) ((_ int2bv 64) var2422)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2313 Int (* var1016 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var90 var3300 (getPlaceholderNameToOriginalCodeMap/1126038692 var901)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3102 Int (hashCode/-1247371579 var90)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var417 Int (bv2nat (bvxor ((_ int2bv 64) var2313) ((_ int2bv 64) var3102)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1330 Int (* var417 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2661 var3748 (jsPlaceholderNames/1126038692 var901)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3856 Int (hashCode/1818408063 var2661)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1026 Int (bv2nat (bvxor ((_ int2bv 64) var1330) ((_ int2bv 64) var3856)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3243=com.google.javascript.jscomp.AutoValue_JsMessage, var901=r0, var1602=$r1, var3254=null_type, var3252=$i31, var2377=$i27, var881=$i28, var457=$r3, var1203=$i0, var1433=$i29, var3915=$i30, var1819=$z0, var1535=$s32, var645=$i25, var2683=$i26, var966=$z1, var1011=$s33, var3514=$i19, var2019=$i20, var1137=$r4, var727=$i1, var3686=$i21, var2473=$i22, var511=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2420=$r5, var809=$i2, var1741=$i23, var377=$i24, var2352=$r6, var84=$r7, var1743=$i34, var2401=$i17, var516=$i18, var947=$r8, var2996=$r9, var2094=$i35, var443=$i15, var2769=$i16, var2703=$r10, var1610=$r11, var56=$i36, var366=$i13, var2822=$i14, var2250=$z2, var2393=$s37, var3352=$i6, var381=$i7, var3300=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3163=$r12, var2422=$i3, var1016=$i8, var2313=$i9, var90=$r13, var3102=$i4, var417=$i10, var1330=$i11, var3748=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2661=$r14, var3856=$i5, var1026=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3243, r0=var901, $r1=var1602, null_type=var3254, $i31=var3252, $i27=var2377, $i28=var881, $r3=var457, $i0=var1203, $i29=var1433, $i30=var3915, $z0=var1819, $s32=var1535, $i25=var645, $i26=var2683, $z1=var966, $s33=var1011, $i19=var3514, $i20=var2019, $r4=var1137, $i1=var727, $i21=var3686, $i22=var2473, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var511, $r5=var2420, $i2=var809, $i23=var1741, $i24=var377, $r6=var2352, $r7=var84, $i34=var1743, $i17=var2401, $i18=var516, $r8=var947, $r9=var2996, $i35=var2094, $i15=var443, $i16=var2769, $r10=var2703, $r11=var1610, $i36=var56, $i13=var366, $i14=var2822, $z2=var2250, $s37=var2393, $i6=var3352, $i7=var381, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3300, $r12=var3163, $i3=var2422, $i8=var1016, $i9=var2313, $r13=var90, $i4=var3102, $i10=var417, $i11=var1330, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3748, $r14=var2661, $i5=var3856, $i12=var1026}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15