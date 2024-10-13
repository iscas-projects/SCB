(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1520 0)
(declare-sort var3272 0)
(declare-sort var2670 0)
(declare-sort var2317 0)
(declare-sort var2848 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1520) String)
(declare-fun getKey/1126038692 (var1520) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1520) Bool)
(declare-fun isExternal/1126038692 (var1520) Bool)
(declare-fun getId/1126038692 (var1520) String)
(declare-fun getParts/1126038692 (var1520) var2670)
(declare-fun hashCode/1337417431 (var2670) Int)
(declare-fun getAlternateId/1126038692 (var1520) String)
(declare-fun getDesc/1126038692 (var1520) String)
(declare-fun getMeaning/1126038692 (var1520) String)
(declare-fun isHidden/1126038692 (var1520) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1520) var2317)
(declare-fun hashCode/-1247371579 (var2317) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1520) var2317)
(declare-fun jsPlaceholderNames/1126038692 (var1520) var2848)
(declare-fun hashCode/1818408063 (var2848) Int)
(declare-const null-var1520 var1520)
(declare-const null-String String)
(declare-const var3889 var1520) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3889 null-var1520)))
(define-const var204 String (getSourceName/1126038692 var3889)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var204 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var1476 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var985 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1476)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2857 Int (* var985 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var876 String (getKey/1126038692 var3889)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1305 Int (hashCode/-467973558 var876)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1015 Int (bv2nat (bvxor ((_ int2bv 64) var2857) ((_ int2bv 64) var1305)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3440 Int (* var1015 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2763 Bool (isAnonymous/1126038692 var3889)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2763 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2496 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var881 Int (bv2nat (bvxor ((_ int2bv 64) var3440) ((_ int2bv 64) var2496)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1295 Int (* var881 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var943 Bool (isExternal/1126038692 var3889)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var943 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2874 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3119 Int (bv2nat (bvxor ((_ int2bv 64) var1295) ((_ int2bv 64) var2874)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3885 Int (* var3119 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var367 String (getId/1126038692 var3889)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1683 Int (hashCode/-467973558 var367)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var165 Int (bv2nat (bvxor ((_ int2bv 64) var3885) ((_ int2bv 64) var1683)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3151 Int (* var165 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2075 var2670 (getParts/1126038692 var3889)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var716 Int (hashCode/1337417431 var2075)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2455 Int (bv2nat (bvxor ((_ int2bv 64) var3151) ((_ int2bv 64) var716)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3032 Int (* var2455 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var871 String (getAlternateId/1126038692 var3889)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var871 null-String))) ; Cond: $r6 != null 
(define-const var1608 String (getAlternateId/1126038692 var3889)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3292 Int (hashCode/-467973558 var1608)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2236 Int (bv2nat (bvxor ((_ int2bv 64) var3032) ((_ int2bv 64) var3292)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2935 Int (* var2236 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3981 String (getDesc/1126038692 var3889)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var3981 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var2524 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var3901 Int (bv2nat (bvxor ((_ int2bv 64) var2935) ((_ int2bv 64) var2524)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2035 Int (* var3901 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1957 String (getMeaning/1126038692 var3889)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var1957 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var3442 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2913 Int (bv2nat (bvxor ((_ int2bv 64) var2035) ((_ int2bv 64) var3442)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3787 Int (* var2913 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3690 Bool (isHidden/1126038692 var3889)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3690 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3790 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var3247 Int (bv2nat (bvxor ((_ int2bv 64) var3787) ((_ int2bv 64) var3790)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1071 Int (* var3247 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2706 var2317 (getPlaceholderNameToExampleMap/1126038692 var3889)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3629 Int (hashCode/-1247371579 var2706)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var256 Int (bv2nat (bvxor ((_ int2bv 64) var1071) ((_ int2bv 64) var3629)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2240 Int (* var256 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2566 var2317 (getPlaceholderNameToOriginalCodeMap/1126038692 var3889)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1935 Int (hashCode/-1247371579 var2566)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1644 Int (bv2nat (bvxor ((_ int2bv 64) var2240) ((_ int2bv 64) var1935)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var108 Int (* var1644 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var1717 var2848 (jsPlaceholderNames/1126038692 var3889)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3734 Int (hashCode/1818408063 var1717)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3980 Int (bv2nat (bvxor ((_ int2bv 64) var108) ((_ int2bv 64) var3734)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1520=com.google.javascript.jscomp.AutoValue_JsMessage, var3889=r0, var204=$r1, var3272=null_type, var1476=$i31, var985=$i27, var2857=$i28, var876=$r3, var1305=$i0, var1015=$i29, var3440=$i30, var2763=$z0, var2496=$s32, var881=$i25, var1295=$i26, var943=$z1, var2874=$s33, var3119=$i19, var3885=$i20, var367=$r4, var1683=$i1, var165=$i21, var3151=$i22, var2670=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2075=$r5, var716=$i2, var2455=$i23, var3032=$i24, var871=$r6, var1608=$r7, var3292=$i34, var2236=$i17, var2935=$i18, var3981=$r8, var2524=$i35, var3901=$i15, var2035=$i16, var1957=$r10, var3442=$i36, var2913=$i13, var3787=$i14, var3690=$z2, var3790=$s37, var3247=$i6, var1071=$i7, var2317=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2706=$r12, var3629=$i3, var256=$i8, var2240=$i9, var2566=$r13, var1935=$i4, var1644=$i10, var108=$i11, var2848=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var1717=$r14, var3734=$i5, var3980=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1520, r0=var3889, $r1=var204, null_type=var3272, $i31=var1476, $i27=var985, $i28=var2857, $r3=var876, $i0=var1305, $i29=var1015, $i30=var3440, $z0=var2763, $s32=var2496, $i25=var881, $i26=var1295, $z1=var943, $s33=var2874, $i19=var3119, $i20=var3885, $r4=var367, $i1=var1683, $i21=var165, $i22=var3151, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2670, $r5=var2075, $i2=var716, $i23=var2455, $i24=var3032, $r6=var871, $r7=var1608, $i34=var3292, $i17=var2236, $i18=var2935, $r8=var3981, $i35=var2524, $i15=var3901, $i16=var2035, $r10=var1957, $i36=var3442, $i13=var2913, $i14=var3787, $z2=var3690, $s37=var3790, $i6=var3247, $i7=var1071, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2317, $r12=var2706, $i3=var3629, $i8=var256, $i9=var2240, $r13=var2566, $i4=var1935, $i10=var1644, $i11=var108, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2848, $r14=var1717, $i5=var3734, $i12=var3980}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15