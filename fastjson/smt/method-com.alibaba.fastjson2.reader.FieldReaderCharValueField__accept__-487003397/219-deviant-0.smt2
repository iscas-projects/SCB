(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1054 0)
(declare-sort var981 0)
(declare-sort var3447 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var981-to-String (var981) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun accept/-806481348 (var3447 var981 Int) void)
(declare-fun cast-from-var1054-to-var3447 (var1054) var3447)
(declare-const null-var1054 var1054)
(declare-const null-var981 var981)
(declare-const var458 var1054) ; Statement: r3 := @this: com.alibaba.fastjson2.reader.FieldReaderCharValueField 
(assert (not (= var458 null-var1054)))
(declare-const var2216 var981) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var2216 null-var981)))
(declare-const var1683 var981) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1683 null-var981)))
(define-const var879 Bool false) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof java.lang.Character 
(assert (not (= (ite var879 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var113 String (cast-from-var981-to-String var1683)) ; Statement: $r5 = (java.lang.String) r0 
(assert (not (and true (and (> (str.len var113) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var981-to-String=([java.lang.Object], java.lang.String), charAt/698050440=([java.lang.String, int], char), accept/-806481348=([com.alibaba.fastjson2.reader.FieldReaderObjectField, java.lang.Object, char], void), cast-from-var1054-to-var3447=([com.alibaba.fastjson2.reader.FieldReaderCharValueField], com.alibaba.fastjson2.reader.FieldReaderObjectField)}
; {var1054=com.alibaba.fastjson2.reader.FieldReaderCharValueField, var458=r3, var981=java.lang.Object, var2216=r4, var1683=r0, var879=$z0, var113=$r5, var1513=c0, var3447=com.alibaba.fastjson2.reader.FieldReaderObjectField}
; {com.alibaba.fastjson2.reader.FieldReaderCharValueField=var1054, r3=var458, java.lang.Object=var981, r4=var2216, r0=var1683, $z0=var879, $r5=var113, c0=var1513, com.alibaba.fastjson2.reader.FieldReaderObjectField=var3447}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.reader.FieldReaderCharValueField;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto $z1 = r0 instanceof java.lang.Character;	$r5 = (java.lang.String) r0;	c0 = virtualinvoke $r5.<java.lang.String: char charAt(int)>(0);	goto [?= virtualinvoke r3.<com.alibaba.fastjson2.reader.FieldReaderCharValueField: void accept(java.lang.Object,char)>(r4, c0)];	virtualinvoke r3.<com.alibaba.fastjson2.reader.FieldReaderCharValueField: void accept(java.lang.Object,char)>(r4, c0);	return
;block_num 3