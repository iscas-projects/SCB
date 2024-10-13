(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var80 0)
(declare-sort var849 0)
(declare-sort var3965 0)
(declare-sort var3843 0)
(declare-sort var1918 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var80) String)
(declare-fun getKey/1126038692 (var80) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var80) Bool)
(declare-fun isExternal/1126038692 (var80) Bool)
(declare-fun getId/1126038692 (var80) String)
(declare-fun getParts/1126038692 (var80) var3965)
(declare-fun hashCode/1337417431 (var3965) Int)
(declare-fun getAlternateId/1126038692 (var80) String)
(declare-fun getDesc/1126038692 (var80) String)
(declare-fun getMeaning/1126038692 (var80) String)
(declare-fun isHidden/1126038692 (var80) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var80) var3843)
(declare-fun hashCode/-1247371579 (var3843) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var80) var3843)
(declare-fun jsPlaceholderNames/1126038692 (var80) var1918)
(declare-fun hashCode/1818408063 (var1918) Int)
(declare-const null-var80 var80)
(declare-const null-String String)
(declare-const var3701 var80) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3701 null-var80)))
(define-const var250 String (getSourceName/1126038692 var3701)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var250 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var3476 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var2585 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var3476)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var1794 Int (* var2585 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var1748 String (getKey/1126038692 var3701)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var2468 Int (hashCode/-467973558 var1748)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var2727 Int (bv2nat (bvxor ((_ int2bv 64) var1794) ((_ int2bv 64) var2468)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var535 Int (* var2727 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var1314 Bool (isAnonymous/1126038692 var3701)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (= (ite var1314 1 0) 0)) ; Cond: $z0 == 0 
(define-const var457 Int 1237) ; Statement: $s32 = 1237 
(assert true) ; Non Conditional
(define-const var223 Int (bv2nat (bvxor ((_ int2bv 64) var535) ((_ int2bv 64) var457)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var3911 Int (* var223 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2257 Bool (isExternal/1126038692 var3701)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2257 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3626 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var378 Int (bv2nat (bvxor ((_ int2bv 64) var3911) ((_ int2bv 64) var3626)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var404 Int (* var378 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1200 String (getId/1126038692 var3701)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var3011 Int (hashCode/-467973558 var1200)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1754 Int (bv2nat (bvxor ((_ int2bv 64) var404) ((_ int2bv 64) var3011)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var15 Int (* var1754 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var1986 var3965 (getParts/1126038692 var3701)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var2416 Int (hashCode/1337417431 var1986)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var3473 Int (bv2nat (bvxor ((_ int2bv 64) var15) ((_ int2bv 64) var2416)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var2929 Int (* var3473 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1914 String (getAlternateId/1126038692 var3701)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1914 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var2675 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var1090 Int (bv2nat (bvxor ((_ int2bv 64) var2929) ((_ int2bv 64) var2675)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var372 Int (* var1090 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var1102 String (getDesc/1126038692 var3701)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var1102 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3138 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var1098 Int (bv2nat (bvxor ((_ int2bv 64) var372) ((_ int2bv 64) var3138)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var1294 Int (* var1098 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var2609 String (getMeaning/1126038692 var3701)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (= var2609 null-String))) ; Cond: $r10 != null 
(define-const var516 String (getMeaning/1126038692 var3701)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert true)
(define-const var2322 Int (hashCode/-467973558 var516)) ; Statement: $i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>() 
(assert true) ; Non Conditional
(define-const var3892 Int (bv2nat (bvxor ((_ int2bv 64) var1294) ((_ int2bv 64) var2322)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var1107 Int (* var3892 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var2365 Bool (isHidden/1126038692 var3701)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var2365 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var1235 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1665 Int (bv2nat (bvxor ((_ int2bv 64) var1107) ((_ int2bv 64) var1235)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var3698 Int (* var1665 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2687 var3843 (getPlaceholderNameToExampleMap/1126038692 var3701)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var2104 Int (hashCode/-1247371579 var2687)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2420 Int (bv2nat (bvxor ((_ int2bv 64) var3698) ((_ int2bv 64) var2104)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var2553 Int (* var2420 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var3032 var3843 (getPlaceholderNameToOriginalCodeMap/1126038692 var3701)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var2945 Int (hashCode/-1247371579 var3032)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var1190 Int (bv2nat (bvxor ((_ int2bv 64) var2553) ((_ int2bv 64) var2945)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var3682 Int (* var1190 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var189 var1918 (jsPlaceholderNames/1126038692 var3701)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var2975 Int (hashCode/1818408063 var189)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var2888 Int (bv2nat (bvxor ((_ int2bv 64) var3682) ((_ int2bv 64) var2975)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var80=com.google.javascript.jscomp.AutoValue_JsMessage, var3701=r0, var250=$r1, var849=null_type, var3476=$i31, var2585=$i27, var1794=$i28, var1748=$r3, var2468=$i0, var2727=$i29, var535=$i30, var1314=$z0, var457=$s32, var223=$i25, var3911=$i26, var2257=$z1, var3626=$s33, var378=$i19, var404=$i20, var1200=$r4, var3011=$i1, var1754=$i21, var15=$i22, var3965=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var1986=$r5, var2416=$i2, var3473=$i23, var2929=$i24, var1914=$r6, var2675=$i34, var1090=$i17, var372=$i18, var1102=$r8, var3138=$i35, var1098=$i15, var1294=$i16, var2609=$r10, var516=$r11, var2322=$i36, var3892=$i13, var1107=$i14, var2365=$z2, var1235=$s37, var1665=$i6, var3698=$i7, var3843=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2687=$r12, var2104=$i3, var2420=$i8, var2553=$i9, var3032=$r13, var2945=$i4, var1190=$i10, var3682=$i11, var1918=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var189=$r14, var2975=$i5, var2888=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var80, r0=var3701, $r1=var250, null_type=var849, $i31=var3476, $i27=var2585, $i28=var1794, $r3=var1748, $i0=var2468, $i29=var2727, $i30=var535, $z0=var1314, $s32=var457, $i25=var223, $i26=var3911, $z1=var2257, $s33=var3626, $i19=var378, $i20=var404, $r4=var1200, $i1=var3011, $i21=var1754, $i22=var15, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var3965, $r5=var1986, $i2=var2416, $i23=var3473, $i24=var2929, $r6=var1914, $i34=var2675, $i17=var1090, $i18=var372, $r8=var1102, $i35=var3138, $i15=var1098, $i16=var1294, $r10=var2609, $r11=var516, $i36=var2322, $i13=var3892, $i14=var1107, $z2=var2365, $s37=var1235, $i6=var1665, $i7=var3698, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var3843, $r12=var2687, $i3=var2104, $i8=var2420, $i9=var2553, $r13=var3032, $i4=var2945, $i10=var1190, $i11=var3682, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1918, $r14=var189, $i5=var2975, $i12=var2888}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 3}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1237;	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = virtualinvoke $r11.<java.lang.String: int hashCode()>();	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15