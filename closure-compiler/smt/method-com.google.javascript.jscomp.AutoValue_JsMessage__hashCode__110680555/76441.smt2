(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2299 0)
(declare-sort var1365 0)
(declare-sort var3018 0)
(declare-sort var2652 0)
(declare-sort var2932 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2299) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2299) String)
(declare-fun isAnonymous/1126038692 (var2299) Bool)
(declare-fun isExternal/1126038692 (var2299) Bool)
(declare-fun getId/1126038692 (var2299) String)
(declare-fun getParts/1126038692 (var2299) var3018)
(declare-fun hashCode/1337417431 (var3018) Int)
(declare-fun getAlternateId/1126038692 (var2299) String)
(declare-fun getDesc/1126038692 (var2299) String)
(declare-fun getMeaning/1126038692 (var2299) String)
(declare-fun isHidden/1126038692 (var2299) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2299) var2652)
(declare-fun hashCode/-1247371579 (var2652) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2299) var2652)
(declare-fun jsPlaceholderNames/1126038692 (var2299) var2932)
(declare-fun hashCode/1818408063 (var2932) Int)
(declare-const null-var2299 var2299)
(declare-const null-String String)
(declare-const var2702 var2299) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2702 null-var2299)))
(define-const var1634 String (getSourceName/1126038692 var2702)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var1634 null-String))) ; Cond: $r1 != null 
(define-const var2181 String (getSourceName/1126038692 var2702)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var2501 Int (hashCode/-467973558 var2181)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2549 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2501)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3311 Int (* var2549 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1611 String (getKey/1126038692 var2702)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1952 Int (hashCode/-467973558 var1611)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1292 Int (bv2nat (bvxor ((_ int2bv 64) var3311) ((_ int2bv 64) var1952)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1011 Int (* var1292 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2526 Bool (isAnonymous/1126038692 var2702)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2526 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3493 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var2376 Int (bv2nat (bvxor ((_ int2bv 64) var1011) ((_ int2bv 64) var3493)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var376 Int (* var2376 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3189 Bool (isExternal/1126038692 var2702)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3189 1 0) 0)) ; Cond: $z1 == 0 
(define-const var46 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2561 Int (bv2nat (bvxor ((_ int2bv 64) var376) ((_ int2bv 64) var46)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1991 Int (* var2561 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var558 String (getId/1126038692 var2702)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2898 Int (hashCode/-467973558 var558)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1536 Int (bv2nat (bvxor ((_ int2bv 64) var1991) ((_ int2bv 64) var2898)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2924 Int (* var1536 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1506 var3018 (getParts/1126038692 var2702)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var904 Int (hashCode/1337417431 var1506)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var751 Int (bv2nat (bvxor ((_ int2bv 64) var2924) ((_ int2bv 64) var904)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1941 Int (* var751 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1592 String (getAlternateId/1126038692 var2702)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1592 null-String))) ; Cond: $r6 != null 
(define-const var531 String (getAlternateId/1126038692 var2702)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1727 Int (hashCode/-467973558 var531)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var788 Int (bv2nat (bvxor ((_ int2bv 64) var1941) ((_ int2bv 64) var1727)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3259 Int (* var788 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2121 String (getDesc/1126038692 var2702)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var2121 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3436 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var783 Int (bv2nat (bvxor ((_ int2bv 64) var3259) ((_ int2bv 64) var3436)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3391 Int (* var783 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2782 String (getMeaning/1126038692 var2702)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var2782 null-String))) ; Cond: $r10 != null 
(define-const var3855 String (getMeaning/1126038692 var2702)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var697 Int (hashCode/-467973558 var3855)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var207 Int (bv2nat (bvxor ((_ int2bv 64) var3391) ((_ int2bv 64) var697)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2389 Int (* var207 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3438 Bool (isHidden/1126038692 var2702)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3438 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var841 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2590 Int (bv2nat (bvxor ((_ int2bv 64) var2389) ((_ int2bv 64) var841)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1704 Int (* var2590 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var123 var2652 (getPlaceholderNameToExampleMap/1126038692 var2702)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2717 Int (hashCode/-1247371579 var123)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1508 Int (bv2nat (bvxor ((_ int2bv 64) var1704) ((_ int2bv 64) var2717)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2339 Int (* var1508 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3850 var2652 (getPlaceholderNameToOriginalCodeMap/1126038692 var2702)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1487 Int (hashCode/-1247371579 var3850)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2388 Int (bv2nat (bvxor ((_ int2bv 64) var2339) ((_ int2bv 64) var1487)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var325 Int (* var2388 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2402 var2932 (jsPlaceholderNames/1126038692 var2702)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2393 Int (hashCode/1818408063 var2402)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var926 Int (bv2nat (bvxor ((_ int2bv 64) var325) ((_ int2bv 64) var2393)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2299=com.google.javascript.jscomp.AutoValue_JsMessage, var2702=r0, var1634=$r1, var1365=null_type, var2181=$r2, var2501=$i31, var2549=$i27, var3311=$i28, var1611=$r3, var1952=$i0, var1292=$i29, var1011=$i30, var2526=$z0, var3493=$s32, var2376=$i25, var376=$i26, var3189=$z1, var46=$s33, var2561=$i19, var1991=$i20, var558=$r4, var2898=$i1, var1536=$i21, var2924=$i22, var3018=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1506=$r5, var904=$i2, var751=$i23, var1941=$i24, var1592=$r6, var531=$r7, var1727=$i34, var788=$i17, var3259=$i18, var2121=$r8, var3436=$i35, var783=$i15, var3391=$i16, var2782=$r10, var3855=$r11, var697=$i36, var207=$i13, var2389=$i14, var3438=$z2, var841=$s37, var2590=$i6, var1704=$i7, var2652=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var123=$r12, var2717=$i3, var1508=$i8, var2339=$i9, var3850=$r13, var1487=$i4, var2388=$i10, var325=$i11, var2932=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2402=$r14, var2393=$i5, var926=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2299, r0=var2702, $r1=var1634, null_type=var1365, $r2=var2181, $i31=var2501, $i27=var2549, $i28=var3311, $r3=var1611, $i0=var1952, $i29=var1292, $i30=var1011, $z0=var2526, $s32=var3493, $i25=var2376, $i26=var376, $z1=var3189, $s33=var46, $i19=var2561, $i20=var1991, $r4=var558, $i1=var2898, $i21=var1536, $i22=var2924, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3018, $r5=var1506, $i2=var904, $i23=var751, $i24=var1941, $r6=var1592, $r7=var531, $i34=var1727, $i17=var788, $i18=var3259, $r8=var2121, $i35=var3436, $i15=var783, $i16=var3391, $r10=var2782, $r11=var3855, $i36=var697, $i13=var207, $i14=var2389, $z2=var3438, $s37=var841, $i6=var2590, $i7=var1704, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2652, $r12=var123, $i3=var2717, $i8=var1508, $i9=var2339, $r13=var3850, $i4=var1487, $i10=var2388, $i11=var325, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2932, $r14=var2402, $i5=var2393, $i12=var926}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15