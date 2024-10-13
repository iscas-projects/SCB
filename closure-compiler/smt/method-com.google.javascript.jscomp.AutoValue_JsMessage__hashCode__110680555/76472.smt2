(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3471 0)
(declare-sort var2457 0)
(declare-sort var1921 0)
(declare-sort var41 0)
(declare-sort var2356 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3471) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var3471) String)
(declare-fun isAnonymous/1126038692 (var3471) Bool)
(declare-fun isExternal/1126038692 (var3471) Bool)
(declare-fun getId/1126038692 (var3471) String)
(declare-fun getParts/1126038692 (var3471) var1921)
(declare-fun hashCode/1337417431 (var1921) Int)
(declare-fun getAlternateId/1126038692 (var3471) String)
(declare-fun getDesc/1126038692 (var3471) String)
(declare-fun getMeaning/1126038692 (var3471) String)
(declare-fun isHidden/1126038692 (var3471) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3471) var41)
(declare-fun hashCode/-1247371579 (var41) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3471) var41)
(declare-fun jsPlaceholderNames/1126038692 (var3471) var2356)
(declare-fun hashCode/1818408063 (var2356) Int)
(declare-const null-var3471 var3471)
(declare-const null-String String)
(declare-const var447 var3471) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var447 null-var3471)))
(define-const var192 String (getSourceName/1126038692 var447)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var192 null-String))) ; Cond: $r1 != null 
(define-const var2815 String (getSourceName/1126038692 var447)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var299 Int (hashCode/-467973558 var2815)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2276 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var299)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2464 Int (* var2276 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2881 String (getKey/1126038692 var447)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3090 Int (hashCode/-467973558 var2881)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2119 Int (bv2nat (bvxor ((_ int2bv 64) var2464) ((_ int2bv 64) var3090)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var905 Int (* var2119 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var116 Bool (isAnonymous/1126038692 var447)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var116 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1406 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var2547 Int (bv2nat (bvxor ((_ int2bv 64) var905) ((_ int2bv 64) var1406)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3083 Int (* var2547 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2440 Bool (isExternal/1126038692 var447)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2440 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1246 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var770 Int (bv2nat (bvxor ((_ int2bv 64) var3083) ((_ int2bv 64) var1246)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var2744 Int (* var770 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var2058 String (getId/1126038692 var447)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1916 Int (hashCode/-467973558 var2058)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3318 Int (bv2nat (bvxor ((_ int2bv 64) var2744) ((_ int2bv 64) var1916)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1981 Int (* var3318 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2189 var1921 (getParts/1126038692 var447)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var88 Int (hashCode/1337417431 var2189)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2089 Int (bv2nat (bvxor ((_ int2bv 64) var1981) ((_ int2bv 64) var88)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2476 Int (* var2089 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var702 String (getAlternateId/1126038692 var447)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var702 null-String))) ; Cond: $r6 != null 
(define-const var448 String (getAlternateId/1126038692 var447)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var93 Int (hashCode/-467973558 var448)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3952 Int (bv2nat (bvxor ((_ int2bv 64) var2476) ((_ int2bv 64) var93)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3369 Int (* var3952 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3480 String (getDesc/1126038692 var447)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3480 null-String))) ; Cond: $r8 != null 
(define-const var1520 String (getDesc/1126038692 var447)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var2143 Int (hashCode/-467973558 var1520)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2424 Int (bv2nat (bvxor ((_ int2bv 64) var3369) ((_ int2bv 64) var2143)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3723 Int (* var2424 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var898 String (getMeaning/1126038692 var447)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var898 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var507 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2751 Int (bv2nat (bvxor ((_ int2bv 64) var3723) ((_ int2bv 64) var507)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3223 Int (* var2751 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3548 Bool (isHidden/1126038692 var447)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var3548 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var358 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1253 Int (bv2nat (bvxor ((_ int2bv 64) var3223) ((_ int2bv 64) var358)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1428 Int (* var1253 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2281 var41 (getPlaceholderNameToExampleMap/1126038692 var447)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2234 Int (hashCode/-1247371579 var2281)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var82 Int (bv2nat (bvxor ((_ int2bv 64) var1428) ((_ int2bv 64) var2234)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1191 Int (* var82 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var542 var41 (getPlaceholderNameToOriginalCodeMap/1126038692 var447)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1985 Int (hashCode/-1247371579 var542)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3228 Int (bv2nat (bvxor ((_ int2bv 64) var1191) ((_ int2bv 64) var1985)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1534 Int (* var3228 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2709 var2356 (jsPlaceholderNames/1126038692 var447)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var38 Int (hashCode/1818408063 var2709)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1145 Int (bv2nat (bvxor ((_ int2bv 64) var1534) ((_ int2bv 64) var38)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3471=com.google.javascript.jscomp.AutoValue_JsMessage, var447=r0, var192=$r1, var2457=null_type, var2815=$r2, var299=$i31, var2276=$i27, var2464=$i28, var2881=$r3, var3090=$i0, var2119=$i29, var905=$i30, var116=$z0, var1406=$s32, var2547=$i25, var3083=$i26, var2440=$z1, var1246=$s33, var770=$i19, var2744=$i20, var2058=$r4, var1916=$i1, var3318=$i21, var1981=$i22, var1921=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2189=$r5, var88=$i2, var2089=$i23, var2476=$i24, var702=$r6, var448=$r7, var93=$i34, var3952=$i17, var3369=$i18, var3480=$r8, var1520=$r9, var2143=$i35, var2424=$i15, var3723=$i16, var898=$r10, var507=$i36, var2751=$i13, var3223=$i14, var3548=$z2, var358=$s37, var1253=$i6, var1428=$i7, var41=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2281=$r12, var2234=$i3, var82=$i8, var1191=$i9, var542=$r13, var1985=$i4, var3228=$i10, var1534=$i11, var2356=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2709=$r14, var38=$i5, var1145=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3471, r0=var447, $r1=var192, null_type=var2457, $r2=var2815, $i31=var299, $i27=var2276, $i28=var2464, $r3=var2881, $i0=var3090, $i29=var2119, $i30=var905, $z0=var116, $s32=var1406, $i25=var2547, $i26=var3083, $z1=var2440, $s33=var1246, $i19=var770, $i20=var2744, $r4=var2058, $i1=var1916, $i21=var3318, $i22=var1981, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1921, $r5=var2189, $i2=var88, $i23=var2089, $i24=var2476, $r6=var702, $r7=var448, $i34=var93, $i17=var3952, $i18=var3369, $r8=var3480, $r9=var1520, $i35=var2143, $i15=var2424, $i16=var3723, $r10=var898, $i36=var507, $i13=var2751, $i14=var3223, $z2=var3548, $s37=var358, $i6=var1253, $i7=var1428, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var41, $r12=var2281, $i3=var2234, $i8=var82, $i9=var1191, $r13=var542, $i4=var1985, $i10=var3228, $i11=var1534, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2356, $r14=var2709, $i5=var38, $i12=var1145}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15