(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var344 0)
(declare-sort var832 0)
(declare-sort var2865 0)
(declare-sort var498 0)
(declare-sort var2350 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var344) String)
(declare-fun getKey/1126038692 (var344) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var344) Bool)
(declare-fun isExternal/1126038692 (var344) Bool)
(declare-fun getId/1126038692 (var344) String)
(declare-fun getParts/1126038692 (var344) var2865)
(declare-fun hashCode/1337417431 (var2865) Int)
(declare-fun getAlternateId/1126038692 (var344) String)
(declare-fun getDesc/1126038692 (var344) String)
(declare-fun getMeaning/1126038692 (var344) String)
(declare-fun isHidden/1126038692 (var344) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var344) var498)
(declare-fun hashCode/-1247371579 (var498) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var344) var498)
(declare-fun jsPlaceholderNames/1126038692 (var344) var2350)
(declare-fun hashCode/1818408063 (var2350) Int)
(declare-const null-var344 var344)
(declare-const null-String String)
(declare-const var1776 var344) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1776 null-var344)))
(define-const var3205 String (getSourceName/1126038692 var1776)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var3205 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var927 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2040 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var927)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var443 Int (* var2040 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1616 String (getKey/1126038692 var1776)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3391 Int (hashCode/-467973558 var1616)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1216 Int (bv2nat (bvxor ((_ int2bv 64) var443) ((_ int2bv 64) var3391)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2123 Int (* var1216 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1647 Bool (isAnonymous/1126038692 var1776)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1647 1 0) 0)) ; Cond: $z0 == 0 
(define-const var162 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var2710 Int (bv2nat (bvxor ((_ int2bv 64) var2123) ((_ int2bv 64) var162)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3381 Int (* var2710 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3667 Bool (isExternal/1126038692 var1776)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3667 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2422 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var1093 Int (bv2nat (bvxor ((_ int2bv 64) var3381) ((_ int2bv 64) var2422)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var251 Int (* var1093 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3323 String (getId/1126038692 var1776)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3744 Int (hashCode/-467973558 var3323)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var170 Int (bv2nat (bvxor ((_ int2bv 64) var251) ((_ int2bv 64) var3744)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var70 Int (* var170 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3 var2865 (getParts/1126038692 var1776)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2156 Int (hashCode/1337417431 var3)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var583 Int (bv2nat (bvxor ((_ int2bv 64) var70) ((_ int2bv 64) var2156)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3034 Int (* var583 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3427 String (getAlternateId/1126038692 var1776)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3427 null-String))) ; Cond: $r6 != null 
(define-const var1858 String (getAlternateId/1126038692 var1776)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var45 Int (hashCode/-467973558 var1858)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1499 Int (bv2nat (bvxor ((_ int2bv 64) var3034) ((_ int2bv 64) var45)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var593 Int (* var1499 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2921 String (getDesc/1126038692 var1776)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var2921 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3185 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2377 Int (bv2nat (bvxor ((_ int2bv 64) var593) ((_ int2bv 64) var3185)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2296 Int (* var2377 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3432 String (getMeaning/1126038692 var1776)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3432 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2535 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2675 Int (bv2nat (bvxor ((_ int2bv 64) var2296) ((_ int2bv 64) var2535)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1408 Int (* var2675 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3573 Bool (isHidden/1126038692 var1776)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3573 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1414 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var3954 Int (bv2nat (bvxor ((_ int2bv 64) var1408) ((_ int2bv 64) var1414)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1228 Int (* var3954 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3788 var498 (getPlaceholderNameToExampleMap/1126038692 var1776)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1078 Int (hashCode/-1247371579 var3788)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1273 Int (bv2nat (bvxor ((_ int2bv 64) var1228) ((_ int2bv 64) var1078)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3254 Int (* var1273 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3221 var498 (getPlaceholderNameToOriginalCodeMap/1126038692 var1776)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var588 Int (hashCode/-1247371579 var3221)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2071 Int (bv2nat (bvxor ((_ int2bv 64) var3254) ((_ int2bv 64) var588)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3308 Int (* var2071 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3074 var2350 (jsPlaceholderNames/1126038692 var1776)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3216 Int (hashCode/1818408063 var3074)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2138 Int (bv2nat (bvxor ((_ int2bv 64) var3308) ((_ int2bv 64) var3216)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var344=com.google.javascript.jscomp.AutoValue_JsMessage, var1776=r0, var3205=$r1, var832=null_type, var927=$i31, var2040=$i27, var443=$i28, var1616=$r3, var3391=$i0, var1216=$i29, var2123=$i30, var1647=$z0, var162=$s32, var2710=$i25, var3381=$i26, var3667=$z1, var2422=$s33, var1093=$i19, var251=$i20, var3323=$r4, var3744=$i1, var170=$i21, var70=$i22, var2865=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3=$r5, var2156=$i2, var583=$i23, var3034=$i24, var3427=$r6, var1858=$r7, var45=$i34, var1499=$i17, var593=$i18, var2921=$r8, var3185=$i35, var2377=$i15, var2296=$i16, var3432=$r10, var2535=$i36, var2675=$i13, var1408=$i14, var3573=$z2, var1414=$s37, var3954=$i6, var1228=$i7, var498=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3788=$r12, var1078=$i3, var1273=$i8, var3254=$i9, var3221=$r13, var588=$i4, var2071=$i10, var3308=$i11, var2350=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3074=$r14, var3216=$i5, var2138=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var344, r0=var1776, $r1=var3205, null_type=var832, $i31=var927, $i27=var2040, $i28=var443, $r3=var1616, $i0=var3391, $i29=var1216, $i30=var2123, $z0=var1647, $s32=var162, $i25=var2710, $i26=var3381, $z1=var3667, $s33=var2422, $i19=var1093, $i20=var251, $r4=var3323, $i1=var3744, $i21=var170, $i22=var70, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2865, $r5=var3, $i2=var2156, $i23=var583, $i24=var3034, $r6=var3427, $r7=var1858, $i34=var45, $i17=var1499, $i18=var593, $r8=var2921, $i35=var3185, $i15=var2377, $i16=var2296, $r10=var3432, $i36=var2535, $i13=var2675, $i14=var1408, $z2=var3573, $s37=var1414, $i6=var3954, $i7=var1228, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var498, $r12=var3788, $i3=var1078, $i8=var1273, $i9=var3254, $r13=var3221, $i4=var588, $i10=var2071, $i11=var3308, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2350, $r14=var3074, $i5=var3216, $i12=var2138}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15