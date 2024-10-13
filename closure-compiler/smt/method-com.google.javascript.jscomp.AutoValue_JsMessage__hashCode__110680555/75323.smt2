(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1777 0)
(declare-sort var3314 0)
(declare-sort var1609 0)
(declare-sort var3799 0)
(declare-sort var1198 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1777) String)
(declare-fun getKey/1126038692 (var1777) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1777) Bool)
(declare-fun isExternal/1126038692 (var1777) Bool)
(declare-fun getId/1126038692 (var1777) String)
(declare-fun getParts/1126038692 (var1777) var1609)
(declare-fun hashCode/1337417431 (var1609) Int)
(declare-fun getAlternateId/1126038692 (var1777) String)
(declare-fun getDesc/1126038692 (var1777) String)
(declare-fun getMeaning/1126038692 (var1777) String)
(declare-fun isHidden/1126038692 (var1777) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1777) var3799)
(declare-fun hashCode/-1247371579 (var3799) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1777) var3799)
(declare-fun jsPlaceholderNames/1126038692 (var1777) var1198)
(declare-fun hashCode/1818408063 (var1198) Int)
(declare-const null-var1777 var1777)
(declare-const null-String String)
(declare-const var1581 var1777) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1581 null-var1777)))
(define-const var1696 String (getSourceName/1126038692 var1581)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var1696 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var2765 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var3467 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2765)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1249 Int (* var3467 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var908 String (getKey/1126038692 var1581)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1590 Int (hashCode/-467973558 var908)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var539 Int (bv2nat (bvxor ((_ int2bv 64) var1249) ((_ int2bv 64) var1590)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3194 Int (* var539 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var451 Bool (isAnonymous/1126038692 var1581)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var451 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2084 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var319 Int (bv2nat (bvxor ((_ int2bv 64) var3194) ((_ int2bv 64) var2084)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2343 Int (* var319 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var1660 Bool (isExternal/1126038692 var1581)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var1660 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var191 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3681 Int (bv2nat (bvxor ((_ int2bv 64) var2343) ((_ int2bv 64) var191)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var277 Int (* var3681 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2455 String (getId/1126038692 var1581)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3766 Int (hashCode/-467973558 var2455)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1442 Int (bv2nat (bvxor ((_ int2bv 64) var277) ((_ int2bv 64) var3766)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1396 Int (* var1442 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3267 var1609 (getParts/1126038692 var1581)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3008 Int (hashCode/1337417431 var3267)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2294 Int (bv2nat (bvxor ((_ int2bv 64) var1396) ((_ int2bv 64) var3008)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var492 Int (* var2294 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var537 String (getAlternateId/1126038692 var1581)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var537 null-String))) ; Cond: $r6 != null 
(define-const var3853 String (getAlternateId/1126038692 var1581)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3567 Int (hashCode/-467973558 var3853)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var960 Int (bv2nat (bvxor ((_ int2bv 64) var492) ((_ int2bv 64) var3567)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1508 Int (* var960 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3186 String (getDesc/1126038692 var1581)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3186 null-String))) ; Cond: $r8 != null 
(define-const var1947 String (getDesc/1126038692 var1581)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2529 Int (hashCode/-467973558 var1947)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1910 Int (bv2nat (bvxor ((_ int2bv 64) var1508) ((_ int2bv 64) var2529)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var521 Int (* var1910 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3884 String (getMeaning/1126038692 var1581)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3884 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var921 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var3795 Int (bv2nat (bvxor ((_ int2bv 64) var521) ((_ int2bv 64) var921)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1785 Int (* var3795 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var954 Bool (isHidden/1126038692 var1581)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var954 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2466 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var1787 Int (bv2nat (bvxor ((_ int2bv 64) var1785) ((_ int2bv 64) var2466)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2444 Int (* var1787 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1682 var3799 (getPlaceholderNameToExampleMap/1126038692 var1581)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var462 Int (hashCode/-1247371579 var1682)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2082 Int (bv2nat (bvxor ((_ int2bv 64) var2444) ((_ int2bv 64) var462)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var609 Int (* var2082 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3107 var3799 (getPlaceholderNameToOriginalCodeMap/1126038692 var1581)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var842 Int (hashCode/-1247371579 var3107)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2247 Int (bv2nat (bvxor ((_ int2bv 64) var609) ((_ int2bv 64) var842)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3387 Int (* var2247 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3167 var1198 (jsPlaceholderNames/1126038692 var1581)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3966 Int (hashCode/1818408063 var3167)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1553 Int (bv2nat (bvxor ((_ int2bv 64) var3387) ((_ int2bv 64) var3966)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1777=com.google.javascript.jscomp.AutoValue_JsMessage, var1581=r0, var1696=$r1, var3314=null_type, var2765=$i31, var3467=$i27, var1249=$i28, var908=$r3, var1590=$i0, var539=$i29, var3194=$i30, var451=$z0, var2084=$s32, var319=$i25, var2343=$i26, var1660=$z1, var191=$s33, var3681=$i19, var277=$i20, var2455=$r4, var3766=$i1, var1442=$i21, var1396=$i22, var1609=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3267=$r5, var3008=$i2, var2294=$i23, var492=$i24, var537=$r6, var3853=$r7, var3567=$i34, var960=$i17, var1508=$i18, var3186=$r8, var1947=$r9, var2529=$i35, var1910=$i15, var521=$i16, var3884=$r10, var921=$i36, var3795=$i13, var1785=$i14, var954=$z2, var2466=$s37, var1787=$i6, var2444=$i7, var3799=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1682=$r12, var462=$i3, var2082=$i8, var609=$i9, var3107=$r13, var842=$i4, var2247=$i10, var3387=$i11, var1198=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3167=$r14, var3966=$i5, var1553=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1777, r0=var1581, $r1=var1696, null_type=var3314, $i31=var2765, $i27=var3467, $i28=var1249, $r3=var908, $i0=var1590, $i29=var539, $i30=var3194, $z0=var451, $s32=var2084, $i25=var319, $i26=var2343, $z1=var1660, $s33=var191, $i19=var3681, $i20=var277, $r4=var2455, $i1=var3766, $i21=var1442, $i22=var1396, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1609, $r5=var3267, $i2=var3008, $i23=var2294, $i24=var492, $r6=var537, $r7=var3853, $i34=var3567, $i17=var960, $i18=var1508, $r8=var3186, $r9=var1947, $i35=var2529, $i15=var1910, $i16=var521, $r10=var3884, $i36=var921, $i13=var3795, $i14=var1785, $z2=var954, $s37=var2466, $i6=var1787, $i7=var2444, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3799, $r12=var1682, $i3=var462, $i8=var2082, $i9=var609, $r13=var3107, $i4=var842, $i10=var2247, $i11=var3387, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1198, $r14=var3167, $i5=var3966, $i12=var1553}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15