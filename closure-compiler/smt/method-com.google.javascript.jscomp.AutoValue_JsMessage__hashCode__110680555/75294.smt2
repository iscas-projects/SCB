(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1766 0)
(declare-sort var1647 0)
(declare-sort var3279 0)
(declare-sort var1545 0)
(declare-sort var2800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1766) String)
(declare-fun getKey/1126038692 (var1766) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1766) Bool)
(declare-fun isExternal/1126038692 (var1766) Bool)
(declare-fun getId/1126038692 (var1766) String)
(declare-fun getParts/1126038692 (var1766) var3279)
(declare-fun hashCode/1337417431 (var3279) Int)
(declare-fun getAlternateId/1126038692 (var1766) String)
(declare-fun getDesc/1126038692 (var1766) String)
(declare-fun getMeaning/1126038692 (var1766) String)
(declare-fun isHidden/1126038692 (var1766) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1766) var1545)
(declare-fun hashCode/-1247371579 (var1545) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1766) var1545)
(declare-fun jsPlaceholderNames/1126038692 (var1766) var2800)
(declare-fun hashCode/1818408063 (var2800) Int)
(declare-const null-var1766 var1766)
(declare-const null-String String)
(declare-const var3179 var1766) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3179 null-var1766)))
(define-const var104 String (getSourceName/1126038692 var3179)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var104 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var354 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2566 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var354)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3711 Int (* var2566 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2031 String (getKey/1126038692 var3179)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var102 Int (hashCode/-467973558 var2031)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1321 Int (bv2nat (bvxor ((_ int2bv 64) var3711) ((_ int2bv 64) var102)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1755 Int (* var1321 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3568 Bool (isAnonymous/1126038692 var3179)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var3568 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2205 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var964 Int (bv2nat (bvxor ((_ int2bv 64) var1755) ((_ int2bv 64) var2205)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3746 Int (* var964 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1103 Bool (isExternal/1126038692 var3179)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1103 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3671 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var280 Int (bv2nat (bvxor ((_ int2bv 64) var3746) ((_ int2bv 64) var3671)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3294 Int (* var280 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2936 String (getId/1126038692 var3179)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1427 Int (hashCode/-467973558 var2936)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3582 Int (bv2nat (bvxor ((_ int2bv 64) var3294) ((_ int2bv 64) var1427)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1797 Int (* var3582 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1536 var3279 (getParts/1126038692 var3179)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var24 Int (hashCode/1337417431 var1536)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1725 Int (bv2nat (bvxor ((_ int2bv 64) var1797) ((_ int2bv 64) var24)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1094 Int (* var1725 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var786 String (getAlternateId/1126038692 var3179)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var786 null-String))) ; Cond: $r6 != null 
(define-const var3554 String (getAlternateId/1126038692 var3179)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3726 Int (hashCode/-467973558 var3554)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3785 Int (bv2nat (bvxor ((_ int2bv 64) var1094) ((_ int2bv 64) var3726)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var883 Int (* var3785 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3202 String (getDesc/1126038692 var3179)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var3202 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var1317 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3462 Int (bv2nat (bvxor ((_ int2bv 64) var883) ((_ int2bv 64) var1317)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2550 Int (* var3462 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var672 String (getMeaning/1126038692 var3179)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var672 null-String))) ; Cond: $r10 != null 
(define-const var3765 String (getMeaning/1126038692 var3179)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var92 Int (hashCode/-467973558 var3765)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2559 Int (bv2nat (bvxor ((_ int2bv 64) var2550) ((_ int2bv 64) var92)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3975 Int (* var2559 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2707 Bool (isHidden/1126038692 var3179)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2707 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var303 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var48 Int (bv2nat (bvxor ((_ int2bv 64) var3975) ((_ int2bv 64) var303)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1661 Int (* var48 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3096 var1545 (getPlaceholderNameToExampleMap/1126038692 var3179)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1558 Int (hashCode/-1247371579 var3096)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1006 Int (bv2nat (bvxor ((_ int2bv 64) var1661) ((_ int2bv 64) var1558)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3385 Int (* var1006 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var796 var1545 (getPlaceholderNameToOriginalCodeMap/1126038692 var3179)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3549 Int (hashCode/-1247371579 var796)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2058 Int (bv2nat (bvxor ((_ int2bv 64) var3385) ((_ int2bv 64) var3549)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var51 Int (* var2058 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3606 var2800 (jsPlaceholderNames/1126038692 var3179)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2289 Int (hashCode/1818408063 var3606)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1672 Int (bv2nat (bvxor ((_ int2bv 64) var51) ((_ int2bv 64) var2289)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1766=com.google.javascript.jscomp.AutoValue_JsMessage, var3179=r0, var104=$r1, var1647=null_type, var354=$i31, var2566=$i27, var3711=$i28, var2031=$r3, var102=$i0, var1321=$i29, var1755=$i30, var3568=$z0, var2205=$s32, var964=$i25, var3746=$i26, var1103=$z1, var3671=$s33, var280=$i19, var3294=$i20, var2936=$r4, var1427=$i1, var3582=$i21, var1797=$i22, var3279=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1536=$r5, var24=$i2, var1725=$i23, var1094=$i24, var786=$r6, var3554=$r7, var3726=$i34, var3785=$i17, var883=$i18, var3202=$r8, var1317=$i35, var3462=$i15, var2550=$i16, var672=$r10, var3765=$r11, var92=$i36, var2559=$i13, var3975=$i14, var2707=$z2, var303=$s37, var48=$i6, var1661=$i7, var1545=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3096=$r12, var1558=$i3, var1006=$i8, var3385=$i9, var796=$r13, var3549=$i4, var2058=$i10, var51=$i11, var2800=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3606=$r14, var2289=$i5, var1672=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1766, r0=var3179, $r1=var104, null_type=var1647, $i31=var354, $i27=var2566, $i28=var3711, $r3=var2031, $i0=var102, $i29=var1321, $i30=var1755, $z0=var3568, $s32=var2205, $i25=var964, $i26=var3746, $z1=var1103, $s33=var3671, $i19=var280, $i20=var3294, $r4=var2936, $i1=var1427, $i21=var3582, $i22=var1797, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3279, $r5=var1536, $i2=var24, $i23=var1725, $i24=var1094, $r6=var786, $r7=var3554, $i34=var3726, $i17=var3785, $i18=var883, $r8=var3202, $i35=var1317, $i15=var3462, $i16=var2550, $r10=var672, $r11=var3765, $i36=var92, $i13=var2559, $i14=var3975, $z2=var2707, $s37=var303, $i6=var48, $i7=var1661, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1545, $r12=var3096, $i3=var1558, $i8=var1006, $i9=var3385, $r13=var796, $i4=var3549, $i10=var2058, $i11=var51, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2800, $r14=var3606, $i5=var2289, $i12=var1672}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15