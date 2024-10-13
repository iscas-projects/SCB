(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2206 0)
(declare-sort var1430 0)
(declare-sort var3527 0)
(declare-sort var227 0)
(declare-sort var3283 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2206) String)
(declare-fun getKey/1126038692 (var2206) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var2206) Bool)
(declare-fun isExternal/1126038692 (var2206) Bool)
(declare-fun getId/1126038692 (var2206) String)
(declare-fun getParts/1126038692 (var2206) var3527)
(declare-fun hashCode/1337417431 (var3527) Int)
(declare-fun getAlternateId/1126038692 (var2206) String)
(declare-fun getDesc/1126038692 (var2206) String)
(declare-fun getMeaning/1126038692 (var2206) String)
(declare-fun isHidden/1126038692 (var2206) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2206) var227)
(declare-fun hashCode/-1247371579 (var227) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2206) var227)
(declare-fun jsPlaceholderNames/1126038692 (var2206) var3283)
(declare-fun hashCode/1818408063 (var3283) Int)
(declare-const null-var2206 var2206)
(declare-const null-String String)
(declare-const var3640 var2206) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3640 null-var2206)))
(define-const var915 String (getSourceName/1126038692 var3640)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var915 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2498 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2697 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2498)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var840 Int (* var2697 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1382 String (getKey/1126038692 var3640)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3547 Int (hashCode/-467973558 var1382)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2163 Int (bv2nat (bvxor ((_ int2bv 64) var840) ((_ int2bv 64) var3547)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1798 Int (* var2163 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2965 Bool (isAnonymous/1126038692 var3640)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var2965 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2662 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3285 Int (bv2nat (bvxor ((_ int2bv 64) var1798) ((_ int2bv 64) var2662)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1279 Int (* var3285 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var305 Bool (isExternal/1126038692 var3640)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var305 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1275 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var2847 Int (bv2nat (bvxor ((_ int2bv 64) var1279) ((_ int2bv 64) var1275)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1572 Int (* var2847 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3359 String (getId/1126038692 var3640)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var358 Int (hashCode/-467973558 var3359)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var832 Int (bv2nat (bvxor ((_ int2bv 64) var1572) ((_ int2bv 64) var358)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3721 Int (* var832 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3542 var3527 (getParts/1126038692 var3640)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1277 Int (hashCode/1337417431 var3542)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2113 Int (bv2nat (bvxor ((_ int2bv 64) var3721) ((_ int2bv 64) var1277)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2700 Int (* var2113 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1899 String (getAlternateId/1126038692 var3640)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1899 null-String))) ; Cond: $r6 != null 
(define-const var1722 String (getAlternateId/1126038692 var3640)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1511 Int (hashCode/-467973558 var1722)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1259 Int (bv2nat (bvxor ((_ int2bv 64) var2700) ((_ int2bv 64) var1511)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3636 Int (* var1259 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3649 String (getDesc/1126038692 var3640)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var3649 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3262 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3534 Int (bv2nat (bvxor ((_ int2bv 64) var3636) ((_ int2bv 64) var3262)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1361 Int (* var3534 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2323 String (getMeaning/1126038692 var3640)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2323 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2296 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var1368 Int (bv2nat (bvxor ((_ int2bv 64) var1361) ((_ int2bv 64) var2296)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3117 Int (* var1368 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1685 Bool (isHidden/1126038692 var3640)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var1685 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1707 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var1671 Int (bv2nat (bvxor ((_ int2bv 64) var3117) ((_ int2bv 64) var1707)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3028 Int (* var1671 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2884 var227 (getPlaceholderNameToExampleMap/1126038692 var3640)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var262 Int (hashCode/-1247371579 var2884)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1209 Int (bv2nat (bvxor ((_ int2bv 64) var3028) ((_ int2bv 64) var262)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3242 Int (* var1209 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2517 var227 (getPlaceholderNameToOriginalCodeMap/1126038692 var3640)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3744 Int (hashCode/-1247371579 var2517)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var477 Int (bv2nat (bvxor ((_ int2bv 64) var3242) ((_ int2bv 64) var3744)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3393 Int (* var477 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3855 var3283 (jsPlaceholderNames/1126038692 var3640)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1453 Int (hashCode/1818408063 var3855)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3260 Int (bv2nat (bvxor ((_ int2bv 64) var3393) ((_ int2bv 64) var1453)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2206=com.google.javascript.jscomp.AutoValue_JsMessage, var3640=r0, var915=$r1, var1430=null_type, var2498=$i31, var2697=$i27, var840=$i28, var1382=$r3, var3547=$i0, var2163=$i29, var1798=$i30, var2965=$z0, var2662=$s32, var3285=$i25, var1279=$i26, var305=$z1, var1275=$s33, var2847=$i19, var1572=$i20, var3359=$r4, var358=$i1, var832=$i21, var3721=$i22, var3527=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3542=$r5, var1277=$i2, var2113=$i23, var2700=$i24, var1899=$r6, var1722=$r7, var1511=$i34, var1259=$i17, var3636=$i18, var3649=$r8, var3262=$i35, var3534=$i15, var1361=$i16, var2323=$r10, var2296=$i36, var1368=$i13, var3117=$i14, var1685=$z2, var1707=$s37, var1671=$i6, var3028=$i7, var227=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2884=$r12, var262=$i3, var1209=$i8, var3242=$i9, var2517=$r13, var3744=$i4, var477=$i10, var3393=$i11, var3283=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3855=$r14, var1453=$i5, var3260=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2206, r0=var3640, $r1=var915, null_type=var1430, $i31=var2498, $i27=var2697, $i28=var840, $r3=var1382, $i0=var3547, $i29=var2163, $i30=var1798, $z0=var2965, $s32=var2662, $i25=var3285, $i26=var1279, $z1=var305, $s33=var1275, $i19=var2847, $i20=var1572, $r4=var3359, $i1=var358, $i21=var832, $i22=var3721, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3527, $r5=var3542, $i2=var1277, $i23=var2113, $i24=var2700, $r6=var1899, $r7=var1722, $i34=var1511, $i17=var1259, $i18=var3636, $r8=var3649, $i35=var3262, $i15=var3534, $i16=var1361, $r10=var2323, $i36=var2296, $i13=var1368, $i14=var3117, $z2=var1685, $s37=var1707, $i6=var1671, $i7=var3028, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var227, $r12=var2884, $i3=var262, $i8=var1209, $i9=var3242, $r13=var2517, $i4=var3744, $i10=var477, $i11=var3393, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3283, $r14=var3855, $i5=var1453, $i12=var3260}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15