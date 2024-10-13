(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2587 0)
(declare-sort var1267 0)
(declare-sort var2715 0)
(declare-sort var3415 0)
(declare-sort var2759 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2587) String)
(declare-fun getKey/1126038692 (var2587) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var2587) Bool)
(declare-fun isExternal/1126038692 (var2587) Bool)
(declare-fun getId/1126038692 (var2587) String)
(declare-fun getParts/1126038692 (var2587) var2715)
(declare-fun hashCode/1337417431 (var2715) Int)
(declare-fun getAlternateId/1126038692 (var2587) String)
(declare-fun getDesc/1126038692 (var2587) String)
(declare-fun getMeaning/1126038692 (var2587) String)
(declare-fun isHidden/1126038692 (var2587) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2587) var3415)
(declare-fun hashCode/-1247371579 (var3415) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2587) var3415)
(declare-fun jsPlaceholderNames/1126038692 (var2587) var2759)
(declare-fun hashCode/1818408063 (var2759) Int)
(declare-const null-var2587 var2587)
(declare-const null-String String)
(declare-const var3940 var2587) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3940 null-var2587)))
(define-const var110 String (getSourceName/1126038692 var3940)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var110 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var671 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var168 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var671)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1341 Int (* var168 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var214 String (getKey/1126038692 var3940)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2080 Int (hashCode/-467973558 var214)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1614 Int (bv2nat (bvxor ((_ int2bv 64) var1341) ((_ int2bv 64) var2080)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3923 Int (* var1614 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2704 Bool (isAnonymous/1126038692 var3940)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2704 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3844 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var302 Int (bv2nat (bvxor ((_ int2bv 64) var3923) ((_ int2bv 64) var3844)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2133 Int (* var302 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1036 Bool (isExternal/1126038692 var3940)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1036 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1574 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3721 Int (bv2nat (bvxor ((_ int2bv 64) var2133) ((_ int2bv 64) var1574)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var239 Int (* var3721 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2838 String (getId/1126038692 var3940)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var241 Int (hashCode/-467973558 var2838)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1624 Int (bv2nat (bvxor ((_ int2bv 64) var239) ((_ int2bv 64) var241)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3537 Int (* var1624 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1872 var2715 (getParts/1126038692 var3940)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var258 Int (hashCode/1337417431 var1872)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3530 Int (bv2nat (bvxor ((_ int2bv 64) var3537) ((_ int2bv 64) var258)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1560 Int (* var3530 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1950 String (getAlternateId/1126038692 var3940)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1950 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var3349 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2827 Int (bv2nat (bvxor ((_ int2bv 64) var1560) ((_ int2bv 64) var3349)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var357 Int (* var2827 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2426 String (getDesc/1126038692 var3940)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2426 null-String))) ; Cond: $r8 != null 
(define-const var1987 String (getDesc/1126038692 var3940)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var3084 Int (hashCode/-467973558 var1987)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2217 Int (bv2nat (bvxor ((_ int2bv 64) var357) ((_ int2bv 64) var3084)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1584 Int (* var2217 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3508 String (getMeaning/1126038692 var3940)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3508 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var3127 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2376 Int (bv2nat (bvxor ((_ int2bv 64) var1584) ((_ int2bv 64) var3127)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1365 Int (* var2376 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2517 Bool (isHidden/1126038692 var3940)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var2517 1 0) 0)) ; Cond: $z2 == 0 
(define-const var398 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var3004 Int (bv2nat (bvxor ((_ int2bv 64) var1365) ((_ int2bv 64) var398)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1328 Int (* var3004 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var941 var3415 (getPlaceholderNameToExampleMap/1126038692 var3940)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1961 Int (hashCode/-1247371579 var941)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1065 Int (bv2nat (bvxor ((_ int2bv 64) var1328) ((_ int2bv 64) var1961)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3072 Int (* var1065 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1393 var3415 (getPlaceholderNameToOriginalCodeMap/1126038692 var3940)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3972 Int (hashCode/-1247371579 var1393)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1671 Int (bv2nat (bvxor ((_ int2bv 64) var3072) ((_ int2bv 64) var3972)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2771 Int (* var1671 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1236 var2759 (jsPlaceholderNames/1126038692 var3940)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1798 Int (hashCode/1818408063 var1236)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var83 Int (bv2nat (bvxor ((_ int2bv 64) var2771) ((_ int2bv 64) var1798)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2587=com.google.javascript.jscomp.AutoValue_JsMessage, var3940=r0, var110=$r1, var1267=null_type, var671=$i31, var168=$i27, var1341=$i28, var214=$r3, var2080=$i0, var1614=$i29, var3923=$i30, var2704=$z0, var3844=$s32, var302=$i25, var2133=$i26, var1036=$z1, var1574=$s33, var3721=$i19, var239=$i20, var2838=$r4, var241=$i1, var1624=$i21, var3537=$i22, var2715=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1872=$r5, var258=$i2, var3530=$i23, var1560=$i24, var1950=$r6, var3349=$i34, var2827=$i17, var357=$i18, var2426=$r8, var1987=$r9, var3084=$i35, var2217=$i15, var1584=$i16, var3508=$r10, var3127=$i36, var2376=$i13, var1365=$i14, var2517=$z2, var398=$s37, var3004=$i6, var1328=$i7, var3415=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var941=$r12, var1961=$i3, var1065=$i8, var3072=$i9, var1393=$r13, var3972=$i4, var1671=$i10, var2771=$i11, var2759=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1236=$r14, var1798=$i5, var83=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2587, r0=var3940, $r1=var110, null_type=var1267, $i31=var671, $i27=var168, $i28=var1341, $r3=var214, $i0=var2080, $i29=var1614, $i30=var3923, $z0=var2704, $s32=var3844, $i25=var302, $i26=var2133, $z1=var1036, $s33=var1574, $i19=var3721, $i20=var239, $r4=var2838, $i1=var241, $i21=var1624, $i22=var3537, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2715, $r5=var1872, $i2=var258, $i23=var3530, $i24=var1560, $r6=var1950, $i34=var3349, $i17=var2827, $i18=var357, $r8=var2426, $r9=var1987, $i35=var3084, $i15=var2217, $i16=var1584, $r10=var3508, $i36=var3127, $i13=var2376, $i14=var1365, $z2=var2517, $s37=var398, $i6=var3004, $i7=var1328, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3415, $r12=var941, $i3=var1961, $i8=var1065, $i9=var3072, $r13=var1393, $i4=var3972, $i10=var1671, $i11=var2771, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2759, $r14=var1236, $i5=var1798, $i12=var83}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15