(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1291 0)
(declare-sort var1784 0)
(declare-sort var2513 0)
(declare-sort var1293 0)
(declare-sort var117 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1291) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var1291) String)
(declare-fun isAnonymous/1126038692 (var1291) Bool)
(declare-fun isExternal/1126038692 (var1291) Bool)
(declare-fun getId/1126038692 (var1291) String)
(declare-fun getParts/1126038692 (var1291) var2513)
(declare-fun hashCode/1337417431 (var2513) Int)
(declare-fun getAlternateId/1126038692 (var1291) String)
(declare-fun getDesc/1126038692 (var1291) String)
(declare-fun getMeaning/1126038692 (var1291) String)
(declare-fun isHidden/1126038692 (var1291) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1291) var1293)
(declare-fun hashCode/-1247371579 (var1293) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1291) var1293)
(declare-fun jsPlaceholderNames/1126038692 (var1291) var117)
(declare-fun hashCode/1818408063 (var117) Int)
(declare-const null-var1291 var1291)
(declare-const null-String String)
(declare-const var1429 var1291) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1429 null-var1291)))
(define-const var1613 String (getSourceName/1126038692 var1429)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var1613 null-String))) ; Cond: $r1 != null 
(define-const var3294 String (getSourceName/1126038692 var1429)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var2868 Int (hashCode/-467973558 var3294)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3127 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2868)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2722 Int (* var3127 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2324 String (getKey/1126038692 var1429)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2163 Int (hashCode/-467973558 var2324)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var162 Int (bv2nat (bvxor ((_ int2bv 64) var2722) ((_ int2bv 64) var2163)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3021 Int (* var162 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2084 Bool (isAnonymous/1126038692 var1429)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2084 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1444 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var1339 Int (bv2nat (bvxor ((_ int2bv 64) var3021) ((_ int2bv 64) var1444)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3979 Int (* var1339 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3784 Bool (isExternal/1126038692 var1429)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var3784 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3593 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3963 Int (bv2nat (bvxor ((_ int2bv 64) var3979) ((_ int2bv 64) var3593)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1266 Int (* var3963 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var791 String (getId/1126038692 var1429)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1869 Int (hashCode/-467973558 var791)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2767 Int (bv2nat (bvxor ((_ int2bv 64) var1266) ((_ int2bv 64) var1869)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2882 Int (* var2767 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var849 var2513 (getParts/1126038692 var1429)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1427 Int (hashCode/1337417431 var849)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3569 Int (bv2nat (bvxor ((_ int2bv 64) var2882) ((_ int2bv 64) var1427)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1281 Int (* var3569 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3762 String (getAlternateId/1126038692 var1429)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var3762 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var740 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2720 Int (bv2nat (bvxor ((_ int2bv 64) var1281) ((_ int2bv 64) var740)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2024 Int (* var2720 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var227 String (getDesc/1126038692 var1429)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var227 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3471 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2335 Int (bv2nat (bvxor ((_ int2bv 64) var2024) ((_ int2bv 64) var3471)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1750 Int (* var2335 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1555 String (getMeaning/1126038692 var1429)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var1555 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var1156 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var3270 Int (bv2nat (bvxor ((_ int2bv 64) var1750) ((_ int2bv 64) var1156)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2157 Int (* var3270 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1943 Bool (isHidden/1126038692 var1429)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var1943 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var498 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var3787 Int (bv2nat (bvxor ((_ int2bv 64) var2157) ((_ int2bv 64) var498)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var119 Int (* var3787 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2517 var1293 (getPlaceholderNameToExampleMap/1126038692 var1429)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3389 Int (hashCode/-1247371579 var2517)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var801 Int (bv2nat (bvxor ((_ int2bv 64) var119) ((_ int2bv 64) var3389)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2225 Int (* var801 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var448 var1293 (getPlaceholderNameToOriginalCodeMap/1126038692 var1429)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2529 Int (hashCode/-1247371579 var448)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var113 Int (bv2nat (bvxor ((_ int2bv 64) var2225) ((_ int2bv 64) var2529)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2382 Int (* var113 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2912 var117 (jsPlaceholderNames/1126038692 var1429)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var538 Int (hashCode/1818408063 var2912)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3725 Int (bv2nat (bvxor ((_ int2bv 64) var2382) ((_ int2bv 64) var538)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1291=com.google.javascript.jscomp.AutoValue_JsMessage, var1429=r0, var1613=$r1, var1784=null_type, var3294=$r2, var2868=$i31, var3127=$i27, var2722=$i28, var2324=$r3, var2163=$i0, var162=$i29, var3021=$i30, var2084=$z0, var1444=$s32, var1339=$i25, var3979=$i26, var3784=$z1, var3593=$s33, var3963=$i19, var1266=$i20, var791=$r4, var1869=$i1, var2767=$i21, var2882=$i22, var2513=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var849=$r5, var1427=$i2, var3569=$i23, var1281=$i24, var3762=$r6, var740=$i34, var2720=$i17, var2024=$i18, var227=$r8, var3471=$i35, var2335=$i15, var1750=$i16, var1555=$r10, var1156=$i36, var3270=$i13, var2157=$i14, var1943=$z2, var498=$s37, var3787=$i6, var119=$i7, var1293=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2517=$r12, var3389=$i3, var801=$i8, var2225=$i9, var448=$r13, var2529=$i4, var113=$i10, var2382=$i11, var117=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2912=$r14, var538=$i5, var3725=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1291, r0=var1429, $r1=var1613, null_type=var1784, $r2=var3294, $i31=var2868, $i27=var3127, $i28=var2722, $r3=var2324, $i0=var2163, $i29=var162, $i30=var3021, $z0=var2084, $s32=var1444, $i25=var1339, $i26=var3979, $z1=var3784, $s33=var3593, $i19=var3963, $i20=var1266, $r4=var791, $i1=var1869, $i21=var2767, $i22=var2882, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2513, $r5=var849, $i2=var1427, $i23=var3569, $i24=var1281, $r6=var3762, $i34=var740, $i17=var2720, $i18=var2024, $r8=var227, $i35=var3471, $i15=var2335, $i16=var1750, $r10=var1555, $i36=var1156, $i13=var3270, $i14=var2157, $z2=var1943, $s37=var498, $i6=var3787, $i7=var119, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1293, $r12=var2517, $i3=var3389, $i8=var801, $i9=var2225, $r13=var448, $i4=var2529, $i10=var113, $i11=var2382, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var117, $r14=var2912, $i5=var538, $i12=var3725}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15