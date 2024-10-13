(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3121 0)
(declare-sort var2093 0)
(declare-sort var654 0)
(declare-sort var1299 0)
(declare-sort var2371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var3121) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var3121) String)
(declare-fun isAnonymous/1126038692 (var3121) Bool)
(declare-fun isExternal/1126038692 (var3121) Bool)
(declare-fun getId/1126038692 (var3121) String)
(declare-fun getParts/1126038692 (var3121) var654)
(declare-fun hashCode/1337417431 (var654) Int)
(declare-fun getAlternateId/1126038692 (var3121) String)
(declare-fun getDesc/1126038692 (var3121) String)
(declare-fun getMeaning/1126038692 (var3121) String)
(declare-fun isHidden/1126038692 (var3121) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var3121) var1299)
(declare-fun hashCode/-1247371579 (var1299) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var3121) var1299)
(declare-fun jsPlaceholderNames/1126038692 (var3121) var2371)
(declare-fun hashCode/1818408063 (var2371) Int)
(declare-const null-var3121 var3121)
(declare-const null-String String)
(declare-const var1905 var3121) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var1905 null-var3121)))
(define-const var88 String (getSourceName/1126038692 var1905)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var88 null-String))) ; Cond: $r1 != null 
(define-const var1627 String (getSourceName/1126038692 var1905)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3459 Int (hashCode/-467973558 var1627)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var643 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3459)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2764 Int (* var643 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1768 String (getKey/1126038692 var1905)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var251 Int (hashCode/-467973558 var1768)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1547 Int (bv2nat (bvxor ((_ int2bv 64) var2764) ((_ int2bv 64) var251)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var840 Int (* var1547 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1751 Bool (isAnonymous/1126038692 var1905)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var1751 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2780 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var106 Int (bv2nat (bvxor ((_ int2bv 64) var840) ((_ int2bv 64) var2780)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var2924 Int (* var106 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var320 Bool (isExternal/1126038692 var1905)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var320 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2302 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var268 Int (bv2nat (bvxor ((_ int2bv 64) var2924) ((_ int2bv 64) var2302)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1197 Int (* var268 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var816 String (getId/1126038692 var1905)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var2396 Int (hashCode/-467973558 var816)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var324 Int (bv2nat (bvxor ((_ int2bv 64) var1197) ((_ int2bv 64) var2396)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var602 Int (* var324 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var3634 var654 (getParts/1126038692 var1905)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1975 Int (hashCode/1337417431 var3634)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3063 Int (bv2nat (bvxor ((_ int2bv 64) var602) ((_ int2bv 64) var1975)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var636 Int (* var3063 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var889 String (getAlternateId/1126038692 var1905)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (= var889 null-String))) ; Cond: $r6 != null 
(define-const var3951 String (getAlternateId/1126038692 var1905)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert true)
(define-const var1580 Int (hashCode/-467973558 var3951)) ; Statement: $i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var20 Int (bv2nat (bvxor ((_ int2bv 64) var636) ((_ int2bv 64) var1580)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2361 Int (* var20 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var143 String (getDesc/1126038692 var1905)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var143 null-String))) ; Cond: $r8 != null 
(define-const var1063 String (getDesc/1126038692 var1905)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var165 Int (hashCode/-467973558 var1063)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var914 Int (bv2nat (bvxor ((_ int2bv 64) var2361) ((_ int2bv 64) var165)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2642 Int (* var914 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var3988 String (getMeaning/1126038692 var1905)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var3988 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var319 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var1677 Int (bv2nat (bvxor ((_ int2bv 64) var2642) ((_ int2bv 64) var319)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var3688 Int (* var1677 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2561 Bool (isHidden/1126038692 var1905)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2561 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1248 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var2798 Int (bv2nat (bvxor ((_ int2bv 64) var3688) ((_ int2bv 64) var1248)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var452 Int (* var2798 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2433 var1299 (getPlaceholderNameToExampleMap/1126038692 var1905)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3976 Int (hashCode/-1247371579 var2433)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var467 Int (bv2nat (bvxor ((_ int2bv 64) var452) ((_ int2bv 64) var3976)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1374 Int (* var467 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var1820 var1299 (getPlaceholderNameToOriginalCodeMap/1126038692 var1905)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2277 Int (hashCode/-1247371579 var1820)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3432 Int (bv2nat (bvxor ((_ int2bv 64) var1374) ((_ int2bv 64) var2277)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var1092 Int (* var3432 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2952 var2371 (jsPlaceholderNames/1126038692 var1905)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var3501 Int (hashCode/1818408063 var2952)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var991 Int (bv2nat (bvxor ((_ int2bv 64) var1092) ((_ int2bv 64) var3501)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var3121=com.google.javascript.jscomp.AutoValue_JsMessage, var1905=r0, var88=$r1, var2093=null_type, var1627=$r2, var3459=$i31, var643=$i27, var2764=$i28, var1768=$r3, var251=$i0, var1547=$i29, var840=$i30, var1751=$z0, var2780=$s32, var106=$i25, var2924=$i26, var320=$z1, var2302=$s33, var268=$i19, var1197=$i20, var816=$r4, var2396=$i1, var324=$i21, var602=$i22, var654=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var3634=$r5, var1975=$i2, var3063=$i23, var636=$i24, var889=$r6, var3951=$r7, var1580=$i34, var20=$i17, var2361=$i18, var143=$r8, var1063=$r9, var165=$i35, var914=$i15, var2642=$i16, var3988=$r10, var319=$i36, var1677=$i13, var3688=$i14, var2561=$z2, var1248=$s37, var2798=$i6, var452=$i7, var1299=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2433=$r12, var3976=$i3, var467=$i8, var1374=$i9, var1820=$r13, var2277=$i4, var3432=$i10, var1092=$i11, var2371=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2952=$r14, var3501=$i5, var991=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var3121, r0=var1905, $r1=var88, null_type=var2093, $r2=var1627, $i31=var3459, $i27=var643, $i28=var2764, $r3=var1768, $i0=var251, $i29=var1547, $i30=var840, $z0=var1751, $s32=var2780, $i25=var106, $i26=var2924, $z1=var320, $s33=var2302, $i19=var268, $i20=var1197, $r4=var816, $i1=var2396, $i21=var324, $i22=var602, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var654, $r5=var3634, $i2=var1975, $i23=var3063, $i24=var636, $r6=var889, $r7=var3951, $i34=var1580, $i17=var20, $i18=var2361, $r8=var143, $r9=var1063, $i35=var165, $i15=var914, $i16=var2642, $r10=var3988, $i36=var319, $i13=var1677, $i14=var3688, $z2=var2561, $s37=var1248, $i6=var2798, $i7=var452, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var1299, $r12=var2433, $i3=var3976, $i8=var467, $i9=var1374, $r13=var1820, $i4=var2277, $i10=var3432, $i11=var1092, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var2371, $r14=var2952, $i5=var3501, $i12=var991}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = virtualinvoke $r7.<java.lang.String: int hashCode()>();	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15