(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3257 0)
(declare-sort var556 0)
(declare-sort var2261 0)
(declare-sort var64 0)
(declare-sort var1098 0)
(declare-sort var450 0)
(declare-sort var1619 0)
(declare-sort var1104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun ordinalDescriptorMap/-225037837 (var3257) var556)
(declare-fun Int_valueOf/-1371140006 (Int) Int)
(declare-fun var556_get/1088891777 (var556 var2261) var2261)
(declare-fun cast-from-Int-to-var2261 (Int) var2261)
(declare-fun cast-from-var2261-to-var64 (var2261) var64)
(declare-fun var1098-init () var1098)
(declare-fun arr-var2261-init () (Array Int var2261))
(declare-fun var556_keySet/-712633290 (var556) var1619)
(declare-fun var1619_iterator/1911472585 (var1619) Iterator)
(declare-fun var1104_join/-1748220507 (String Iterator) String)
(declare-fun cast-from-String-to-var2261 (String) var2261)
(declare-fun String_format/-647569892 (var450 String (Array Int var2261)) String)
(declare-fun <init>/875830710 (var1098 String) void)
(declare-const null-var3257 var3257)
(declare-const null-Int Int)
(declare-const null-var64 var64)
(declare-const var450-ROOT var450)
(declare-const null-__Array__Int__var2261__ (Array Int var2261))
(declare-const var2096 var3257) ; Statement: r0 := @this: org.hibernate.query.internal.ParameterMetadataImpl 
(assert (not (= var2096 null-var3257)))
(declare-const var510 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var510 null-Int)))
(define-const var1312 var556 (ordinalDescriptorMap/-225037837 var2096)) ; Statement: $r1 = r0.<org.hibernate.query.internal.ParameterMetadataImpl: java.util.Map ordinalDescriptorMap> 
(define-const var2249 Int (Int_valueOf/-1371140006 var510)) ; Statement: $r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(define-const var2270 var2261 (var556_get/1088891777 var1312 (cast-from-Int-to-var2261 var2249))) ; Statement: $r3 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2) 
(define-const var1260 var64 (cast-from-var2261-to-var64 var2270)) ; Statement: r4 = (org.hibernate.engine.query.spi.OrdinalParameterDescriptor) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var1260 null-var64)))) ; Negate: Cond: r4 != null  
(define-const var2851 var1098 var1098-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var1761 var450 var450-ROOT) ; Statement: $r7 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var1954 (Array Int var2261) arr-var2261-init) ; Statement: $r6 = newarray (java.lang.Object)[2] 
(define-const var2204 Int (Int_valueOf/-1371140006 var510)) ; Statement: $r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0) 
(declare-const var1954!1 (Array Int var2261))
(assert (not (= var1954!1 null-__Array__Int__var2261__)))
(assert (= (select var1954!1 0) (cast-from-Int-to-var2261 var2204))) ; Statement: $r6[0] = $r8 
(define-const var3745 var556 (ordinalDescriptorMap/-225037837 var2096)) ; Statement: $r9 = r0.<org.hibernate.query.internal.ParameterMetadataImpl: java.util.Map ordinalDescriptorMap> 
(define-const var2852 var1619 (var556_keySet/-712633290 var3745)) ; Statement: $r10 = interfaceinvoke $r9.<java.util.Map: java.util.Set keySet()>() 
(define-const var1432 Iterator (var1619_iterator/1911472585 var2852)) ; Statement: $r11 = interfaceinvoke $r10.<java.util.Set: java.util.Iterator iterator()>() 
(define-const var8 String (var1104_join/-1748220507 ", " var1432)) ; Statement: $r12 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String join(java.lang.String,java.util.Iterator)>(", ", $r11) 
(declare-const var1954!2 (Array Int var2261))
(assert (not (= var1954!2 null-__Array__Int__var2261__)))
(assert (= (select var1954!2 1) (cast-from-String-to-var2261 var8))) ; Statement: $r6[1] = $r12 
(define-const var2415 String (String_format/-647569892 var1761 "Could not locate ordinal parameter [%s], expecting one of [%s]" var1954!2)) ; Statement: $r13 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r7, "Could not locate ordinal parameter [%s], expecting one of [%s]", $r6) 
(assert true)
;(assert (<init>/875830710 var2851 var2415)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13) 

(declare-const var2851!1 var1098)
(declare-const var2415!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {ordinalDescriptorMap/-225037837=([org.hibernate.query.internal.ParameterMetadataImpl], java.util.Map), Int_valueOf/-1371140006=([int], java.lang.Integer), var556_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-Int-to-var2261=([java.lang.Integer], java.lang.Object), cast-from-var2261-to-var64=([java.lang.Object], org.hibernate.engine.query.spi.OrdinalParameterDescriptor), var1098-init=([], java.lang.IllegalArgumentException), arr-var2261-init=([], java.lang.Object[]), var556_keySet/-712633290=([java.util.Map], java.util.Set), var1619_iterator/1911472585=([java.util.Set], java.util.Iterator), var1104_join/-1748220507=([java.lang.String, java.util.Iterator], java.lang.String), cast-from-String-to-var2261=([java.lang.String], java.lang.Object), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var3257=org.hibernate.query.internal.ParameterMetadataImpl, var2096=r0, var510=i0, var556=java.util.Map, var1312=$r1, var2249=$r2, var2261=java.lang.Object, var2270=$r3, var64=org.hibernate.engine.query.spi.OrdinalParameterDescriptor, var1260=r4, var1098=java.lang.IllegalArgumentException, var2851=$r5, var450=java.util.Locale, var1761=$r7, var1954=$r6, var2204=$r8, var3745=$r9, var1619=java.util.Set, var2852=$r10, var1432=$r11, var1104=org.hibernate.internal.util.StringHelper, var8=$r12, var2415=$r13}
; {org.hibernate.query.internal.ParameterMetadataImpl=var3257, r0=var2096, i0=var510, java.util.Map=var556, $r1=var1312, $r2=var2249, java.lang.Object=var2261, $r3=var2270, org.hibernate.engine.query.spi.OrdinalParameterDescriptor=var64, r4=var1260, java.lang.IllegalArgumentException=var1098, $r5=var2851, java.util.Locale=var450, $r7=var1761, $r6=var1954, $r8=var2204, $r9=var3745, java.util.Set=var1619, $r10=var2852, $r11=var1432, org.hibernate.internal.util.StringHelper=var1104, $r12=var8, $r13=var2415}
;seq <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.query.internal.ParameterMetadataImpl;	i0 := @parameter0: int;	$r1 = r0.<org.hibernate.query.internal.ParameterMetadataImpl: java.util.Map ordinalDescriptorMap>;	$r2 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r3 = interfaceinvoke $r1.<java.util.Map: java.lang.Object get(java.lang.Object)>($r2);	r4 = (org.hibernate.engine.query.spi.OrdinalParameterDescriptor) $r3;	if r4 != null goto return r4;	$r5 = new java.lang.IllegalArgumentException;	$r7 = <java.util.Locale: java.util.Locale ROOT>;	$r6 = newarray (java.lang.Object)[2];	$r8 = staticinvoke <java.lang.Integer: java.lang.Integer valueOf(int)>(i0);	$r6[0] = $r8;	$r9 = r0.<org.hibernate.query.internal.ParameterMetadataImpl: java.util.Map ordinalDescriptorMap>;	$r10 = interfaceinvoke $r9.<java.util.Map: java.util.Set keySet()>();	$r11 = interfaceinvoke $r10.<java.util.Set: java.util.Iterator iterator()>();	$r12 = staticinvoke <org.hibernate.internal.util.StringHelper: java.lang.String join(java.lang.String,java.util.Iterator)>(", ", $r11);	$r6[1] = $r12;	$r13 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r7, "Could not locate ordinal parameter [%s], expecting one of [%s]", $r6);	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r13);	throw $r5
;block_num 2