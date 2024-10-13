(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3355 0)
(declare-sort var1264 0)
(declare-sort var2196 0)
(declare-sort var1437 0)
(declare-sort var1011 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3355) String)
(declare-fun getKey/1126038692 (var3355) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3355) Bool)
(declare-fun isExternal/1126038692 (var3355) Bool)
(declare-fun getId/1126038692 (var3355) String)
(declare-fun getParts/1126038692 (var3355) var2196)
(declare-fun hashCode/1337417431 (var2196) Int)
(declare-fun getAlternateId/1126038692 (var3355) String)
(declare-fun getDesc/1126038692 (var3355) String)
(declare-fun getMeaning/1126038692 (var3355) String)
(declare-fun isHidden/1126038692 (var3355) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3355) var1437)
(declare-fun hashCode/-1247371579 (var1437) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3355) var1437)
(declare-fun jsPlaceholderNames/1126038692 (var3355) var1011)
(declare-fun hashCode/1818408063 (var1011) Int)
(declare-const null-var3355 var3355)
(declare-const null-String String)
(declare-const var235 var3355) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var235 null-var3355)))
(define-const var2709 String (getSourceName/1126038692 var235)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var2709 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2429 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2898 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2429)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2202 Int (* var2898 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var995 String (getKey/1126038692 var235)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1087 Int (hashCode/-467973558 var995)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1408 Int (bv2nat (bvxor ((_ int2bv 64) var2202) ((_ int2bv 64) var1087)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2402 Int (* var1408 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3331 Bool (isAnonymous/1126038692 var235)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var3331 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3539 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3024 Int (bv2nat (bvxor ((_ int2bv 64) var2402) ((_ int2bv 64) var3539)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3346 Int (* var3024 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2314 Bool (isExternal/1126038692 var235)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2314 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3015 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var1777 Int (bv2nat (bvxor ((_ int2bv 64) var3346) ((_ int2bv 64) var3015)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3301 Int (* var1777 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var409 String (getId/1126038692 var235)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3554 Int (hashCode/-467973558 var409)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2815 Int (bv2nat (bvxor ((_ int2bv 64) var3301) ((_ int2bv 64) var3554)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var197 Int (* var2815 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var201 var2196 (getParts/1126038692 var235)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2817 Int (hashCode/1337417431 var201)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var659 Int (bv2nat (bvxor ((_ int2bv 64) var197) ((_ int2bv 64) var2817)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3067 Int (* var659 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3150 String (getAlternateId/1126038692 var235)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var3150 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var789 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var1149 Int (bv2nat (bvxor ((_ int2bv 64) var3067) ((_ int2bv 64) var789)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3418 Int (* var1149 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var893 String (getDesc/1126038692 var235)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var893 null-String))) ; Cond: $r8 != null 
(define-const var740 String (getDesc/1126038692 var235)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2863 Int (hashCode/-467973558 var740)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var119 Int (bv2nat (bvxor ((_ int2bv 64) var3418) ((_ int2bv 64) var2863)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3110 Int (* var119 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var57 String (getMeaning/1126038692 var235)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var57 null-String))) ; Cond: $r10 != null 
(define-const var1247 String (getMeaning/1126038692 var235)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var3409 Int (hashCode/-467973558 var1247)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1817 Int (bv2nat (bvxor ((_ int2bv 64) var3110) ((_ int2bv 64) var3409)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2850 Int (* var1817 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var310 Bool (isHidden/1126038692 var235)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var310 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2870 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var3182 Int (bv2nat (bvxor ((_ int2bv 64) var2850) ((_ int2bv 64) var2870)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var78 Int (* var3182 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var766 var1437 (getPlaceholderNameToExampleMap/1126038692 var235)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var486 Int (hashCode/-1247371579 var766)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1989 Int (bv2nat (bvxor ((_ int2bv 64) var78) ((_ int2bv 64) var486)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1961 Int (* var1989 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var770 var1437 (getPlaceholderNameToOriginalCodeMap/1126038692 var235)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var833 Int (hashCode/-1247371579 var770)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1200 Int (bv2nat (bvxor ((_ int2bv 64) var1961) ((_ int2bv 64) var833)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2490 Int (* var1200 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var529 var1011 (jsPlaceholderNames/1126038692 var235)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2700 Int (hashCode/1818408063 var529)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3839 Int (bv2nat (bvxor ((_ int2bv 64) var2490) ((_ int2bv 64) var2700)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3355=com.google.javascript.jscomp.AutoValue_JsMessage, var235=r0, var2709=$r1, var1264=null_type, var2429=$i31, var2898=$i27, var2202=$i28, var995=$r3, var1087=$i0, var1408=$i29, var2402=$i30, var3331=$z0, var3539=$s32, var3024=$i25, var3346=$i26, var2314=$z1, var3015=$s33, var1777=$i19, var3301=$i20, var409=$r4, var3554=$i1, var2815=$i21, var197=$i22, var2196=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var201=$r5, var2817=$i2, var659=$i23, var3067=$i24, var3150=$r6, var789=$i34, var1149=$i17, var3418=$i18, var893=$r8, var740=$r9, var2863=$i35, var119=$i15, var3110=$i16, var57=$r10, var1247=$r11, var3409=$i36, var1817=$i13, var2850=$i14, var310=$z2, var2870=$s37, var3182=$i6, var78=$i7, var1437=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var766=$r12, var486=$i3, var1989=$i8, var1961=$i9, var770=$r13, var833=$i4, var1200=$i10, var2490=$i11, var1011=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var529=$r14, var2700=$i5, var3839=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3355, r0=var235, $r1=var2709, null_type=var1264, $i31=var2429, $i27=var2898, $i28=var2202, $r3=var995, $i0=var1087, $i29=var1408, $i30=var2402, $z0=var3331, $s32=var3539, $i25=var3024, $i26=var3346, $z1=var2314, $s33=var3015, $i19=var1777, $i20=var3301, $r4=var409, $i1=var3554, $i21=var2815, $i22=var197, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2196, $r5=var201, $i2=var2817, $i23=var659, $i24=var3067, $r6=var3150, $i34=var789, $i17=var1149, $i18=var3418, $r8=var893, $r9=var740, $i35=var2863, $i15=var119, $i16=var3110, $r10=var57, $r11=var1247, $i36=var3409, $i13=var1817, $i14=var2850, $z2=var310, $s37=var2870, $i6=var3182, $i7=var78, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1437, $r12=var766, $i3=var486, $i8=var1989, $i9=var1961, $r13=var770, $i4=var833, $i10=var1200, $i11=var2490, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1011, $r14=var529, $i5=var2700, $i12=var3839}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15