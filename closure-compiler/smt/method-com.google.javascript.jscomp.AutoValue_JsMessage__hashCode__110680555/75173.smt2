(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2906 0)
(declare-sort var635 0)
(declare-sort var477 0)
(declare-sort var653 0)
(declare-sort var3207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2906) String)
(declare-fun getKey/1126038692 (var2906) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var2906) Bool)
(declare-fun isExternal/1126038692 (var2906) Bool)
(declare-fun getId/1126038692 (var2906) String)
(declare-fun getParts/1126038692 (var2906) var477)
(declare-fun hashCode/1337417431 (var477) Int)
(declare-fun getAlternateId/1126038692 (var2906) String)
(declare-fun getDesc/1126038692 (var2906) String)
(declare-fun getMeaning/1126038692 (var2906) String)
(declare-fun isHidden/1126038692 (var2906) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2906) var653)
(declare-fun hashCode/-1247371579 (var653) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2906) var653)
(declare-fun jsPlaceholderNames/1126038692 (var2906) var3207)
(declare-fun hashCode/1818408063 (var3207) Int)
(declare-const null-var2906 var2906)
(declare-const null-String String)
(declare-const var1333 var2906) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1333 null-var2906)))
(define-const var3285 String (getSourceName/1126038692 var1333)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var3285 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1981 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2172 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1981)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var784 Int (* var2172 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2134 String (getKey/1126038692 var1333)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var546 Int (hashCode/-467973558 var2134)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1470 Int (bv2nat (bvxor ((_ int2bv 64) var784) ((_ int2bv 64) var546)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1237 Int (* var1470 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2570 Bool (isAnonymous/1126038692 var1333)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2570 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3462 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var2476 Int (bv2nat (bvxor ((_ int2bv 64) var1237) ((_ int2bv 64) var3462)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var474 Int (* var2476 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var839 Bool (isExternal/1126038692 var1333)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var839 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2683 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var1593 Int (bv2nat (bvxor ((_ int2bv 64) var474) ((_ int2bv 64) var2683)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1533 Int (* var1593 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2820 String (getId/1126038692 var1333)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3931 Int (hashCode/-467973558 var2820)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2584 Int (bv2nat (bvxor ((_ int2bv 64) var1533) ((_ int2bv 64) var3931)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1946 Int (* var2584 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var720 var477 (getParts/1126038692 var1333)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var10 Int (hashCode/1337417431 var720)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1701 Int (bv2nat (bvxor ((_ int2bv 64) var1946) ((_ int2bv 64) var10)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1309 Int (* var1701 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1850 String (getAlternateId/1126038692 var1333)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1850 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1130 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3454 Int (bv2nat (bvxor ((_ int2bv 64) var1309) ((_ int2bv 64) var1130)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var226 Int (* var3454 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3739 String (getDesc/1126038692 var1333)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var3739 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var1284 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2257 Int (bv2nat (bvxor ((_ int2bv 64) var226) ((_ int2bv 64) var1284)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3295 Int (* var2257 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2106 String (getMeaning/1126038692 var1333)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2106 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var3217 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var1347 Int (bv2nat (bvxor ((_ int2bv 64) var3295) ((_ int2bv 64) var3217)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2437 Int (* var1347 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1662 Bool (isHidden/1126038692 var1333)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var1662 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var946 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2364 Int (bv2nat (bvxor ((_ int2bv 64) var2437) ((_ int2bv 64) var946)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1743 Int (* var2364 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var909 var653 (getPlaceholderNameToExampleMap/1126038692 var1333)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2622 Int (hashCode/-1247371579 var909)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var727 Int (bv2nat (bvxor ((_ int2bv 64) var1743) ((_ int2bv 64) var2622)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2423 Int (* var727 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3347 var653 (getPlaceholderNameToOriginalCodeMap/1126038692 var1333)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3407 Int (hashCode/-1247371579 var3347)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var622 Int (bv2nat (bvxor ((_ int2bv 64) var2423) ((_ int2bv 64) var3407)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2595 Int (* var622 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3819 var3207 (jsPlaceholderNames/1126038692 var1333)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var738 Int (hashCode/1818408063 var3819)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2049 Int (bv2nat (bvxor ((_ int2bv 64) var2595) ((_ int2bv 64) var738)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2906=com.google.javascript.jscomp.AutoValue_JsMessage, var1333=r0, var3285=$r1, var635=null_type, var1981=$i31, var2172=$i27, var784=$i28, var2134=$r3, var546=$i0, var1470=$i29, var1237=$i30, var2570=$z0, var3462=$s32, var2476=$i25, var474=$i26, var839=$z1, var2683=$s33, var1593=$i19, var1533=$i20, var2820=$r4, var3931=$i1, var2584=$i21, var1946=$i22, var477=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var720=$r5, var10=$i2, var1701=$i23, var1309=$i24, var1850=$r6, var1130=$i34, var3454=$i17, var226=$i18, var3739=$r8, var1284=$i35, var2257=$i15, var3295=$i16, var2106=$r10, var3217=$i36, var1347=$i13, var2437=$i14, var1662=$z2, var946=$s37, var2364=$i6, var1743=$i7, var653=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var909=$r12, var2622=$i3, var727=$i8, var2423=$i9, var3347=$r13, var3407=$i4, var622=$i10, var2595=$i11, var3207=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3819=$r14, var738=$i5, var2049=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2906, r0=var1333, $r1=var3285, null_type=var635, $i31=var1981, $i27=var2172, $i28=var784, $r3=var2134, $i0=var546, $i29=var1470, $i30=var1237, $z0=var2570, $s32=var3462, $i25=var2476, $i26=var474, $z1=var839, $s33=var2683, $i19=var1593, $i20=var1533, $r4=var2820, $i1=var3931, $i21=var2584, $i22=var1946, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var477, $r5=var720, $i2=var10, $i23=var1701, $i24=var1309, $r6=var1850, $i34=var1130, $i17=var3454, $i18=var226, $r8=var3739, $i35=var1284, $i15=var2257, $i16=var3295, $r10=var2106, $i36=var3217, $i13=var1347, $i14=var2437, $z2=var1662, $s37=var946, $i6=var2364, $i7=var1743, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var653, $r12=var909, $i3=var2622, $i8=var727, $i9=var2423, $r13=var3347, $i4=var3407, $i10=var622, $i11=var2595, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3207, $r14=var3819, $i5=var738, $i12=var2049}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15