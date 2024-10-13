(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2827 0)
(declare-sort var639 0)
(declare-sort var2653 0)
(declare-sort var720 0)
(declare-sort var1370 0)
(declare-sort var3159 0)
(declare-sort var2051 0)
(declare-sort var3211 0)
(declare-sort var2424 0)
(declare-sort var1202 0)
(declare-sort var3538 0)
(declare-sort var2417 0)
(declare-sort var1878 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2653-init () var2653)
(declare-fun <init>/964458484 (var2653) void)
(declare-fun var1370_parseDoc/-1590866744 (String) var720)
(declare-fun var2051_remove/-1201052315 (var2051 var3159) var3159)
(declare-fun cast-from-var720-to-var2051 (var720) var2051)
(declare-fun cast-from-String-to-var3159 (String) var3159)
(declare-fun cast-from-var3159-to-var3211 (var3159) var3211)
(declare-fun var2051_isEmpty/-1655013448 (var2051) Bool)
(declare-fun var2051_keySet/-712633290 (var2051) var2424)
(declare-fun var3538_stream/-1288525013 (var3538) var1202)
(declare-fun cast-from-var2424-to-var3538 (var2424) var3538)
(declare-fun var1202_findFirst/-512239506 (var1202) var2417)
(declare-fun get/-61389134 (var2417) var3159)
(declare-fun cast-from-var3159-to-String (var3159) String)
(declare-fun var1878-init () var1878)
(declare-fun arr-var3159-init () (Array Int var3159))
(declare-fun String_format/1339386452 (String (Array Int var3159)) String)
(declare-fun <init>/119715096 (var1878 String) void)
(declare-const null-var2827 var2827)
(declare-const null-String String)
(declare-const null-var3211 var3211)
(declare-const null-__Array__Int__var3159__ (Array Int var3159))
(declare-const var464 var2827) ; Statement: r123 := @this: com.mysql.cj.xdevapi.ClientImpl 
(assert (not (= var464 null-var2827)))
(declare-const var3360 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3360 null-String)))
(define-const var2003 var2653 var2653-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var2003)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var2003!1 var2653)
(define-const var200 var720 (var1370_parseDoc/-1590866744 var3360)) ; Statement: r2 = staticinvoke <com.mysql.cj.xdevapi.JsonParser: com.mysql.cj.xdevapi.DbDoc parseDoc(java.lang.String)>(r1) 
(define-const var2548 var3159 (var2051_remove/-1201052315 (cast-from-var720-to-var2051 var200) (cast-from-String-to-var3159 "pooling"))) ; Statement: $r3 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: java.lang.Object remove(java.lang.Object)>("pooling") 
(define-const var3480 var3211 (cast-from-var3159-to-var3211 var2548)) ; Statement: r4 = (com.mysql.cj.xdevapi.JsonValue) $r3 
 ; Statement: if r4 == null goto $z0 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: boolean isEmpty()>() 
(assert (= var3480 null-var3211)) ; Cond: r4 == null 
(define-const var3803 Bool (var2051_isEmpty/-1655013448 (cast-from-var720-to-var2051 var200))) ; Statement: $z0 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return $r0 
(assert (not (not (= (ite var3803 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var572 var2424 (var2051_keySet/-712633290 (cast-from-var720-to-var2051 var200))) ; Statement: $r5 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: java.util.Set keySet()>() 
(define-const var2757 var1202 (var3538_stream/-1288525013 (cast-from-var2424-to-var3538 var572))) ; Statement: $r6 = interfaceinvoke $r5.<java.util.Set: java.util.stream.Stream stream()>() 
(define-const var2561 var2417 (var1202_findFirst/-512239506 var2757)) ; Statement: $r7 = interfaceinvoke $r6.<java.util.stream.Stream: java.util.Optional findFirst()>() 
(assert true)
(define-const var2817 var3159 (get/-61389134 var2561)) ; Statement: $r8 = virtualinvoke $r7.<java.util.Optional: java.lang.Object get()>() 
(define-const var903 String (cast-from-var3159-to-String var2817)) ; Statement: r128 = (java.lang.String) $r8 
(define-const var837 var1878 var1878-init) ; Statement: $r9 = new com.mysql.cj.xdevapi.XDevAPIError 
(define-const var1539 (Array Int var3159) arr-var3159-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(declare-const var1539!1 (Array Int var3159))
(assert (not (= var1539!1 null-__Array__Int__var3159__)))
(assert (= (select var1539!1 0) (cast-from-String-to-var3159 var903))) ; Statement: $r10[0] = r128 
(define-const var1570 String (String_format/1339386452 "Client option \u0027%s\u0027 is not recognized as valid." var1539!1)) ; Statement: $r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Client option \'%s\' is not recognized as valid.", $r10) 
(assert true)
;(assert (<init>/119715096 var837 var1570)) ; Statement: specialinvoke $r9.<com.mysql.cj.xdevapi.XDevAPIError: void <init>(java.lang.String)>($r11) 

(declare-const var837!1 var1878)
(declare-const var1570!1 String)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var2653-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), var1370_parseDoc/-1590866744=([java.lang.String], com.mysql.cj.xdevapi.DbDoc), var2051_remove/-1201052315=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var720-to-var2051=([com.mysql.cj.xdevapi.DbDoc], java.util.Map), cast-from-String-to-var3159=([java.lang.String], java.lang.Object), cast-from-var3159-to-var3211=([java.lang.Object], com.mysql.cj.xdevapi.JsonValue), var2051_isEmpty/-1655013448=([java.util.Map], boolean), var2051_keySet/-712633290=([java.util.Map], java.util.Set), var3538_stream/-1288525013=([java.util.Collection], java.util.stream.Stream), cast-from-var2424-to-var3538=([java.util.Set], java.util.Collection), var1202_findFirst/-512239506=([java.util.stream.Stream], java.util.Optional), get/-61389134=([java.util.Optional], java.lang.Object), cast-from-var3159-to-String=([java.lang.Object], java.lang.String), var1878-init=([], com.mysql.cj.xdevapi.XDevAPIError), arr-var3159-init=([], java.lang.Object[]), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/119715096=([com.mysql.cj.xdevapi.XDevAPIError, java.lang.String], void)}
; {var2827=com.mysql.cj.xdevapi.ClientImpl, var464=r123, var3360=r1, var639=null_type, var2653=java.util.Properties, var2003=$r0, var720=com.mysql.cj.xdevapi.DbDoc, var1370=com.mysql.cj.xdevapi.JsonParser, var200=r2, var3159=java.lang.Object, var2051=java.util.Map, var2548=$r3, var3211=com.mysql.cj.xdevapi.JsonValue, var3480=r4, var3803=$z0, var2424=java.util.Set, var572=$r5, var1202=java.util.stream.Stream, var3538=java.util.Collection, var2757=$r6, var2417=java.util.Optional, var2561=$r7, var2817=$r8, var903=r128, var1878=com.mysql.cj.xdevapi.XDevAPIError, var837=$r9, var1539=$r10, var1570=$r11}
; {com.mysql.cj.xdevapi.ClientImpl=var2827, r123=var464, r1=var3360, null_type=var639, java.util.Properties=var2653, $r0=var2003, com.mysql.cj.xdevapi.DbDoc=var720, com.mysql.cj.xdevapi.JsonParser=var1370, r2=var200, java.lang.Object=var3159, java.util.Map=var2051, $r3=var2548, com.mysql.cj.xdevapi.JsonValue=var3211, r4=var3480, $z0=var3803, java.util.Set=var2424, $r5=var572, java.util.stream.Stream=var1202, java.util.Collection=var3538, $r6=var2757, java.util.Optional=var2417, $r7=var2561, $r8=var2817, r128=var903, com.mysql.cj.xdevapi.XDevAPIError=var1878, $r9=var837, $r10=var1539, $r11=var1570}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r123 := @this: com.mysql.cj.xdevapi.ClientImpl;	r1 := @parameter0: java.lang.String;	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	r2 = staticinvoke <com.mysql.cj.xdevapi.JsonParser: com.mysql.cj.xdevapi.DbDoc parseDoc(java.lang.String)>(r1);	$r3 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: java.lang.Object remove(java.lang.Object)>("pooling");	r4 = (com.mysql.cj.xdevapi.JsonValue) $r3;	if r4 == null goto $z0 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: boolean isEmpty()>();	$z0 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: boolean isEmpty()>();	if $z0 != 0 goto return $r0;	$r5 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: java.util.Set keySet()>();	$r6 = interfaceinvoke $r5.<java.util.Set: java.util.stream.Stream stream()>();	$r7 = interfaceinvoke $r6.<java.util.stream.Stream: java.util.Optional findFirst()>();	$r8 = virtualinvoke $r7.<java.util.Optional: java.lang.Object get()>();	r128 = (java.lang.String) $r8;	$r9 = new com.mysql.cj.xdevapi.XDevAPIError;	$r10 = newarray (java.lang.Object)[1];	$r10[0] = r128;	$r11 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Client option \'%s\' is not recognized as valid.", $r10);	specialinvoke $r9.<com.mysql.cj.xdevapi.XDevAPIError: void <init>(java.lang.String)>($r11);	throw $r9
;block_num 3