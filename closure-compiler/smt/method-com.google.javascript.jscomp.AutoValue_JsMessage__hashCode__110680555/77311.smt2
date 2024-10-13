(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1170 0)
(declare-sort var38 0)
(declare-sort var1062 0)
(declare-sort var3023 0)
(declare-sort var2762 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1170) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var1170) String)
(declare-fun isAnonymous/1126038692 (var1170) Bool)
(declare-fun isExternal/1126038692 (var1170) Bool)
(declare-fun getId/1126038692 (var1170) String)
(declare-fun getParts/1126038692 (var1170) var1062)
(declare-fun hashCode/1337417431 (var1062) Int)
(declare-fun getAlternateId/1126038692 (var1170) String)
(declare-fun getDesc/1126038692 (var1170) String)
(declare-fun getMeaning/1126038692 (var1170) String)
(declare-fun isHidden/1126038692 (var1170) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1170) var3023)
(declare-fun hashCode/-1247371579 (var3023) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1170) var3023)
(declare-fun jsPlaceholderNames/1126038692 (var1170) var2762)
(declare-fun hashCode/1818408063 (var2762) Int)
(declare-const null-var1170 var1170)
(declare-const null-String String)
(declare-const var902 var1170) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var902 null-var1170)))
(define-const var3751 String (getSourceName/1126038692 var902)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var3751 null-String))) ; Cond: $r1 != null 
(define-const var1365 String (getSourceName/1126038692 var902)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var335 Int (hashCode/-467973558 var1365)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3746 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var335)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3821 Int (* var3746 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1348 String (getKey/1126038692 var902)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var741 Int (hashCode/-467973558 var1348)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var753 Int (bv2nat (bvxor ((_ int2bv 64) var3821) ((_ int2bv 64) var741)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var2499 Int (* var753 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1742 Bool (isAnonymous/1126038692 var902)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1742 1 0) 0)) ; Cond: $z0 == 0 
(define-const var634 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3629 Int (bv2nat (bvxor ((_ int2bv 64) var2499) ((_ int2bv 64) var634)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2358 Int (* var3629 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var3885 Bool (isExternal/1126038692 var902)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var3885 1 0) 0)) ; Cond: $z1 == 0 
(define-const var122 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var3276 Int (bv2nat (bvxor ((_ int2bv 64) var2358) ((_ int2bv 64) var122)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var95 Int (* var3276 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1017 String (getId/1126038692 var902)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1812 Int (hashCode/-467973558 var1017)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var3457 Int (bv2nat (bvxor ((_ int2bv 64) var95) ((_ int2bv 64) var1812)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var939 Int (* var3457 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1642 var1062 (getParts/1126038692 var902)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3683 Int (hashCode/1337417431 var1642)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var31 Int (bv2nat (bvxor ((_ int2bv 64) var939) ((_ int2bv 64) var3683)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var1941 Int (* var31 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1167 String (getAlternateId/1126038692 var902)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var1167 null-String))) ; Cond: $r6 != null 
(define-const var3922 String (getAlternateId/1126038692 var902)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1837 Int (hashCode/-467973558 var3922)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1936 Int (bv2nat (bvxor ((_ int2bv 64) var1941) ((_ int2bv 64) var1837)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2611 Int (* var1936 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2962 String (getDesc/1126038692 var902)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var2962 null-String))) ; Cond: $r8 != null 
(define-const var1186 String (getDesc/1126038692 var902)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var3351 Int (hashCode/-467973558 var1186)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var815 Int (bv2nat (bvxor ((_ int2bv 64) var2611) ((_ int2bv 64) var3351)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var607 Int (* var815 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3453 String (getMeaning/1126038692 var902)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3453 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var1560 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var2283 Int (bv2nat (bvxor ((_ int2bv 64) var607) ((_ int2bv 64) var1560)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var253 Int (* var2283 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var481 Bool (isHidden/1126038692 var902)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var481 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3522 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var598 Int (bv2nat (bvxor ((_ int2bv 64) var253) ((_ int2bv 64) var3522)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var2964 Int (* var598 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var1906 var3023 (getPlaceholderNameToExampleMap/1126038692 var902)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3775 Int (hashCode/-1247371579 var1906)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2787 Int (bv2nat (bvxor ((_ int2bv 64) var2964) ((_ int2bv 64) var3775)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3819 Int (* var2787 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3234 var3023 (getPlaceholderNameToOriginalCodeMap/1126038692 var902)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2482 Int (hashCode/-1247371579 var3234)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3861 Int (bv2nat (bvxor ((_ int2bv 64) var3819) ((_ int2bv 64) var2482)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3824 Int (* var3861 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var551 var2762 (jsPlaceholderNames/1126038692 var902)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2783 Int (hashCode/1818408063 var551)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1726 Int (bv2nat (bvxor ((_ int2bv 64) var3824) ((_ int2bv 64) var2783)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1170=com.google.javascript.jscomp.AutoValue_JsMessage, var902=r0, var3751=$r1, var38=null_type, var1365=$r2, var335=$i31, var3746=$i27, var3821=$i28, var1348=$r3, var741=$i0, var753=$i29, var2499=$i30, var1742=$z0, var634=$s32, var3629=$i25, var2358=$i26, var3885=$z1, var122=$s33, var3276=$i19, var95=$i20, var1017=$r4, var1812=$i1, var3457=$i21, var939=$i22, var1062=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1642=$r5, var3683=$i2, var31=$i23, var1941=$i24, var1167=$r6, var3922=$r7, var1837=$i34, var1936=$i17, var2611=$i18, var2962=$r8, var1186=$r9, var3351=$i35, var815=$i15, var607=$i16, var3453=$r10, var1560=$i36, var2283=$i13, var253=$i14, var481=$z2, var3522=$s37, var598=$i6, var2964=$i7, var3023=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var1906=$r12, var3775=$i3, var2787=$i8, var3819=$i9, var3234=$r13, var2482=$i4, var3861=$i10, var3824=$i11, var2762=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var551=$r14, var2783=$i5, var1726=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1170, r0=var902, $r1=var3751, null_type=var38, $r2=var1365, $i31=var335, $i27=var3746, $i28=var3821, $r3=var1348, $i0=var741, $i29=var753, $i30=var2499, $z0=var1742, $s32=var634, $i25=var3629, $i26=var2358, $z1=var3885, $s33=var122, $i19=var3276, $i20=var95, $r4=var1017, $i1=var1812, $i21=var3457, $i22=var939, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var1062, $r5=var1642, $i2=var3683, $i23=var31, $i24=var1941, $r6=var1167, $r7=var3922, $i34=var1837, $i17=var1936, $i18=var2611, $r8=var2962, $r9=var1186, $i35=var3351, $i15=var815, $i16=var607, $r10=var3453, $i36=var1560, $i13=var2283, $i14=var253, $z2=var481, $s37=var3522, $i6=var598, $i7=var2964, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3023, $r12=var1906, $i3=var3775, $i8=var2787, $i9=var3819, $r13=var3234, $i4=var2482, $i10=var3861, $i11=var3824, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2762, $r14=var551, $i5=var2783, $i12=var1726}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15