(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2109 0)
(declare-sort var1039 0)
(declare-sort var1486 0)
(declare-sort var2293 0)
(declare-sort var1267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2109) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2109) String)
(declare-fun isAnonymous/1126038692 (var2109) Bool)
(declare-fun isExternal/1126038692 (var2109) Bool)
(declare-fun getId/1126038692 (var2109) String)
(declare-fun getParts/1126038692 (var2109) var1486)
(declare-fun hashCode/1337417431 (var1486) Int)
(declare-fun getAlternateId/1126038692 (var2109) String)
(declare-fun getDesc/1126038692 (var2109) String)
(declare-fun getMeaning/1126038692 (var2109) String)
(declare-fun isHidden/1126038692 (var2109) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2109) var2293)
(declare-fun hashCode/-1247371579 (var2293) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2109) var2293)
(declare-fun jsPlaceholderNames/1126038692 (var2109) var1267)
(declare-fun hashCode/1818408063 (var1267) Int)
(declare-const null-var2109 var2109)
(declare-const null-String String)
(declare-const var2188 var2109) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2188 null-var2109)))
(define-const var2065 String (getSourceName/1126038692 var2188)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var2065 null-String))) ; Cond: $r1 != null 
(define-const var2786 String (getSourceName/1126038692 var2188)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var274 Int (hashCode/-467973558 var2786)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2662 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var274)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var595 Int (* var2662 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3423 String (getKey/1126038692 var2188)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2381 Int (hashCode/-467973558 var3423)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3035 Int (bv2nat (bvxor ((_ int2bv 64) var595) ((_ int2bv 64) var2381)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var646 Int (* var3035 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var277 Bool (isAnonymous/1126038692 var2188)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var277 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1620 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var654 Int (bv2nat (bvxor ((_ int2bv 64) var646) ((_ int2bv 64) var1620)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3254 Int (* var654 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var847 Bool (isExternal/1126038692 var2188)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var847 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2500 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var3269 Int (bv2nat (bvxor ((_ int2bv 64) var3254) ((_ int2bv 64) var2500)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3576 Int (* var3269 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1535 String (getId/1126038692 var2188)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var429 Int (hashCode/-467973558 var1535)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1218 Int (bv2nat (bvxor ((_ int2bv 64) var3576) ((_ int2bv 64) var429)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3305 Int (* var1218 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2637 var1486 (getParts/1126038692 var2188)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1646 Int (hashCode/1337417431 var2637)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3377 Int (bv2nat (bvxor ((_ int2bv 64) var3305) ((_ int2bv 64) var1646)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3055 Int (* var3377 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1594 String (getAlternateId/1126038692 var2188)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1594 null-String))) ; Cond: $r6 != null 
(define-const var3617 String (getAlternateId/1126038692 var2188)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var2585 Int (hashCode/-467973558 var3617)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1745 Int (bv2nat (bvxor ((_ int2bv 64) var3055) ((_ int2bv 64) var2585)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3104 Int (* var1745 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3869 String (getDesc/1126038692 var2188)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var3869 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var1617 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2488 Int (bv2nat (bvxor ((_ int2bv 64) var3104) ((_ int2bv 64) var1617)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1750 Int (* var2488 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1624 String (getMeaning/1126038692 var2188)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var1624 null-String))) ; Cond: $r10 != null 
(define-const var1470 String (getMeaning/1126038692 var2188)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var899 Int (hashCode/-467973558 var1470)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2687 Int (bv2nat (bvxor ((_ int2bv 64) var1750) ((_ int2bv 64) var899)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3746 Int (* var2687 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2793 Bool (isHidden/1126038692 var2188)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2793 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var567 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2022 Int (bv2nat (bvxor ((_ int2bv 64) var3746) ((_ int2bv 64) var567)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2274 Int (* var2022 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3414 var2293 (getPlaceholderNameToExampleMap/1126038692 var2188)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3136 Int (hashCode/-1247371579 var3414)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var256 Int (bv2nat (bvxor ((_ int2bv 64) var2274) ((_ int2bv 64) var3136)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var803 Int (* var256 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3265 var2293 (getPlaceholderNameToOriginalCodeMap/1126038692 var2188)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3042 Int (hashCode/-1247371579 var3265)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1612 Int (bv2nat (bvxor ((_ int2bv 64) var803) ((_ int2bv 64) var3042)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1970 Int (* var1612 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2432 var1267 (jsPlaceholderNames/1126038692 var2188)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3339 Int (hashCode/1818408063 var2432)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1070 Int (bv2nat (bvxor ((_ int2bv 64) var1970) ((_ int2bv 64) var3339)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2109=com.google.javascript.jscomp.AutoValue_JsMessage, var2188=r0, var2065=$r1, var1039=null_type, var2786=$r2, var274=$i31, var2662=$i27, var595=$i28, var3423=$r3, var2381=$i0, var3035=$i29, var646=$i30, var277=$z0, var1620=$s32, var654=$i25, var3254=$i26, var847=$z1, var2500=$s33, var3269=$i19, var3576=$i20, var1535=$r4, var429=$i1, var1218=$i21, var3305=$i22, var1486=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2637=$r5, var1646=$i2, var3377=$i23, var3055=$i24, var1594=$r6, var3617=$r7, var2585=$i34, var1745=$i17, var3104=$i18, var3869=$r8, var1617=$i35, var2488=$i15, var1750=$i16, var1624=$r10, var1470=$r11, var899=$i36, var2687=$i13, var3746=$i14, var2793=$z2, var567=$s37, var2022=$i6, var2274=$i7, var2293=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3414=$r12, var3136=$i3, var256=$i8, var803=$i9, var3265=$r13, var3042=$i4, var1612=$i10, var1970=$i11, var1267=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2432=$r14, var3339=$i5, var1070=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2109, r0=var2188, $r1=var2065, null_type=var1039, $r2=var2786, $i31=var274, $i27=var2662, $i28=var595, $r3=var3423, $i0=var2381, $i29=var3035, $i30=var646, $z0=var277, $s32=var1620, $i25=var654, $i26=var3254, $z1=var847, $s33=var2500, $i19=var3269, $i20=var3576, $r4=var1535, $i1=var429, $i21=var1218, $i22=var3305, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1486, $r5=var2637, $i2=var1646, $i23=var3377, $i24=var3055, $r6=var1594, $r7=var3617, $i34=var2585, $i17=var1745, $i18=var3104, $r8=var3869, $i35=var1617, $i15=var2488, $i16=var1750, $r10=var1624, $r11=var1470, $i36=var899, $i13=var2687, $i14=var3746, $z2=var2793, $s37=var567, $i6=var2022, $i7=var2274, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2293, $r12=var3414, $i3=var3136, $i8=var256, $i9=var803, $r13=var3265, $i4=var3042, $i10=var1612, $i11=var1970, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1267, $r14=var2432, $i5=var3339, $i12=var1070}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15