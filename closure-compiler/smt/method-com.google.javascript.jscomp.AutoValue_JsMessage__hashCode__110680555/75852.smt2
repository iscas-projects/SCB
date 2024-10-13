(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1647 0)
(declare-sort var2331 0)
(declare-sort var617 0)
(declare-sort var714 0)
(declare-sort var303 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1647) String)
(declare-fun getKey/1126038692 (var1647) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1647) Bool)
(declare-fun isExternal/1126038692 (var1647) Bool)
(declare-fun getId/1126038692 (var1647) String)
(declare-fun getParts/1126038692 (var1647) var617)
(declare-fun hashCode/1337417431 (var617) Int)
(declare-fun getAlternateId/1126038692 (var1647) String)
(declare-fun getDesc/1126038692 (var1647) String)
(declare-fun getMeaning/1126038692 (var1647) String)
(declare-fun isHidden/1126038692 (var1647) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1647) var714)
(declare-fun hashCode/-1247371579 (var714) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1647) var714)
(declare-fun jsPlaceholderNames/1126038692 (var1647) var303)
(declare-fun hashCode/1818408063 (var303) Int)
(declare-const null-var1647 var1647)
(declare-const null-String String)
(declare-const var1349 var1647) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1349 null-var1647)))
(define-const var1478 String (getSourceName/1126038692 var1349)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1478 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var223 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2575 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var223)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3729 Int (* var2575 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3373 String (getKey/1126038692 var1349)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var727 Int (hashCode/-467973558 var3373)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2450 Int (bv2nat (bvxor ((_ int2bv 64) var3729) ((_ int2bv 64) var727)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3937 Int (* var2450 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var664 Bool (isAnonymous/1126038692 var1349)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var664 1 0) 0)) ; Cond: $z0 == 0 
(define-const var865 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var388 Int (bv2nat (bvxor ((_ int2bv 64) var3937) ((_ int2bv 64) var865)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var703 Int (* var388 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3475 Bool (isExternal/1126038692 var1349)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3475 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3758 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var732 Int (bv2nat (bvxor ((_ int2bv 64) var703) ((_ int2bv 64) var3758)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2274 Int (* var732 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var243 String (getId/1126038692 var1349)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3141 Int (hashCode/-467973558 var243)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2670 Int (bv2nat (bvxor ((_ int2bv 64) var2274) ((_ int2bv 64) var3141)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var3085 Int (* var2670 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var336 var617 (getParts/1126038692 var1349)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1450 Int (hashCode/1337417431 var336)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var863 Int (bv2nat (bvxor ((_ int2bv 64) var3085) ((_ int2bv 64) var1450)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var512 Int (* var863 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1152 String (getAlternateId/1126038692 var1349)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1152 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var761 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2456 Int (bv2nat (bvxor ((_ int2bv 64) var512) ((_ int2bv 64) var761)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2486 Int (* var2456 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var913 String (getDesc/1126038692 var1349)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var913 null-String))) ; Cond: $r8 != null 
(define-const var394 String (getDesc/1126038692 var1349)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var3210 Int (hashCode/-467973558 var394)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3128 Int (bv2nat (bvxor ((_ int2bv 64) var2486) ((_ int2bv 64) var3210)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var83 Int (* var3128 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2673 String (getMeaning/1126038692 var1349)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2673 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var1502 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var3549 Int (bv2nat (bvxor ((_ int2bv 64) var83) ((_ int2bv 64) var1502)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1268 Int (* var3549 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3651 Bool (isHidden/1126038692 var1349)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var3651 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2941 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var649 Int (bv2nat (bvxor ((_ int2bv 64) var1268) ((_ int2bv 64) var2941)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var878 Int (* var649 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1799 var714 (getPlaceholderNameToExampleMap/1126038692 var1349)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3524 Int (hashCode/-1247371579 var1799)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1318 Int (bv2nat (bvxor ((_ int2bv 64) var878) ((_ int2bv 64) var3524)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var946 Int (* var1318 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var375 var714 (getPlaceholderNameToOriginalCodeMap/1126038692 var1349)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3193 Int (hashCode/-1247371579 var375)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var275 Int (bv2nat (bvxor ((_ int2bv 64) var946) ((_ int2bv 64) var3193)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2535 Int (* var275 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var760 var303 (jsPlaceholderNames/1126038692 var1349)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2576 Int (hashCode/1818408063 var760)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var478 Int (bv2nat (bvxor ((_ int2bv 64) var2535) ((_ int2bv 64) var2576)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1647=com.google.javascript.jscomp.AutoValue_JsMessage, var1349=r0, var1478=$r1, var2331=null_type, var223=$i31, var2575=$i27, var3729=$i28, var3373=$r3, var727=$i0, var2450=$i29, var3937=$i30, var664=$z0, var865=$s32, var388=$i25, var703=$i26, var3475=$z1, var3758=$s33, var732=$i19, var2274=$i20, var243=$r4, var3141=$i1, var2670=$i21, var3085=$i22, var617=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var336=$r5, var1450=$i2, var863=$i23, var512=$i24, var1152=$r6, var761=$i34, var2456=$i17, var2486=$i18, var913=$r8, var394=$r9, var3210=$i35, var3128=$i15, var83=$i16, var2673=$r10, var1502=$i36, var3549=$i13, var1268=$i14, var3651=$z2, var2941=$s37, var649=$i6, var878=$i7, var714=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1799=$r12, var3524=$i3, var1318=$i8, var946=$i9, var375=$r13, var3193=$i4, var275=$i10, var2535=$i11, var303=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var760=$r14, var2576=$i5, var478=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1647, r0=var1349, $r1=var1478, null_type=var2331, $i31=var223, $i27=var2575, $i28=var3729, $r3=var3373, $i0=var727, $i29=var2450, $i30=var3937, $z0=var664, $s32=var865, $i25=var388, $i26=var703, $z1=var3475, $s33=var3758, $i19=var732, $i20=var2274, $r4=var243, $i1=var3141, $i21=var2670, $i22=var3085, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var617, $r5=var336, $i2=var1450, $i23=var863, $i24=var512, $r6=var1152, $i34=var761, $i17=var2456, $i18=var2486, $r8=var913, $r9=var394, $i35=var3210, $i15=var3128, $i16=var83, $r10=var2673, $i36=var1502, $i13=var3549, $i14=var1268, $z2=var3651, $s37=var2941, $i6=var649, $i7=var878, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var714, $r12=var1799, $i3=var3524, $i8=var1318, $i9=var946, $r13=var375, $i4=var3193, $i10=var275, $i11=var2535, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var303, $r14=var760, $i5=var2576, $i12=var478}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15