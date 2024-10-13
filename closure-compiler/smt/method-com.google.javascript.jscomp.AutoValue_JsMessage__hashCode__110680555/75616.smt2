(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3386 0)
(declare-sort var1742 0)
(declare-sort var3387 0)
(declare-sort var2300 0)
(declare-sort var957 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3386) String)
(declare-fun getKey/1126038692 (var3386) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var3386) Bool)
(declare-fun isExternal/1126038692 (var3386) Bool)
(declare-fun getId/1126038692 (var3386) String)
(declare-fun getParts/1126038692 (var3386) var3387)
(declare-fun hashCode/1337417431 (var3387) Int)
(declare-fun getAlternateId/1126038692 (var3386) String)
(declare-fun getDesc/1126038692 (var3386) String)
(declare-fun getMeaning/1126038692 (var3386) String)
(declare-fun isHidden/1126038692 (var3386) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3386) var2300)
(declare-fun hashCode/-1247371579 (var2300) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3386) var2300)
(declare-fun jsPlaceholderNames/1126038692 (var3386) var957)
(declare-fun hashCode/1818408063 (var957) Int)
(declare-const null-var3386 var3386)
(declare-const null-String String)
(declare-const var3902 var3386) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3902 null-var3386)))
(define-const var3297 String (getSourceName/1126038692 var3902)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var3297 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2903 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var258 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2903)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var544 Int (* var258 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3501 String (getKey/1126038692 var3902)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2075 Int (hashCode/-467973558 var3501)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1343 Int (bv2nat (bvxor ((_ int2bv 64) var544) ((_ int2bv 64) var2075)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var584 Int (* var1343 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1065 Bool (isAnonymous/1126038692 var3902)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1065 1 0) 0)) ; Cond: $z0 == 0 
(define-const var802 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var1003 Int (bv2nat (bvxor ((_ int2bv 64) var584) ((_ int2bv 64) var802)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var488 Int (* var1003 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2783 Bool (isExternal/1126038692 var3902)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2783 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var988 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var1198 Int (bv2nat (bvxor ((_ int2bv 64) var488) ((_ int2bv 64) var988)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var296 Int (* var1198 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var916 String (getId/1126038692 var3902)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2804 Int (hashCode/-467973558 var916)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var902 Int (bv2nat (bvxor ((_ int2bv 64) var296) ((_ int2bv 64) var2804)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2012 Int (* var902 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1602 var3387 (getParts/1126038692 var3902)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2328 Int (hashCode/1337417431 var1602)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var682 Int (bv2nat (bvxor ((_ int2bv 64) var2012) ((_ int2bv 64) var2328)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var732 Int (* var682 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2050 String (getAlternateId/1126038692 var3902)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2050 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var3952 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2140 Int (bv2nat (bvxor ((_ int2bv 64) var732) ((_ int2bv 64) var3952)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3104 Int (* var2140 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3773 String (getDesc/1126038692 var3902)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3773 null-String))) ; Cond: $r8 != null 
(define-const var1448 String (getDesc/1126038692 var3902)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var1082 Int (hashCode/-467973558 var1448)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2856 Int (bv2nat (bvxor ((_ int2bv 64) var3104) ((_ int2bv 64) var1082)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3109 Int (* var2856 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2006 String (getMeaning/1126038692 var3902)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2006 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var785 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var661 Int (bv2nat (bvxor ((_ int2bv 64) var3109) ((_ int2bv 64) var785)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3553 Int (* var661 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2065 Bool (isHidden/1126038692 var3902)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2065 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var2094 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2319 Int (bv2nat (bvxor ((_ int2bv 64) var3553) ((_ int2bv 64) var2094)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1853 Int (* var2319 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var760 var2300 (getPlaceholderNameToExampleMap/1126038692 var3902)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var788 Int (hashCode/-1247371579 var760)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2231 Int (bv2nat (bvxor ((_ int2bv 64) var1853) ((_ int2bv 64) var788)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1589 Int (* var2231 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var763 var2300 (getPlaceholderNameToOriginalCodeMap/1126038692 var3902)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3408 Int (hashCode/-1247371579 var763)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3815 Int (bv2nat (bvxor ((_ int2bv 64) var1589) ((_ int2bv 64) var3408)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3735 Int (* var3815 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3914 var957 (jsPlaceholderNames/1126038692 var3902)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2132 Int (hashCode/1818408063 var3914)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2880 Int (bv2nat (bvxor ((_ int2bv 64) var3735) ((_ int2bv 64) var2132)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3386=com.google.javascript.jscomp.AutoValue_JsMessage, var3902=r0, var3297=$r1, var1742=null_type, var2903=$i31, var258=$i27, var544=$i28, var3501=$r3, var2075=$i0, var1343=$i29, var584=$i30, var1065=$z0, var802=$s32, var1003=$i25, var488=$i26, var2783=$z1, var988=$s33, var1198=$i19, var296=$i20, var916=$r4, var2804=$i1, var902=$i21, var2012=$i22, var3387=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1602=$r5, var2328=$i2, var682=$i23, var732=$i24, var2050=$r6, var3952=$i34, var2140=$i17, var3104=$i18, var3773=$r8, var1448=$r9, var1082=$i35, var2856=$i15, var3109=$i16, var2006=$r10, var785=$i36, var661=$i13, var3553=$i14, var2065=$z2, var2094=$s37, var2319=$i6, var1853=$i7, var2300=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var760=$r12, var788=$i3, var2231=$i8, var1589=$i9, var763=$r13, var3408=$i4, var3815=$i10, var3735=$i11, var957=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3914=$r14, var2132=$i5, var2880=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3386, r0=var3902, $r1=var3297, null_type=var1742, $i31=var2903, $i27=var258, $i28=var544, $r3=var3501, $i0=var2075, $i29=var1343, $i30=var584, $z0=var1065, $s32=var802, $i25=var1003, $i26=var488, $z1=var2783, $s33=var988, $i19=var1198, $i20=var296, $r4=var916, $i1=var2804, $i21=var902, $i22=var2012, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3387, $r5=var1602, $i2=var2328, $i23=var682, $i24=var732, $r6=var2050, $i34=var3952, $i17=var2140, $i18=var3104, $r8=var3773, $r9=var1448, $i35=var1082, $i15=var2856, $i16=var3109, $r10=var2006, $i36=var785, $i13=var661, $i14=var3553, $z2=var2065, $s37=var2094, $i6=var2319, $i7=var1853, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2300, $r12=var760, $i3=var788, $i8=var2231, $i9=var1589, $r13=var763, $i4=var3408, $i10=var3815, $i11=var3735, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var957, $r14=var3914, $i5=var2132, $i12=var2880}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15