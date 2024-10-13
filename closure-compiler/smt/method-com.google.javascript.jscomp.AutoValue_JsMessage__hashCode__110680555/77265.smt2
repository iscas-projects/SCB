(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2225 0)
(declare-sort var3028 0)
(declare-sort var2306 0)
(declare-sort var3186 0)
(declare-sort var1347 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2225) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2225) String)
(declare-fun isAnonymous/1126038692 (var2225) Bool)
(declare-fun isExternal/1126038692 (var2225) Bool)
(declare-fun getId/1126038692 (var2225) String)
(declare-fun getParts/1126038692 (var2225) var2306)
(declare-fun hashCode/1337417431 (var2306) Int)
(declare-fun getAlternateId/1126038692 (var2225) String)
(declare-fun getDesc/1126038692 (var2225) String)
(declare-fun getMeaning/1126038692 (var2225) String)
(declare-fun isHidden/1126038692 (var2225) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2225) var3186)
(declare-fun hashCode/-1247371579 (var3186) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2225) var3186)
(declare-fun jsPlaceholderNames/1126038692 (var2225) var1347)
(declare-fun hashCode/1818408063 (var1347) Int)
(declare-const null-var2225 var2225)
(declare-const null-String String)
(declare-const var122 var2225) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var122 null-var2225)))
(define-const var2330 String (getSourceName/1126038692 var122)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var2330 null-String))) ; Cond: $r1 != null 
(define-const var3062 String (getSourceName/1126038692 var122)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var84 Int (hashCode/-467973558 var3062)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1735 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var84)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2073 Int (* var1735 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var116 String (getKey/1126038692 var122)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var190 Int (hashCode/-467973558 var116)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2626 Int (bv2nat (bvxor ((_ int2bv 64) var2073) ((_ int2bv 64) var190)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3362 Int (* var2626 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3972 Bool (isAnonymous/1126038692 var122)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var3972 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1286 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3544 Int (bv2nat (bvxor ((_ int2bv 64) var3362) ((_ int2bv 64) var1286)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1120 Int (* var3544 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2474 Bool (isExternal/1126038692 var122)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2474 1 0) 0)) ; Cond: $z1 == 0 
(define-const var645 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var397 Int (bv2nat (bvxor ((_ int2bv 64) var1120) ((_ int2bv 64) var645)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2007 Int (* var397 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1711 String (getId/1126038692 var122)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3340 Int (hashCode/-467973558 var1711)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3895 Int (bv2nat (bvxor ((_ int2bv 64) var2007) ((_ int2bv 64) var3340)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var271 Int (* var3895 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var330 var2306 (getParts/1126038692 var122)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3395 Int (hashCode/1337417431 var330)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1203 Int (bv2nat (bvxor ((_ int2bv 64) var271) ((_ int2bv 64) var3395)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var605 Int (* var1203 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var586 String (getAlternateId/1126038692 var122)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var586 null-String))) ; Cond: $r6 != null 
(define-const var1166 String (getAlternateId/1126038692 var122)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var2813 Int (hashCode/-467973558 var1166)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2688 Int (bv2nat (bvxor ((_ int2bv 64) var605) ((_ int2bv 64) var2813)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2560 Int (* var2688 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2915 String (getDesc/1126038692 var122)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var2915 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var1640 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var1517 Int (bv2nat (bvxor ((_ int2bv 64) var2560) ((_ int2bv 64) var1640)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1304 Int (* var1517 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2378 String (getMeaning/1126038692 var122)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2378 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var3755 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2049 Int (bv2nat (bvxor ((_ int2bv 64) var1304) ((_ int2bv 64) var3755)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3811 Int (* var2049 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3908 Bool (isHidden/1126038692 var122)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3908 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var241 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1855 Int (bv2nat (bvxor ((_ int2bv 64) var3811) ((_ int2bv 64) var241)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2393 Int (* var1855 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3854 var3186 (getPlaceholderNameToExampleMap/1126038692 var122)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2420 Int (hashCode/-1247371579 var3854)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var546 Int (bv2nat (bvxor ((_ int2bv 64) var2393) ((_ int2bv 64) var2420)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var24 Int (* var546 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2014 var3186 (getPlaceholderNameToOriginalCodeMap/1126038692 var122)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var253 Int (hashCode/-1247371579 var2014)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1857 Int (bv2nat (bvxor ((_ int2bv 64) var24) ((_ int2bv 64) var253)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1032 Int (* var1857 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3936 var1347 (jsPlaceholderNames/1126038692 var122)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var543 Int (hashCode/1818408063 var3936)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2918 Int (bv2nat (bvxor ((_ int2bv 64) var1032) ((_ int2bv 64) var543)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2225=com.google.javascript.jscomp.AutoValue_JsMessage, var122=r0, var2330=$r1, var3028=null_type, var3062=$r2, var84=$i31, var1735=$i27, var2073=$i28, var116=$r3, var190=$i0, var2626=$i29, var3362=$i30, var3972=$z0, var1286=$s32, var3544=$i25, var1120=$i26, var2474=$z1, var645=$s33, var397=$i19, var2007=$i20, var1711=$r4, var3340=$i1, var3895=$i21, var271=$i22, var2306=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var330=$r5, var3395=$i2, var1203=$i23, var605=$i24, var586=$r6, var1166=$r7, var2813=$i34, var2688=$i17, var2560=$i18, var2915=$r8, var1640=$i35, var1517=$i15, var1304=$i16, var2378=$r10, var3755=$i36, var2049=$i13, var3811=$i14, var3908=$z2, var241=$s37, var1855=$i6, var2393=$i7, var3186=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3854=$r12, var2420=$i3, var546=$i8, var24=$i9, var2014=$r13, var253=$i4, var1857=$i10, var1032=$i11, var1347=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3936=$r14, var543=$i5, var2918=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2225, r0=var122, $r1=var2330, null_type=var3028, $r2=var3062, $i31=var84, $i27=var1735, $i28=var2073, $r3=var116, $i0=var190, $i29=var2626, $i30=var3362, $z0=var3972, $s32=var1286, $i25=var3544, $i26=var1120, $z1=var2474, $s33=var645, $i19=var397, $i20=var2007, $r4=var1711, $i1=var3340, $i21=var3895, $i22=var271, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2306, $r5=var330, $i2=var3395, $i23=var1203, $i24=var605, $r6=var586, $r7=var1166, $i34=var2813, $i17=var2688, $i18=var2560, $r8=var2915, $i35=var1640, $i15=var1517, $i16=var1304, $r10=var2378, $i36=var3755, $i13=var2049, $i14=var3811, $z2=var3908, $s37=var241, $i6=var1855, $i7=var2393, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3186, $r12=var3854, $i3=var2420, $i8=var546, $i9=var24, $r13=var2014, $i4=var253, $i10=var1857, $i11=var1032, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1347, $r14=var3936, $i5=var543, $i12=var2918}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15