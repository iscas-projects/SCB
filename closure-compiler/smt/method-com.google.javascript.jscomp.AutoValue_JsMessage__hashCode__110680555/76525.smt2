(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3672 0)
(declare-sort var1627 0)
(declare-sort var1683 0)
(declare-sort var3724 0)
(declare-sort var130 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3672) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var3672) String)
(declare-fun isAnonymous/1126038692 (var3672) Bool)
(declare-fun isExternal/1126038692 (var3672) Bool)
(declare-fun getId/1126038692 (var3672) String)
(declare-fun getParts/1126038692 (var3672) var1683)
(declare-fun hashCode/1337417431 (var1683) Int)
(declare-fun getAlternateId/1126038692 (var3672) String)
(declare-fun getDesc/1126038692 (var3672) String)
(declare-fun getMeaning/1126038692 (var3672) String)
(declare-fun isHidden/1126038692 (var3672) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3672) var3724)
(declare-fun hashCode/-1247371579 (var3724) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3672) var3724)
(declare-fun jsPlaceholderNames/1126038692 (var3672) var130)
(declare-fun hashCode/1818408063 (var130) Int)
(declare-const null-var3672 var3672)
(declare-const null-String String)
(declare-const var1927 var3672) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1927 null-var3672)))
(define-const var3527 String (getSourceName/1126038692 var1927)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var3527 null-String))) ; Cond: $r1 != null 
(define-const var1181 String (getSourceName/1126038692 var1927)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3545 Int (hashCode/-467973558 var1181)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3297 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3545)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1728 Int (* var3297 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3459 String (getKey/1126038692 var1927)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3526 Int (hashCode/-467973558 var3459)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var227 Int (bv2nat (bvxor ((_ int2bv 64) var1728) ((_ int2bv 64) var3526)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1979 Int (* var227 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3107 Bool (isAnonymous/1126038692 var1927)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var3107 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1198 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3723 Int (bv2nat (bvxor ((_ int2bv 64) var1979) ((_ int2bv 64) var1198)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var485 Int (* var3723 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3769 Bool (isExternal/1126038692 var1927)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var3769 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var216 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3592 Int (bv2nat (bvxor ((_ int2bv 64) var485) ((_ int2bv 64) var216)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3700 Int (* var3592 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1361 String (getId/1126038692 var1927)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var954 Int (hashCode/-467973558 var1361)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var523 Int (bv2nat (bvxor ((_ int2bv 64) var3700) ((_ int2bv 64) var954)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1845 Int (* var523 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2345 var1683 (getParts/1126038692 var1927)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3040 Int (hashCode/1337417431 var2345)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3914 Int (bv2nat (bvxor ((_ int2bv 64) var1845) ((_ int2bv 64) var3040)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1295 Int (* var3914 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1505 String (getAlternateId/1126038692 var1927)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1505 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2468 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3609 Int (bv2nat (bvxor ((_ int2bv 64) var1295) ((_ int2bv 64) var2468)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2667 Int (* var3609 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1547 String (getDesc/1126038692 var1927)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1547 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3714 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2220 Int (bv2nat (bvxor ((_ int2bv 64) var2667) ((_ int2bv 64) var3714)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3958 Int (* var2220 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2225 String (getMeaning/1126038692 var1927)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2225 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var3045 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var1248 Int (bv2nat (bvxor ((_ int2bv 64) var3958) ((_ int2bv 64) var3045)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2228 Int (* var1248 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2392 Bool (isHidden/1126038692 var1927)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var2392 1 0) 0)) ; Cond: $z2 == 0 
(define-const var547 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var465 Int (bv2nat (bvxor ((_ int2bv 64) var2228) ((_ int2bv 64) var547)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var426 Int (* var465 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2578 var3724 (getPlaceholderNameToExampleMap/1126038692 var1927)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var161 Int (hashCode/-1247371579 var2578)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1214 Int (bv2nat (bvxor ((_ int2bv 64) var426) ((_ int2bv 64) var161)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3777 Int (* var1214 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var285 var3724 (getPlaceholderNameToOriginalCodeMap/1126038692 var1927)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1480 Int (hashCode/-1247371579 var285)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var488 Int (bv2nat (bvxor ((_ int2bv 64) var3777) ((_ int2bv 64) var1480)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3140 Int (* var488 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2016 var130 (jsPlaceholderNames/1126038692 var1927)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var408 Int (hashCode/1818408063 var2016)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2319 Int (bv2nat (bvxor ((_ int2bv 64) var3140) ((_ int2bv 64) var408)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3672=com.google.javascript.jscomp.AutoValue_JsMessage, var1927=r0, var3527=$r1, var1627=null_type, var1181=$r2, var3545=$i31, var3297=$i27, var1728=$i28, var3459=$r3, var3526=$i0, var227=$i29, var1979=$i30, var3107=$z0, var1198=$s32, var3723=$i25, var485=$i26, var3769=$z1, var216=$s33, var3592=$i19, var3700=$i20, var1361=$r4, var954=$i1, var523=$i21, var1845=$i22, var1683=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2345=$r5, var3040=$i2, var3914=$i23, var1295=$i24, var1505=$r6, var2468=$i34, var3609=$i17, var2667=$i18, var1547=$r8, var3714=$i35, var2220=$i15, var3958=$i16, var2225=$r10, var3045=$i36, var1248=$i13, var2228=$i14, var2392=$z2, var547=$s37, var465=$i6, var426=$i7, var3724=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2578=$r12, var161=$i3, var1214=$i8, var3777=$i9, var285=$r13, var1480=$i4, var488=$i10, var3140=$i11, var130=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2016=$r14, var408=$i5, var2319=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3672, r0=var1927, $r1=var3527, null_type=var1627, $r2=var1181, $i31=var3545, $i27=var3297, $i28=var1728, $r3=var3459, $i0=var3526, $i29=var227, $i30=var1979, $z0=var3107, $s32=var1198, $i25=var3723, $i26=var485, $z1=var3769, $s33=var216, $i19=var3592, $i20=var3700, $r4=var1361, $i1=var954, $i21=var523, $i22=var1845, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1683, $r5=var2345, $i2=var3040, $i23=var3914, $i24=var1295, $r6=var1505, $i34=var2468, $i17=var3609, $i18=var2667, $r8=var1547, $i35=var3714, $i15=var2220, $i16=var3958, $r10=var2225, $i36=var3045, $i13=var1248, $i14=var2228, $z2=var2392, $s37=var547, $i6=var465, $i7=var426, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3724, $r12=var2578, $i3=var161, $i8=var1214, $i9=var3777, $r13=var285, $i4=var1480, $i10=var488, $i11=var3140, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var130, $r14=var2016, $i5=var408, $i12=var2319}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15