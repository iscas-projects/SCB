(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3151 0)
(declare-sort var1963 0)
(declare-sort var332 0)
(declare-sort var1771 0)
(declare-sort var1344 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3151) String)
(declare-fun getKey/1126038692 (var3151) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3151) Bool)
(declare-fun isExternal/1126038692 (var3151) Bool)
(declare-fun getId/1126038692 (var3151) String)
(declare-fun getParts/1126038692 (var3151) var332)
(declare-fun hashCode/1337417431 (var332) Int)
(declare-fun getAlternateId/1126038692 (var3151) String)
(declare-fun getDesc/1126038692 (var3151) String)
(declare-fun getMeaning/1126038692 (var3151) String)
(declare-fun isHidden/1126038692 (var3151) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3151) var1771)
(declare-fun hashCode/-1247371579 (var1771) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3151) var1771)
(declare-fun jsPlaceholderNames/1126038692 (var3151) var1344)
(declare-fun hashCode/1818408063 (var1344) Int)
(declare-const null-var3151 var3151)
(declare-const null-String String)
(declare-const var3838 var3151) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3838 null-var3151)))
(define-const var3584 String (getSourceName/1126038692 var3838)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var3584 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2988 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var3825 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2988)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1881 Int (* var3825 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3708 String (getKey/1126038692 var3838)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1345 Int (hashCode/-467973558 var3708)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2321 Int (bv2nat (bvxor ((_ int2bv 64) var1881) ((_ int2bv 64) var1345)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var655 Int (* var2321 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1090 Bool (isAnonymous/1126038692 var3838)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1090 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2296 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var2419 Int (bv2nat (bvxor ((_ int2bv 64) var655) ((_ int2bv 64) var2296)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2166 Int (* var2419 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2225 Bool (isExternal/1126038692 var3838)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2225 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3822 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var1165 Int (bv2nat (bvxor ((_ int2bv 64) var2166) ((_ int2bv 64) var3822)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var355 Int (* var1165 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2157 String (getId/1126038692 var3838)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3658 Int (hashCode/-467973558 var2157)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var859 Int (bv2nat (bvxor ((_ int2bv 64) var355) ((_ int2bv 64) var3658)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var804 Int (* var859 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2075 var332 (getParts/1126038692 var3838)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2254 Int (hashCode/1337417431 var2075)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2146 Int (bv2nat (bvxor ((_ int2bv 64) var804) ((_ int2bv 64) var2254)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var437 Int (* var2146 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3388 String (getAlternateId/1126038692 var3838)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var3388 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1209 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2520 Int (bv2nat (bvxor ((_ int2bv 64) var437) ((_ int2bv 64) var1209)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3330 Int (* var2520 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2413 String (getDesc/1126038692 var3838)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2413 null-String))) ; Cond: $r8 != null 
(define-const var2747 String (getDesc/1126038692 var3838)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var1216 Int (hashCode/-467973558 var2747)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var713 Int (bv2nat (bvxor ((_ int2bv 64) var3330) ((_ int2bv 64) var1216)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3677 Int (* var713 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var884 String (getMeaning/1126038692 var3838)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var884 null-String))) ; Cond: $r10 != null 
(define-const var3242 String (getMeaning/1126038692 var3838)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var2220 Int (hashCode/-467973558 var3242)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3868 Int (bv2nat (bvxor ((_ int2bv 64) var3677) ((_ int2bv 64) var2220)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1244 Int (* var3868 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3332 Bool (isHidden/1126038692 var3838)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var3332 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1760 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var3816 Int (bv2nat (bvxor ((_ int2bv 64) var1244) ((_ int2bv 64) var1760)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2160 Int (* var3816 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2234 var1771 (getPlaceholderNameToExampleMap/1126038692 var3838)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1273 Int (hashCode/-1247371579 var2234)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2832 Int (bv2nat (bvxor ((_ int2bv 64) var2160) ((_ int2bv 64) var1273)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3424 Int (* var2832 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3173 var1771 (getPlaceholderNameToOriginalCodeMap/1126038692 var3838)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1778 Int (hashCode/-1247371579 var3173)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2073 Int (bv2nat (bvxor ((_ int2bv 64) var3424) ((_ int2bv 64) var1778)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1499 Int (* var2073 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var137 var1344 (jsPlaceholderNames/1126038692 var3838)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var278 Int (hashCode/1818408063 var137)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var788 Int (bv2nat (bvxor ((_ int2bv 64) var1499) ((_ int2bv 64) var278)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3151=com.google.javascript.jscomp.AutoValue_JsMessage, var3838=r0, var3584=$r1, var1963=null_type, var2988=$i31, var3825=$i27, var1881=$i28, var3708=$r3, var1345=$i0, var2321=$i29, var655=$i30, var1090=$z0, var2296=$s32, var2419=$i25, var2166=$i26, var2225=$z1, var3822=$s33, var1165=$i19, var355=$i20, var2157=$r4, var3658=$i1, var859=$i21, var804=$i22, var332=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2075=$r5, var2254=$i2, var2146=$i23, var437=$i24, var3388=$r6, var1209=$i34, var2520=$i17, var3330=$i18, var2413=$r8, var2747=$r9, var1216=$i35, var713=$i15, var3677=$i16, var884=$r10, var3242=$r11, var2220=$i36, var3868=$i13, var1244=$i14, var3332=$z2, var1760=$s37, var3816=$i6, var2160=$i7, var1771=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2234=$r12, var1273=$i3, var2832=$i8, var3424=$i9, var3173=$r13, var1778=$i4, var2073=$i10, var1499=$i11, var1344=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var137=$r14, var278=$i5, var788=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3151, r0=var3838, $r1=var3584, null_type=var1963, $i31=var2988, $i27=var3825, $i28=var1881, $r3=var3708, $i0=var1345, $i29=var2321, $i30=var655, $z0=var1090, $s32=var2296, $i25=var2419, $i26=var2166, $z1=var2225, $s33=var3822, $i19=var1165, $i20=var355, $r4=var2157, $i1=var3658, $i21=var859, $i22=var804, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var332, $r5=var2075, $i2=var2254, $i23=var2146, $i24=var437, $r6=var3388, $i34=var1209, $i17=var2520, $i18=var3330, $r8=var2413, $r9=var2747, $i35=var1216, $i15=var713, $i16=var3677, $r10=var884, $r11=var3242, $i36=var2220, $i13=var3868, $i14=var1244, $z2=var3332, $s37=var1760, $i6=var3816, $i7=var2160, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1771, $r12=var2234, $i3=var1273, $i8=var2832, $i9=var3424, $r13=var3173, $i4=var1778, $i10=var2073, $i11=var1499, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1344, $r14=var137, $i5=var278, $i12=var788}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15