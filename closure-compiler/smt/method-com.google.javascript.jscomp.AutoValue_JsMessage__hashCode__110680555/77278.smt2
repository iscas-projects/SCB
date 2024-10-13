(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1784 0)
(declare-sort var2571 0)
(declare-sort var2492 0)
(declare-sort var1367 0)
(declare-sort var3625 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1784) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var1784) String)
(declare-fun isAnonymous/1126038692 (var1784) Bool)
(declare-fun isExternal/1126038692 (var1784) Bool)
(declare-fun getId/1126038692 (var1784) String)
(declare-fun getParts/1126038692 (var1784) var2492)
(declare-fun hashCode/1337417431 (var2492) Int)
(declare-fun getAlternateId/1126038692 (var1784) String)
(declare-fun getDesc/1126038692 (var1784) String)
(declare-fun getMeaning/1126038692 (var1784) String)
(declare-fun isHidden/1126038692 (var1784) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1784) var1367)
(declare-fun hashCode/-1247371579 (var1367) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1784) var1367)
(declare-fun jsPlaceholderNames/1126038692 (var1784) var3625)
(declare-fun hashCode/1818408063 (var3625) Int)
(declare-const null-var1784 var1784)
(declare-const null-String String)
(declare-const var3013 var1784) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3013 null-var1784)))
(define-const var2986 String (getSourceName/1126038692 var3013)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var2986 null-String))) ; Cond: $r1 != null 
(define-const var2435 String (getSourceName/1126038692 var3013)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var761 Int (hashCode/-467973558 var2435)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2467 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var761)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1447 Int (* var2467 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3229 String (getKey/1126038692 var3013)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2241 Int (hashCode/-467973558 var3229)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3722 Int (bv2nat (bvxor ((_ int2bv 64) var1447) ((_ int2bv 64) var2241)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2499 Int (* var3722 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1941 Bool (isAnonymous/1126038692 var3013)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1941 1 0) 0)) ; Cond: $z0 == 0 
(define-const var711 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3321 Int (bv2nat (bvxor ((_ int2bv 64) var2499) ((_ int2bv 64) var711)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2152 Int (* var3321 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1555 Bool (isExternal/1126038692 var3013)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var1555 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3283 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var276 Int (bv2nat (bvxor ((_ int2bv 64) var2152) ((_ int2bv 64) var3283)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1529 Int (* var276 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1034 String (getId/1126038692 var3013)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var166 Int (hashCode/-467973558 var1034)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2660 Int (bv2nat (bvxor ((_ int2bv 64) var1529) ((_ int2bv 64) var166)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2653 Int (* var2660 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2361 var2492 (getParts/1126038692 var3013)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1460 Int (hashCode/1337417431 var2361)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3961 Int (bv2nat (bvxor ((_ int2bv 64) var2653) ((_ int2bv 64) var1460)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3782 Int (* var3961 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2410 String (getAlternateId/1126038692 var3013)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var2410 null-String))) ; Cond: $r6 != null 
(define-const var2508 String (getAlternateId/1126038692 var3013)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1238 Int (hashCode/-467973558 var2508)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1689 Int (bv2nat (bvxor ((_ int2bv 64) var3782) ((_ int2bv 64) var1238)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3583 Int (* var1689 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1046 String (getDesc/1126038692 var3013)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1046 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var2936 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3188 Int (bv2nat (bvxor ((_ int2bv 64) var3583) ((_ int2bv 64) var2936)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2843 Int (* var3188 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3335 String (getMeaning/1126038692 var3013)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3335 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2873 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2651 Int (bv2nat (bvxor ((_ int2bv 64) var2843) ((_ int2bv 64) var2873)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2003 Int (* var2651 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1682 Bool (isHidden/1126038692 var3013)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var1682 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2416 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var3405 Int (bv2nat (bvxor ((_ int2bv 64) var2003) ((_ int2bv 64) var2416)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3665 Int (* var3405 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2513 var1367 (getPlaceholderNameToExampleMap/1126038692 var3013)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2728 Int (hashCode/-1247371579 var2513)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3858 Int (bv2nat (bvxor ((_ int2bv 64) var3665) ((_ int2bv 64) var2728)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var161 Int (* var3858 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1311 var1367 (getPlaceholderNameToOriginalCodeMap/1126038692 var3013)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var126 Int (hashCode/-1247371579 var1311)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1716 Int (bv2nat (bvxor ((_ int2bv 64) var161) ((_ int2bv 64) var126)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1495 Int (* var1716 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1671 var3625 (jsPlaceholderNames/1126038692 var3013)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var145 Int (hashCode/1818408063 var1671)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var784 Int (bv2nat (bvxor ((_ int2bv 64) var1495) ((_ int2bv 64) var145)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1784=com.google.javascript.jscomp.AutoValue_JsMessage, var3013=r0, var2986=$r1, var2571=null_type, var2435=$r2, var761=$i31, var2467=$i27, var1447=$i28, var3229=$r3, var2241=$i0, var3722=$i29, var2499=$i30, var1941=$z0, var711=$s32, var3321=$i25, var2152=$i26, var1555=$z1, var3283=$s33, var276=$i19, var1529=$i20, var1034=$r4, var166=$i1, var2660=$i21, var2653=$i22, var2492=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2361=$r5, var1460=$i2, var3961=$i23, var3782=$i24, var2410=$r6, var2508=$r7, var1238=$i34, var1689=$i17, var3583=$i18, var1046=$r8, var2936=$i35, var3188=$i15, var2843=$i16, var3335=$r10, var2873=$i36, var2651=$i13, var2003=$i14, var1682=$z2, var2416=$s37, var3405=$i6, var3665=$i7, var1367=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2513=$r12, var2728=$i3, var3858=$i8, var161=$i9, var1311=$r13, var126=$i4, var1716=$i10, var1495=$i11, var3625=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1671=$r14, var145=$i5, var784=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1784, r0=var3013, $r1=var2986, null_type=var2571, $r2=var2435, $i31=var761, $i27=var2467, $i28=var1447, $r3=var3229, $i0=var2241, $i29=var3722, $i30=var2499, $z0=var1941, $s32=var711, $i25=var3321, $i26=var2152, $z1=var1555, $s33=var3283, $i19=var276, $i20=var1529, $r4=var1034, $i1=var166, $i21=var2660, $i22=var2653, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2492, $r5=var2361, $i2=var1460, $i23=var3961, $i24=var3782, $r6=var2410, $r7=var2508, $i34=var1238, $i17=var1689, $i18=var3583, $r8=var1046, $i35=var2936, $i15=var3188, $i16=var2843, $r10=var3335, $i36=var2873, $i13=var2651, $i14=var2003, $z2=var1682, $s37=var2416, $i6=var3405, $i7=var3665, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1367, $r12=var2513, $i3=var2728, $i8=var3858, $i9=var161, $r13=var1311, $i4=var126, $i10=var1716, $i11=var1495, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3625, $r14=var1671, $i5=var145, $i12=var784}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15