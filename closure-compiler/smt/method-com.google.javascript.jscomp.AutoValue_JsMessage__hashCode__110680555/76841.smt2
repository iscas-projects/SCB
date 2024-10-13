(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var714 0)
(declare-sort var3620 0)
(declare-sort var2533 0)
(declare-sort var1334 0)
(declare-sort var1007 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var714) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var714) String)
(declare-fun isAnonymous/1126038692 (var714) Bool)
(declare-fun isExternal/1126038692 (var714) Bool)
(declare-fun getId/1126038692 (var714) String)
(declare-fun getParts/1126038692 (var714) var2533)
(declare-fun hashCode/1337417431 (var2533) Int)
(declare-fun getAlternateId/1126038692 (var714) String)
(declare-fun getDesc/1126038692 (var714) String)
(declare-fun getMeaning/1126038692 (var714) String)
(declare-fun isHidden/1126038692 (var714) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var714) var1334)
(declare-fun hashCode/-1247371579 (var1334) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var714) var1334)
(declare-fun jsPlaceholderNames/1126038692 (var714) var1007)
(declare-fun hashCode/1818408063 (var1007) Int)
(declare-const null-var714 var714)
(declare-const null-String String)
(declare-const var3676 var714) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3676 null-var714)))
(define-const var2475 String (getSourceName/1126038692 var3676)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var2475 null-String))) ; Cond: $r1 != null 
(define-const var676 String (getSourceName/1126038692 var3676)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3563 Int (hashCode/-467973558 var676)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var741 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3563)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3052 Int (* var741 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2825 String (getKey/1126038692 var3676)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1763 Int (hashCode/-467973558 var2825)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3279 Int (bv2nat (bvxor ((_ int2bv 64) var3052) ((_ int2bv 64) var1763)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var735 Int (* var3279 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3226 Bool (isAnonymous/1126038692 var3676)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var3226 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3130 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var2134 Int (bv2nat (bvxor ((_ int2bv 64) var735) ((_ int2bv 64) var3130)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1906 Int (* var2134 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3612 Bool (isExternal/1126038692 var3676)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var3612 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2215 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var2602 Int (bv2nat (bvxor ((_ int2bv 64) var1906) ((_ int2bv 64) var2215)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var245 Int (* var2602 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3483 String (getId/1126038692 var3676)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var269 Int (hashCode/-467973558 var3483)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3338 Int (bv2nat (bvxor ((_ int2bv 64) var245) ((_ int2bv 64) var269)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1213 Int (* var3338 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1884 var2533 (getParts/1126038692 var3676)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var994 Int (hashCode/1337417431 var1884)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3561 Int (bv2nat (bvxor ((_ int2bv 64) var1213) ((_ int2bv 64) var994)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3053 Int (* var3561 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2913 String (getAlternateId/1126038692 var3676)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var2913 null-String))) ; Cond: $r6 != null 
(define-const var2763 String (getAlternateId/1126038692 var3676)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var2679 Int (hashCode/-467973558 var2763)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var149 Int (bv2nat (bvxor ((_ int2bv 64) var3053) ((_ int2bv 64) var2679)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1381 Int (* var149 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2430 String (getDesc/1126038692 var3676)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2430 null-String))) ; Cond: $r8 != null 
(define-const var92 String (getDesc/1126038692 var3676)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2955 Int (hashCode/-467973558 var92)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1349 Int (bv2nat (bvxor ((_ int2bv 64) var1381) ((_ int2bv 64) var2955)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2935 Int (* var1349 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var229 String (getMeaning/1126038692 var3676)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var229 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var23 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2932 Int (bv2nat (bvxor ((_ int2bv 64) var2935) ((_ int2bv 64) var23)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var467 Int (* var2932 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2918 Bool (isHidden/1126038692 var3676)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var2918 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2872 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var2484 Int (bv2nat (bvxor ((_ int2bv 64) var467) ((_ int2bv 64) var2872)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1515 Int (* var2484 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var139 var1334 (getPlaceholderNameToExampleMap/1126038692 var3676)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3769 Int (hashCode/-1247371579 var139)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2341 Int (bv2nat (bvxor ((_ int2bv 64) var1515) ((_ int2bv 64) var3769)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1649 Int (* var2341 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var811 var1334 (getPlaceholderNameToOriginalCodeMap/1126038692 var3676)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2543 Int (hashCode/-1247371579 var811)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1147 Int (bv2nat (bvxor ((_ int2bv 64) var1649) ((_ int2bv 64) var2543)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1300 Int (* var1147 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1152 var1007 (jsPlaceholderNames/1126038692 var3676)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1299 Int (hashCode/1818408063 var1152)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var209 Int (bv2nat (bvxor ((_ int2bv 64) var1300) ((_ int2bv 64) var1299)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var714=com.google.javascript.jscomp.AutoValue_JsMessage, var3676=r0, var2475=$r1, var3620=null_type, var676=$r2, var3563=$i31, var741=$i27, var3052=$i28, var2825=$r3, var1763=$i0, var3279=$i29, var735=$i30, var3226=$z0, var3130=$s32, var2134=$i25, var1906=$i26, var3612=$z1, var2215=$s33, var2602=$i19, var245=$i20, var3483=$r4, var269=$i1, var3338=$i21, var1213=$i22, var2533=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1884=$r5, var994=$i2, var3561=$i23, var3053=$i24, var2913=$r6, var2763=$r7, var2679=$i34, var149=$i17, var1381=$i18, var2430=$r8, var92=$r9, var2955=$i35, var1349=$i15, var2935=$i16, var229=$r10, var23=$i36, var2932=$i13, var467=$i14, var2918=$z2, var2872=$s37, var2484=$i6, var1515=$i7, var1334=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var139=$r12, var3769=$i3, var2341=$i8, var1649=$i9, var811=$r13, var2543=$i4, var1147=$i10, var1300=$i11, var1007=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1152=$r14, var1299=$i5, var209=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var714, r0=var3676, $r1=var2475, null_type=var3620, $r2=var676, $i31=var3563, $i27=var741, $i28=var3052, $r3=var2825, $i0=var1763, $i29=var3279, $i30=var735, $z0=var3226, $s32=var3130, $i25=var2134, $i26=var1906, $z1=var3612, $s33=var2215, $i19=var2602, $i20=var245, $r4=var3483, $i1=var269, $i21=var3338, $i22=var1213, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2533, $r5=var1884, $i2=var994, $i23=var3561, $i24=var3053, $r6=var2913, $r7=var2763, $i34=var2679, $i17=var149, $i18=var1381, $r8=var2430, $r9=var92, $i35=var2955, $i15=var1349, $i16=var2935, $r10=var229, $i36=var23, $i13=var2932, $i14=var467, $z2=var2918, $s37=var2872, $i6=var2484, $i7=var1515, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1334, $r12=var139, $i3=var3769, $i8=var2341, $i9=var1649, $r13=var811, $i4=var2543, $i10=var1147, $i11=var1300, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1007, $r14=var1152, $i5=var1299, $i12=var209}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15