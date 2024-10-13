(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var960 0)
(declare-sort var1360 0)
(declare-sort var2147 0)
(declare-sort var430 0)
(declare-sort var1480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var960) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var960) String)
(declare-fun isAnonymous/1126038692 (var960) Bool)
(declare-fun isExternal/1126038692 (var960) Bool)
(declare-fun getId/1126038692 (var960) String)
(declare-fun getParts/1126038692 (var960) var2147)
(declare-fun hashCode/1337417431 (var2147) Int)
(declare-fun getAlternateId/1126038692 (var960) String)
(declare-fun getDesc/1126038692 (var960) String)
(declare-fun getMeaning/1126038692 (var960) String)
(declare-fun isHidden/1126038692 (var960) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var960) var430)
(declare-fun hashCode/-1247371579 (var430) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var960) var430)
(declare-fun jsPlaceholderNames/1126038692 (var960) var1480)
(declare-fun hashCode/1818408063 (var1480) Int)
(declare-const null-var960 var960)
(declare-const null-String String)
(declare-const var3732 var960) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3732 null-var960)))
(define-const var1395 String (getSourceName/1126038692 var3732)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var1395 null-String))) ; Cond: $r1 != null 
(define-const var1984 String (getSourceName/1126038692 var3732)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var1481 Int (hashCode/-467973558 var1984)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2892 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1481)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3392 Int (* var2892 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1128 String (getKey/1126038692 var3732)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2604 Int (hashCode/-467973558 var1128)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var757 Int (bv2nat (bvxor ((_ int2bv 64) var3392) ((_ int2bv 64) var2604)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1313 Int (* var757 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1227 Bool (isAnonymous/1126038692 var3732)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1227 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var767 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var3751 Int (bv2nat (bvxor ((_ int2bv 64) var1313) ((_ int2bv 64) var767)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1812 Int (* var3751 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var345 Bool (isExternal/1126038692 var3732)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var345 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3886 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3643 Int (bv2nat (bvxor ((_ int2bv 64) var1812) ((_ int2bv 64) var3886)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2120 Int (* var3643 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var400 String (getId/1126038692 var3732)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1046 Int (hashCode/-467973558 var400)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2000 Int (bv2nat (bvxor ((_ int2bv 64) var2120) ((_ int2bv 64) var1046)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1795 Int (* var2000 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var729 var2147 (getParts/1126038692 var3732)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var409 Int (hashCode/1337417431 var729)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3490 Int (bv2nat (bvxor ((_ int2bv 64) var1795) ((_ int2bv 64) var409)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2270 Int (* var3490 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1274 String (getAlternateId/1126038692 var3732)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1274 null-String))) ; Cond: $r6 != null 
(define-const var961 String (getAlternateId/1126038692 var3732)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3692 Int (hashCode/-467973558 var961)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1697 Int (bv2nat (bvxor ((_ int2bv 64) var2270) ((_ int2bv 64) var3692)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3706 Int (* var1697 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var201 String (getDesc/1126038692 var3732)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var201 null-String))) ; Cond: $r8 != null 
(define-const var2332 String (getDesc/1126038692 var3732)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var460 Int (hashCode/-467973558 var2332)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3053 Int (bv2nat (bvxor ((_ int2bv 64) var3706) ((_ int2bv 64) var460)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var894 Int (* var3053 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3797 String (getMeaning/1126038692 var3732)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3797 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var3488 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var1463 Int (bv2nat (bvxor ((_ int2bv 64) var894) ((_ int2bv 64) var3488)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2463 Int (* var1463 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var966 Bool (isHidden/1126038692 var3732)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var966 1 0) 0)) ; Cond: $z2 == 0 
(define-const var3427 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var1832 Int (bv2nat (bvxor ((_ int2bv 64) var2463) ((_ int2bv 64) var3427)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3939 Int (* var1832 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1498 var430 (getPlaceholderNameToExampleMap/1126038692 var3732)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2040 Int (hashCode/-1247371579 var1498)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3465 Int (bv2nat (bvxor ((_ int2bv 64) var3939) ((_ int2bv 64) var2040)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2253 Int (* var3465 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3915 var430 (getPlaceholderNameToOriginalCodeMap/1126038692 var3732)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2759 Int (hashCode/-1247371579 var3915)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var490 Int (bv2nat (bvxor ((_ int2bv 64) var2253) ((_ int2bv 64) var2759)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var754 Int (* var490 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1081 var1480 (jsPlaceholderNames/1126038692 var3732)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var487 Int (hashCode/1818408063 var1081)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var415 Int (bv2nat (bvxor ((_ int2bv 64) var754) ((_ int2bv 64) var487)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var960=com.google.javascript.jscomp.AutoValue_JsMessage, var3732=r0, var1395=$r1, var1360=null_type, var1984=$r2, var1481=$i31, var2892=$i27, var3392=$i28, var1128=$r3, var2604=$i0, var757=$i29, var1313=$i30, var1227=$z0, var767=$s32, var3751=$i25, var1812=$i26, var345=$z1, var3886=$s33, var3643=$i19, var2120=$i20, var400=$r4, var1046=$i1, var2000=$i21, var1795=$i22, var2147=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var729=$r5, var409=$i2, var3490=$i23, var2270=$i24, var1274=$r6, var961=$r7, var3692=$i34, var1697=$i17, var3706=$i18, var201=$r8, var2332=$r9, var460=$i35, var3053=$i15, var894=$i16, var3797=$r10, var3488=$i36, var1463=$i13, var2463=$i14, var966=$z2, var3427=$s37, var1832=$i6, var3939=$i7, var430=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1498=$r12, var2040=$i3, var3465=$i8, var2253=$i9, var3915=$r13, var2759=$i4, var490=$i10, var754=$i11, var1480=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1081=$r14, var487=$i5, var415=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var960, r0=var3732, $r1=var1395, null_type=var1360, $r2=var1984, $i31=var1481, $i27=var2892, $i28=var3392, $r3=var1128, $i0=var2604, $i29=var757, $i30=var1313, $z0=var1227, $s32=var767, $i25=var3751, $i26=var1812, $z1=var345, $s33=var3886, $i19=var3643, $i20=var2120, $r4=var400, $i1=var1046, $i21=var2000, $i22=var1795, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2147, $r5=var729, $i2=var409, $i23=var3490, $i24=var2270, $r6=var1274, $r7=var961, $i34=var3692, $i17=var1697, $i18=var3706, $r8=var201, $r9=var2332, $i35=var460, $i15=var3053, $i16=var894, $r10=var3797, $i36=var3488, $i13=var1463, $i14=var2463, $z2=var966, $s37=var3427, $i6=var1832, $i7=var3939, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var430, $r12=var1498, $i3=var2040, $i8=var3465, $i9=var2253, $r13=var3915, $i4=var2759, $i10=var490, $i11=var754, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1480, $r14=var1081, $i5=var487, $i12=var415}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15