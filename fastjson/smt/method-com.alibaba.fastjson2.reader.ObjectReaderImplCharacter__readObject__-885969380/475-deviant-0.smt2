(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var571 0)
(declare-sort var1396 0)
(declare-sort var2005 0)
(declare-sort var3277 0)
(declare-sort var1494 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun readString/1282532359 (var1396) String)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun var1494_valueOf/-1186540555 (Int) var1494)
(declare-const null-var571 var571)
(declare-const null-var1396 var1396)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2005 var2005)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1813 var571) ; Statement: r3 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplCharacter 
(assert (not (= var1813 null-var571)))
(declare-const var2403 var1396) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONReader 
(assert (not (= var2403 null-var1396)))
(declare-const var3176 ClassObject) ; Statement: r4 := @parameter1: java.lang.reflect.Type 
(assert (not (= var3176 null-ClassObject)))
(declare-const var3839 var2005) ; Statement: r5 := @parameter2: java.lang.Object 
(assert (not (= var3839 null-var2005)))
(declare-const var1157 Int) ; Statement: l1 := @parameter3: long 
(assert (not (= var1157 null-Int)))
(assert true)
(define-const var415 String (readString/1282532359 var2403)) ; Statement: r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>() 
 ; Statement: if r1 != null goto $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0) 
(assert (not (= var415 null-String))) ; Cond: r1 != null 
(assert (not (and true (and (> (str.len var415) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {readString/1282532359=([com.alibaba.fastjson2.JSONReader], java.lang.String), charAt/698050440=([java.lang.String, int], char), var1494_valueOf/-1186540555=([char], java.lang.Character)}
; {var571=com.alibaba.fastjson2.reader.ObjectReaderImplCharacter, var1813=r3, var1396=com.alibaba.fastjson2.JSONReader, var2403=r0, var3176=r4, var2005=java.lang.Object, var3839=r5, var1157=l1, var415=r1, var3277=null_type, var3498=$c0, var1494=java.lang.Character, var3072=$r2}
; {com.alibaba.fastjson2.reader.ObjectReaderImplCharacter=var571, r3=var1813, com.alibaba.fastjson2.JSONReader=var1396, r0=var2403, r4=var3176, java.lang.Object=var2005, r5=var3839, l1=var1157, r1=var415, null_type=var3277, $c0=var3498, java.lang.Character=var1494, $r2=var3072}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r3 := @this: com.alibaba.fastjson2.reader.ObjectReaderImplCharacter;	r0 := @parameter0: com.alibaba.fastjson2.JSONReader;	r4 := @parameter1: java.lang.reflect.Type;	r5 := @parameter2: java.lang.Object;	l1 := @parameter3: long;	r1 = virtualinvoke r0.<com.alibaba.fastjson2.JSONReader: java.lang.String readString()>();	if r1 != null goto $c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$c0 = virtualinvoke r1.<java.lang.String: char charAt(int)>(0);	$r2 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c0);	return $r2
;block_num 2