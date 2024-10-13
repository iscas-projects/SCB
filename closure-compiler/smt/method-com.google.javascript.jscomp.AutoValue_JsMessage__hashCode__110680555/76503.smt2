(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2439 0)
(declare-sort var827 0)
(declare-sort var1729 0)
(declare-sort var313 0)
(declare-sort var397 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2439) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2439) String)
(declare-fun isAnonymous/1126038692 (var2439) Bool)
(declare-fun isExternal/1126038692 (var2439) Bool)
(declare-fun getId/1126038692 (var2439) String)
(declare-fun getParts/1126038692 (var2439) var1729)
(declare-fun hashCode/1337417431 (var1729) Int)
(declare-fun getAlternateId/1126038692 (var2439) String)
(declare-fun getDesc/1126038692 (var2439) String)
(declare-fun getMeaning/1126038692 (var2439) String)
(declare-fun isHidden/1126038692 (var2439) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2439) var313)
(declare-fun hashCode/-1247371579 (var313) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2439) var313)
(declare-fun jsPlaceholderNames/1126038692 (var2439) var397)
(declare-fun hashCode/1818408063 (var397) Int)
(declare-const null-var2439 var2439)
(declare-const null-String String)
(declare-const var2668 var2439) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2668 null-var2439)))
(define-const var1179 String (getSourceName/1126038692 var2668)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var1179 null-String))) ; Cond: $r1 != null 
(define-const var1701 String (getSourceName/1126038692 var2668)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var2733 Int (hashCode/-467973558 var1701)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3417 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var2733)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3761 Int (* var3417 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2883 String (getKey/1126038692 var2668)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3931 Int (hashCode/-467973558 var2883)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1445 Int (bv2nat (bvxor ((_ int2bv 64) var3761) ((_ int2bv 64) var3931)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1202 Int (* var1445 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2457 Bool (isAnonymous/1126038692 var2668)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2457 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3567 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var993 Int (bv2nat (bvxor ((_ int2bv 64) var1202) ((_ int2bv 64) var3567)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3988 Int (* var993 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var987 Bool (isExternal/1126038692 var2668)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var987 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3413 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2145 Int (bv2nat (bvxor ((_ int2bv 64) var3988) ((_ int2bv 64) var3413)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var188 Int (* var2145 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3793 String (getId/1126038692 var2668)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var63 Int (hashCode/-467973558 var3793)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1282 Int (bv2nat (bvxor ((_ int2bv 64) var188) ((_ int2bv 64) var63)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1251 Int (* var1282 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var2656 var1729 (getParts/1126038692 var2668)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1117 Int (hashCode/1337417431 var2656)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var226 Int (bv2nat (bvxor ((_ int2bv 64) var1251) ((_ int2bv 64) var1117)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var317 Int (* var226 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var3501 String (getAlternateId/1126038692 var2668)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var3501 null-String))) ; Cond: $r6 != null 
(define-const var1879 String (getAlternateId/1126038692 var2668)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var3706 Int (hashCode/-467973558 var1879)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3882 Int (bv2nat (bvxor ((_ int2bv 64) var317) ((_ int2bv 64) var3706)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1435 Int (* var3882 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3205 String (getDesc/1126038692 var2668)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3205 null-String))) ; Cond: $r8 != null 
(define-const var2101 String (getDesc/1126038692 var2668)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var952 Int (hashCode/-467973558 var2101)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2270 Int (bv2nat (bvxor ((_ int2bv 64) var1435) ((_ int2bv 64) var952)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1929 Int (* var2270 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var1825 String (getMeaning/1126038692 var2668)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var1825 null-String))) ; Cond: $r10 != null 
(define-const var1812 String (getMeaning/1126038692 var2668)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var3242 Int (hashCode/-467973558 var1812)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1712 Int (bv2nat (bvxor ((_ int2bv 64) var1929) ((_ int2bv 64) var3242)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2204 Int (* var1712 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var986 Bool (isHidden/1126038692 var2668)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var986 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1128 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var334 Int (bv2nat (bvxor ((_ int2bv 64) var2204) ((_ int2bv 64) var1128)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3139 Int (* var334 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2517 var313 (getPlaceholderNameToExampleMap/1126038692 var2668)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1469 Int (hashCode/-1247371579 var2517)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1015 Int (bv2nat (bvxor ((_ int2bv 64) var3139) ((_ int2bv 64) var1469)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var358 Int (* var1015 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3725 var313 (getPlaceholderNameToOriginalCodeMap/1126038692 var2668)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1902 Int (hashCode/-1247371579 var3725)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1845 Int (bv2nat (bvxor ((_ int2bv 64) var358) ((_ int2bv 64) var1902)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2901 Int (* var1845 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var332 var397 (jsPlaceholderNames/1126038692 var2668)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3315 Int (hashCode/1818408063 var332)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var147 Int (bv2nat (bvxor ((_ int2bv 64) var2901) ((_ int2bv 64) var3315)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2439=com.google.javascript.jscomp.AutoValue_JsMessage, var2668=r0, var1179=$r1, var827=null_type, var1701=$r2, var2733=$i31, var3417=$i27, var3761=$i28, var2883=$r3, var3931=$i0, var1445=$i29, var1202=$i30, var2457=$z0, var3567=$s32, var993=$i25, var3988=$i26, var987=$z1, var3413=$s33, var2145=$i19, var188=$i20, var3793=$r4, var63=$i1, var1282=$i21, var1251=$i22, var1729=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var2656=$r5, var1117=$i2, var226=$i23, var317=$i24, var3501=$r6, var1879=$r7, var3706=$i34, var3882=$i17, var1435=$i18, var3205=$r8, var2101=$r9, var952=$i35, var2270=$i15, var1929=$i16, var1825=$r10, var1812=$r11, var3242=$i36, var1712=$i13, var2204=$i14, var986=$z2, var1128=$s37, var334=$i6, var3139=$i7, var313=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2517=$r12, var1469=$i3, var1015=$i8, var358=$i9, var3725=$r13, var1902=$i4, var1845=$i10, var2901=$i11, var397=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var332=$r14, var3315=$i5, var147=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2439, r0=var2668, $r1=var1179, null_type=var827, $r2=var1701, $i31=var2733, $i27=var3417, $i28=var3761, $r3=var2883, $i0=var3931, $i29=var1445, $i30=var1202, $z0=var2457, $s32=var3567, $i25=var993, $i26=var3988, $z1=var987, $s33=var3413, $i19=var2145, $i20=var188, $r4=var3793, $i1=var63, $i21=var1282, $i22=var1251, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1729, $r5=var2656, $i2=var1117, $i23=var226, $i24=var317, $r6=var3501, $r7=var1879, $i34=var3706, $i17=var3882, $i18=var1435, $r8=var3205, $r9=var2101, $i35=var952, $i15=var2270, $i16=var1929, $r10=var1825, $r11=var1812, $i36=var3242, $i13=var1712, $i14=var2204, $z2=var986, $s37=var1128, $i6=var334, $i7=var3139, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var313, $r12=var2517, $i3=var1469, $i8=var1015, $i9=var358, $r13=var3725, $i4=var1902, $i10=var1845, $i11=var2901, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var397, $r14=var332, $i5=var3315, $i12=var147}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 6}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15