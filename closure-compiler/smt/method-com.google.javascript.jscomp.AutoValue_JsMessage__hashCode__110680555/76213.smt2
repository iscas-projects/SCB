(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3049 0)
(declare-sort var3440 0)
(declare-sort var1797 0)
(declare-sort var3625 0)
(declare-sort var2293 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3049) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var3049) String)
(declare-fun isAnonymous/1126038692 (var3049) Bool)
(declare-fun isExternal/1126038692 (var3049) Bool)
(declare-fun getId/1126038692 (var3049) String)
(declare-fun getParts/1126038692 (var3049) var1797)
(declare-fun hashCode/1337417431 (var1797) Int)
(declare-fun getAlternateId/1126038692 (var3049) String)
(declare-fun getDesc/1126038692 (var3049) String)
(declare-fun getMeaning/1126038692 (var3049) String)
(declare-fun isHidden/1126038692 (var3049) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3049) var3625)
(declare-fun hashCode/-1247371579 (var3625) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3049) var3625)
(declare-fun jsPlaceholderNames/1126038692 (var3049) var2293)
(declare-fun hashCode/1818408063 (var2293) Int)
(declare-const null-var3049 var3049)
(declare-const null-String String)
(declare-const var191 var3049) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var191 null-var3049)))
(define-const var1020 String (getSourceName/1126038692 var191)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var1020 null-String))) ; Cond: $r1 != null 
(define-const var1859 String (getSourceName/1126038692 var191)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var2081 Int (hashCode/-467973558 var1859)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1217 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2081)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var444 Int (* var1217 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1537 String (getKey/1126038692 var191)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2569 Int (hashCode/-467973558 var1537)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3405 Int (bv2nat (bvxor ((_ int2bv 64) var444) ((_ int2bv 64) var2569)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3696 Int (* var3405 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3512 Bool (isAnonymous/1126038692 var191)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var3512 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2528 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var3739 Int (bv2nat (bvxor ((_ int2bv 64) var3696) ((_ int2bv 64) var2528)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1777 Int (* var3739 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var294 Bool (isExternal/1126038692 var191)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var294 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1794 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3225 Int (bv2nat (bvxor ((_ int2bv 64) var1777) ((_ int2bv 64) var1794)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3619 Int (* var3225 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2384 String (getId/1126038692 var191)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1433 Int (hashCode/-467973558 var2384)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var677 Int (bv2nat (bvxor ((_ int2bv 64) var3619) ((_ int2bv 64) var1433)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3630 Int (* var677 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2639 var1797 (getParts/1126038692 var191)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3287 Int (hashCode/1337417431 var2639)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1709 Int (bv2nat (bvxor ((_ int2bv 64) var3630) ((_ int2bv 64) var3287)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var543 Int (* var1709 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var406 String (getAlternateId/1126038692 var191)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var406 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1885 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3187 Int (bv2nat (bvxor ((_ int2bv 64) var543) ((_ int2bv 64) var1885)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2242 Int (* var3187 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1423 String (getDesc/1126038692 var191)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var1423 null-String))) ; Cond: $r8 != null 
(define-const var971 String (getDesc/1126038692 var191)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2568 Int (hashCode/-467973558 var971)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2083 Int (bv2nat (bvxor ((_ int2bv 64) var2242) ((_ int2bv 64) var2568)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3026 Int (* var2083 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1639 String (getMeaning/1126038692 var191)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var1639 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var3915 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2452 Int (bv2nat (bvxor ((_ int2bv 64) var3026) ((_ int2bv 64) var3915)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1592 Int (* var2452 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var695 Bool (isHidden/1126038692 var191)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var695 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1825 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var819 Int (bv2nat (bvxor ((_ int2bv 64) var1592) ((_ int2bv 64) var1825)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2422 Int (* var819 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var165 var3625 (getPlaceholderNameToExampleMap/1126038692 var191)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2837 Int (hashCode/-1247371579 var165)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2926 Int (bv2nat (bvxor ((_ int2bv 64) var2422) ((_ int2bv 64) var2837)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var456 Int (* var2926 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1085 var3625 (getPlaceholderNameToOriginalCodeMap/1126038692 var191)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3123 Int (hashCode/-1247371579 var1085)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var863 Int (bv2nat (bvxor ((_ int2bv 64) var456) ((_ int2bv 64) var3123)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2186 Int (* var863 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var822 var2293 (jsPlaceholderNames/1126038692 var191)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3389 Int (hashCode/1818408063 var822)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1076 Int (bv2nat (bvxor ((_ int2bv 64) var2186) ((_ int2bv 64) var3389)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3049=com.google.javascript.jscomp.AutoValue_JsMessage, var191=r0, var1020=$r1, var3440=null_type, var1859=$r2, var2081=$i31, var1217=$i27, var444=$i28, var1537=$r3, var2569=$i0, var3405=$i29, var3696=$i30, var3512=$z0, var2528=$s32, var3739=$i25, var1777=$i26, var294=$z1, var1794=$s33, var3225=$i19, var3619=$i20, var2384=$r4, var1433=$i1, var677=$i21, var3630=$i22, var1797=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2639=$r5, var3287=$i2, var1709=$i23, var543=$i24, var406=$r6, var1885=$i34, var3187=$i17, var2242=$i18, var1423=$r8, var971=$r9, var2568=$i35, var2083=$i15, var3026=$i16, var1639=$r10, var3915=$i36, var2452=$i13, var1592=$i14, var695=$z2, var1825=$s37, var819=$i6, var2422=$i7, var3625=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var165=$r12, var2837=$i3, var2926=$i8, var456=$i9, var1085=$r13, var3123=$i4, var863=$i10, var2186=$i11, var2293=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var822=$r14, var3389=$i5, var1076=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3049, r0=var191, $r1=var1020, null_type=var3440, $r2=var1859, $i31=var2081, $i27=var1217, $i28=var444, $r3=var1537, $i0=var2569, $i29=var3405, $i30=var3696, $z0=var3512, $s32=var2528, $i25=var3739, $i26=var1777, $z1=var294, $s33=var1794, $i19=var3225, $i20=var3619, $r4=var2384, $i1=var1433, $i21=var677, $i22=var3630, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1797, $r5=var2639, $i2=var3287, $i23=var1709, $i24=var543, $r6=var406, $i34=var1885, $i17=var3187, $i18=var2242, $r8=var1423, $r9=var971, $i35=var2568, $i15=var2083, $i16=var3026, $r10=var1639, $i36=var3915, $i13=var2452, $i14=var1592, $z2=var695, $s37=var1825, $i6=var819, $i7=var2422, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3625, $r12=var165, $i3=var2837, $i8=var2926, $i9=var456, $r13=var1085, $i4=var3123, $i10=var863, $i11=var2186, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2293, $r14=var822, $i5=var3389, $i12=var1076}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15