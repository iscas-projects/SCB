(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1374 0)
(declare-sort var2903 0)
(declare-sort var2858 0)
(declare-sort var416 0)
(declare-sort var1362 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSourceName/1126038692 (var1374) String)
(declare-fun getKey/1126038692 (var1374) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun isAnonymous/1126038692 (var1374) Bool)
(declare-fun isExternal/1126038692 (var1374) Bool)
(declare-fun getId/1126038692 (var1374) String)
(declare-fun getParts/1126038692 (var1374) var2858)
(declare-fun hashCode/1337417431 (var2858) Int)
(declare-fun getAlternateId/1126038692 (var1374) String)
(declare-fun getDesc/1126038692 (var1374) String)
(declare-fun getMeaning/1126038692 (var1374) String)
(declare-fun isHidden/1126038692 (var1374) Bool)
(declare-fun getPlaceholderNameToExampleMap/1126038692 (var1374) var416)
(declare-fun hashCode/-1247371579 (var416) Int)
(declare-fun getPlaceholderNameToOriginalCodeMap/1126038692 (var1374) var416)
(declare-fun jsPlaceholderNames/1126038692 (var1374) var1362)
(declare-fun hashCode/1818408063 (var1362) Int)
(declare-const null-var1374 var1374)
(declare-const null-String String)
(declare-const var3501 var1374) ; Statement: r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage 
(assert (not (= var3501 null-var1374)))
(define-const var3930 String (getSourceName/1126038692 var3501)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName> 
(assert (not (not (= var3930 null-String)))) ; Negate: Cond: $r1 != null  
(define-const var700 Int 0) ; Statement: $i31 = 0 
 ; Statement: goto [?= $i27 = 1000003 ^ $i31] 
(assert true) ; Non Conditional
(define-const var3958 Int (bv2nat (bvxor ((_ int2bv 64) 1000003) ((_ int2bv 64) var700)))) ; Statement: $i27 = 1000003 ^ $i31 
(define-const var3434 Int (* var3958 1000003)) ; Statement: $i28 = $i27 * 1000003 
(define-const var3848 String (getKey/1126038692 var3501)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey> 
(assert true)
(define-const var1975 Int (hashCode/-467973558 var3848)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>() 
(define-const var3296 Int (bv2nat (bvxor ((_ int2bv 64) var3434) ((_ int2bv 64) var1975)))) ; Statement: $i29 = $i28 ^ $i0 
(define-const var314 Int (* var3296 1000003)) ; Statement: $i30 = $i29 * 1000003 
(define-const var3075 Bool (isAnonymous/1126038692 var3501)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous> 
 ; Statement: if $z0 == 0 goto $s32 = 1237 
(assert (not (= (ite var3075 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3951 Int 1231) ; Statement: $s32 = 1231 
 ; Statement: goto [?= $i25 = $i30 ^ $s32] 
(assert true) ; Non Conditional
(define-const var3416 Int (bv2nat (bvxor ((_ int2bv 64) var314) ((_ int2bv 64) var3951)))) ; Statement: $i25 = $i30 ^ $s32 
(define-const var1842 Int (* var3416 1000003)) ; Statement: $i26 = $i25 * 1000003 
(define-const var2296 Bool (isExternal/1126038692 var3501)) ; Statement: $z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal> 
 ; Statement: if $z1 == 0 goto $s33 = 1237 
(assert (= (ite var2296 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1336 Int 1237) ; Statement: $s33 = 1237 
(assert true) ; Non Conditional
(define-const var2719 Int (bv2nat (bvxor ((_ int2bv 64) var1842) ((_ int2bv 64) var1336)))) ; Statement: $i19 = $i26 ^ $s33 
(define-const var1395 Int (* var2719 1000003)) ; Statement: $i20 = $i19 * 1000003 
(define-const var1879 String (getId/1126038692 var3501)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId> 
(assert true)
(define-const var1043 Int (hashCode/-467973558 var1879)) ; Statement: $i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>() 
(define-const var1515 Int (bv2nat (bvxor ((_ int2bv 64) var1395) ((_ int2bv 64) var1043)))) ; Statement: $i21 = $i20 ^ $i1 
(define-const var1664 Int (* var1515 1000003)) ; Statement: $i22 = $i21 * 1000003 
(define-const var571 var2858 (getParts/1126038692 var3501)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts> 
(assert true)
(define-const var1549 Int (hashCode/1337417431 var571)) ; Statement: $i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>() 
(define-const var2643 Int (bv2nat (bvxor ((_ int2bv 64) var1664) ((_ int2bv 64) var1549)))) ; Statement: $i23 = $i22 ^ $i2 
(define-const var811 Int (* var2643 1000003)) ; Statement: $i24 = $i23 * 1000003 
(define-const var1910 String (getAlternateId/1126038692 var3501)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
 ; Statement: if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId> 
(assert (not (not (= var1910 null-String)))) ; Negate: Cond: $r6 != null  
(define-const var437 Int 0) ; Statement: $i34 = 0 
 ; Statement: goto [?= $i17 = $i24 ^ $i34] 
(assert true) ; Non Conditional
(define-const var3402 Int (bv2nat (bvxor ((_ int2bv 64) var811) ((_ int2bv 64) var437)))) ; Statement: $i17 = $i24 ^ $i34 
(define-const var2966 Int (* var3402 1000003)) ; Statement: $i18 = $i17 * 1000003 
(define-const var2630 String (getDesc/1126038692 var3501)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
 ; Statement: if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc> 
(assert (not (not (= var2630 null-String)))) ; Negate: Cond: $r8 != null  
(define-const var3183 Int 0) ; Statement: $i35 = 0 
 ; Statement: goto [?= $i15 = $i18 ^ $i35] 
(assert true) ; Non Conditional
(define-const var1442 Int (bv2nat (bvxor ((_ int2bv 64) var2966) ((_ int2bv 64) var3183)))) ; Statement: $i15 = $i18 ^ $i35 
(define-const var2329 Int (* var1442 1000003)) ; Statement: $i16 = $i15 * 1000003 
(define-const var121 String (getMeaning/1126038692 var3501)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
 ; Statement: if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning> 
(assert (not (not (= var121 null-String)))) ; Negate: Cond: $r10 != null  
(define-const var1480 Int 0) ; Statement: $i36 = 0 
 ; Statement: goto [?= $i13 = $i16 ^ $i36] 
(assert true) ; Non Conditional
(define-const var344 Int (bv2nat (bvxor ((_ int2bv 64) var2329) ((_ int2bv 64) var1480)))) ; Statement: $i13 = $i16 ^ $i36 
(define-const var2179 Int (* var344 1000003)) ; Statement: $i14 = $i13 * 1000003 
(define-const var1447 Bool (isHidden/1126038692 var3501)) ; Statement: $z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden> 
 ; Statement: if $z2 == 0 goto $s37 = 1237 
(assert (not (= (ite var1447 1 0) 0))) ; Negate: Cond: $z2 == 0  
(define-const var3096 Int 1231) ; Statement: $s37 = 1231 
 ; Statement: goto [?= $i6 = $i14 ^ $s37] 
(assert true) ; Non Conditional
(define-const var1001 Int (bv2nat (bvxor ((_ int2bv 64) var2179) ((_ int2bv 64) var3096)))) ; Statement: $i6 = $i14 ^ $s37 
(define-const var1870 Int (* var1001 1000003)) ; Statement: $i7 = $i6 * 1000003 
(define-const var2391 var416 (getPlaceholderNameToExampleMap/1126038692 var3501)) ; Statement: $r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap> 
(assert true)
(define-const var1704 Int (hashCode/-1247371579 var2391)) ; Statement: $i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var3824 Int (bv2nat (bvxor ((_ int2bv 64) var1870) ((_ int2bv 64) var1704)))) ; Statement: $i8 = $i7 ^ $i3 
(define-const var1090 Int (* var3824 1000003)) ; Statement: $i9 = $i8 * 1000003 
(define-const var957 var416 (getPlaceholderNameToOriginalCodeMap/1126038692 var3501)) ; Statement: $r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap> 
(assert true)
(define-const var3941 Int (hashCode/-1247371579 var957)) ; Statement: $i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>() 
(define-const var2956 Int (bv2nat (bvxor ((_ int2bv 64) var1090) ((_ int2bv 64) var3941)))) ; Statement: $i10 = $i9 ^ $i4 
(define-const var726 Int (* var2956 1000003)) ; Statement: $i11 = $i10 * 1000003 
(define-const var2406 var1362 (jsPlaceholderNames/1126038692 var3501)) ; Statement: $r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames> 
(assert true)
(define-const var837 Int (hashCode/1818408063 var2406)) ; Statement: $i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>() 
(define-const var1723 Int (bv2nat (bvxor ((_ int2bv 64) var726) ((_ int2bv 64) var837)))) ; Statement: $i12 = $i11 ^ $i5 
 ; Statement: return $i12 
(check-sat)
(get-model)
(get-unsat-core)
; {getSourceName/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getKey/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), hashCode/-467973558=([java.lang.String], int), isAnonymous/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), isExternal/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getParts/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList), hashCode/1337417431=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList], int), getAlternateId/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getDesc/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), getMeaning/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], java.lang.String), isHidden/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], boolean), getPlaceholderNameToExampleMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), hashCode/-1247371579=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap], int), getPlaceholderNameToOriginalCodeMap/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap), jsPlaceholderNames/1126038692=([com.google.javascript.jscomp.AutoValue_JsMessage], com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet), hashCode/1818408063=([com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet], int)}
; {var1374=com.google.javascript.jscomp.AutoValue_JsMessage, var3501=r0, var3930=$r1, var2903=null_type, var700=$i31, var3958=$i27, var3434=$i28, var3848=$r3, var1975=$i0, var3296=$i29, var314=$i30, var3075=$z0, var3951=$s32, var3416=$i25, var1842=$i26, var2296=$z1, var1336=$s33, var2719=$i19, var1395=$i20, var1879=$r4, var1043=$i1, var1515=$i21, var1664=$i22, var2858=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList, var571=$r5, var1549=$i2, var2643=$i23, var811=$i24, var1910=$r6, var437=$i34, var3402=$i17, var2966=$i18, var2630=$r8, var3183=$i35, var1442=$i15, var2329=$i16, var121=$r10, var1480=$i36, var344=$i13, var2179=$i14, var1447=$z2, var3096=$s37, var1001=$i6, var1870=$i7, var416=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap, var2391=$r12, var1704=$i3, var3824=$i8, var1090=$i9, var957=$r13, var3941=$i4, var2956=$i10, var726=$i11, var1362=com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet, var2406=$r14, var837=$i5, var1723=$i12}
; {com.google.javascript.jscomp.AutoValue_JsMessage=var1374, r0=var3501, $r1=var3930, null_type=var2903, $i31=var700, $i27=var3958, $i28=var3434, $r3=var3848, $i0=var1975, $i29=var3296, $i30=var314, $z0=var3075, $s32=var3951, $i25=var3416, $i26=var1842, $z1=var2296, $s33=var1336, $i19=var2719, $i20=var1395, $r4=var1879, $i1=var1043, $i21=var1515, $i22=var1664, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList=var2858, $r5=var571, $i2=var1549, $i23=var2643, $i24=var811, $r6=var1910, $i34=var437, $i17=var3402, $i18=var2966, $r8=var2630, $i35=var3183, $i15=var1442, $i16=var2329, $r10=var121, $i36=var1480, $i13=var344, $i14=var2179, $z2=var1447, $s37=var3096, $i6=var1001, $i7=var1870, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap=var416, $r12=var2391, $i3=var1704, $i8=var3824, $i9=var1090, $r13=var957, $i4=var3941, $i10=var2956, $i11=var726, com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet=var1362, $r14=var2406, $i5=var837, $i12=var1723}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.AutoValue_JsMessage;	$r1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	if $r1 != null goto $r2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getSourceName>;	$i31 = 0;	goto [?= $i27 = 1000003 ^ $i31];	$i27 = 1000003 ^ $i31;	$i28 = $i27 * 1000003;	$r3 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getKey>;	$i0 = virtualinvoke $r3.<java.lang.String: int hashCode()>();	$i29 = $i28 ^ $i0;	$i30 = $i29 * 1000003;	$z0 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isAnonymous>;	if $z0 == 0 goto $s32 = 1237;	$s32 = 1231;	goto [?= $i25 = $i30 ^ $s32];	$i25 = $i30 ^ $s32;	$i26 = $i25 * 1000003;	$z1 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isExternal>;	if $z1 == 0 goto $s33 = 1237;	$s33 = 1237;	$i19 = $i26 ^ $s33;	$i20 = $i19 * 1000003;	$r4 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getId>;	$i1 = virtualinvoke $r4.<java.lang.String: int hashCode()>();	$i21 = $i20 ^ $i1;	$i22 = $i21 * 1000003;	$r5 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList getParts>;	$i2 = virtualinvoke $r5.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableList: int hashCode()>();	$i23 = $i22 ^ $i2;	$i24 = $i23 * 1000003;	$r6 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	if $r6 != null goto $r7 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getAlternateId>;	$i34 = 0;	goto [?= $i17 = $i24 ^ $i34];	$i17 = $i24 ^ $i34;	$i18 = $i17 * 1000003;	$r8 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	if $r8 != null goto $r9 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getDesc>;	$i35 = 0;	goto [?= $i15 = $i18 ^ $i35];	$i15 = $i18 ^ $i35;	$i16 = $i15 * 1000003;	$r10 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	if $r10 != null goto $r11 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: java.lang.String getMeaning>;	$i36 = 0;	goto [?= $i13 = $i16 ^ $i36];	$i13 = $i16 ^ $i36;	$i14 = $i13 * 1000003;	$z2 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: boolean isHidden>;	if $z2 == 0 goto $s37 = 1237;	$s37 = 1231;	goto [?= $i6 = $i14 ^ $s37];	$i6 = $i14 ^ $s37;	$i7 = $i6 * 1000003;	$r12 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToExampleMap>;	$i3 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i8 = $i7 ^ $i3;	$i9 = $i8 * 1000003;	$r13 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap getPlaceholderNameToOriginalCodeMap>;	$i4 = virtualinvoke $r13.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableMap: int hashCode()>();	$i10 = $i9 ^ $i4;	$i11 = $i10 * 1000003;	$r14 = r0.<com.google.javascript.jscomp.AutoValue_JsMessage: com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet jsPlaceholderNames>;	$i5 = virtualinvoke $r14.<com.google.javascript.jscomp.jarjar.com.google.common.collect.ImmutableSet: int hashCode()>();	$i12 = $i11 ^ $i5;	return $i12
;block_num 15