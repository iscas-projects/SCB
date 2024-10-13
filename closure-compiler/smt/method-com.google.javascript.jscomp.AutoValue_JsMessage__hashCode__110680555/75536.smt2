(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2077 0)
(declare-sort var2987 0)
(declare-sort var3319 0)
(declare-sort var170 0)
(declare-sort var1845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2077) String)
(declare-fun getKey/1126038692 (var2077) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var2077) Bool)
(declare-fun isExternal/1126038692 (var2077) Bool)
(declare-fun getId/1126038692 (var2077) String)
(declare-fun getParts/1126038692 (var2077) var3319)
(declare-fun hashCode/1337417431 (var3319) Int)
(declare-fun getAlternateId/1126038692 (var2077) String)
(declare-fun getDesc/1126038692 (var2077) String)
(declare-fun getMeaning/1126038692 (var2077) String)
(declare-fun isHidden/1126038692 (var2077) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2077) var170)
(declare-fun hashCode/-1247371579 (var170) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2077) var170)
(declare-fun jsPlaceholderNames/1126038692 (var2077) var1845)
(declare-fun hashCode/1818408063 (var1845) Int)
(declare-const null-var2077 var2077)
(declare-const null-String String)
(declare-const var124 var2077) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var124 null-var2077)))
(define-const var319 String (getSourceName/1126038692 var124)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var319 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1649 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2955 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1649)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2274 Int (* var2955 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3584 String (getKey/1126038692 var124)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var21 Int (hashCode/-467973558 var3584)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var607 Int (bv2nat (bvxor ((_ int2bv 64) var2274) ((_ int2bv 64) var21)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2909 Int (* var607 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2950 Bool (isAnonymous/1126038692 var124)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2950 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3279 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var132 Int (bv2nat (bvxor ((_ int2bv 64) var2909) ((_ int2bv 64) var3279)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var332 Int (* var132 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2911 Bool (isExternal/1126038692 var124)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2911 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2595 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var352 Int (bv2nat (bvxor ((_ int2bv 64) var332) ((_ int2bv 64) var2595)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2396 Int (* var352 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1833 String (getId/1126038692 var124)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3095 Int (hashCode/-467973558 var1833)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1261 Int (bv2nat (bvxor ((_ int2bv 64) var2396) ((_ int2bv 64) var3095)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2787 Int (* var1261 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var851 var3319 (getParts/1126038692 var124)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var350 Int (hashCode/1337417431 var851)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1368 Int (bv2nat (bvxor ((_ int2bv 64) var2787) ((_ int2bv 64) var350)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2147 Int (* var1368 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2589 String (getAlternateId/1126038692 var124)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var2589 null-String))) ; Cond: $r6 != null 
(define-const var1895 String (getAlternateId/1126038692 var124)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var758 Int (hashCode/-467973558 var1895)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var667 Int (bv2nat (bvxor ((_ int2bv 64) var2147) ((_ int2bv 64) var758)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3236 Int (* var667 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2663 String (getDesc/1126038692 var124)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2663 null-String))) ; Cond: $r8 != null 
(define-const var3735 String (getDesc/1126038692 var124)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var942 Int (hashCode/-467973558 var3735)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2150 Int (bv2nat (bvxor ((_ int2bv 64) var3236) ((_ int2bv 64) var942)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1152 Int (* var2150 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3804 String (getMeaning/1126038692 var124)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3804 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2064 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var1669 Int (bv2nat (bvxor ((_ int2bv 64) var1152) ((_ int2bv 64) var2064)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3155 Int (* var1669 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var178 Bool (isHidden/1126038692 var124)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var178 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3585 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var2377 Int (bv2nat (bvxor ((_ int2bv 64) var3155) ((_ int2bv 64) var3585)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2567 Int (* var2377 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var305 var170 (getPlaceholderNameToExampleMap/1126038692 var124)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2832 Int (hashCode/-1247371579 var305)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2812 Int (bv2nat (bvxor ((_ int2bv 64) var2567) ((_ int2bv 64) var2832)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2637 Int (* var2812 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3305 var170 (getPlaceholderNameToOriginalCodeMap/1126038692 var124)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var84 Int (hashCode/-1247371579 var3305)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2421 Int (bv2nat (bvxor ((_ int2bv 64) var2637) ((_ int2bv 64) var84)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1169 Int (* var2421 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var966 var1845 (jsPlaceholderNames/1126038692 var124)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3133 Int (hashCode/1818408063 var966)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1174 Int (bv2nat (bvxor ((_ int2bv 64) var1169) ((_ int2bv 64) var3133)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2077=com.google.javascript.jscomp.AutoValue_JsMessage, var124=r0, var319=$r1, var2987=null_type, var1649=$i31, var2955=$i27, var2274=$i28, var3584=$r3, var21=$i0, var607=$i29, var2909=$i30, var2950=$z0, var3279=$s32, var132=$i25, var332=$i26, var2911=$z1, var2595=$s33, var352=$i19, var2396=$i20, var1833=$r4, var3095=$i1, var1261=$i21, var2787=$i22, var3319=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var851=$r5, var350=$i2, var1368=$i23, var2147=$i24, var2589=$r6, var1895=$r7, var758=$i34, var667=$i17, var3236=$i18, var2663=$r8, var3735=$r9, var942=$i35, var2150=$i15, var1152=$i16, var3804=$r10, var2064=$i36, var1669=$i13, var3155=$i14, var178=$z2, var3585=$s37, var2377=$i6, var2567=$i7, var170=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var305=$r12, var2832=$i3, var2812=$i8, var2637=$i9, var3305=$r13, var84=$i4, var2421=$i10, var1169=$i11, var1845=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var966=$r14, var3133=$i5, var1174=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2077, r0=var124, $r1=var319, null_type=var2987, $i31=var1649, $i27=var2955, $i28=var2274, $r3=var3584, $i0=var21, $i29=var607, $i30=var2909, $z0=var2950, $s32=var3279, $i25=var132, $i26=var332, $z1=var2911, $s33=var2595, $i19=var352, $i20=var2396, $r4=var1833, $i1=var3095, $i21=var1261, $i22=var2787, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3319, $r5=var851, $i2=var350, $i23=var1368, $i24=var2147, $r6=var2589, $r7=var1895, $i34=var758, $i17=var667, $i18=var3236, $r8=var2663, $r9=var3735, $i35=var942, $i15=var2150, $i16=var1152, $r10=var3804, $i36=var2064, $i13=var1669, $i14=var3155, $z2=var178, $s37=var3585, $i6=var2377, $i7=var2567, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var170, $r12=var305, $i3=var2832, $i8=var2812, $i9=var2637, $r13=var3305, $i4=var84, $i10=var2421, $i11=var1169, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1845, $r14=var966, $i5=var3133, $i12=var1174}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15