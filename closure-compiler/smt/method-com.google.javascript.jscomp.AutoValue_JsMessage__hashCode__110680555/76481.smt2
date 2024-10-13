(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2827 0)
(declare-sort var2708 0)
(declare-sort var2703 0)
(declare-sort var707 0)
(declare-sort var2753 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2827) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2827) String)
(declare-fun isAnonymous/1126038692 (var2827) Bool)
(declare-fun isExternal/1126038692 (var2827) Bool)
(declare-fun getId/1126038692 (var2827) String)
(declare-fun getParts/1126038692 (var2827) var2703)
(declare-fun hashCode/1337417431 (var2703) Int)
(declare-fun getAlternateId/1126038692 (var2827) String)
(declare-fun getDesc/1126038692 (var2827) String)
(declare-fun getMeaning/1126038692 (var2827) String)
(declare-fun isHidden/1126038692 (var2827) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2827) var707)
(declare-fun hashCode/-1247371579 (var707) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2827) var707)
(declare-fun jsPlaceholderNames/1126038692 (var2827) var2753)
(declare-fun hashCode/1818408063 (var2753) Int)
(declare-const null-var2827 var2827)
(declare-const null-String String)
(declare-const var3686 var2827) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3686 null-var2827)))
(define-const var3898 String (getSourceName/1126038692 var3686)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var3898 null-String))) ; Cond: $r1 != null 
(define-const var2199 String (getSourceName/1126038692 var3686)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var1179 Int (hashCode/-467973558 var2199)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var226 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1179)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1996 Int (* var226 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1552 String (getKey/1126038692 var3686)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3178 Int (hashCode/-467973558 var1552)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2866 Int (bv2nat (bvxor ((_ int2bv 64) var1996) ((_ int2bv 64) var3178)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2687 Int (* var2866 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2035 Bool (isAnonymous/1126038692 var3686)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2035 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2458 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var1666 Int (bv2nat (bvxor ((_ int2bv 64) var2687) ((_ int2bv 64) var2458)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1580 Int (* var1666 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2904 Bool (isExternal/1126038692 var3686)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2904 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1075 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var20 Int (bv2nat (bvxor ((_ int2bv 64) var1580) ((_ int2bv 64) var1075)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var357 Int (* var20 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3938 String (getId/1126038692 var3686)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2460 Int (hashCode/-467973558 var3938)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var303 Int (bv2nat (bvxor ((_ int2bv 64) var357) ((_ int2bv 64) var2460)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3156 Int (* var303 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2864 var2703 (getParts/1126038692 var3686)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2701 Int (hashCode/1337417431 var2864)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1263 Int (bv2nat (bvxor ((_ int2bv 64) var3156) ((_ int2bv 64) var2701)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3397 Int (* var1263 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3369 String (getAlternateId/1126038692 var3686)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3369 null-String))) ; Cond: $r6 != null 
(define-const var2114 String (getAlternateId/1126038692 var3686)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3905 Int (hashCode/-467973558 var2114)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3654 Int (bv2nat (bvxor ((_ int2bv 64) var3397) ((_ int2bv 64) var3905)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2803 Int (* var3654 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2367 String (getDesc/1126038692 var3686)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2367 null-String))) ; Cond: $r8 != null 
(define-const var3535 String (getDesc/1126038692 var3686)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var1825 Int (hashCode/-467973558 var3535)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3236 Int (bv2nat (bvxor ((_ int2bv 64) var2803) ((_ int2bv 64) var1825)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1737 Int (* var3236 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var594 String (getMeaning/1126038692 var3686)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var594 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var935 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2232 Int (bv2nat (bvxor ((_ int2bv 64) var1737) ((_ int2bv 64) var935)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var747 Int (* var2232 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var704 Bool (isHidden/1126038692 var3686)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var704 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3149 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var2394 Int (bv2nat (bvxor ((_ int2bv 64) var747) ((_ int2bv 64) var3149)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2901 Int (* var2394 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2725 var707 (getPlaceholderNameToExampleMap/1126038692 var3686)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3051 Int (hashCode/-1247371579 var2725)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1808 Int (bv2nat (bvxor ((_ int2bv 64) var2901) ((_ int2bv 64) var3051)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3631 Int (* var1808 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3005 var707 (getPlaceholderNameToOriginalCodeMap/1126038692 var3686)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1194 Int (hashCode/-1247371579 var3005)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1358 Int (bv2nat (bvxor ((_ int2bv 64) var3631) ((_ int2bv 64) var1194)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1038 Int (* var1358 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var247 var2753 (jsPlaceholderNames/1126038692 var3686)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2975 Int (hashCode/1818408063 var247)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2730 Int (bv2nat (bvxor ((_ int2bv 64) var1038) ((_ int2bv 64) var2975)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2827=com.google.javascript.jscomp.AutoValue_JsMessage, var3686=r0, var3898=$r1, var2708=null_type, var2199=$r2, var1179=$i31, var226=$i27, var1996=$i28, var1552=$r3, var3178=$i0, var2866=$i29, var2687=$i30, var2035=$z0, var2458=$s32, var1666=$i25, var1580=$i26, var2904=$z1, var1075=$s33, var20=$i19, var357=$i20, var3938=$r4, var2460=$i1, var303=$i21, var3156=$i22, var2703=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2864=$r5, var2701=$i2, var1263=$i23, var3397=$i24, var3369=$r6, var2114=$r7, var3905=$i34, var3654=$i17, var2803=$i18, var2367=$r8, var3535=$r9, var1825=$i35, var3236=$i15, var1737=$i16, var594=$r10, var935=$i36, var2232=$i13, var747=$i14, var704=$z2, var3149=$s37, var2394=$i6, var2901=$i7, var707=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2725=$r12, var3051=$i3, var1808=$i8, var3631=$i9, var3005=$r13, var1194=$i4, var1358=$i10, var1038=$i11, var2753=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var247=$r14, var2975=$i5, var2730=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2827, r0=var3686, $r1=var3898, null_type=var2708, $r2=var2199, $i31=var1179, $i27=var226, $i28=var1996, $r3=var1552, $i0=var3178, $i29=var2866, $i30=var2687, $z0=var2035, $s32=var2458, $i25=var1666, $i26=var1580, $z1=var2904, $s33=var1075, $i19=var20, $i20=var357, $r4=var3938, $i1=var2460, $i21=var303, $i22=var3156, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2703, $r5=var2864, $i2=var2701, $i23=var1263, $i24=var3397, $r6=var3369, $r7=var2114, $i34=var3905, $i17=var3654, $i18=var2803, $r8=var2367, $r9=var3535, $i35=var1825, $i15=var3236, $i16=var1737, $r10=var594, $i36=var935, $i13=var2232, $i14=var747, $z2=var704, $s37=var3149, $i6=var2394, $i7=var2901, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var707, $r12=var2725, $i3=var3051, $i8=var1808, $i9=var3631, $r13=var3005, $i4=var1194, $i10=var1358, $i11=var1038, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2753, $r14=var247, $i5=var2975, $i12=var2730}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15