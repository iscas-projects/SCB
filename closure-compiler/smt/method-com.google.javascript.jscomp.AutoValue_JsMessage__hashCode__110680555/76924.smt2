(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var57 0)
(declare-sort var3388 0)
(declare-sort var96 0)
(declare-sort var3905 0)
(declare-sort var2674 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var57) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var57) String)
(declare-fun isAnonymous/1126038692 (var57) Bool)
(declare-fun isExternal/1126038692 (var57) Bool)
(declare-fun getId/1126038692 (var57) String)
(declare-fun getParts/1126038692 (var57) var96)
(declare-fun hashCode/1337417431 (var96) Int)
(declare-fun getAlternateId/1126038692 (var57) String)
(declare-fun getDesc/1126038692 (var57) String)
(declare-fun getMeaning/1126038692 (var57) String)
(declare-fun isHidden/1126038692 (var57) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var57) var3905)
(declare-fun hashCode/-1247371579 (var3905) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var57) var3905)
(declare-fun jsPlaceholderNames/1126038692 (var57) var2674)
(declare-fun hashCode/1818408063 (var2674) Int)
(declare-const null-var57 var57)
(declare-const null-String String)
(declare-const var3496 var57) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3496 null-var57)))
(define-const var3503 String (getSourceName/1126038692 var3496)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var3503 null-String))) ; Cond: $r1 != null 
(define-const var3578 String (getSourceName/1126038692 var3496)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var2997 Int (hashCode/-467973558 var3578)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2192 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2997)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1366 Int (* var2192 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3952 String (getKey/1126038692 var3496)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1725 Int (hashCode/-467973558 var3952)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2396 Int (bv2nat (bvxor ((_ int2bv 64) var1366) ((_ int2bv 64) var1725)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2244 Int (* var2396 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var350 Bool (isAnonymous/1126038692 var3496)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var350 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2551 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var1038 Int (bv2nat (bvxor ((_ int2bv 64) var2244) ((_ int2bv 64) var2551)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3025 Int (* var1038 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var861 Bool (isExternal/1126038692 var3496)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var861 1 0) 0)) ; Cond: $z1 == 0 
(define-const var282 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var1209 Int (bv2nat (bvxor ((_ int2bv 64) var3025) ((_ int2bv 64) var282)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3260 Int (* var1209 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1334 String (getId/1126038692 var3496)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var850 Int (hashCode/-467973558 var1334)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3243 Int (bv2nat (bvxor ((_ int2bv 64) var3260) ((_ int2bv 64) var850)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1727 Int (* var3243 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var846 var96 (getParts/1126038692 var3496)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var837 Int (hashCode/1337417431 var846)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2834 Int (bv2nat (bvxor ((_ int2bv 64) var1727) ((_ int2bv 64) var837)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2149 Int (* var2834 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1307 String (getAlternateId/1126038692 var3496)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1307 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2640 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var807 Int (bv2nat (bvxor ((_ int2bv 64) var2149) ((_ int2bv 64) var2640)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var904 Int (* var807 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3978 String (getDesc/1126038692 var3496)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3978 null-String))) ; Cond: $r8 != null 
(define-const var255 String (getDesc/1126038692 var3496)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var605 Int (hashCode/-467973558 var255)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1041 Int (bv2nat (bvxor ((_ int2bv 64) var904) ((_ int2bv 64) var605)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2756 Int (* var1041 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3209 String (getMeaning/1126038692 var3496)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3209 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var1564 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2807 Int (bv2nat (bvxor ((_ int2bv 64) var2756) ((_ int2bv 64) var1564)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1623 Int (* var2807 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var213 Bool (isHidden/1126038692 var3496)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var213 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var910 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1861 Int (bv2nat (bvxor ((_ int2bv 64) var1623) ((_ int2bv 64) var910)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3102 Int (* var1861 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1586 var3905 (getPlaceholderNameToExampleMap/1126038692 var3496)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1732 Int (hashCode/-1247371579 var1586)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2096 Int (bv2nat (bvxor ((_ int2bv 64) var3102) ((_ int2bv 64) var1732)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1280 Int (* var2096 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var225 var3905 (getPlaceholderNameToOriginalCodeMap/1126038692 var3496)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var9 Int (hashCode/-1247371579 var225)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var977 Int (bv2nat (bvxor ((_ int2bv 64) var1280) ((_ int2bv 64) var9)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var140 Int (* var977 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2575 var2674 (jsPlaceholderNames/1126038692 var3496)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var849 Int (hashCode/1818408063 var2575)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1132 Int (bv2nat (bvxor ((_ int2bv 64) var140) ((_ int2bv 64) var849)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var57=com.google.javascript.jscomp.AutoValue_JsMessage, var3496=r0, var3503=$r1, var3388=null_type, var3578=$r2, var2997=$i31, var2192=$i27, var1366=$i28, var3952=$r3, var1725=$i0, var2396=$i29, var2244=$i30, var350=$z0, var2551=$s32, var1038=$i25, var3025=$i26, var861=$z1, var282=$s33, var1209=$i19, var3260=$i20, var1334=$r4, var850=$i1, var3243=$i21, var1727=$i22, var96=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var846=$r5, var837=$i2, var2834=$i23, var2149=$i24, var1307=$r6, var2640=$i34, var807=$i17, var904=$i18, var3978=$r8, var255=$r9, var605=$i35, var1041=$i15, var2756=$i16, var3209=$r10, var1564=$i36, var2807=$i13, var1623=$i14, var213=$z2, var910=$s37, var1861=$i6, var3102=$i7, var3905=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1586=$r12, var1732=$i3, var2096=$i8, var1280=$i9, var225=$r13, var9=$i4, var977=$i10, var140=$i11, var2674=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2575=$r14, var849=$i5, var1132=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var57, r0=var3496, $r1=var3503, null_type=var3388, $r2=var3578, $i31=var2997, $i27=var2192, $i28=var1366, $r3=var3952, $i0=var1725, $i29=var2396, $i30=var2244, $z0=var350, $s32=var2551, $i25=var1038, $i26=var3025, $z1=var861, $s33=var282, $i19=var1209, $i20=var3260, $r4=var1334, $i1=var850, $i21=var3243, $i22=var1727, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var96, $r5=var846, $i2=var837, $i23=var2834, $i24=var2149, $r6=var1307, $i34=var2640, $i17=var807, $i18=var904, $r8=var3978, $r9=var255, $i35=var605, $i15=var1041, $i16=var2756, $r10=var3209, $i36=var1564, $i13=var2807, $i14=var1623, $z2=var213, $s37=var910, $i6=var1861, $i7=var3102, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3905, $r12=var1586, $i3=var1732, $i8=var2096, $i9=var1280, $r13=var225, $i4=var9, $i10=var977, $i11=var140, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2674, $r14=var2575, $i5=var849, $i12=var1132}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15