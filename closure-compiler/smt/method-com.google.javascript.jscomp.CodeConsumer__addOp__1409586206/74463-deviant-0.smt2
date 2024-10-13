(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3196 0)
(declare-sort var3247 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun maybeEndStatement/-1830043069 (var3196) void)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun getLastChar/1243116251 (var3196) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/1413479590 (var3196 String) void)
(declare-fun appendOp/2078454657 (var3196 String Bool) void)
(declare-const null-var3196 var3196)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2471 var3196) ; Statement: r0 := @this: com.google.javascript.jscomp.CodeConsumer 
(assert (not (= var2471 null-var3196)))
(declare-const var2524 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2524 null-String)))
(declare-const var2170 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2170 null-Bool)))
(assert true)
;(assert (maybeEndStatement/-1830043069 var2471)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void maybeEndStatement()>() 

(declare-const var2471!1 var3196)
(assert (not (and true (and (> (str.len var2524) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {maybeEndStatement/-1830043069=([com.google.javascript.jscomp.CodeConsumer], void), charAt/698050440=([java.lang.String, int], char), getLastChar/1243116251=([com.google.javascript.jscomp.CodeConsumer], char), cast-from-Int-to-Int=([char], int), append/1413479590=([com.google.javascript.jscomp.CodeConsumer, java.lang.String], void), appendOp/2078454657=([com.google.javascript.jscomp.CodeConsumer, java.lang.String, boolean], void)}
; {var3196=com.google.javascript.jscomp.CodeConsumer, var2471=r0, var2524=r1, var3247=null_type, var2170=z1, var718=c0, var3492=c1, var374=$i2, var1893=$i4, var1190=$i5, var1505=" "}
; {com.google.javascript.jscomp.CodeConsumer=var3196, r0=var2471, r1=var2524, null_type=var3247, z1=var2170, c0=var718, c1=var3492, $i2=var374, $i4=var1893, $i5=var1190, " "=var1505}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.CodeConsumer;	r1 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	virtualinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void maybeEndStatement()>();	c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	c1 = virtualinvoke r0.<com.google.javascript.jscomp.CodeConsumer: char getLastChar()>();	$i2 = (int) c0;	if $i2 == 43 goto $i4 = (int) c1;	$i4 = (int) c1;	$i5 = (int) c0;	if $i4 != $i5 goto $z0 = staticinvoke <java.lang.Character: boolean isLetter(char)>(c0);	virtualinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void append(java.lang.String)>(" ");	goto [?= virtualinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void appendOp(java.lang.String,boolean)>(r1, z1)];	virtualinvoke r0.<com.google.javascript.jscomp.CodeConsumer: void appendOp(java.lang.String,boolean)>(r1, z1);	if z1 == 0 goto return;	return
;block_num 5