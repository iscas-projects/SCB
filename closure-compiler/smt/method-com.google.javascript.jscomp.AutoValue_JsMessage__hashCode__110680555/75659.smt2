(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2379 0)
(declare-sort var1771 0)
(declare-sort var351 0)
(declare-sort var3288 0)
(declare-sort var973 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2379) String)
(declare-fun getKey/1126038692 (var2379) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var2379) Bool)
(declare-fun isExternal/1126038692 (var2379) Bool)
(declare-fun getId/1126038692 (var2379) String)
(declare-fun getParts/1126038692 (var2379) var351)
(declare-fun hashCode/1337417431 (var351) Int)
(declare-fun getAlternateId/1126038692 (var2379) String)
(declare-fun getDesc/1126038692 (var2379) String)
(declare-fun getMeaning/1126038692 (var2379) String)
(declare-fun isHidden/1126038692 (var2379) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2379) var3288)
(declare-fun hashCode/-1247371579 (var3288) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2379) var3288)
(declare-fun jsPlaceholderNames/1126038692 (var2379) var973)
(declare-fun hashCode/1818408063 (var973) Int)
(declare-const null-var2379 var2379)
(declare-const null-String String)
(declare-const var1942 var2379) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1942 null-var2379)))
(define-const var3077 String (getSourceName/1126038692 var1942)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var3077 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2722 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var360 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2722)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var287 Int (* var360 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3394 String (getKey/1126038692 var1942)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2868 Int (hashCode/-467973558 var3394)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var8 Int (bv2nat (bvxor ((_ int2bv 64) var287) ((_ int2bv 64) var2868)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2201 Int (* var8 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2772 Bool (isAnonymous/1126038692 var1942)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var2772 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1317 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var957 Int (bv2nat (bvxor ((_ int2bv 64) var2201) ((_ int2bv 64) var1317)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2298 Int (* var957 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3196 Bool (isExternal/1126038692 var1942)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var3196 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var79 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var60 Int (bv2nat (bvxor ((_ int2bv 64) var2298) ((_ int2bv 64) var79)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3431 Int (* var60 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1255 String (getId/1126038692 var1942)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var163 Int (hashCode/-467973558 var1255)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1881 Int (bv2nat (bvxor ((_ int2bv 64) var3431) ((_ int2bv 64) var163)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1346 Int (* var1881 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2800 var351 (getParts/1126038692 var1942)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3905 Int (hashCode/1337417431 var2800)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1364 Int (bv2nat (bvxor ((_ int2bv 64) var1346) ((_ int2bv 64) var3905)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2230 Int (* var1364 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var541 String (getAlternateId/1126038692 var1942)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var541 null-String))) ; Cond: $r6 != null 
(define-const var1473 String (getAlternateId/1126038692 var1942)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1320 Int (hashCode/-467973558 var1473)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var913 Int (bv2nat (bvxor ((_ int2bv 64) var2230) ((_ int2bv 64) var1320)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3315 Int (* var913 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2020 String (getDesc/1126038692 var1942)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var2020 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var1384 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var584 Int (bv2nat (bvxor ((_ int2bv 64) var3315) ((_ int2bv 64) var1384)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3653 Int (* var584 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1446 String (getMeaning/1126038692 var1942)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var1446 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var1072 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var1335 Int (bv2nat (bvxor ((_ int2bv 64) var3653) ((_ int2bv 64) var1072)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2492 Int (* var1335 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1845 Bool (isHidden/1126038692 var1942)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var1845 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3499 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var59 Int (bv2nat (bvxor ((_ int2bv 64) var2492) ((_ int2bv 64) var3499)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var324 Int (* var59 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2886 var3288 (getPlaceholderNameToExampleMap/1126038692 var1942)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2420 Int (hashCode/-1247371579 var2886)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3928 Int (bv2nat (bvxor ((_ int2bv 64) var324) ((_ int2bv 64) var2420)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3027 Int (* var3928 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3322 var3288 (getPlaceholderNameToOriginalCodeMap/1126038692 var1942)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3448 Int (hashCode/-1247371579 var3322)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2520 Int (bv2nat (bvxor ((_ int2bv 64) var3027) ((_ int2bv 64) var3448)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3197 Int (* var2520 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1173 var973 (jsPlaceholderNames/1126038692 var1942)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var891 Int (hashCode/1818408063 var1173)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3013 Int (bv2nat (bvxor ((_ int2bv 64) var3197) ((_ int2bv 64) var891)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2379=com.google.javascript.jscomp.AutoValue_JsMessage, var1942=r0, var3077=$r1, var1771=null_type, var2722=$i31, var360=$i27, var287=$i28, var3394=$r3, var2868=$i0, var8=$i29, var2201=$i30, var2772=$z0, var1317=$s32, var957=$i25, var2298=$i26, var3196=$z1, var79=$s33, var60=$i19, var3431=$i20, var1255=$r4, var163=$i1, var1881=$i21, var1346=$i22, var351=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2800=$r5, var3905=$i2, var1364=$i23, var2230=$i24, var541=$r6, var1473=$r7, var1320=$i34, var913=$i17, var3315=$i18, var2020=$r8, var1384=$i35, var584=$i15, var3653=$i16, var1446=$r10, var1072=$i36, var1335=$i13, var2492=$i14, var1845=$z2, var3499=$s37, var59=$i6, var324=$i7, var3288=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2886=$r12, var2420=$i3, var3928=$i8, var3027=$i9, var3322=$r13, var3448=$i4, var2520=$i10, var3197=$i11, var973=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1173=$r14, var891=$i5, var3013=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2379, r0=var1942, $r1=var3077, null_type=var1771, $i31=var2722, $i27=var360, $i28=var287, $r3=var3394, $i0=var2868, $i29=var8, $i30=var2201, $z0=var2772, $s32=var1317, $i25=var957, $i26=var2298, $z1=var3196, $s33=var79, $i19=var60, $i20=var3431, $r4=var1255, $i1=var163, $i21=var1881, $i22=var1346, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var351, $r5=var2800, $i2=var3905, $i23=var1364, $i24=var2230, $r6=var541, $r7=var1473, $i34=var1320, $i17=var913, $i18=var3315, $r8=var2020, $i35=var1384, $i15=var584, $i16=var3653, $r10=var1446, $i36=var1072, $i13=var1335, $i14=var2492, $z2=var1845, $s37=var3499, $i6=var59, $i7=var324, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3288, $r12=var2886, $i3=var2420, $i8=var3928, $i9=var3027, $r13=var3322, $i4=var3448, $i10=var2520, $i11=var3197, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var973, $r14=var1173, $i5=var891, $i12=var3013}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15