(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2749 0)
(declare-sort var2279 0)
(declare-sort var474 0)
(declare-sort var3701 0)
(declare-sort var3586 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2749) String)
(declare-fun getKey/1126038692 (var2749) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var2749) Bool)
(declare-fun isExternal/1126038692 (var2749) Bool)
(declare-fun getId/1126038692 (var2749) String)
(declare-fun getParts/1126038692 (var2749) var474)
(declare-fun hashCode/1337417431 (var474) Int)
(declare-fun getAlternateId/1126038692 (var2749) String)
(declare-fun getDesc/1126038692 (var2749) String)
(declare-fun getMeaning/1126038692 (var2749) String)
(declare-fun isHidden/1126038692 (var2749) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2749) var3701)
(declare-fun hashCode/-1247371579 (var3701) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2749) var3701)
(declare-fun jsPlaceholderNames/1126038692 (var2749) var3586)
(declare-fun hashCode/1818408063 (var3586) Int)
(declare-const null-var2749 var2749)
(declare-const null-String String)
(declare-const var2963 var2749) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var2963 null-var2749)))
(define-const var724 String (getSourceName/1126038692 var2963)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var724 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var3638 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2751 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3638)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var2436 Int (* var2751 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var2606 String (getKey/1126038692 var2963)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3146 Int (hashCode/-467973558 var2606)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3386 Int (bv2nat (bvxor ((_ int2bv 64) var2436) ((_ int2bv 64) var3146)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var1767 Int (* var3386 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3463 Bool (isAnonymous/1126038692 var2963)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var3463 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1361 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var622 Int (bv2nat (bvxor ((_ int2bv 64) var1767) ((_ int2bv 64) var1361)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3479 Int (* var622 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2511 Bool (isExternal/1126038692 var2963)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2511 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var735 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var3987 Int (bv2nat (bvxor ((_ int2bv 64) var3479) ((_ int2bv 64) var735)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var845 Int (* var3987 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var983 String (getId/1126038692 var2963)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1247 Int (hashCode/-467973558 var983)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var341 Int (bv2nat (bvxor ((_ int2bv 64) var845) ((_ int2bv 64) var1247)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var2058 Int (* var341 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var246 var474 (getParts/1126038692 var2963)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var3815 Int (hashCode/1337417431 var246)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var1810 Int (bv2nat (bvxor ((_ int2bv 64) var2058) ((_ int2bv 64) var3815)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2743 Int (* var1810 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var2740 String (getAlternateId/1126038692 var2963)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var2740 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2218 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var2411 Int (bv2nat (bvxor ((_ int2bv 64) var2743) ((_ int2bv 64) var2218)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var618 Int (* var2411 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var436 String (getDesc/1126038692 var2963)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var436 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var2392 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var964 Int (bv2nat (bvxor ((_ int2bv 64) var618) ((_ int2bv 64) var2392)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1438 Int (* var964 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2592 String (getMeaning/1126038692 var2963)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var2592 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var2864 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var702 Int (bv2nat (bvxor ((_ int2bv 64) var1438) ((_ int2bv 64) var2864)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1390 Int (* var702 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var3925 Bool (isHidden/1126038692 var2963)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var3925 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2529 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var2930 Int (bv2nat (bvxor ((_ int2bv 64) var1390) ((_ int2bv 64) var2529)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3351 Int (* var2930 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var3667 var3701 (getPlaceholderNameToExampleMap/1126038692 var2963)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2443 Int (hashCode/-1247371579 var3667)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var487 Int (bv2nat (bvxor ((_ int2bv 64) var3351) ((_ int2bv 64) var2443)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var3207 Int (* var487 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var2267 var3701 (getPlaceholderNameToOriginalCodeMap/1126038692 var2963)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1934 Int (hashCode/-1247371579 var2267)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1919 Int (bv2nat (bvxor ((_ int2bv 64) var3207) ((_ int2bv 64) var1934)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var2474 Int (* var1919 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2229 var3586 (jsPlaceholderNames/1126038692 var2963)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2010 Int (hashCode/1818408063 var2229)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var903 Int (bv2nat (bvxor ((_ int2bv 64) var2474) ((_ int2bv 64) var2010)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2749=com.google.javascript.jscomp.AutoValue_JsMessage, var2963=r0, var724=$r1, var2279=null_type, var3638=$i31, var2751=$i27, var2436=$i28, var2606=$r3, var3146=$i0, var3386=$i29, var1767=$i30, var3463=$z0, var1361=$s32, var622=$i25, var3479=$i26, var2511=$z1, var735=$s33, var3987=$i19, var845=$i20, var983=$r4, var1247=$i1, var341=$i21, var2058=$i22, var474=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var246=$r5, var3815=$i2, var1810=$i23, var2743=$i24, var2740=$r6, var2218=$i34, var2411=$i17, var618=$i18, var436=$r8, var2392=$i35, var964=$i15, var1438=$i16, var2592=$r10, var2864=$i36, var702=$i13, var1390=$i14, var3925=$z2, var2529=$s37, var2930=$i6, var3351=$i7, var3701=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var3667=$r12, var2443=$i3, var487=$i8, var3207=$i9, var2267=$r13, var1934=$i4, var1919=$i10, var2474=$i11, var3586=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2229=$r14, var2010=$i5, var903=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2749, r0=var2963, $r1=var724, null_type=var2279, $i31=var3638, $i27=var2751, $i28=var2436, $r3=var2606, $i0=var3146, $i29=var3386, $i30=var1767, $z0=var3463, $s32=var1361, $i25=var622, $i26=var3479, $z1=var2511, $s33=var735, $i19=var3987, $i20=var845, $r4=var983, $i1=var1247, $i21=var341, $i22=var2058, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var474, $r5=var246, $i2=var3815, $i23=var1810, $i24=var2743, $r6=var2740, $i34=var2218, $i17=var2411, $i18=var618, $r8=var436, $i35=var2392, $i15=var964, $i16=var1438, $r10=var2592, $i36=var2864, $i13=var702, $i14=var1390, $z2=var3925, $s37=var2529, $i6=var2930, $i7=var3351, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3701, $r12=var3667, $i3=var2443, $i8=var487, $i9=var3207, $r13=var2267, $i4=var1934, $i10=var1919, $i11=var2474, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3586, $r14=var2229, $i5=var2010, $i12=var903}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15