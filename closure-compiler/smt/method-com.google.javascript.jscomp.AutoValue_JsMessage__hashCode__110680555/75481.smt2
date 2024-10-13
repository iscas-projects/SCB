(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var69 0)
(declare-sort var3571 0)
(declare-sort var697 0)
(declare-sort var3812 0)
(declare-sort var3771 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var69) String)
(declare-fun getKey/1126038692 (var69) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var69) Bool)
(declare-fun isExternal/1126038692 (var69) Bool)
(declare-fun getId/1126038692 (var69) String)
(declare-fun getParts/1126038692 (var69) var697)
(declare-fun hashCode/1337417431 (var697) Int)
(declare-fun getAlternateId/1126038692 (var69) String)
(declare-fun getDesc/1126038692 (var69) String)
(declare-fun getMeaning/1126038692 (var69) String)
(declare-fun isHidden/1126038692 (var69) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var69) var3812)
(declare-fun hashCode/-1247371579 (var3812) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var69) var3812)
(declare-fun jsPlaceholderNames/1126038692 (var69) var3771)
(declare-fun hashCode/1818408063 (var3771) Int)
(declare-const null-var69 var69)
(declare-const null-String String)
(declare-const var1306 var69) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1306 null-var69)))
(define-const var468 String (getSourceName/1126038692 var1306)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var468 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var771 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2974 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var771)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1624 Int (* var2974 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var801 String (getKey/1126038692 var1306)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var158 Int (hashCode/-467973558 var801)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var636 Int (bv2nat (bvxor ((_ int2bv 64) var1624) ((_ int2bv 64) var158)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var963 Int (* var636 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1879 Bool (isAnonymous/1126038692 var1306)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1879 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2517 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var3711 Int (bv2nat (bvxor ((_ int2bv 64) var963) ((_ int2bv 64) var2517)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3463 Int (* var3711 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2041 Bool (isExternal/1126038692 var1306)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2041 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2726 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var4 Int (bv2nat (bvxor ((_ int2bv 64) var3463) ((_ int2bv 64) var2726)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var596 Int (* var4 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3276 String (getId/1126038692 var1306)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1909 Int (hashCode/-467973558 var3276)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3826 Int (bv2nat (bvxor ((_ int2bv 64) var596) ((_ int2bv 64) var1909)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2148 Int (* var3826 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var16 var697 (getParts/1126038692 var1306)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2076 Int (hashCode/1337417431 var16)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var917 Int (bv2nat (bvxor ((_ int2bv 64) var2148) ((_ int2bv 64) var2076)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1408 Int (* var917 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var207 String (getAlternateId/1126038692 var1306)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var207 null-String))) ; Cond: $r6 != null 
(define-const var855 String (getAlternateId/1126038692 var1306)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var213 Int (hashCode/-467973558 var855)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1168 Int (bv2nat (bvxor ((_ int2bv 64) var1408) ((_ int2bv 64) var213)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2542 Int (* var1168 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var438 String (getDesc/1126038692 var1306)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var438 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var2299 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var1546 Int (bv2nat (bvxor ((_ int2bv 64) var2542) ((_ int2bv 64) var2299)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3258 Int (* var1546 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var904 String (getMeaning/1126038692 var1306)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var904 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2256 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2729 Int (bv2nat (bvxor ((_ int2bv 64) var3258) ((_ int2bv 64) var2256)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2856 Int (* var2729 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var292 Bool (isHidden/1126038692 var1306)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var292 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var223 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2819 Int (bv2nat (bvxor ((_ int2bv 64) var2856) ((_ int2bv 64) var223)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1233 Int (* var2819 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3572 var3812 (getPlaceholderNameToExampleMap/1126038692 var1306)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1170 Int (hashCode/-1247371579 var3572)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1255 Int (bv2nat (bvxor ((_ int2bv 64) var1233) ((_ int2bv 64) var1170)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var498 Int (* var1255 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3304 var3812 (getPlaceholderNameToOriginalCodeMap/1126038692 var1306)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1223 Int (hashCode/-1247371579 var3304)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1459 Int (bv2nat (bvxor ((_ int2bv 64) var498) ((_ int2bv 64) var1223)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2599 Int (* var1459 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1283 var3771 (jsPlaceholderNames/1126038692 var1306)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1982 Int (hashCode/1818408063 var1283)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3090 Int (bv2nat (bvxor ((_ int2bv 64) var2599) ((_ int2bv 64) var1982)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var69=com.google.javascript.jscomp.AutoValue_JsMessage, var1306=r0, var468=$r1, var3571=null_type, var771=$i31, var2974=$i27, var1624=$i28, var801=$r3, var158=$i0, var636=$i29, var963=$i30, var1879=$z0, var2517=$s32, var3711=$i25, var3463=$i26, var2041=$z1, var2726=$s33, var4=$i19, var596=$i20, var3276=$r4, var1909=$i1, var3826=$i21, var2148=$i22, var697=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var16=$r5, var2076=$i2, var917=$i23, var1408=$i24, var207=$r6, var855=$r7, var213=$i34, var1168=$i17, var2542=$i18, var438=$r8, var2299=$i35, var1546=$i15, var3258=$i16, var904=$r10, var2256=$i36, var2729=$i13, var2856=$i14, var292=$z2, var223=$s37, var2819=$i6, var1233=$i7, var3812=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3572=$r12, var1170=$i3, var1255=$i8, var498=$i9, var3304=$r13, var1223=$i4, var1459=$i10, var2599=$i11, var3771=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1283=$r14, var1982=$i5, var3090=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var69, r0=var1306, $r1=var468, null_type=var3571, $i31=var771, $i27=var2974, $i28=var1624, $r3=var801, $i0=var158, $i29=var636, $i30=var963, $z0=var1879, $s32=var2517, $i25=var3711, $i26=var3463, $z1=var2041, $s33=var2726, $i19=var4, $i20=var596, $r4=var3276, $i1=var1909, $i21=var3826, $i22=var2148, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var697, $r5=var16, $i2=var2076, $i23=var917, $i24=var1408, $r6=var207, $r7=var855, $i34=var213, $i17=var1168, $i18=var2542, $r8=var438, $i35=var2299, $i15=var1546, $i16=var3258, $r10=var904, $i36=var2256, $i13=var2729, $i14=var2856, $z2=var292, $s37=var223, $i6=var2819, $i7=var1233, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3812, $r12=var3572, $i3=var1170, $i8=var1255, $i9=var498, $r13=var3304, $i4=var1223, $i10=var1459, $i11=var2599, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3771, $r14=var1283, $i5=var1982, $i12=var3090}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15