(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2921 0)
(declare-sort var884 0)
(declare-sort var2754 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2754-init () var2754)
(declare-fun <init>/-2099196170 (var2754 String) void)
(declare-const null-var2921 var2921)
(declare-const null-var884 var884)
(declare-const var3837 var2921) ; Statement: r3 := @this: com.alibaba.fastjson2.reader.FieldReaderCharValueFunc 
(assert (not (= var3837 null-var2921)))
(declare-const var3820 var884) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var3820 null-var884)))
(declare-const var1233 var884) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1233 null-var884)))
(define-const var2838 Bool false) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof java.lang.Character 
(assert (= (ite var2838 1 0) 0)) ; Cond: $z0 == 0 
(define-const var539 Bool false) ; Statement: $z1 = r0 instanceof java.lang.Character 
 ; Statement: if $z1 == 0 goto $r1 = new com.alibaba.fastjson2.JSONException 
(assert (= (ite var539 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3631 var2754 var2754-init) ; Statement: $r1 = new com.alibaba.fastjson2.JSONException 
(assert true)
;(assert (<init>/-2099196170 var3631 "cast to char error")) ; Statement: specialinvoke $r1.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>("cast to char error") 

(declare-const var3631!1 var2754)
(declare-const var148 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2754-init=([], com.alibaba.fastjson2.JSONException), <init>/-2099196170=([com.alibaba.fastjson2.JSONException, java.lang.String], void)}
; {var2921=com.alibaba.fastjson2.reader.FieldReaderCharValueFunc, var3837=r3, var884=java.lang.Object, var3820=r4, var1233=r0, var2838=$z0, var539=$z1, var2754=com.alibaba.fastjson2.JSONException, var3631=$r1, var148="cast to char error"}
; {com.alibaba.fastjson2.reader.FieldReaderCharValueFunc=var2921, r3=var3837, java.lang.Object=var884, r4=var3820, r0=var1233, $z0=var2838, $z1=var539, com.alibaba.fastjson2.JSONException=var2754, $r1=var3631, "cast to char error"=var148}
;seq 
;cnt {}
;stmts r3 := @this: com.alibaba.fastjson2.reader.FieldReaderCharValueFunc;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto $z1 = r0 instanceof java.lang.Character;	$z1 = r0 instanceof java.lang.Character;	if $z1 == 0 goto $r1 = new com.alibaba.fastjson2.JSONException;	$r1 = new com.alibaba.fastjson2.JSONException;	specialinvoke $r1.<com.alibaba.fastjson2.JSONException: void <init>(java.lang.String)>("cast to char error");	throw $r1
;block_num 3