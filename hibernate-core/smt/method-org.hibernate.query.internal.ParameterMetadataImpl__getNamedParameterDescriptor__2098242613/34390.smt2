(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2182 0)
(declare-sort var1547 0)
(declare-sort var718 0)
(declare-sort var3432 0)
(declare-sort var1819 0)
(declare-sort var488 0)
(declare-sort var3817 0)
(declare-sort var564 0)
(declare-sort var2522 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namedDescriptorMap/-225037837 (var2182) var718)
(declare-fun var718_get/1088891777 (var718 var3432) var3432)
(declare-fun cast-from-String-to-var3432 (String) var3432)
(declare-fun cast-from-var3432-to-var1819 (var3432) var1819)
(declare-fun var488-init () var488)
(declare-fun arr-var3432-init () (Array Int var3432))
(declare-fun var718_keySet/-712633290 (var718) var564)
(declare-fun String_join/1594745010 (String var2522) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun cast-from-var564-to-var2522 (var564) var2522)
(declare-fun String_format/-647569892 (var3817 String (Array Int var3432)) String)
(declare-fun <init>/875830710 (var488 String) void)
(declare-const null-var2182 var2182)
(declare-const null-String String)
(declare-const null-var1819 var1819)
(declare-const var3817-ROOT var3817)
(declare-const null-__Array__Int__var3432__ (Array Int var3432))
(declare-const var1199 var2182) ; Statement: r0 := @this: org.hibernate.query.internal.ParameterMetadataImpl 
(assert (not (= var1199 null-var2182)))
(declare-const var878 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var878 null-String)))
(define-const var208 var718 (namedDescriptorMap/-225037837 var1199)) ; Statement: $r2 = r0.<org.hibernate.query.internal.ParameterMetadataImpl: java.util.Map namedDescriptorMap> 
(define-const var2249 var3432 (var718_get/1088891777 var208 (cast-from-String-to-var3432 var878))) ; Statement: $r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1) 
(define-const var2102 var1819 (cast-from-var3432-to-var1819 var2249)) ; Statement: r4 = (org.hibernate.engine.query.spi.NamedParameterDescriptor) $r3 
 ; Statement: if r4 != null goto return r4 
(assert (not (not (= var2102 null-var1819)))) ; Negate: Cond: r4 != null  
(define-const var3994 var488 var488-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var933 var3817 var3817-ROOT) ; Statement: $r8 = <java.util.Locale: java.util.Locale ROOT> 
(define-const var3339 (Array Int var3432) arr-var3432-init) ; Statement: $r6 = newarray (java.lang.Object)[2] 
(declare-const var3339!1 (Array Int var3432))
(assert (not (= var3339!1 null-__Array__Int__var3432__)))
(assert (= (select var3339!1 0) (cast-from-String-to-var3432 var878))) ; Statement: $r6[0] = r1 
(define-const var3960 var718 (namedDescriptorMap/-225037837 var1199)) ; Statement: $r7 = r0.<org.hibernate.query.internal.ParameterMetadataImpl: java.util.Map namedDescriptorMap> 
(define-const var3180 var564 (var718_keySet/-712633290 var3960)) ; Statement: $r9 = interfaceinvoke $r7.<java.util.Map: java.util.Set keySet()>() 
(define-const var3514 String (String_join/1594745010 (cast-from-String-to-String ", ") (cast-from-var564-to-var2522 var3180))) ; Statement: $r10 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", $r9) 
(declare-const var3339!2 (Array Int var3432))
(assert (not (= var3339!2 null-__Array__Int__var3432__)))
(assert (= (select var3339!2 1) (cast-from-String-to-var3432 var3514))) ; Statement: $r6[1] = $r10 
(define-const var2935 String (String_format/-647569892 var933 "Could not locate named parameter [%s], expecting one of [%s]" var3339!2)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r8, "Could not locate named parameter [%s], expecting one of [%s]", $r6) 
(assert true)
;(assert (<init>/875830710 var3994 var2935)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11) 

(declare-const var3994!1 var488)
(declare-const var2935!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {namedDescriptorMap/-225037837=([org.hibernate.query.internal.ParameterMetadataImpl], java.util.Map), var718_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3432=([java.lang.String], java.lang.Object), cast-from-var3432-to-var1819=([java.lang.Object], org.hibernate.engine.query.spi.NamedParameterDescriptor), var488-init=([], java.lang.IllegalArgumentException), arr-var3432-init=([], java.lang.Object[]), var718_keySet/-712633290=([java.util.Map], java.util.Set), String_join/1594745010=([java.lang.CharSequence, java.lang.Iterable], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-var564-to-var2522=([java.util.Set], java.lang.Iterable), String_format/-647569892=([java.util.Locale, java.lang.String, java.lang.Object[]], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var2182=org.hibernate.query.internal.ParameterMetadataImpl, var1199=r0, var878=r1, var1547=null_type, var718=java.util.Map, var208=$r2, var3432=java.lang.Object, var2249=$r3, var1819=org.hibernate.engine.query.spi.NamedParameterDescriptor, var2102=r4, var488=java.lang.IllegalArgumentException, var3994=$r5, var3817=java.util.Locale, var933=$r8, var3339=$r6, var3960=$r7, var564=java.util.Set, var3180=$r9, var2522=java.lang.Iterable, var3514=$r10, var2935=$r11}
; {org.hibernate.query.internal.ParameterMetadataImpl=var2182, r0=var1199, r1=var878, null_type=var1547, java.util.Map=var718, $r2=var208, java.lang.Object=var3432, $r3=var2249, org.hibernate.engine.query.spi.NamedParameterDescriptor=var1819, r4=var2102, java.lang.IllegalArgumentException=var488, $r5=var3994, java.util.Locale=var3817, $r8=var933, $r6=var3339, $r7=var3960, java.util.Set=var564, $r9=var3180, java.lang.Iterable=var2522, $r10=var3514, $r11=var2935}
;seq <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>;	<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>": 1,"<java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.query.internal.ParameterMetadataImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.query.internal.ParameterMetadataImpl: java.util.Map namedDescriptorMap>;	$r3 = interfaceinvoke $r2.<java.util.Map: java.lang.Object get(java.lang.Object)>(r1);	r4 = (org.hibernate.engine.query.spi.NamedParameterDescriptor) $r3;	if r4 != null goto return r4;	$r5 = new java.lang.IllegalArgumentException;	$r8 = <java.util.Locale: java.util.Locale ROOT>;	$r6 = newarray (java.lang.Object)[2];	$r6[0] = r1;	$r7 = r0.<org.hibernate.query.internal.ParameterMetadataImpl: java.util.Map namedDescriptorMap>;	$r9 = interfaceinvoke $r7.<java.util.Map: java.util.Set keySet()>();	$r10 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.Iterable)>(", ", $r9);	$r6[1] = $r10;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.util.Locale,java.lang.String,java.lang.Object[])>($r8, "Could not locate named parameter [%s], expecting one of [%s]", $r6);	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r11);	throw $r5
;block_num 2