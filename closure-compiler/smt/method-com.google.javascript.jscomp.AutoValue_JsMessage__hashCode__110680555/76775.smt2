(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2646 0)
(declare-sort var1725 0)
(declare-sort var2171 0)
(declare-sort var3479 0)
(declare-sort var3611 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var2646) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun getKey/1126038692 (var2646) String)
(declare-fun isAnonymous/1126038692 (var2646) Bool)
(declare-fun isExternal/1126038692 (var2646) Bool)
(declare-fun getId/1126038692 (var2646) String)
(declare-fun getParts/1126038692 (var2646) var2171)
(declare-fun hashCode/1337417431 (var2171) Int)
(declare-fun getAlternateId/1126038692 (var2646) String)
(declare-fun getDesc/1126038692 (var2646) String)
(declare-fun getMeaning/1126038692 (var2646) String)
(declare-fun isHidden/1126038692 (var2646) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var2646) var3479)
(declare-fun hashCode/-1247371579 (var3479) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var2646) var3479)
(declare-fun jsPlaceholderNames/1126038692 (var2646) var3611)
(declare-fun hashCode/1818408063 (var3611) Int)
(declare-const null-var2646 var2646)
(declare-const null-String String)
(declare-const var620 var2646) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var620 null-var2646)))
(define-const var1838 String (getSourceName/1126038692 var620)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (= var1838 null-String))) ; Cond: $r1 != null 
(define-const var3549 String (getSourceName/1126038692 var620)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert true)
(define-const var3432 Int (hashCode/-467973558 var3549)) ; Statement: $i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3681 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3432)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3863 Int (* var3681 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1740 String (getKey/1126038692 var620)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var3628 Int (hashCode/-467973558 var1740)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var1344 Int (bv2nat (bvxor ((_ int2bv 64) var3863) ((_ int2bv 64) var3628)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var3266 Int (* var1344 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var2892 Bool (isAnonymous/1126038692 var620)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var2892 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1062 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var3992 Int (bv2nat (bvxor ((_ int2bv 64) var3266) ((_ int2bv 64) var1062)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1643 Int (* var3992 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2323 Bool (isExternal/1126038692 var620)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (not (= (ite var2323 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var428 Int 1231) ; Statement: $s33 = 1231 
 ; Statement: goto [?= $i19 = $i26 ^ $s33] 
(assert true) ; Non Conditional
(define-const var173 Int (bv2nat (bvxor ((_ int2bv 64) var1643) ((_ int2bv 64) var428)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1299 Int (* var173 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var3056 String (getId/1126038692 var620)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1608 Int (hashCode/-467973558 var3056)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1667 Int (bv2nat (bvxor ((_ int2bv 64) var1299) ((_ int2bv 64) var1608)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var940 Int (* var1667 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1875 var2171 (getParts/1126038692 var620)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1526 Int (hashCode/1337417431 var1875)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var576 Int (bv2nat (bvxor ((_ int2bv 64) var940) ((_ int2bv 64) var1526)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var3733 Int (* var576 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1453 String (getAlternateId/1126038692 var620)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1453 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2680 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var780 Int (bv2nat (bvxor ((_ int2bv 64) var3733) ((_ int2bv 64) var2680)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var1228 Int (* var780 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var3192 String (getDesc/1126038692 var620)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (= var3192 null-String))) ; Cond: $r8 != null 
(define-const var3652 String (getDesc/1126038692 var620)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert true)
(define-const var895 Int (hashCode/-467973558 var3652)) ; Statement: $i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var1265 Int (bv2nat (bvxor ((_ int2bv 64) var1228) ((_ int2bv 64) var895)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1620 Int (* var1265 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var326 String (getMeaning/1126038692 var620)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var326 null-String))) ; Cond: $r10 != null 
(define-const var3344 String (getMeaning/1126038692 var620)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var1161 Int (hashCode/-467973558 var3344)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var2132 Int (bv2nat (bvxor ((_ int2bv 64) var1620) ((_ int2bv 64) var1161)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1154 Int (* var2132 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var763 Bool (isHidden/1126038692 var620)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (= (ite var763 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2108 Int 1237) ; Statement: $s37 = 1237 
(assert true) ; Non Conditional
(define-const var1840 Int (bv2nat (bvxor ((_ int2bv 64) var1154) ((_ int2bv 64) var2108)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1796 Int (* var1840 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var746 var3479 (getPlaceholderNameToExampleMap/1126038692 var620)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var3358 Int (hashCode/-1247371579 var746)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3906 Int (bv2nat (bvxor ((_ int2bv 64) var1796) ((_ int2bv 64) var3358)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var721 Int (* var3906 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3272 var3479 (getPlaceholderNameToOriginalCodeMap/1126038692 var620)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var1783 Int (hashCode/-1247371579 var3272)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3631 Int (bv2nat (bvxor ((_ int2bv 64) var721) ((_ int2bv 64) var1783)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3932 Int (* var3631 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var3185 var3611 (jsPlaceholderNames/1126038692 var620)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2354 Int (hashCode/1818408063 var3185)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2722 Int (bv2nat (bvxor ((_ int2bv 64) var3932) ((_ int2bv 64) var2354)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var2646=com.google.javascript.jscomp.AutoValue_JsMessage, var620=r0, var1838=$r1, var1725=null_type, var3549=$r2, var3432=$i31, var3681=$i27, var3863=$i28, var1740=$r3, var3628=$i0, var1344=$i29, var3266=$i30, var2892=$z0, var1062=$s32, var3992=$i25, var1643=$i26, var2323=$z1, var428=$s33, var173=$i19, var1299=$i20, var3056=$r4, var1608=$i1, var1667=$i21, var940=$i22, var2171=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1875=$r5, var1526=$i2, var576=$i23, var3733=$i24, var1453=$r6, var2680=$i34, var780=$i17, var1228=$i18, var3192=$r8, var3652=$r9, var895=$i35, var1265=$i15, var1620=$i16, var326=$r10, var3344=$r11, var1161=$i36, var2132=$i13, var1154=$i14, var763=$z2, var2108=$s37, var1840=$i6, var1796=$i7, var3479=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var746=$r12, var3358=$i3, var3906=$i8, var721=$i9, var3272=$r13, var1783=$i4, var3631=$i10, var3932=$i11, var3611=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var3185=$r14, var2354=$i5, var2722=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var2646, r0=var620, $r1=var1838, null_type=var1725, $r2=var3549, $i31=var3432, $i27=var3681, $i28=var3863, $r3=var1740, $i0=var3628, $i29=var1344, $i30=var3266, $z0=var2892, $s32=var1062, $i25=var3992, $i26=var1643, $z1=var2323, $s33=var428, $i19=var173, $i20=var1299, $r4=var3056, $i1=var1608, $i21=var1667, $i22=var940, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2171, $r5=var1875, $i2=var1526, $i23=var576, $i24=var3733, $r6=var1453, $i34=var2680, $i17=var780, $i18=var1228, $r8=var3192, $r9=var3652, $i35=var895, $i15=var1265, $i16=var1620, $r10=var326, $r11=var3344, $i36=var1161, $i13=var2132, $i14=var1154, $z2=var763, $s37=var2108, $i6=var1840, $i7=var1796, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3479, $r12=var746, $i3=var3358, $i8=var3906, $i9=var721, $r13=var3272, $i4=var1783, $i10=var3631, $i11=var3932, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var3611, $r14=var3185, $i5=var2354, $i12=var2722}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 5}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1231;	goto [?= $i19 = $i26 ^ $s33];	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = virtualinvoke $r9.<java.lang.String: int hashCode()>();	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1237;	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15