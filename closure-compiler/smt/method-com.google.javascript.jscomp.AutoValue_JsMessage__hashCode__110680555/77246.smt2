(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1370 0)
(declare-sort var3165 0)
(declare-sort var1041 0)
(declare-sort var293 0)
(declare-sort var3121 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1370) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var1370) String)
(declare-fun isAnonymous/1126038692 (var1370) Bool)
(declare-fun isExternal/1126038692 (var1370) Bool)
(declare-fun getId/1126038692 (var1370) String)
(declare-fun getParts/1126038692 (var1370) var1041)
(declare-fun hashCode/1337417431 (var1041) Int)
(declare-fun getAlternateId/1126038692 (var1370) String)
(declare-fun getDesc/1126038692 (var1370) String)
(declare-fun getMeaning/1126038692 (var1370) String)
(declare-fun isHidden/1126038692 (var1370) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1370) var293)
(declare-fun hashCode/-1247371579 (var293) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1370) var293)
(declare-fun jsPlaceholderNames/1126038692 (var1370) var3121)
(declare-fun hashCode/1818408063 (var3121) Int)
(declare-const null-var1370 var1370)
(declare-const null-String String)
(declare-const var73 var1370) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var73 null-var1370)))
(define-const var294 String (getSourceName/1126038692 var73)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var294 null-String))) ; Cond: $r1 != null 
(define-const var1503 String (getSourceName/1126038692 var73)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var974 Int (hashCode/-467973558 var1503)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var828 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var974)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3766 Int (* var828 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var879 String (getKey/1126038692 var73)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2246 Int (hashCode/-467973558 var879)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3264 Int (bv2nat (bvxor ((_ int2bv 64) var3766) ((_ int2bv 64) var2246)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1421 Int (* var3264 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3224 Bool (isAnonymous/1126038692 var73)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var3224 1 0) 0)) ; Cond: $z0 == 0 
(define-const var322 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var1923 Int (bv2nat (bvxor ((_ int2bv 64) var1421) ((_ int2bv 64) var322)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3707 Int (* var1923 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3762 Bool (isExternal/1126038692 var73)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3762 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2632 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var101 Int (bv2nat (bvxor ((_ int2bv 64) var3707) ((_ int2bv 64) var2632)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var3913 Int (* var101 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3716 String (getId/1126038692 var73)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var799 Int (hashCode/-467973558 var3716)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var869 Int (bv2nat (bvxor ((_ int2bv 64) var3913) ((_ int2bv 64) var799)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1305 Int (* var869 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var504 var1041 (getParts/1126038692 var73)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1065 Int (hashCode/1337417431 var504)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var434 Int (bv2nat (bvxor ((_ int2bv 64) var1305) ((_ int2bv 64) var1065)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3715 Int (* var434 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1218 String (getAlternateId/1126038692 var73)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1218 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var3761 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2344 Int (bv2nat (bvxor ((_ int2bv 64) var3715) ((_ int2bv 64) var3761)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var351 Int (* var2344 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var84 String (getDesc/1126038692 var73)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var84 null-String))) ; Cond: $r8 != null 
(define-const var2460 String (getDesc/1126038692 var73)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var1668 Int (hashCode/-467973558 var2460)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3408 Int (bv2nat (bvxor ((_ int2bv 64) var351) ((_ int2bv 64) var1668)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var427 Int (* var3408 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2376 String (getMeaning/1126038692 var73)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var2376 null-String))) ; Cond: $r10 != null 
(define-const var3851 String (getMeaning/1126038692 var73)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var958 Int (hashCode/-467973558 var3851)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var667 Int (bv2nat (bvxor ((_ int2bv 64) var427) ((_ int2bv 64) var958)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2363 Int (* var667 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var114 Bool (isHidden/1126038692 var73)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var114 1 0) 0)) ; Cond: $z2 == 0 
(define-const var1731 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var3881 Int (bv2nat (bvxor ((_ int2bv 64) var2363) ((_ int2bv 64) var1731)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1425 Int (* var3881 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3093 var293 (getPlaceholderNameToExampleMap/1126038692 var73)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1803 Int (hashCode/-1247371579 var3093)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var200 Int (bv2nat (bvxor ((_ int2bv 64) var1425) ((_ int2bv 64) var1803)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1283 Int (* var200 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var619 var293 (getPlaceholderNameToOriginalCodeMap/1126038692 var73)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1738 Int (hashCode/-1247371579 var619)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var403 Int (bv2nat (bvxor ((_ int2bv 64) var1283) ((_ int2bv 64) var1738)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1619 Int (* var403 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var719 var3121 (jsPlaceholderNames/1126038692 var73)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3951 Int (hashCode/1818408063 var719)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var552 Int (bv2nat (bvxor ((_ int2bv 64) var1619) ((_ int2bv 64) var3951)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1370=com.google.javascript.jscomp.AutoValue_JsMessage, var73=r0, var294=$r1, var3165=null_type, var1503=$r2, var974=$i31, var828=$i27, var3766=$i28, var879=$r3, var2246=$i0, var3264=$i29, var1421=$i30, var3224=$z0, var322=$s32, var1923=$i25, var3707=$i26, var3762=$z1, var2632=$s33, var101=$i19, var3913=$i20, var3716=$r4, var799=$i1, var869=$i21, var1305=$i22, var1041=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var504=$r5, var1065=$i2, var434=$i23, var3715=$i24, var1218=$r6, var3761=$i34, var2344=$i17, var351=$i18, var84=$r8, var2460=$r9, var1668=$i35, var3408=$i15, var427=$i16, var2376=$r10, var3851=$r11, var958=$i36, var667=$i13, var2363=$i14, var114=$z2, var1731=$s37, var3881=$i6, var1425=$i7, var293=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3093=$r12, var1803=$i3, var200=$i8, var1283=$i9, var619=$r13, var1738=$i4, var403=$i10, var1619=$i11, var3121=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var719=$r14, var3951=$i5, var552=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1370, r0=var73, $r1=var294, null_type=var3165, $r2=var1503, $i31=var974, $i27=var828, $i28=var3766, $r3=var879, $i0=var2246, $i29=var3264, $i30=var1421, $z0=var3224, $s32=var322, $i25=var1923, $i26=var3707, $z1=var3762, $s33=var2632, $i19=var101, $i20=var3913, $r4=var3716, $i1=var799, $i21=var869, $i22=var1305, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1041, $r5=var504, $i2=var1065, $i23=var434, $i24=var3715, $r6=var1218, $i34=var3761, $i17=var2344, $i18=var351, $r8=var84, $r9=var2460, $i35=var1668, $i15=var3408, $i16=var427, $r10=var2376, $r11=var3851, $i36=var958, $i13=var667, $i14=var2363, $z2=var114, $s37=var1731, $i6=var3881, $i7=var1425, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var293, $r12=var3093, $i3=var1803, $i8=var200, $i9=var1283, $r13=var619, $i4=var1738, $i10=var403, $i11=var1619, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3121, $r14=var719, $i5=var3951, $i12=var552}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15