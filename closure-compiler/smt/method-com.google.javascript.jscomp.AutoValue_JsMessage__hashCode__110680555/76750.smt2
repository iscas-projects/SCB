(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2035 0)
(declare-sort var2866 0)
(declare-sort var2216 0)
(declare-sort var1123 0)
(declare-sort var1535 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2035) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2035) String)
(declare-fun isAnonymous/1126038692 (var2035) Bool)
(declare-fun isExternal/1126038692 (var2035) Bool)
(declare-fun getId/1126038692 (var2035) String)
(declare-fun getParts/1126038692 (var2035) var2216)
(declare-fun hashCode/1337417431 (var2216) Int)
(declare-fun getAlternateId/1126038692 (var2035) String)
(declare-fun getDesc/1126038692 (var2035) String)
(declare-fun getMeaning/1126038692 (var2035) String)
(declare-fun isHidden/1126038692 (var2035) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2035) var1123)
(declare-fun hashCode/-1247371579 (var1123) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2035) var1123)
(declare-fun jsPlaceholderNames/1126038692 (var2035) var1535)
(declare-fun hashCode/1818408063 (var1535) Int)
(declare-const null-var2035 var2035)
(declare-const null-String String)
(declare-const var2328 var2035) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2328 null-var2035)))
(define-const var424 String (getSourceName/1126038692 var2328)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var424 null-String))) ; Cond: $r1 != null 
(define-const var122 String (getSourceName/1126038692 var2328)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var2617 Int (hashCode/-467973558 var122)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1673 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2617)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1893 Int (* var1673 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var724 String (getKey/1126038692 var2328)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3159 Int (hashCode/-467973558 var724)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2453 Int (bv2nat (bvxor ((_ int2bv 64) var1893) ((_ int2bv 64) var3159)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2545 Int (* var2453 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2178 Bool (isAnonymous/1126038692 var2328)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var2178 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3134 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3353 Int (bv2nat (bvxor ((_ int2bv 64) var2545) ((_ int2bv 64) var3134)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1695 Int (* var3353 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2281 Bool (isExternal/1126038692 var2328)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2281 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1209 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3667 Int (bv2nat (bvxor ((_ int2bv 64) var1695) ((_ int2bv 64) var1209)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1951 Int (* var3667 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1973 String (getId/1126038692 var2328)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2928 Int (hashCode/-467973558 var1973)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3345 Int (bv2nat (bvxor ((_ int2bv 64) var1951) ((_ int2bv 64) var2928)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1890 Int (* var3345 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2903 var2216 (getParts/1126038692 var2328)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3550 Int (hashCode/1337417431 var2903)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2519 Int (bv2nat (bvxor ((_ int2bv 64) var1890) ((_ int2bv 64) var3550)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1779 Int (* var2519 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var39 String (getAlternateId/1126038692 var2328)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var39 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var1882 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3105 Int (bv2nat (bvxor ((_ int2bv 64) var1779) ((_ int2bv 64) var1882)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1685 Int (* var3105 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var418 String (getDesc/1126038692 var2328)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var418 null-String))) ; Cond: $r8 != null 
(define-const var3443 String (getDesc/1126038692 var2328)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var1518 Int (hashCode/-467973558 var3443)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3147 Int (bv2nat (bvxor ((_ int2bv 64) var1685) ((_ int2bv 64) var1518)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2999 Int (* var3147 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3085 String (getMeaning/1126038692 var2328)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3085 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2308 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2144 Int (bv2nat (bvxor ((_ int2bv 64) var2999) ((_ int2bv 64) var2308)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3954 Int (* var2144 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1498 Bool (isHidden/1126038692 var2328)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var1498 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1958 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var261 Int (bv2nat (bvxor ((_ int2bv 64) var3954) ((_ int2bv 64) var1958)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2253 Int (* var261 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var702 var1123 (getPlaceholderNameToExampleMap/1126038692 var2328)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2057 Int (hashCode/-1247371579 var702)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2462 Int (bv2nat (bvxor ((_ int2bv 64) var2253) ((_ int2bv 64) var2057)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var110 Int (* var2462 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var390 var1123 (getPlaceholderNameToOriginalCodeMap/1126038692 var2328)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var312 Int (hashCode/-1247371579 var390)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2487 Int (bv2nat (bvxor ((_ int2bv 64) var110) ((_ int2bv 64) var312)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1058 Int (* var2487 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3429 var1535 (jsPlaceholderNames/1126038692 var2328)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2384 Int (hashCode/1818408063 var3429)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var3070 Int (bv2nat (bvxor ((_ int2bv 64) var1058) ((_ int2bv 64) var2384)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2035=com.google.javascript.jscomp.AutoValue_JsMessage, var2328=r0, var424=$r1, var2866=null_type, var122=$r2, var2617=$i31, var1673=$i27, var1893=$i28, var724=$r3, var3159=$i0, var2453=$i29, var2545=$i30, var2178=$z0, var3134=$s32, var3353=$i25, var1695=$i26, var2281=$z1, var1209=$s33, var3667=$i19, var1951=$i20, var1973=$r4, var2928=$i1, var3345=$i21, var1890=$i22, var2216=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2903=$r5, var3550=$i2, var2519=$i23, var1779=$i24, var39=$r6, var1882=$i34, var3105=$i17, var1685=$i18, var418=$r8, var3443=$r9, var1518=$i35, var3147=$i15, var2999=$i16, var3085=$r10, var2308=$i36, var2144=$i13, var3954=$i14, var1498=$z2, var1958=$s37, var261=$i6, var2253=$i7, var1123=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var702=$r12, var2057=$i3, var2462=$i8, var110=$i9, var390=$r13, var312=$i4, var2487=$i10, var1058=$i11, var1535=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3429=$r14, var2384=$i5, var3070=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2035, r0=var2328, $r1=var424, null_type=var2866, $r2=var122, $i31=var2617, $i27=var1673, $i28=var1893, $r3=var724, $i0=var3159, $i29=var2453, $i30=var2545, $z0=var2178, $s32=var3134, $i25=var3353, $i26=var1695, $z1=var2281, $s33=var1209, $i19=var3667, $i20=var1951, $r4=var1973, $i1=var2928, $i21=var3345, $i22=var1890, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2216, $r5=var2903, $i2=var3550, $i23=var2519, $i24=var1779, $r6=var39, $i34=var1882, $i17=var3105, $i18=var1685, $r8=var418, $r9=var3443, $i35=var1518, $i15=var3147, $i16=var2999, $r10=var3085, $i36=var2308, $i13=var2144, $i14=var3954, $z2=var1498, $s37=var1958, $i6=var261, $i7=var2253, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1123, $r12=var702, $i3=var2057, $i8=var2462, $i9=var110, $r13=var390, $i4=var312, $i10=var2487, $i11=var1058, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1535, $r14=var3429, $i5=var2384, $i12=var3070}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15