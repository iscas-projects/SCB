(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var207 0)
(declare-sort var2604 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lineBuf/659030463 (var207) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun close/-267143944 (var2604) void)
(declare-fun cast-from-var207-to-var2604 (var207) var2604)
(declare-fun closed/659030463 (var207) Bool)
(declare-const null-var207 var207)
(declare-const var540 var207) ; Statement: r0 := @this: freemarker.template.Template$LineTableBuilder 
(assert (not (= var540 null-var207)))
(define-const var364 String (lineBuf/659030463 var540)) ; Statement: $r1 = r0.<freemarker.template.Template$LineTableBuilder: java.lang.StringBuilder lineBuf> 
(assert true)
(define-const var2585 Int (length/-171891354 var364)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 <= 0 goto specialinvoke r0.<java.io.FilterReader: void close()>() 
(assert (<= var2585 0)) ; Cond: $i0 <= 0 
(assert true)
;(assert (close/-267143944 (cast-from-var207-to-var2604 var540))) ; Statement: specialinvoke r0.<java.io.FilterReader: void close()>() 

(declare-const var540!1 var207)
(declare-const var540!2 var207)
(assert (not (= var540!2 null-var207)))
(assert (= (closed/659030463 var540!2) (ite (= 1 1) true false))) ; Statement: r0.<freemarker.template.Template$LineTableBuilder: boolean closed> = 1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {lineBuf/659030463=([freemarker.template.Template$LineTableBuilder], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), close/-267143944=([java.io.FilterReader], void), cast-from-var207-to-var2604=([freemarker.template.Template$LineTableBuilder], java.io.FilterReader), closed/659030463=([freemarker.template.Template$LineTableBuilder], boolean)}
; {var207=freemarker.template.Template$LineTableBuilder, var540=r0, var364=$r1, var2585=$i0, var2604=java.io.FilterReader}
; {freemarker.template.Template$LineTableBuilder=var207, r0=var540, $r1=var364, $i0=var2585, java.io.FilterReader=var2604}
;seq <java.lang.StringBuilder: int length()>
;cnt {"<java.lang.StringBuilder: int length()>": 1}
;stmts r0 := @this: freemarker.template.Template$LineTableBuilder;	$r1 = r0.<freemarker.template.Template$LineTableBuilder: java.lang.StringBuilder lineBuf>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i0 <= 0 goto specialinvoke r0.<java.io.FilterReader: void close()>();	specialinvoke r0.<java.io.FilterReader: void close()>();	r0.<freemarker.template.Template$LineTableBuilder: boolean closed> = 1;	return
;block_num 2