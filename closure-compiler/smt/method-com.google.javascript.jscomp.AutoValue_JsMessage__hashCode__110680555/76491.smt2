(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1096 0)
(declare-sort var2409 0)
(declare-sort var1965 0)
(declare-sort var1751 0)
(declare-sort var1272 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1096) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var1096) String)
(declare-fun isAnonymous/1126038692 (var1096) Bool)
(declare-fun isExternal/1126038692 (var1096) Bool)
(declare-fun getId/1126038692 (var1096) String)
(declare-fun getParts/1126038692 (var1096) var1965)
(declare-fun hashCode/1337417431 (var1965) Int)
(declare-fun getAlternateId/1126038692 (var1096) String)
(declare-fun getDesc/1126038692 (var1096) String)
(declare-fun getMeaning/1126038692 (var1096) String)
(declare-fun isHidden/1126038692 (var1096) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1096) var1751)
(declare-fun hashCode/-1247371579 (var1751) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1096) var1751)
(declare-fun jsPlaceholderNames/1126038692 (var1096) var1272)
(declare-fun hashCode/1818408063 (var1272) Int)
(declare-const null-var1096 var1096)
(declare-const null-String String)
(declare-const var1807 var1096) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1807 null-var1096)))
(define-const var3430 String (getSourceName/1126038692 var1807)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var3430 null-String))) ; Cond: $r1 != null 
(define-const var2319 String (getSourceName/1126038692 var1807)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var1189 Int (hashCode/-467973558 var2319)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2297 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1189)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3620 Int (* var2297 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1970 String (getKey/1126038692 var1807)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2423 Int (hashCode/-467973558 var1970)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3871 Int (bv2nat (bvxor ((_ int2bv 64) var3620) ((_ int2bv 64) var2423)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1241 Int (* var3871 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3965 Bool (isAnonymous/1126038692 var1807)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var3965 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var280 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var2188 Int (bv2nat (bvxor ((_ int2bv 64) var1241) ((_ int2bv 64) var280)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3706 Int (* var2188 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2843 Bool (isExternal/1126038692 var1807)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2843 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2007 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var3799 Int (bv2nat (bvxor ((_ int2bv 64) var3706) ((_ int2bv 64) var2007)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2366 Int (* var3799 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1819 String (getId/1126038692 var1807)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3592 Int (hashCode/-467973558 var1819)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2994 Int (bv2nat (bvxor ((_ int2bv 64) var2366) ((_ int2bv 64) var3592)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2565 Int (* var2994 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2736 var1965 (getParts/1126038692 var1807)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2464 Int (hashCode/1337417431 var2736)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2458 Int (bv2nat (bvxor ((_ int2bv 64) var2565) ((_ int2bv 64) var2464)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2623 Int (* var2458 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3141 String (getAlternateId/1126038692 var1807)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3141 null-String))) ; Cond: $r6 != null 
(define-const var657 String (getAlternateId/1126038692 var1807)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var32 Int (hashCode/-467973558 var657)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2065 Int (bv2nat (bvxor ((_ int2bv 64) var2623) ((_ int2bv 64) var32)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2266 Int (* var2065 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1628 String (getDesc/1126038692 var1807)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var1628 null-String))) ; Cond: $r8 != null 
(define-const var2496 String (getDesc/1126038692 var1807)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var465 Int (hashCode/-467973558 var2496)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1436 Int (bv2nat (bvxor ((_ int2bv 64) var2266) ((_ int2bv 64) var465)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3739 Int (* var1436 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var878 String (getMeaning/1126038692 var1807)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var878 null-String))) ; Cond: $r10 != null 
(define-const var375 String (getMeaning/1126038692 var1807)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var967 Int (hashCode/-467973558 var375)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2298 Int (bv2nat (bvxor ((_ int2bv 64) var3739) ((_ int2bv 64) var967)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var628 Int (* var2298 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1227 Bool (isHidden/1126038692 var1807)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var1227 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3935 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2077 Int (bv2nat (bvxor ((_ int2bv 64) var628) ((_ int2bv 64) var3935)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1962 Int (* var2077 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2272 var1751 (getPlaceholderNameToExampleMap/1126038692 var1807)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2615 Int (hashCode/-1247371579 var2272)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1844 Int (bv2nat (bvxor ((_ int2bv 64) var1962) ((_ int2bv 64) var2615)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1761 Int (* var1844 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2067 var1751 (getPlaceholderNameToOriginalCodeMap/1126038692 var1807)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var327 Int (hashCode/-1247371579 var2067)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2766 Int (bv2nat (bvxor ((_ int2bv 64) var1761) ((_ int2bv 64) var327)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var415 Int (* var2766 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2627 var1272 (jsPlaceholderNames/1126038692 var1807)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1830 Int (hashCode/1818408063 var2627)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1823 Int (bv2nat (bvxor ((_ int2bv 64) var415) ((_ int2bv 64) var1830)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1096=com.google.javascript.jscomp.AutoValue_JsMessage, var1807=r0, var3430=$r1, var2409=null_type, var2319=$r2, var1189=$i31, var2297=$i27, var3620=$i28, var1970=$r3, var2423=$i0, var3871=$i29, var1241=$i30, var3965=$z0, var280=$s32, var2188=$i25, var3706=$i26, var2843=$z1, var2007=$s33, var3799=$i19, var2366=$i20, var1819=$r4, var3592=$i1, var2994=$i21, var2565=$i22, var1965=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2736=$r5, var2464=$i2, var2458=$i23, var2623=$i24, var3141=$r6, var657=$r7, var32=$i34, var2065=$i17, var2266=$i18, var1628=$r8, var2496=$r9, var465=$i35, var1436=$i15, var3739=$i16, var878=$r10, var375=$r11, var967=$i36, var2298=$i13, var628=$i14, var1227=$z2, var3935=$s37, var2077=$i6, var1962=$i7, var1751=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2272=$r12, var2615=$i3, var1844=$i8, var1761=$i9, var2067=$r13, var327=$i4, var2766=$i10, var415=$i11, var1272=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2627=$r14, var1830=$i5, var1823=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1096, r0=var1807, $r1=var3430, null_type=var2409, $r2=var2319, $i31=var1189, $i27=var2297, $i28=var3620, $r3=var1970, $i0=var2423, $i29=var3871, $i30=var1241, $z0=var3965, $s32=var280, $i25=var2188, $i26=var3706, $z1=var2843, $s33=var2007, $i19=var3799, $i20=var2366, $r4=var1819, $i1=var3592, $i21=var2994, $i22=var2565, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1965, $r5=var2736, $i2=var2464, $i23=var2458, $i24=var2623, $r6=var3141, $r7=var657, $i34=var32, $i17=var2065, $i18=var2266, $r8=var1628, $r9=var2496, $i35=var465, $i15=var1436, $i16=var3739, $r10=var878, $r11=var375, $i36=var967, $i13=var2298, $i14=var628, $z2=var1227, $s37=var3935, $i6=var2077, $i7=var1962, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1751, $r12=var2272, $i3=var2615, $i8=var1844, $i9=var1761, $r13=var2067, $i4=var327, $i10=var2766, $i11=var415, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1272, $r14=var2627, $i5=var1830, $i12=var1823}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 6}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15