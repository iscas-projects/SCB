(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var673 0)
(declare-sort var3437 0)
(declare-sort var3598 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3598-init () var3598)
(declare-fun <init>/-2099196170 (var3598 String) void)
(declare-const null-var673 var673)
(declare-const null-var3437 var3437)
(declare-const var4 var673) ; Statement: r3 := @this: com.alibaba.fastjson2.reader.FieldReaderCharValueField 
(assert (not (= var4 null-var673)))
(declare-const var720 var3437) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var720 null-var3437)))
(declare-const var1255 var3437) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1255 null-var3437)))
(define-const var2774 Bool false) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof java.lang.Character 
(assert (= (ite var2774 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1559 Bool false) ; Statement: $z1 = r0 instanceof java.lang.Character 
 ; Statement: if $z1 == 0 goto $r1 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var1559 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2414 var3598 var3598-init) ; Statement: $r1 = new com.alibaba.fastjson2.JSONException 
(assert true)
;(assert (<init>/-2099196170 var2414 "cast to char error")) ; Statement: specialinvoke $r1.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>("cast to char error") 

(declare-const var2414!1 var3598)
(declare-const var3058 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var3598-init=([], com.alibaba.fastjson2.JSONException), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var673=com.alibaba.fastjson2.reader.FieldReaderCharValueField, var4=r3, var3437=java.lang.Object, var720=r4, var1255=r0, var2774=$z0, var1559=$z1, var3598=com.alibaba.fastjson2.JSONException, var2414=$r1, var3058="cast to char error"}
; {com.alibaba.fastjson2.reader.FieldReaderCharValueField=var673, r3=var4, java.lang.Object=var3437, r4=var720, r0=var1255, $z0=var2774, $z1=var1559, com.alibaba.fastjson2.JSONException=var3598, $r1=var2414, "cast to char error"=var3058}
;seq 
;cnt {}
;stmts r3 := @this: com.alibaba.fastjson2.reader.FieldReaderCharValueField;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto $z1 = r0 instanceof java.lang.Character;	$z1 = r0 instanceof java.lang.Character;	if $z1 == 0 goto $r1 = new com.alibaba.fastjson2.JSONException;	$r1 = new com.alibaba.fastjson2.JSONException;	specialinvoke $r1.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>("cast to char error");	throw $r1
;block_num 3