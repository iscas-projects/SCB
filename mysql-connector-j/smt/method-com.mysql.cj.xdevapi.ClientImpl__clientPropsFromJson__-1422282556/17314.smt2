(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1720 0)
(declare-sort var2745 0)
(declare-sort var54 0)
(declare-sort var3059 0)
(declare-sort var462 0)
(declare-sort var1647 0)
(declare-sort var3081 0)
(declare-sort var1090 0)
(declare-sort var1176 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3059!class ClassObject)
(declare-fun var54-init () var54)
(declare-fun <init>/964458484 (var54) void)
(declare-fun var462_parseDoc/-1590866744 (String) var3059)
(declare-fun var3081_remove/-1201052315 (var3081 var1647) var1647)
(declare-fun cast-from-var3059-to-var3081 (var3059) var3081)
(declare-fun cast-from-String-to-var1647 (String) var1647)
(declare-fun cast-from-var1647-to-var1090 (var1647) var1090)
(declare-fun getClass/1258963082 (var1647) ClassObject)
(declare-fun cast-from-var1090-to-var1647 (var1090) var1647)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var1176-init () var1176)
(declare-fun arr-var1647-init () (Array Int var1647))
(declare-fun var1090_toFormattedString/-876164582 (var1090) String)
(declare-fun String_format/1339386452 (String (Array Int var1647)) String)
(declare-fun <init>/119715096 (var1176 String) void)
(declare-const null-var1720 var1720)
(declare-const null-String String)
(declare-const null-var1090 var1090)
(declare-const null-__Array__Int__var1647__ (Array Int var1647))
(declare-const var3800 var1720) ; Statement: r123 := @this: com.mysql.cj.xdevapi.ClientImpl 
(assert (not (= var3800 null-var1720)))
(declare-const var1443 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1443 null-String)))
(define-const var1046 var54 var54-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var1046)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var1046!1 var54)
(define-const var2207 var3059 (var462_parseDoc/-1590866744 var1443)) ; Statement: r2 = staticinvoke <com.mysql.cj.xdevapi.JsonParser: com.mysql.cj.xdevapi.DbDoc parseDoc(java.lang.String)>(r1) 
(define-const var2320 var1647 (var3081_remove/-1201052315 (cast-from-var3059-to-var3081 var2207) (cast-from-String-to-var1647 "pooling"))) ; Statement: $r3 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: java.lang.Object remove(java.lang.Object)>("pooling") 
(define-const var1471 var1090 (cast-from-var1647-to-var1090 var2320)) ; Statement: r4 = (com.mysql.cj.xdevapi.JsonValue) $r3 
 ; Statement: if r4 == null goto $z0 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: boolean isEmpty()>() 
(assert (not (= var1471 null-var1090))) ; Negate: Cond: r4 == null  
(define-const var1913 ClassObject var3059!class) ; Statement: $r13 = class "Lcom/mysql/cj/xdevapi/DbDoc;" 
(assert true)
(define-const var2457 ClassObject (getClass/1258963082 (cast-from-var1090-to-var1647 var1471))) ; Statement: $r12 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var322 Bool (isAssignableFrom/-1028998700 var1913 var2457)) ; Statement: $z1 = virtualinvoke $r13.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r12) 
 ; Statement: if $z1 != 0 goto r124 = (com.mysql.cj.xdevapi.DbDoc) r4 
(assert (not (not (= (ite var322 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2006 var1176 var1176-init) ; Statement: $r119 = new com.mysql.cj.xdevapi.XDevAPIError 
(define-const var649 (Array Int var1647) arr-var1647-init) ; Statement: $r120 = newarray (java.lang.Object)[1] 
(define-const var2871 String (var1090_toFormattedString/-876164582 var1471)) ; Statement: $r121 = interfaceinvoke r4.<com.mysql.cj.xdevapi.JsonValue: java.lang.String toFormattedString()>() 
(declare-const var649!1 (Array Int var1647))
(assert (not (= var649!1 null-__Array__Int__var1647__)))
(assert (= (select var649!1 0) (cast-from-String-to-var1647 var2871))) ; Statement: $r120[0] = $r121 
(define-const var3639 String (String_format/1339386452 "Client option \u0027pooling\u0027 does not support value \u0027%s\u0027." var649!1)) ; Statement: $r122 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Client option \'pooling\' does not support value \'%s\'.", $r120) 
(assert true)
;(assert (<init>/119715096 var2006 var3639)) ; Statement: specialinvoke $r119.<com.mysql.cj.xdevapi.XDevAPIError: void <init>(java.lang.String)>($r122) 

(declare-const var2006!1 var1176)
(declare-const var3639!1 String)
 ; Statement: throw $r119 
(check-sat)
(get-model)
(get-unsat-core)
; {var54-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), var462_parseDoc/-1590866744=([java.lang.String], com.mysql.cj.xdevapi.DbDoc), var3081_remove/-1201052315=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var3059-to-var3081=([com.mysql.cj.xdevapi.DbDoc], java.util.Map), cast-from-String-to-var1647=([java.lang.String], java.lang.Object), cast-from-var1647-to-var1090=([java.lang.Object], com.mysql.cj.xdevapi.JsonValue), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1090-to-var1647=([com.mysql.cj.xdevapi.JsonValue], java.lang.Object), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var1176-init=([], com.mysql.cj.xdevapi.XDevAPIError), arr-var1647-init=([], java.lang.Object[]), var1090_toFormattedString/-876164582=([com.mysql.cj.xdevapi.JsonValue], java.lang.String), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/119715096=([com.mysql.cj.xdevapi.XDevAPIError, java.lang.String], void)}
; {var1720=com.mysql.cj.xdevapi.ClientImpl, var3800=r123, var1443=r1, var2745=null_type, var54=java.util.Properties, var1046=$r0, var3059=com.mysql.cj.xdevapi.DbDoc, var462=com.mysql.cj.xdevapi.JsonParser, var2207=r2, var1647=java.lang.Object, var3081=java.util.Map, var2320=$r3, var1090=com.mysql.cj.xdevapi.JsonValue, var1471=r4, var1913=$r13, var2457=$r12, var322=$z1, var1176=com.mysql.cj.xdevapi.XDevAPIError, var2006=$r119, var649=$r120, var2871=$r121, var3639=$r122}
; {com.mysql.cj.xdevapi.ClientImpl=var1720, r123=var3800, r1=var1443, null_type=var2745, java.util.Properties=var54, $r0=var1046, com.mysql.cj.xdevapi.DbDoc=var3059, com.mysql.cj.xdevapi.JsonParser=var462, r2=var2207, java.lang.Object=var1647, java.util.Map=var3081, $r3=var2320, com.mysql.cj.xdevapi.JsonValue=var1090, r4=var1471, $r13=var1913, $r12=var2457, $z1=var322, com.mysql.cj.xdevapi.XDevAPIError=var1176, $r119=var2006, $r120=var649, $r121=var2871, $r122=var3639}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r123 := @this: com.mysql.cj.xdevapi.ClientImpl;	r1 := @parameter0: java.lang.String;	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	r2 = staticinvoke <com.mysql.cj.xdevapi.JsonParser: com.mysql.cj.xdevapi.DbDoc parseDoc(java.lang.String)>(r1);	$r3 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: java.lang.Object remove(java.lang.Object)>("pooling");	r4 = (com.mysql.cj.xdevapi.JsonValue) $r3;	if r4 == null goto $z0 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: boolean isEmpty()>();	$r13 = class "Lcom/mysql/cj/xdevapi/DbDoc;";	$r12 = virtualinvoke r4.<java.lang.Object: java.lang.Class getClass()>();	$z1 = virtualinvoke $r13.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r12);	if $z1 != 0 goto r124 = (com.mysql.cj.xdevapi.DbDoc) r4;	$r119 = new com.mysql.cj.xdevapi.XDevAPIError;	$r120 = newarray (java.lang.Object)[1];	$r121 = interfaceinvoke r4.<com.mysql.cj.xdevapi.JsonValue: java.lang.String toFormattedString()>();	$r120[0] = $r121;	$r122 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Client option \'pooling\' does not support value \'%s\'.", $r120);	specialinvoke $r119.<com.mysql.cj.xdevapi.XDevAPIError: void <init>(java.lang.String)>($r122);	throw $r119
;block_num 3