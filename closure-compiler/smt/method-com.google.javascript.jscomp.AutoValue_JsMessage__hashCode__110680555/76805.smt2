(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3263 0)
(declare-sort var481 0)
(declare-sort var462 0)
(declare-sort var1485 0)
(declare-sort var2490 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3263) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var3263) String)
(declare-fun isAnonymous/1126038692 (var3263) Bool)
(declare-fun isExternal/1126038692 (var3263) Bool)
(declare-fun getId/1126038692 (var3263) String)
(declare-fun getParts/1126038692 (var3263) var462)
(declare-fun hashCode/1337417431 (var462) Int)
(declare-fun getAlternateId/1126038692 (var3263) String)
(declare-fun getDesc/1126038692 (var3263) String)
(declare-fun getMeaning/1126038692 (var3263) String)
(declare-fun isHidden/1126038692 (var3263) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3263) var1485)
(declare-fun hashCode/-1247371579 (var1485) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3263) var1485)
(declare-fun jsPlaceholderNames/1126038692 (var3263) var2490)
(declare-fun hashCode/1818408063 (var2490) Int)
(declare-const null-var3263 var3263)
(declare-const null-String String)
(declare-const var2766 var3263) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2766 null-var3263)))
(define-const var789 String (getSourceName/1126038692 var2766)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var789 null-String))) ; Cond: $r1 != null 
(define-const var1991 String (getSourceName/1126038692 var2766)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var2146 Int (hashCode/-467973558 var1991)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var890 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2146)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var494 Int (* var890 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2173 String (getKey/1126038692 var2766)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var313 Int (hashCode/-467973558 var2173)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2981 Int (bv2nat (bvxor ((_ int2bv 64) var494) ((_ int2bv 64) var313)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2657 Int (* var2981 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var298 Bool (isAnonymous/1126038692 var2766)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var298 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2624 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var2120 Int (bv2nat (bvxor ((_ int2bv 64) var2657) ((_ int2bv 64) var2624)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var862 Int (* var2120 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3990 Bool (isExternal/1126038692 var2766)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var3990 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3462 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var2954 Int (bv2nat (bvxor ((_ int2bv 64) var862) ((_ int2bv 64) var3462)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var426 Int (* var2954 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1332 String (getId/1126038692 var2766)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1364 Int (hashCode/-467973558 var1332)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var28 Int (bv2nat (bvxor ((_ int2bv 64) var426) ((_ int2bv 64) var1364)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1462 Int (* var28 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1972 var462 (getParts/1126038692 var2766)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2829 Int (hashCode/1337417431 var1972)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3667 Int (bv2nat (bvxor ((_ int2bv 64) var1462) ((_ int2bv 64) var2829)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1420 Int (* var3667 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2999 String (getAlternateId/1126038692 var2766)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var2999 null-String))) ; Cond: $r6 != null 
(define-const var526 String (getAlternateId/1126038692 var2766)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var193 Int (hashCode/-467973558 var526)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var263 Int (bv2nat (bvxor ((_ int2bv 64) var1420) ((_ int2bv 64) var193)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1611 Int (* var263 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var53 String (getDesc/1126038692 var2766)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var53 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var1580 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var1710 Int (bv2nat (bvxor ((_ int2bv 64) var1611) ((_ int2bv 64) var1580)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2049 Int (* var1710 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1949 String (getMeaning/1126038692 var2766)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var1949 null-String))) ; Cond: $r10 != null 
(define-const var1158 String (getMeaning/1126038692 var2766)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var2947 Int (hashCode/-467973558 var1158)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1801 Int (bv2nat (bvxor ((_ int2bv 64) var2049) ((_ int2bv 64) var2947)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1286 Int (* var1801 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var913 Bool (isHidden/1126038692 var2766)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var913 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3645 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2244 Int (bv2nat (bvxor ((_ int2bv 64) var1286) ((_ int2bv 64) var3645)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var50 Int (* var2244 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3893 var1485 (getPlaceholderNameToExampleMap/1126038692 var2766)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var477 Int (hashCode/-1247371579 var3893)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var500 Int (bv2nat (bvxor ((_ int2bv 64) var50) ((_ int2bv 64) var477)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1788 Int (* var500 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var438 var1485 (getPlaceholderNameToOriginalCodeMap/1126038692 var2766)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var889 Int (hashCode/-1247371579 var438)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var325 Int (bv2nat (bvxor ((_ int2bv 64) var1788) ((_ int2bv 64) var889)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var692 Int (* var325 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2052 var2490 (jsPlaceholderNames/1126038692 var2766)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1797 Int (hashCode/1818408063 var2052)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1260 Int (bv2nat (bvxor ((_ int2bv 64) var692) ((_ int2bv 64) var1797)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3263=com.google.javascript.jscomp.AutoValue_JsMessage, var2766=r0, var789=$r1, var481=null_type, var1991=$r2, var2146=$i31, var890=$i27, var494=$i28, var2173=$r3, var313=$i0, var2981=$i29, var2657=$i30, var298=$z0, var2624=$s32, var2120=$i25, var862=$i26, var3990=$z1, var3462=$s33, var2954=$i19, var426=$i20, var1332=$r4, var1364=$i1, var28=$i21, var1462=$i22, var462=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1972=$r5, var2829=$i2, var3667=$i23, var1420=$i24, var2999=$r6, var526=$r7, var193=$i34, var263=$i17, var1611=$i18, var53=$r8, var1580=$i35, var1710=$i15, var2049=$i16, var1949=$r10, var1158=$r11, var2947=$i36, var1801=$i13, var1286=$i14, var913=$z2, var3645=$s37, var2244=$i6, var50=$i7, var1485=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3893=$r12, var477=$i3, var500=$i8, var1788=$i9, var438=$r13, var889=$i4, var325=$i10, var692=$i11, var2490=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2052=$r14, var1797=$i5, var1260=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3263, r0=var2766, $r1=var789, null_type=var481, $r2=var1991, $i31=var2146, $i27=var890, $i28=var494, $r3=var2173, $i0=var313, $i29=var2981, $i30=var2657, $z0=var298, $s32=var2624, $i25=var2120, $i26=var862, $z1=var3990, $s33=var3462, $i19=var2954, $i20=var426, $r4=var1332, $i1=var1364, $i21=var28, $i22=var1462, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var462, $r5=var1972, $i2=var2829, $i23=var3667, $i24=var1420, $r6=var2999, $r7=var526, $i34=var193, $i17=var263, $i18=var1611, $r8=var53, $i35=var1580, $i15=var1710, $i16=var2049, $r10=var1949, $r11=var1158, $i36=var2947, $i13=var1801, $i14=var1286, $z2=var913, $s37=var3645, $i6=var2244, $i7=var50, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1485, $r12=var3893, $i3=var477, $i8=var500, $i9=var1788, $r13=var438, $i4=var889, $i10=var325, $i11=var692, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2490, $r14=var2052, $i5=var1797, $i12=var1260}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15