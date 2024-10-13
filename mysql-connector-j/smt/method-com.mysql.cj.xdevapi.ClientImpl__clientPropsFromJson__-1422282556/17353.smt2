(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3506 0)
(declare-sort var2389 0)
(declare-sort var843 0)
(declare-sort var710 0)
(declare-sort var1135 0)
(declare-sort var3562 0)
(declare-sort var3098 0)
(declare-sort var1692 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var843-init () var843)
(declare-fun <init>/964458484 (var843) void)
(declare-fun var1135_parseDoc/-1590866744 (String) var710)
(declare-fun var3098_remove/-1201052315 (var3098 var3562) var3562)
(declare-fun cast-from-var710-to-var3098 (var710) var3098)
(declare-fun cast-from-String-to-var3562 (String) var3562)
(declare-fun cast-from-var3562-to-var1692 (var3562) var1692)
(declare-fun var3098_isEmpty/-1655013448 (var3098) Bool)
(declare-const null-var3506 var3506)
(declare-const null-String String)
(declare-const null-var1692 var1692)
(declare-const var95 var3506) ; Statement: r123 := @this: com.mysql.cj.xdevapi.ClientImpl 
(assert (not (= var95 null-var3506)))
(declare-const var3967 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3967 null-String)))
(define-const var3213 var843 var843-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var3213)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var3213!1 var843)
(define-const var1235 var710 (var1135_parseDoc/-1590866744 var3967)) ; Statement: r2 = staticinvoke <com.mysql.cj.xdevapi.JsonParser: com.mysql.cj.xdevapi.DbDoc parseDoc(java.lang.String)>(r1) 
(define-const var3238 var3562 (var3098_remove/-1201052315 (cast-from-var710-to-var3098 var1235) (cast-from-String-to-var3562 "pooling"))) ; Statement: $r3 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: java.lang.Object remove(java.lang.Object)>("pooling") 
(define-const var2544 var1692 (cast-from-var3562-to-var1692 var3238)) ; Statement: r4 = (com.mysql.cj.xdevapi.JsonValue) $r3 
 ; Statement: if r4 == null goto $z0 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: boolean isEmpty()>() 
(assert (= var2544 null-var1692)) ; Cond: r4 == null 
(define-const var2664 Bool (var3098_isEmpty/-1655013448 (cast-from-var710-to-var3098 var1235))) ; Statement: $z0 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto return $r0 
(assert (not (= (ite var2664 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var843-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), var1135_parseDoc/-1590866744=([java.lang.String], com.mysql.cj.xdevapi.DbDoc), var3098_remove/-1201052315=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-var710-to-var3098=([com.mysql.cj.xdevapi.DbDoc], java.util.Map), cast-from-String-to-var3562=([java.lang.String], java.lang.Object), cast-from-var3562-to-var1692=([java.lang.Object], com.mysql.cj.xdevapi.JsonValue), var3098_isEmpty/-1655013448=([java.util.Map], boolean)}
; {var3506=com.mysql.cj.xdevapi.ClientImpl, var95=r123, var3967=r1, var2389=null_type, var843=java.util.Properties, var3213=$r0, var710=com.mysql.cj.xdevapi.DbDoc, var1135=com.mysql.cj.xdevapi.JsonParser, var1235=r2, var3562=java.lang.Object, var3098=java.util.Map, var3238=$r3, var1692=com.mysql.cj.xdevapi.JsonValue, var2544=r4, var2664=$z0}
; {com.mysql.cj.xdevapi.ClientImpl=var3506, r123=var95, r1=var3967, null_type=var2389, java.util.Properties=var843, $r0=var3213, com.mysql.cj.xdevapi.DbDoc=var710, com.mysql.cj.xdevapi.JsonParser=var1135, r2=var1235, java.lang.Object=var3562, java.util.Map=var3098, $r3=var3238, com.mysql.cj.xdevapi.JsonValue=var1692, r4=var2544, $z0=var2664}
;seq 
;cnt {}
;stmts r123 := @this: com.mysql.cj.xdevapi.ClientImpl;	r1 := @parameter0: java.lang.String;	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	r2 = staticinvoke <com.mysql.cj.xdevapi.JsonParser: com.mysql.cj.xdevapi.DbDoc parseDoc(java.lang.String)>(r1);	$r3 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: java.lang.Object remove(java.lang.Object)>("pooling");	r4 = (com.mysql.cj.xdevapi.JsonValue) $r3;	if r4 == null goto $z0 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: boolean isEmpty()>();	$z0 = interfaceinvoke r2.<com.mysql.cj.xdevapi.DbDoc: boolean isEmpty()>();	if $z0 != 0 goto return $r0;	return $r0
;block_num 3