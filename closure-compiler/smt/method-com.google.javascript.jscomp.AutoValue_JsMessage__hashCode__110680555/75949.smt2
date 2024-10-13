(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3136 0)
(declare-sort var1381 0)
(declare-sort var1558 0)
(declare-sort var786 0)
(declare-sort var2200 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3136) String)
(declare-fun getKey/1126038692 (var3136) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3136) Bool)
(declare-fun isExternal/1126038692 (var3136) Bool)
(declare-fun getId/1126038692 (var3136) String)
(declare-fun getParts/1126038692 (var3136) var1558)
(declare-fun hashCode/1337417431 (var1558) Int)
(declare-fun getAlternateId/1126038692 (var3136) String)
(declare-fun getDesc/1126038692 (var3136) String)
(declare-fun getMeaning/1126038692 (var3136) String)
(declare-fun isHidden/1126038692 (var3136) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3136) var786)
(declare-fun hashCode/-1247371579 (var786) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3136) var786)
(declare-fun jsPlaceholderNames/1126038692 (var3136) var2200)
(declare-fun hashCode/1818408063 (var2200) Int)
(declare-const null-var3136 var3136)
(declare-const null-String String)
(declare-const var2378 var3136) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2378 null-var3136)))
(define-const var3999 String (getSourceName/1126038692 var2378)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var3999 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2779 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var3950 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2779)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2099 Int (* var3950 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2176 String (getKey/1126038692 var2378)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2666 Int (hashCode/-467973558 var2176)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var533 Int (bv2nat (bvxor ((_ int2bv 64) var2099) ((_ int2bv 64) var2666)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1639 Int (* var533 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1522 Bool (isAnonymous/1126038692 var2378)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1522 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1755 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var2056 Int (bv2nat (bvxor ((_ int2bv 64) var1639) ((_ int2bv 64) var1755)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var818 Int (* var2056 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var129 Bool (isExternal/1126038692 var2378)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var129 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3593 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2346 Int (bv2nat (bvxor ((_ int2bv 64) var818) ((_ int2bv 64) var3593)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2719 Int (* var2346 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1650 String (getId/1126038692 var2378)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2216 Int (hashCode/-467973558 var1650)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3085 Int (bv2nat (bvxor ((_ int2bv 64) var2719) ((_ int2bv 64) var2216)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var364 Int (* var3085 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2607 var1558 (getParts/1126038692 var2378)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2523 Int (hashCode/1337417431 var2607)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3652 Int (bv2nat (bvxor ((_ int2bv 64) var364) ((_ int2bv 64) var2523)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3312 Int (* var3652 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3561 String (getAlternateId/1126038692 var2378)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3561 null-String))) ; Cond: $r6 != null 
(define-const var3744 String (getAlternateId/1126038692 var2378)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3616 Int (hashCode/-467973558 var3744)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3876 Int (bv2nat (bvxor ((_ int2bv 64) var3312) ((_ int2bv 64) var3616)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2536 Int (* var3876 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3641 String (getDesc/1126038692 var2378)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3641 null-String))) ; Cond: $r8 != null 
(define-const var2684 String (getDesc/1126038692 var2378)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var1072 Int (hashCode/-467973558 var2684)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1786 Int (bv2nat (bvxor ((_ int2bv 64) var2536) ((_ int2bv 64) var1072)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3148 Int (* var1786 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2937 String (getMeaning/1126038692 var2378)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2937 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var723 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var3034 Int (bv2nat (bvxor ((_ int2bv 64) var3148) ((_ int2bv 64) var723)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3885 Int (* var3034 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1881 Bool (isHidden/1126038692 var2378)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var1881 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2174 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var1940 Int (bv2nat (bvxor ((_ int2bv 64) var3885) ((_ int2bv 64) var2174)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2049 Int (* var1940 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var563 var786 (getPlaceholderNameToExampleMap/1126038692 var2378)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1807 Int (hashCode/-1247371579 var563)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1184 Int (bv2nat (bvxor ((_ int2bv 64) var2049) ((_ int2bv 64) var1807)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var429 Int (* var1184 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3042 var786 (getPlaceholderNameToOriginalCodeMap/1126038692 var2378)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2237 Int (hashCode/-1247371579 var3042)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1429 Int (bv2nat (bvxor ((_ int2bv 64) var429) ((_ int2bv 64) var2237)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2888 Int (* var1429 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2864 var2200 (jsPlaceholderNames/1126038692 var2378)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3905 Int (hashCode/1818408063 var2864)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var0 Int (bv2nat (bvxor ((_ int2bv 64) var2888) ((_ int2bv 64) var3905)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3136=com.google.javascript.jscomp.AutoValue_JsMessage, var2378=r0, var3999=$r1, var1381=null_type, var2779=$i31, var3950=$i27, var2099=$i28, var2176=$r3, var2666=$i0, var533=$i29, var1639=$i30, var1522=$z0, var1755=$s32, var2056=$i25, var818=$i26, var129=$z1, var3593=$s33, var2346=$i19, var2719=$i20, var1650=$r4, var2216=$i1, var3085=$i21, var364=$i22, var1558=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2607=$r5, var2523=$i2, var3652=$i23, var3312=$i24, var3561=$r6, var3744=$r7, var3616=$i34, var3876=$i17, var2536=$i18, var3641=$r8, var2684=$r9, var1072=$i35, var1786=$i15, var3148=$i16, var2937=$r10, var723=$i36, var3034=$i13, var3885=$i14, var1881=$z2, var2174=$s37, var1940=$i6, var2049=$i7, var786=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var563=$r12, var1807=$i3, var1184=$i8, var429=$i9, var3042=$r13, var2237=$i4, var1429=$i10, var2888=$i11, var2200=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2864=$r14, var3905=$i5, var0=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3136, r0=var2378, $r1=var3999, null_type=var1381, $i31=var2779, $i27=var3950, $i28=var2099, $r3=var2176, $i0=var2666, $i29=var533, $i30=var1639, $z0=var1522, $s32=var1755, $i25=var2056, $i26=var818, $z1=var129, $s33=var3593, $i19=var2346, $i20=var2719, $r4=var1650, $i1=var2216, $i21=var3085, $i22=var364, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1558, $r5=var2607, $i2=var2523, $i23=var3652, $i24=var3312, $r6=var3561, $r7=var3744, $i34=var3616, $i17=var3876, $i18=var2536, $r8=var3641, $r9=var2684, $i35=var1072, $i15=var1786, $i16=var3148, $r10=var2937, $i36=var723, $i13=var3034, $i14=var3885, $z2=var1881, $s37=var2174, $i6=var1940, $i7=var2049, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var786, $r12=var563, $i3=var1807, $i8=var1184, $i9=var429, $r13=var3042, $i4=var2237, $i10=var1429, $i11=var2888, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2200, $r14=var2864, $i5=var3905, $i12=var0}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15