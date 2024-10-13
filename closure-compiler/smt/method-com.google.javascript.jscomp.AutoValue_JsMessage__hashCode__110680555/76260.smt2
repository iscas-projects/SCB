(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2047 0)
(declare-sort var2160 0)
(declare-sort var109 0)
(declare-sort var2595 0)
(declare-sort var1949 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2047) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2047) String)
(declare-fun isAnonymous/1126038692 (var2047) Bool)
(declare-fun isExternal/1126038692 (var2047) Bool)
(declare-fun getId/1126038692 (var2047) String)
(declare-fun getParts/1126038692 (var2047) var109)
(declare-fun hashCode/1337417431 (var109) Int)
(declare-fun getAlternateId/1126038692 (var2047) String)
(declare-fun getDesc/1126038692 (var2047) String)
(declare-fun getMeaning/1126038692 (var2047) String)
(declare-fun isHidden/1126038692 (var2047) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2047) var2595)
(declare-fun hashCode/-1247371579 (var2595) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2047) var2595)
(declare-fun jsPlaceholderNames/1126038692 (var2047) var1949)
(declare-fun hashCode/1818408063 (var1949) Int)
(declare-const null-var2047 var2047)
(declare-const null-String String)
(declare-const var1411 var2047) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1411 null-var2047)))
(define-const var1903 String (getSourceName/1126038692 var1411)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var1903 null-String))) ; Cond: $r1 != null 
(define-const var3741 String (getSourceName/1126038692 var1411)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var2131 Int (hashCode/-467973558 var3741)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3782 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2131)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var170 Int (* var3782 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var44 String (getKey/1126038692 var1411)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1905 Int (hashCode/-467973558 var44)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2320 Int (bv2nat (bvxor ((_ int2bv 64) var170) ((_ int2bv 64) var1905)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1923 Int (* var2320 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1834 Bool (isAnonymous/1126038692 var1411)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1834 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var155 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var3261 Int (bv2nat (bvxor ((_ int2bv 64) var1923) ((_ int2bv 64) var155)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2569 Int (* var3261 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1782 Bool (isExternal/1126038692 var1411)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1782 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var980 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3607 Int (bv2nat (bvxor ((_ int2bv 64) var2569) ((_ int2bv 64) var980)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var606 Int (* var3607 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3578 String (getId/1126038692 var1411)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2293 Int (hashCode/-467973558 var3578)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3557 Int (bv2nat (bvxor ((_ int2bv 64) var606) ((_ int2bv 64) var2293)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2749 Int (* var3557 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3085 var109 (getParts/1126038692 var1411)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3005 Int (hashCode/1337417431 var3085)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2164 Int (bv2nat (bvxor ((_ int2bv 64) var2749) ((_ int2bv 64) var3005)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3411 Int (* var2164 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2435 String (getAlternateId/1126038692 var1411)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var2435 null-String))) ; Cond: $r6 != null 
(define-const var3739 String (getAlternateId/1126038692 var1411)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3709 Int (hashCode/-467973558 var3739)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2344 Int (bv2nat (bvxor ((_ int2bv 64) var3411) ((_ int2bv 64) var3709)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3682 Int (* var2344 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1152 String (getDesc/1126038692 var1411)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1152 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var1683 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var1236 Int (bv2nat (bvxor ((_ int2bv 64) var3682) ((_ int2bv 64) var1683)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2141 Int (* var1236 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2181 String (getMeaning/1126038692 var1411)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var2181 null-String))) ; Cond: $r10 != null 
(define-const var2600 String (getMeaning/1126038692 var1411)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var2176 Int (hashCode/-467973558 var2600)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var801 Int (bv2nat (bvxor ((_ int2bv 64) var2141) ((_ int2bv 64) var2176)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1111 Int (* var801 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3630 Bool (isHidden/1126038692 var1411)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3630 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3118 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1614 Int (bv2nat (bvxor ((_ int2bv 64) var1111) ((_ int2bv 64) var3118)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2013 Int (* var1614 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1678 var2595 (getPlaceholderNameToExampleMap/1126038692 var1411)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var351 Int (hashCode/-1247371579 var1678)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3799 Int (bv2nat (bvxor ((_ int2bv 64) var2013) ((_ int2bv 64) var351)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3806 Int (* var3799 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var242 var2595 (getPlaceholderNameToOriginalCodeMap/1126038692 var1411)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2374 Int (hashCode/-1247371579 var242)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1215 Int (bv2nat (bvxor ((_ int2bv 64) var3806) ((_ int2bv 64) var2374)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3513 Int (* var1215 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3313 var1949 (jsPlaceholderNames/1126038692 var1411)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2579 Int (hashCode/1818408063 var3313)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1372 Int (bv2nat (bvxor ((_ int2bv 64) var3513) ((_ int2bv 64) var2579)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2047=com.google.javascript.jscomp.AutoValue_JsMessage, var1411=r0, var1903=$r1, var2160=null_type, var3741=$r2, var2131=$i31, var3782=$i27, var170=$i28, var44=$r3, var1905=$i0, var2320=$i29, var1923=$i30, var1834=$z0, var155=$s32, var3261=$i25, var2569=$i26, var1782=$z1, var980=$s33, var3607=$i19, var606=$i20, var3578=$r4, var2293=$i1, var3557=$i21, var2749=$i22, var109=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3085=$r5, var3005=$i2, var2164=$i23, var3411=$i24, var2435=$r6, var3739=$r7, var3709=$i34, var2344=$i17, var3682=$i18, var1152=$r8, var1683=$i35, var1236=$i15, var2141=$i16, var2181=$r10, var2600=$r11, var2176=$i36, var801=$i13, var1111=$i14, var3630=$z2, var3118=$s37, var1614=$i6, var2013=$i7, var2595=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1678=$r12, var351=$i3, var3799=$i8, var3806=$i9, var242=$r13, var2374=$i4, var1215=$i10, var3513=$i11, var1949=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3313=$r14, var2579=$i5, var1372=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2047, r0=var1411, $r1=var1903, null_type=var2160, $r2=var3741, $i31=var2131, $i27=var3782, $i28=var170, $r3=var44, $i0=var1905, $i29=var2320, $i30=var1923, $z0=var1834, $s32=var155, $i25=var3261, $i26=var2569, $z1=var1782, $s33=var980, $i19=var3607, $i20=var606, $r4=var3578, $i1=var2293, $i21=var3557, $i22=var2749, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var109, $r5=var3085, $i2=var3005, $i23=var2164, $i24=var3411, $r6=var2435, $r7=var3739, $i34=var3709, $i17=var2344, $i18=var3682, $r8=var1152, $i35=var1683, $i15=var1236, $i16=var2141, $r10=var2181, $r11=var2600, $i36=var2176, $i13=var801, $i14=var1111, $z2=var3630, $s37=var3118, $i6=var1614, $i7=var2013, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2595, $r12=var1678, $i3=var351, $i8=var3799, $i9=var3806, $r13=var242, $i4=var2374, $i10=var1215, $i11=var3513, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1949, $r14=var3313, $i5=var2579, $i12=var1372}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15