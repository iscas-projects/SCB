(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1838 0)
(declare-sort var3853 0)
(declare-sort var864 0)
(declare-sort var3387 0)
(declare-sort var187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1838) String)
(declare-fun getKey/1126038692 (var1838) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1838) Bool)
(declare-fun isExternal/1126038692 (var1838) Bool)
(declare-fun getId/1126038692 (var1838) String)
(declare-fun getParts/1126038692 (var1838) var864)
(declare-fun hashCode/1337417431 (var864) Int)
(declare-fun getAlternateId/1126038692 (var1838) String)
(declare-fun getDesc/1126038692 (var1838) String)
(declare-fun getMeaning/1126038692 (var1838) String)
(declare-fun isHidden/1126038692 (var1838) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1838) var3387)
(declare-fun hashCode/-1247371579 (var3387) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1838) var3387)
(declare-fun jsPlaceholderNames/1126038692 (var1838) var187)
(declare-fun hashCode/1818408063 (var187) Int)
(declare-const null-var1838 var1838)
(declare-const null-String String)
(declare-const var1815 var1838) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1815 null-var1838)))
(define-const var3350 String (getSourceName/1126038692 var1815)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var3350 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2680 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var1102 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2680)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1405 Int (* var1102 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1434 String (getKey/1126038692 var1815)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var615 Int (hashCode/-467973558 var1434)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1466 Int (bv2nat (bvxor ((_ int2bv 64) var1405) ((_ int2bv 64) var615)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1469 Int (* var1466 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var676 Bool (isAnonymous/1126038692 var1815)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var676 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var768 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var1776 Int (bv2nat (bvxor ((_ int2bv 64) var1469) ((_ int2bv 64) var768)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2707 Int (* var1776 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3135 Bool (isExternal/1126038692 var1815)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3135 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2774 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var581 Int (bv2nat (bvxor ((_ int2bv 64) var2707) ((_ int2bv 64) var2774)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3728 Int (* var581 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2849 String (getId/1126038692 var1815)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3377 Int (hashCode/-467973558 var2849)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1972 Int (bv2nat (bvxor ((_ int2bv 64) var3728) ((_ int2bv 64) var3377)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var599 Int (* var1972 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var472 var864 (getParts/1126038692 var1815)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3154 Int (hashCode/1337417431 var472)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var736 Int (bv2nat (bvxor ((_ int2bv 64) var599) ((_ int2bv 64) var3154)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1850 Int (* var736 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1008 String (getAlternateId/1126038692 var1815)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1008 null-String))) ; Cond: $r6 != null 
(define-const var694 String (getAlternateId/1126038692 var1815)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var563 Int (hashCode/-467973558 var694)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1223 Int (bv2nat (bvxor ((_ int2bv 64) var1850) ((_ int2bv 64) var563)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1116 Int (* var1223 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1576 String (getDesc/1126038692 var1815)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1576 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3326 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var1355 Int (bv2nat (bvxor ((_ int2bv 64) var1116) ((_ int2bv 64) var3326)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2950 Int (* var1355 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1411 String (getMeaning/1126038692 var1815)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var1411 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2162 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2802 Int (bv2nat (bvxor ((_ int2bv 64) var2950) ((_ int2bv 64) var2162)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2941 Int (* var2802 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3558 Bool (isHidden/1126038692 var1815)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var3558 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2261 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var884 Int (bv2nat (bvxor ((_ int2bv 64) var2941) ((_ int2bv 64) var2261)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2496 Int (* var884 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var901 var3387 (getPlaceholderNameToExampleMap/1126038692 var1815)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3564 Int (hashCode/-1247371579 var901)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2688 Int (bv2nat (bvxor ((_ int2bv 64) var2496) ((_ int2bv 64) var3564)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3584 Int (* var2688 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1146 var3387 (getPlaceholderNameToOriginalCodeMap/1126038692 var1815)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1211 Int (hashCode/-1247371579 var1146)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1022 Int (bv2nat (bvxor ((_ int2bv 64) var3584) ((_ int2bv 64) var1211)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3099 Int (* var1022 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2698 var187 (jsPlaceholderNames/1126038692 var1815)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3150 Int (hashCode/1818408063 var2698)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2271 Int (bv2nat (bvxor ((_ int2bv 64) var3099) ((_ int2bv 64) var3150)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1838=com.google.javascript.jscomp.AutoValue_JsMessage, var1815=r0, var3350=$r1, var3853=null_type, var2680=$i31, var1102=$i27, var1405=$i28, var1434=$r3, var615=$i0, var1466=$i29, var1469=$i30, var676=$z0, var768=$s32, var1776=$i25, var2707=$i26, var3135=$z1, var2774=$s33, var581=$i19, var3728=$i20, var2849=$r4, var3377=$i1, var1972=$i21, var599=$i22, var864=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var472=$r5, var3154=$i2, var736=$i23, var1850=$i24, var1008=$r6, var694=$r7, var563=$i34, var1223=$i17, var1116=$i18, var1576=$r8, var3326=$i35, var1355=$i15, var2950=$i16, var1411=$r10, var2162=$i36, var2802=$i13, var2941=$i14, var3558=$z2, var2261=$s37, var884=$i6, var2496=$i7, var3387=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var901=$r12, var3564=$i3, var2688=$i8, var3584=$i9, var1146=$r13, var1211=$i4, var1022=$i10, var3099=$i11, var187=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2698=$r14, var3150=$i5, var2271=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1838, r0=var1815, $r1=var3350, null_type=var3853, $i31=var2680, $i27=var1102, $i28=var1405, $r3=var1434, $i0=var615, $i29=var1466, $i30=var1469, $z0=var676, $s32=var768, $i25=var1776, $i26=var2707, $z1=var3135, $s33=var2774, $i19=var581, $i20=var3728, $r4=var2849, $i1=var3377, $i21=var1972, $i22=var599, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var864, $r5=var472, $i2=var3154, $i23=var736, $i24=var1850, $r6=var1008, $r7=var694, $i34=var563, $i17=var1223, $i18=var1116, $r8=var1576, $i35=var3326, $i15=var1355, $i16=var2950, $r10=var1411, $i36=var2162, $i13=var2802, $i14=var2941, $z2=var3558, $s37=var2261, $i6=var884, $i7=var2496, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3387, $r12=var901, $i3=var3564, $i8=var2688, $i9=var3584, $r13=var1146, $i4=var1211, $i10=var1022, $i11=var3099, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var187, $r14=var2698, $i5=var3150, $i12=var2271}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15