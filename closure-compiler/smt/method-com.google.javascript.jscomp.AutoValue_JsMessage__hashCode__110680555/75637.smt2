(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3175 0)
(declare-sort var3332 0)
(declare-sort var3229 0)
(declare-sort var490 0)
(declare-sort var2652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3175) String)
(declare-fun getKey/1126038692 (var3175) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3175) Bool)
(declare-fun isExternal/1126038692 (var3175) Bool)
(declare-fun getId/1126038692 (var3175) String)
(declare-fun getParts/1126038692 (var3175) var3229)
(declare-fun hashCode/1337417431 (var3229) Int)
(declare-fun getAlternateId/1126038692 (var3175) String)
(declare-fun getDesc/1126038692 (var3175) String)
(declare-fun getMeaning/1126038692 (var3175) String)
(declare-fun isHidden/1126038692 (var3175) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3175) var490)
(declare-fun hashCode/-1247371579 (var490) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3175) var490)
(declare-fun jsPlaceholderNames/1126038692 (var3175) var2652)
(declare-fun hashCode/1818408063 (var2652) Int)
(declare-const null-var3175 var3175)
(declare-const null-String String)
(declare-const var2562 var3175) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2562 null-var3175)))
(define-const var3146 String (getSourceName/1126038692 var2562)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var3146 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var3353 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var1719 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3353)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1302 Int (* var1719 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var207 String (getKey/1126038692 var2562)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1147 Int (hashCode/-467973558 var207)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3325 Int (bv2nat (bvxor ((_ int2bv 64) var1302) ((_ int2bv 64) var1147)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2701 Int (* var3325 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3372 Bool (isAnonymous/1126038692 var2562)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var3372 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3079 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var2012 Int (bv2nat (bvxor ((_ int2bv 64) var2701) ((_ int2bv 64) var3079)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1579 Int (* var2012 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2286 Bool (isExternal/1126038692 var2562)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2286 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var772 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var369 Int (bv2nat (bvxor ((_ int2bv 64) var1579) ((_ int2bv 64) var772)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2699 Int (* var369 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2520 String (getId/1126038692 var2562)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2534 Int (hashCode/-467973558 var2520)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2911 Int (bv2nat (bvxor ((_ int2bv 64) var2699) ((_ int2bv 64) var2534)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3038 Int (* var2911 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1604 var3229 (getParts/1126038692 var2562)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1152 Int (hashCode/1337417431 var1604)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3772 Int (bv2nat (bvxor ((_ int2bv 64) var3038) ((_ int2bv 64) var1152)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1879 Int (* var3772 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3029 String (getAlternateId/1126038692 var2562)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var3029 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2052 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var537 Int (bv2nat (bvxor ((_ int2bv 64) var1879) ((_ int2bv 64) var2052)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1680 Int (* var537 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2672 String (getDesc/1126038692 var2562)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2672 null-String))) ; Cond: $r8 != null 
(define-const var1251 String (getDesc/1126038692 var2562)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var435 Int (hashCode/-467973558 var1251)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3518 Int (bv2nat (bvxor ((_ int2bv 64) var1680) ((_ int2bv 64) var435)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var873 Int (* var3518 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var292 String (getMeaning/1126038692 var2562)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var292 null-String))) ; Cond: $r10 != null 
(define-const var1885 String (getMeaning/1126038692 var2562)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var2233 Int (hashCode/-467973558 var1885)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3084 Int (bv2nat (bvxor ((_ int2bv 64) var873) ((_ int2bv 64) var2233)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3152 Int (* var3084 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var151 Bool (isHidden/1126038692 var2562)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var151 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2839 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var3174 Int (bv2nat (bvxor ((_ int2bv 64) var3152) ((_ int2bv 64) var2839)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1229 Int (* var3174 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2393 var490 (getPlaceholderNameToExampleMap/1126038692 var2562)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3610 Int (hashCode/-1247371579 var2393)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2904 Int (bv2nat (bvxor ((_ int2bv 64) var1229) ((_ int2bv 64) var3610)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3330 Int (* var2904 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1737 var490 (getPlaceholderNameToOriginalCodeMap/1126038692 var2562)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1349 Int (hashCode/-1247371579 var1737)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var895 Int (bv2nat (bvxor ((_ int2bv 64) var3330) ((_ int2bv 64) var1349)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1450 Int (* var895 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var611 var2652 (jsPlaceholderNames/1126038692 var2562)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1630 Int (hashCode/1818408063 var611)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2151 Int (bv2nat (bvxor ((_ int2bv 64) var1450) ((_ int2bv 64) var1630)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3175=com.google.javascript.jscomp.AutoValue_JsMessage, var2562=r0, var3146=$r1, var3332=null_type, var3353=$i31, var1719=$i27, var1302=$i28, var207=$r3, var1147=$i0, var3325=$i29, var2701=$i30, var3372=$z0, var3079=$s32, var2012=$i25, var1579=$i26, var2286=$z1, var772=$s33, var369=$i19, var2699=$i20, var2520=$r4, var2534=$i1, var2911=$i21, var3038=$i22, var3229=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1604=$r5, var1152=$i2, var3772=$i23, var1879=$i24, var3029=$r6, var2052=$i34, var537=$i17, var1680=$i18, var2672=$r8, var1251=$r9, var435=$i35, var3518=$i15, var873=$i16, var292=$r10, var1885=$r11, var2233=$i36, var3084=$i13, var3152=$i14, var151=$z2, var2839=$s37, var3174=$i6, var1229=$i7, var490=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2393=$r12, var3610=$i3, var2904=$i8, var3330=$i9, var1737=$r13, var1349=$i4, var895=$i10, var1450=$i11, var2652=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var611=$r14, var1630=$i5, var2151=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3175, r0=var2562, $r1=var3146, null_type=var3332, $i31=var3353, $i27=var1719, $i28=var1302, $r3=var207, $i0=var1147, $i29=var3325, $i30=var2701, $z0=var3372, $s32=var3079, $i25=var2012, $i26=var1579, $z1=var2286, $s33=var772, $i19=var369, $i20=var2699, $r4=var2520, $i1=var2534, $i21=var2911, $i22=var3038, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3229, $r5=var1604, $i2=var1152, $i23=var3772, $i24=var1879, $r6=var3029, $i34=var2052, $i17=var537, $i18=var1680, $r8=var2672, $r9=var1251, $i35=var435, $i15=var3518, $i16=var873, $r10=var292, $r11=var1885, $i36=var2233, $i13=var3084, $i14=var3152, $z2=var151, $s37=var2839, $i6=var3174, $i7=var1229, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var490, $r12=var2393, $i3=var3610, $i8=var2904, $i9=var3330, $r13=var1737, $i4=var1349, $i10=var895, $i11=var1450, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2652, $r14=var611, $i5=var1630, $i12=var2151}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15