(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var87 0)
(declare-sort var88 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var88-init () var88)
(declare-fun <init>/730290330 (var88 String String) void)
(declare-const null-String String)
(declare-const var3403 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3403 null-String)))
(assert true)
(define-const var1236 Int (indexOf/-1037706067 var3403 0)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(0) 
(define-const var3776 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if $i0 == $i2 goto return 
(assert (not (= var1236 var3776))) ; Negate: Cond: $i0 == $i2  
(define-const var279 var88 var88-init) ; Statement: $r2 = new freemarker.template.MalformedTemplateNameException 
(assert true)
;(assert (<init>/730290330 var279 var3403 "Null character (\u005cu0000) in the name; possible attack attempt")) ; Statement: specialinvoke $r2.<freemarker.template.MalformedTemplateNameException: void <init>(java.lang.String,java.lang.String)>(r0, "Null character (\\u0000) in the name; possible attack attempt") 

(declare-const var279!1 var88)
(declare-const var3403!1 String)
(declare-const var3343 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var88-init=([], freemarker.template.MalformedTemplateNameException), <init>/730290330=([freemarker.template.MalformedTemplateNameException, java.lang.String, java.lang.String], void)}
; {var3403=r0, var87=null_type, var1236=$i0, var3776=$i2, var88=freemarker.template.MalformedTemplateNameException, var279=$r2, var3343="Null character (\\u0000) in the name; possible attack attempt"}
; {r0=var3403, null_type=var87, $i0=var1236, $i2=var3776, freemarker.template.MalformedTemplateNameException=var88, $r2=var279, "Null character (\\u0000) in the name; possible attack attempt"=var3343}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(0);	$i2 = (int) -1;	if $i0 == $i2 goto return;	$r2 = new freemarker.template.MalformedTemplateNameException;	specialinvoke $r2.<freemarker.template.MalformedTemplateNameException: void <init>(java.lang.String,java.lang.String)>(r0, "Null character (\\u0000) in the name; possible attack attempt");	throw $r2
;block_num 2