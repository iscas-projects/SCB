(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3686 0)
(declare-sort var2706 0)
(declare-sort var3066 0)
(declare-sort var1285 0)
(declare-sort var2927 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3686) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var3686) String)
(declare-fun isAnonymous/1126038692 (var3686) Bool)
(declare-fun isExternal/1126038692 (var3686) Bool)
(declare-fun getId/1126038692 (var3686) String)
(declare-fun getParts/1126038692 (var3686) var3066)
(declare-fun hashCode/1337417431 (var3066) Int)
(declare-fun getAlternateId/1126038692 (var3686) String)
(declare-fun getDesc/1126038692 (var3686) String)
(declare-fun getMeaning/1126038692 (var3686) String)
(declare-fun isHidden/1126038692 (var3686) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3686) var1285)
(declare-fun hashCode/-1247371579 (var1285) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3686) var1285)
(declare-fun jsPlaceholderNames/1126038692 (var3686) var2927)
(declare-fun hashCode/1818408063 (var2927) Int)
(declare-const null-var3686 var3686)
(declare-const null-String String)
(declare-const var2429 var3686) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2429 null-var3686)))
(define-const var829 String (getSourceName/1126038692 var2429)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var829 null-String))) ; Cond: $r1 != null 
(define-const var1576 String (getSourceName/1126038692 var2429)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3432 Int (hashCode/-467973558 var1576)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var439 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3432)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3492 Int (* var439 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3562 String (getKey/1126038692 var2429)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2923 Int (hashCode/-467973558 var3562)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var839 Int (bv2nat (bvxor ((_ int2bv 64) var3492) ((_ int2bv 64) var2923)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2651 Int (* var839 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1598 Bool (isAnonymous/1126038692 var2429)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1598 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2704 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var467 Int (bv2nat (bvxor ((_ int2bv 64) var2651) ((_ int2bv 64) var2704)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3627 Int (* var467 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1284 Bool (isExternal/1126038692 var2429)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1284 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var398 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3416 Int (bv2nat (bvxor ((_ int2bv 64) var3627) ((_ int2bv 64) var398)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2867 Int (* var3416 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var934 String (getId/1126038692 var2429)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1520 Int (hashCode/-467973558 var934)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var197 Int (bv2nat (bvxor ((_ int2bv 64) var2867) ((_ int2bv 64) var1520)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1447 Int (* var197 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2745 var3066 (getParts/1126038692 var2429)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3706 Int (hashCode/1337417431 var2745)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1640 Int (bv2nat (bvxor ((_ int2bv 64) var1447) ((_ int2bv 64) var3706)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3473 Int (* var1640 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3467 String (getAlternateId/1126038692 var2429)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3467 null-String))) ; Cond: $r6 != null 
(define-const var2248 String (getAlternateId/1126038692 var2429)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3812 Int (hashCode/-467973558 var2248)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3737 Int (bv2nat (bvxor ((_ int2bv 64) var3473) ((_ int2bv 64) var3812)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3833 Int (* var3737 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3307 String (getDesc/1126038692 var2429)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3307 null-String))) ; Cond: $r8 != null 
(define-const var1724 String (getDesc/1126038692 var2429)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var943 Int (hashCode/-467973558 var1724)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var760 Int (bv2nat (bvxor ((_ int2bv 64) var3833) ((_ int2bv 64) var943)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2665 Int (* var760 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3182 String (getMeaning/1126038692 var2429)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var3182 null-String))) ; Cond: $r10 != null 
(define-const var3372 String (getMeaning/1126038692 var2429)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var2851 Int (hashCode/-467973558 var3372)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3584 Int (bv2nat (bvxor ((_ int2bv 64) var2665) ((_ int2bv 64) var2851)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1941 Int (* var3584 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3046 Bool (isHidden/1126038692 var2429)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3046 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2638 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1898 Int (bv2nat (bvxor ((_ int2bv 64) var1941) ((_ int2bv 64) var2638)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3881 Int (* var1898 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2269 var1285 (getPlaceholderNameToExampleMap/1126038692 var2429)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1237 Int (hashCode/-1247371579 var2269)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1675 Int (bv2nat (bvxor ((_ int2bv 64) var3881) ((_ int2bv 64) var1237)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3789 Int (* var1675 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2519 var1285 (getPlaceholderNameToOriginalCodeMap/1126038692 var2429)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3991 Int (hashCode/-1247371579 var2519)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1525 Int (bv2nat (bvxor ((_ int2bv 64) var3789) ((_ int2bv 64) var3991)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1288 Int (* var1525 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2253 var2927 (jsPlaceholderNames/1126038692 var2429)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1039 Int (hashCode/1818408063 var2253)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2397 Int (bv2nat (bvxor ((_ int2bv 64) var1288) ((_ int2bv 64) var1039)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3686=com.google.javascript.jscomp.AutoValue_JsMessage, var2429=r0, var829=$r1, var2706=null_type, var1576=$r2, var3432=$i31, var439=$i27, var3492=$i28, var3562=$r3, var2923=$i0, var839=$i29, var2651=$i30, var1598=$z0, var2704=$s32, var467=$i25, var3627=$i26, var1284=$z1, var398=$s33, var3416=$i19, var2867=$i20, var934=$r4, var1520=$i1, var197=$i21, var1447=$i22, var3066=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2745=$r5, var3706=$i2, var1640=$i23, var3473=$i24, var3467=$r6, var2248=$r7, var3812=$i34, var3737=$i17, var3833=$i18, var3307=$r8, var1724=$r9, var943=$i35, var760=$i15, var2665=$i16, var3182=$r10, var3372=$r11, var2851=$i36, var3584=$i13, var1941=$i14, var3046=$z2, var2638=$s37, var1898=$i6, var3881=$i7, var1285=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2269=$r12, var1237=$i3, var1675=$i8, var3789=$i9, var2519=$r13, var3991=$i4, var1525=$i10, var1288=$i11, var2927=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2253=$r14, var1039=$i5, var2397=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3686, r0=var2429, $r1=var829, null_type=var2706, $r2=var1576, $i31=var3432, $i27=var439, $i28=var3492, $r3=var3562, $i0=var2923, $i29=var839, $i30=var2651, $z0=var1598, $s32=var2704, $i25=var467, $i26=var3627, $z1=var1284, $s33=var398, $i19=var3416, $i20=var2867, $r4=var934, $i1=var1520, $i21=var197, $i22=var1447, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3066, $r5=var2745, $i2=var3706, $i23=var1640, $i24=var3473, $r6=var3467, $r7=var2248, $i34=var3812, $i17=var3737, $i18=var3833, $r8=var3307, $r9=var1724, $i35=var943, $i15=var760, $i16=var2665, $r10=var3182, $r11=var3372, $i36=var2851, $i13=var3584, $i14=var1941, $z2=var3046, $s37=var2638, $i6=var1898, $i7=var3881, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1285, $r12=var2269, $i3=var1237, $i8=var1675, $i9=var3789, $r13=var2519, $i4=var3991, $i10=var1525, $i11=var1288, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2927, $r14=var2253, $i5=var1039, $i12=var2397}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 6}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15