(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1899 0)
(declare-sort var2044 0)
(declare-sort var142 0)
(declare-sort var728 0)
(declare-sort var3974 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1899) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var1899) String)
(declare-fun isAnonymous/1126038692 (var1899) Bool)
(declare-fun isExternal/1126038692 (var1899) Bool)
(declare-fun getId/1126038692 (var1899) String)
(declare-fun getParts/1126038692 (var1899) var142)
(declare-fun hashCode/1337417431 (var142) Int)
(declare-fun getAlternateId/1126038692 (var1899) String)
(declare-fun getDesc/1126038692 (var1899) String)
(declare-fun getMeaning/1126038692 (var1899) String)
(declare-fun isHidden/1126038692 (var1899) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1899) var728)
(declare-fun hashCode/-1247371579 (var728) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1899) var728)
(declare-fun jsPlaceholderNames/1126038692 (var1899) var3974)
(declare-fun hashCode/1818408063 (var3974) Int)
(declare-const null-var1899 var1899)
(declare-const null-String String)
(declare-const var1298 var1899) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1298 null-var1899)))
(define-const var3146 String (getSourceName/1126038692 var1298)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var3146 null-String))) ; Cond: $r1 != null 
(define-const var3370 String (getSourceName/1126038692 var1298)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var2110 Int (hashCode/-467973558 var3370)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var487 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2110)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2397 Int (* var487 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var839 String (getKey/1126038692 var1298)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3382 Int (hashCode/-467973558 var839)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3804 Int (bv2nat (bvxor ((_ int2bv 64) var2397) ((_ int2bv 64) var3382)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2936 Int (* var3804 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1538 Bool (isAnonymous/1126038692 var1298)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1538 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2122 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3284 Int (bv2nat (bvxor ((_ int2bv 64) var2936) ((_ int2bv 64) var2122)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var316 Int (* var3284 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2778 Bool (isExternal/1126038692 var1298)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2778 1 0) 0)) ; Cond: $z1 == 0 
(define-const var459 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var3848 Int (bv2nat (bvxor ((_ int2bv 64) var316) ((_ int2bv 64) var459)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var732 Int (* var3848 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2619 String (getId/1126038692 var1298)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2694 Int (hashCode/-467973558 var2619)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2240 Int (bv2nat (bvxor ((_ int2bv 64) var732) ((_ int2bv 64) var2694)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2746 Int (* var2240 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2025 var142 (getParts/1126038692 var1298)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1012 Int (hashCode/1337417431 var2025)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2322 Int (bv2nat (bvxor ((_ int2bv 64) var2746) ((_ int2bv 64) var1012)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var529 Int (* var2322 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2988 String (getAlternateId/1126038692 var1298)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var2988 null-String))) ; Cond: $r6 != null 
(define-const var1085 String (getAlternateId/1126038692 var1298)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var920 Int (hashCode/-467973558 var1085)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3827 Int (bv2nat (bvxor ((_ int2bv 64) var529) ((_ int2bv 64) var920)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3262 Int (* var3827 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var264 String (getDesc/1126038692 var1298)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var264 null-String))) ; Cond: $r8 != null 
(define-const var3646 String (getDesc/1126038692 var1298)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var1124 Int (hashCode/-467973558 var3646)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2215 Int (bv2nat (bvxor ((_ int2bv 64) var3262) ((_ int2bv 64) var1124)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2024 Int (* var2215 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var713 String (getMeaning/1126038692 var1298)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var713 null-String))) ; Cond: $r10 != null 
(define-const var3784 String (getMeaning/1126038692 var1298)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1411 Int (hashCode/-467973558 var3784)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2855 Int (bv2nat (bvxor ((_ int2bv 64) var2024) ((_ int2bv 64) var1411)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3940 Int (* var2855 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2448 Bool (isHidden/1126038692 var1298)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2448 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2262 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1575 Int (bv2nat (bvxor ((_ int2bv 64) var3940) ((_ int2bv 64) var2262)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var475 Int (* var1575 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var116 var728 (getPlaceholderNameToExampleMap/1126038692 var1298)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var308 Int (hashCode/-1247371579 var116)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var657 Int (bv2nat (bvxor ((_ int2bv 64) var475) ((_ int2bv 64) var308)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1803 Int (* var657 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2301 var728 (getPlaceholderNameToOriginalCodeMap/1126038692 var1298)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var167 Int (hashCode/-1247371579 var2301)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3671 Int (bv2nat (bvxor ((_ int2bv 64) var1803) ((_ int2bv 64) var167)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var597 Int (* var3671 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3215 var3974 (jsPlaceholderNames/1126038692 var1298)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3578 Int (hashCode/1818408063 var3215)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1766 Int (bv2nat (bvxor ((_ int2bv 64) var597) ((_ int2bv 64) var3578)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1899=com.google.javascript.jscomp.AutoValue_JsMessage, var1298=r0, var3146=$r1, var2044=null_type, var3370=$r2, var2110=$i31, var487=$i27, var2397=$i28, var839=$r3, var3382=$i0, var3804=$i29, var2936=$i30, var1538=$z0, var2122=$s32, var3284=$i25, var316=$i26, var2778=$z1, var459=$s33, var3848=$i19, var732=$i20, var2619=$r4, var2694=$i1, var2240=$i21, var2746=$i22, var142=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2025=$r5, var1012=$i2, var2322=$i23, var529=$i24, var2988=$r6, var1085=$r7, var920=$i34, var3827=$i17, var3262=$i18, var264=$r8, var3646=$r9, var1124=$i35, var2215=$i15, var2024=$i16, var713=$r10, var3784=$r11, var1411=$i36, var2855=$i13, var3940=$i14, var2448=$z2, var2262=$s37, var1575=$i6, var475=$i7, var728=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var116=$r12, var308=$i3, var657=$i8, var1803=$i9, var2301=$r13, var167=$i4, var3671=$i10, var597=$i11, var3974=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3215=$r14, var3578=$i5, var1766=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1899, r0=var1298, $r1=var3146, null_type=var2044, $r2=var3370, $i31=var2110, $i27=var487, $i28=var2397, $r3=var839, $i0=var3382, $i29=var3804, $i30=var2936, $z0=var1538, $s32=var2122, $i25=var3284, $i26=var316, $z1=var2778, $s33=var459, $i19=var3848, $i20=var732, $r4=var2619, $i1=var2694, $i21=var2240, $i22=var2746, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var142, $r5=var2025, $i2=var1012, $i23=var2322, $i24=var529, $r6=var2988, $r7=var1085, $i34=var920, $i17=var3827, $i18=var3262, $r8=var264, $r9=var3646, $i35=var1124, $i15=var2215, $i16=var2024, $r10=var713, $r11=var3784, $i36=var1411, $i13=var2855, $i14=var3940, $z2=var2448, $s37=var2262, $i6=var1575, $i7=var475, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var728, $r12=var116, $i3=var308, $i8=var657, $i9=var1803, $r13=var2301, $i4=var167, $i10=var3671, $i11=var597, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3974, $r14=var3215, $i5=var3578, $i12=var1766}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 6}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15