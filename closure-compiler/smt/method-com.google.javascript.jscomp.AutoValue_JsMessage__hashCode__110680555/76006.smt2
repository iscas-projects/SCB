(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1368 0)
(declare-sort var3800 0)
(declare-sort var2844 0)
(declare-sort var2487 0)
(declare-sort var222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1368) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var1368) String)
(declare-fun isAnonymous/1126038692 (var1368) Bool)
(declare-fun isExternal/1126038692 (var1368) Bool)
(declare-fun getId/1126038692 (var1368) String)
(declare-fun getParts/1126038692 (var1368) var2844)
(declare-fun hashCode/1337417431 (var2844) Int)
(declare-fun getAlternateId/1126038692 (var1368) String)
(declare-fun getDesc/1126038692 (var1368) String)
(declare-fun getMeaning/1126038692 (var1368) String)
(declare-fun isHidden/1126038692 (var1368) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1368) var2487)
(declare-fun hashCode/-1247371579 (var2487) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1368) var2487)
(declare-fun jsPlaceholderNames/1126038692 (var1368) var222)
(declare-fun hashCode/1818408063 (var222) Int)
(declare-const null-var1368 var1368)
(declare-const null-String String)
(declare-const var3007 var1368) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3007 null-var1368)))
(define-const var2171 String (getSourceName/1126038692 var3007)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var2171 null-String))) ; Cond: $r1 != null 
(define-const var1645 String (getSourceName/1126038692 var3007)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var1164 Int (hashCode/-467973558 var1645)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1478 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var1164)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2776 Int (* var1478 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var400 String (getKey/1126038692 var3007)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2464 Int (hashCode/-467973558 var400)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2779 Int (bv2nat (bvxor ((_ int2bv 64) var2776) ((_ int2bv 64) var2464)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1308 Int (* var2779 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2986 Bool (isAnonymous/1126038692 var3007)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var2986 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var602 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var2625 Int (bv2nat (bvxor ((_ int2bv 64) var1308) ((_ int2bv 64) var602)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1827 Int (* var2625 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3164 Bool (isExternal/1126038692 var3007)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var3164 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var203 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3467 Int (bv2nat (bvxor ((_ int2bv 64) var1827) ((_ int2bv 64) var203)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3538 Int (* var3467 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1383 String (getId/1126038692 var3007)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1321 Int (hashCode/-467973558 var1383)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var2709 Int (bv2nat (bvxor ((_ int2bv 64) var3538) ((_ int2bv 64) var1321)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1794 Int (* var2709 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var530 var2844 (getParts/1126038692 var3007)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2195 Int (hashCode/1337417431 var530)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3466 Int (bv2nat (bvxor ((_ int2bv 64) var1794) ((_ int2bv 64) var2195)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3370 Int (* var3466 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1013 String (getAlternateId/1126038692 var3007)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1013 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var449 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3406 Int (bv2nat (bvxor ((_ int2bv 64) var3370) ((_ int2bv 64) var449)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var3688 Int (* var3406 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var751 String (getDesc/1126038692 var3007)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var751 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3132 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var2948 Int (bv2nat (bvxor ((_ int2bv 64) var3688) ((_ int2bv 64) var3132)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var3488 Int (* var2948 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3833 String (getMeaning/1126038692 var3007)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var3833 null-String))) ; Cond: $r10 != null 
(define-const var445 String (getMeaning/1126038692 var3007)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var296 Int (hashCode/-467973558 var445)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3413 Int (bv2nat (bvxor ((_ int2bv 64) var3488) ((_ int2bv 64) var296)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2906 Int (* var3413 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1666 Bool (isHidden/1126038692 var3007)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var1666 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var762 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2173 Int (bv2nat (bvxor ((_ int2bv 64) var2906) ((_ int2bv 64) var762)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2890 Int (* var2173 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1959 var2487 (getPlaceholderNameToExampleMap/1126038692 var3007)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1014 Int (hashCode/-1247371579 var1959)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2524 Int (bv2nat (bvxor ((_ int2bv 64) var2890) ((_ int2bv 64) var1014)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1403 Int (* var2524 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3043 var2487 (getPlaceholderNameToOriginalCodeMap/1126038692 var3007)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1423 Int (hashCode/-1247371579 var3043)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var122 Int (bv2nat (bvxor ((_ int2bv 64) var1403) ((_ int2bv 64) var1423)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3414 Int (* var122 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var196 var222 (jsPlaceholderNames/1126038692 var3007)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var1525 Int (hashCode/1818408063 var196)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var760 Int (bv2nat (bvxor ((_ int2bv 64) var3414) ((_ int2bv 64) var1525)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1368=com.google.javascript.jscomp.AutoValue_JsMessage, var3007=r0, var2171=$r1, var3800=null_type, var1645=$r2, var1164=$i31, var1478=$i27, var2776=$i28, var400=$r3, var2464=$i0, var2779=$i29, var1308=$i30, var2986=$z0, var602=$s32, var2625=$i25, var1827=$i26, var3164=$z1, var203=$s33, var3467=$i19, var3538=$i20, var1383=$r4, var1321=$i1, var2709=$i21, var1794=$i22, var2844=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var530=$r5, var2195=$i2, var3466=$i23, var3370=$i24, var1013=$r6, var449=$i34, var3406=$i17, var3688=$i18, var751=$r8, var3132=$i35, var2948=$i15, var3488=$i16, var3833=$r10, var445=$r11, var296=$i36, var3413=$i13, var2906=$i14, var1666=$z2, var762=$s37, var2173=$i6, var2890=$i7, var2487=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1959=$r12, var1014=$i3, var2524=$i8, var1403=$i9, var3043=$r13, var1423=$i4, var122=$i10, var3414=$i11, var222=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var196=$r14, var1525=$i5, var760=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1368, r0=var3007, $r1=var2171, null_type=var3800, $r2=var1645, $i31=var1164, $i27=var1478, $i28=var2776, $r3=var400, $i0=var2464, $i29=var2779, $i30=var1308, $z0=var2986, $s32=var602, $i25=var2625, $i26=var1827, $z1=var3164, $s33=var203, $i19=var3467, $i20=var3538, $r4=var1383, $i1=var1321, $i21=var2709, $i22=var1794, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2844, $r5=var530, $i2=var2195, $i23=var3466, $i24=var3370, $r6=var1013, $i34=var449, $i17=var3406, $i18=var3688, $r8=var751, $i35=var3132, $i15=var2948, $i16=var3488, $r10=var3833, $r11=var445, $i36=var296, $i13=var3413, $i14=var2906, $z2=var1666, $s37=var762, $i6=var2173, $i7=var2890, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var2487, $r12=var1959, $i3=var1014, $i8=var2524, $i9=var1403, $r13=var3043, $i4=var1423, $i10=var122, $i11=var3414, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var222, $r14=var196, $i5=var1525, $i12=var760}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 4}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15