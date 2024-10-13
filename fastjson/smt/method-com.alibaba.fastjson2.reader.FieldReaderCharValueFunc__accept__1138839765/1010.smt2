(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3513 0)
(declare-sort var3308 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3308-to-String (var3308) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun accept/-1264643752 (var3513 var3308 Int) void)
(declare-const null-var3513 var3513)
(declare-const null-var3308 var3308)
(declare-const var3771 var3513) ; Statement: r3 := @this: com.alibaba.fastjson2.reader.FieldReaderCharValueFunc 
(assert (not (= var3771 null-var3513)))
(declare-const var308 var3308) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var308 null-var3308)))
(declare-const var1483 var3308) ; Statement: r0 := @parameter1: java.lang.Object 
(assert (not (= var1483 null-var3308)))
(define-const var3764 Bool false) ; Statement: $z0 = r0 instanceof java.lang.String 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof java.lang.Character 
(assert (not (= (ite var3764 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3395 String (cast-from-var3308-to-String var1483)) ; Statement: $r5 = (java.lang.String) r0 
(assert (and true (and (> (str.len var3395) 0) (<= 0 0))))
(define-const var1354 Int (charAt/698050440 var3395 0)) ; Statement: c0 = virtualinvoke $r5.<java.lang.String: char charAt(int)>(0) 
 ; Statement: goto [?= virtualinvoke r3.<com.alibaba.fastjson2.reader.FieldReaderCharValueFunc: void accept(java.lang.Object,char)>(r4, c0)] 
(assert true) ; Non Conditional
(assert true)
;(assert (accept/-1264643752 var3771 var308 var1354)) ; Statement: virtualinvoke r3.<com.alibaba.fastjson2.reader.FieldReaderCharValueFunc: void accept(java.lang.Object,char)>(r4, c0) 

(declare-const var3771!1 var3513)
(declare-const var308!1 var3308)
(declare-const var1354!1 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3308-to-String=([java.lang.Object], java.lang.String), charAt/698050440=([java.lang.String, int], char), accept/-1264643752=([com.alibaba.fastjson2.reader.FieldReaderCharValueFunc, java.lang.Object, char], void)}
; {var3513=com.alibaba.fastjson2.reader.FieldReaderCharValueFunc, var3771=r3, var3308=java.lang.Object, var308=r4, var1483=r0, var3764=$z0, var3395=$r5, var1354=c0}
; {com.alibaba.fastjson2.reader.FieldReaderCharValueFunc=var3513, r3=var3771, java.lang.Object=var3308, r4=var308, r0=var1483, $z0=var3764, $r5=var3395, c0=var1354}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.reader.FieldReaderCharValueFunc;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: java.lang.Object;	$z0 = r0 instanceof java.lang.String;	if $z0 == 0 goto $z1 = r0 instanceof java.lang.Character;	$r5 = (java.lang.String) r0;	c0 = virtualinvoke $r5.<java.lang.String: char charAt(int)>(0);	goto [?= virtualinvoke r3.<com.alibaba.fastjson2.reader.FieldReaderCharValueFunc: void accept(java.lang.Object,char)>(r4, c0)];	virtualinvoke r3.<com.alibaba.fastjson2.reader.FieldReaderCharValueFunc: void accept(java.lang.Object,char)>(r4, c0);	return
;block_num 3