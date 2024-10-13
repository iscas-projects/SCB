(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2650 0)
(declare-sort var771 0)
(declare-sort var714 0)
(declare-sort var1274 0)
(declare-sort var1336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2650) String)
(declare-fun getKey/1126038692 (var2650) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var2650) Bool)
(declare-fun isExternal/1126038692 (var2650) Bool)
(declare-fun getId/1126038692 (var2650) String)
(declare-fun getParts/1126038692 (var2650) var714)
(declare-fun hashCode/1337417431 (var714) Int)
(declare-fun getAlternateId/1126038692 (var2650) String)
(declare-fun getDesc/1126038692 (var2650) String)
(declare-fun getMeaning/1126038692 (var2650) String)
(declare-fun isHidden/1126038692 (var2650) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2650) var1274)
(declare-fun hashCode/-1247371579 (var1274) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2650) var1274)
(declare-fun jsPlaceholderNames/1126038692 (var2650) var1336)
(declare-fun hashCode/1818408063 (var1336) Int)
(declare-const null-var2650 var2650)
(declare-const null-String String)
(declare-const var392 var2650) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var392 null-var2650)))
(define-const var270 String (getSourceName/1126038692 var392)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var270 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var824 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var1174 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var824)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3230 Int (* var1174 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var278 String (getKey/1126038692 var392)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var852 Int (hashCode/-467973558 var278)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var459 Int (bv2nat (bvxor ((_ int2bv 64) var3230) ((_ int2bv 64) var852)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1367 Int (* var459 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3005 Bool (isAnonymous/1126038692 var392)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var3005 1 0) 0)) ; Cond: $z0 == 0 
(define-const var14 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var654 Int (bv2nat (bvxor ((_ int2bv 64) var1367) ((_ int2bv 64) var14)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2228 Int (* var654 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var117 Bool (isExternal/1126038692 var392)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var117 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3856 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var793 Int (bv2nat (bvxor ((_ int2bv 64) var2228) ((_ int2bv 64) var3856)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var273 Int (* var793 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var494 String (getId/1126038692 var392)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1016 Int (hashCode/-467973558 var494)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1602 Int (bv2nat (bvxor ((_ int2bv 64) var273) ((_ int2bv 64) var1016)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var968 Int (* var1602 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1980 var714 (getParts/1126038692 var392)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1526 Int (hashCode/1337417431 var1980)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3090 Int (bv2nat (bvxor ((_ int2bv 64) var968) ((_ int2bv 64) var1526)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2594 Int (* var3090 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2820 String (getAlternateId/1126038692 var392)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2820 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var3929 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2367 Int (bv2nat (bvxor ((_ int2bv 64) var2594) ((_ int2bv 64) var3929)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var293 Int (* var2367 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3586 String (getDesc/1126038692 var392)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var3586 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3011 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var1756 Int (bv2nat (bvxor ((_ int2bv 64) var293) ((_ int2bv 64) var3011)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2333 Int (* var1756 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3860 String (getMeaning/1126038692 var392)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var3860 null-String))) ; Cond: $r10 != null 
(define-const var426 String (getMeaning/1126038692 var392)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var2051 Int (hashCode/-467973558 var426)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2845 Int (bv2nat (bvxor ((_ int2bv 64) var2333) ((_ int2bv 64) var2051)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2131 Int (* var2845 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var937 Bool (isHidden/1126038692 var392)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var937 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2591 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var435 Int (bv2nat (bvxor ((_ int2bv 64) var2131) ((_ int2bv 64) var2591)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3726 Int (* var435 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var823 var1274 (getPlaceholderNameToExampleMap/1126038692 var392)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var835 Int (hashCode/-1247371579 var823)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var323 Int (bv2nat (bvxor ((_ int2bv 64) var3726) ((_ int2bv 64) var835)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var28 Int (* var323 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3454 var1274 (getPlaceholderNameToOriginalCodeMap/1126038692 var392)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1616 Int (hashCode/-1247371579 var3454)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1937 Int (bv2nat (bvxor ((_ int2bv 64) var28) ((_ int2bv 64) var1616)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2205 Int (* var1937 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var491 var1336 (jsPlaceholderNames/1126038692 var392)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1477 Int (hashCode/1818408063 var491)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3043 Int (bv2nat (bvxor ((_ int2bv 64) var2205) ((_ int2bv 64) var1477)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2650=com.google.javascript.jscomp.AutoValue_JsMessage, var392=r0, var270=$r1, var771=null_type, var824=$i31, var1174=$i27, var3230=$i28, var278=$r3, var852=$i0, var459=$i29, var1367=$i30, var3005=$z0, var14=$s32, var654=$i25, var2228=$i26, var117=$z1, var3856=$s33, var793=$i19, var273=$i20, var494=$r4, var1016=$i1, var1602=$i21, var968=$i22, var714=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1980=$r5, var1526=$i2, var3090=$i23, var2594=$i24, var2820=$r6, var3929=$i34, var2367=$i17, var293=$i18, var3586=$r8, var3011=$i35, var1756=$i15, var2333=$i16, var3860=$r10, var426=$r11, var2051=$i36, var2845=$i13, var2131=$i14, var937=$z2, var2591=$s37, var435=$i6, var3726=$i7, var1274=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var823=$r12, var835=$i3, var323=$i8, var28=$i9, var3454=$r13, var1616=$i4, var1937=$i10, var2205=$i11, var1336=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var491=$r14, var1477=$i5, var3043=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2650, r0=var392, $r1=var270, null_type=var771, $i31=var824, $i27=var1174, $i28=var3230, $r3=var278, $i0=var852, $i29=var459, $i30=var1367, $z0=var3005, $s32=var14, $i25=var654, $i26=var2228, $z1=var117, $s33=var3856, $i19=var793, $i20=var273, $r4=var494, $i1=var1016, $i21=var1602, $i22=var968, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var714, $r5=var1980, $i2=var1526, $i23=var3090, $i24=var2594, $r6=var2820, $i34=var3929, $i17=var2367, $i18=var293, $r8=var3586, $i35=var3011, $i15=var1756, $i16=var2333, $r10=var3860, $r11=var426, $i36=var2051, $i13=var2845, $i14=var2131, $z2=var937, $s37=var2591, $i6=var435, $i7=var3726, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1274, $r12=var823, $i3=var835, $i8=var323, $i9=var28, $r13=var3454, $i4=var1616, $i10=var1937, $i11=var2205, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1336, $r14=var491, $i5=var1477, $i12=var3043}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15