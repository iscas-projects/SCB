(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2171 0)
(declare-sort var351 0)
(declare-sort var104 0)
(declare-sort var1712 0)
(declare-sort var3171 0)
(declare-sort var894 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun parent/1029745399 (var351) var351)
(declare-fun value/1029745399 (var351) var1712)
(declare-fun cast-from-var1712-to-var3171 (var1712) var3171)
(declare-fun var3171_entrySet/1101202697 (var3171) var894)
(declare-fun var894_iterator/1911472585 (var894) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(declare-const null-var2171 var2171)
(declare-const null-var351 var351)
(declare-const null-var104 var104)
(declare-const var1065 var2171) ; Statement: r6 := @this: com.alibaba.fastjson2.JSONPathSegment$AllSegment 
(assert (not (= var1065 null-var2171)))
(declare-const var236 var351) ; Statement: r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context 
(assert (not (= var236 null-var351)))
(declare-const var2824 var104) ; Statement: r12 := @parameter1: java.util.function.BiFunction 
(assert (not (= var2824 null-var104)))
(define-const var3832 var351 (parent/1029745399 var236)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
 ; Statement: if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(assert (not (= var3832 null-var351))) ; Cond: $r1 != null 
(define-const var42 var351 (parent/1029745399 var236)) ; Statement: $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent> 
(define-const var3357 var1712 (value/1029745399 var42)) ; Statement: $r16 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value> 
(assert true) ; Non Conditional
(define-const var2573 var1712 var3357) ; Statement: r3 = $r16 
(define-const var1215 Bool false) ; Statement: $z0 = $r16 instanceof java.util.Map 
 ; Statement: if $z0 == 0 goto $z1 = $r16 instanceof java.util.List 
(assert (not (= (ite var1215 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var699 var3171 (cast-from-var1712-to-var3171 var3357)) ; Statement: r17 = (java.util.Map) $r16 
(define-const var3081 var894 (var3171_entrySet/1101202697 var699)) ; Statement: $r13 = interfaceinvoke r17.<java.util.Map: java.util.Set entrySet()>() 
(define-const var2714 Iterator (var894_iterator/1911472585 var3081)) ; Statement: r18 = interfaceinvoke $r13.<java.util.Set: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var1644 Bool (Iterator_hasNext/-1669924200 var2714)) ; Statement: $z3 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z3 == 0 goto return 
(assert (= (ite var1644 1 0) 0)) ; Cond: $z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {parent/1029745399=([com.alibaba.fastjson2.JSONPath$Context], com.alibaba.fastjson2.JSONPath$Context), value/1029745399=([com.alibaba.fastjson2.JSONPath$Context], java.lang.Object), cast-from-var1712-to-var3171=([java.lang.Object], java.util.Map), var3171_entrySet/1101202697=([java.util.Map], java.util.Set), var894_iterator/1911472585=([java.util.Set], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean)}
; {var2171=com.alibaba.fastjson2.JSONPathSegment$AllSegment, var1065=r6, var351=com.alibaba.fastjson2.JSONPath$Context, var236=r0, var104=java.util.function.BiFunction, var2824=r12, var3832=$r1, var42=$r2, var1712=java.lang.Object, var3357=$r16, var2573=r3, var1215=$z0, var3171=java.util.Map, var699=r17, var894=java.util.Set, var3081=$r13, var2714=r18, var1644=$z3}
; {com.alibaba.fastjson2.JSONPathSegment$AllSegment=var2171, r6=var1065, com.alibaba.fastjson2.JSONPath$Context=var351, r0=var236, java.util.function.BiFunction=var104, r12=var2824, $r1=var3832, $r2=var42, java.lang.Object=var1712, $r16=var3357, r3=var2573, $z0=var1215, java.util.Map=var3171, r17=var699, java.util.Set=var894, $r13=var3081, r18=var2714, $z3=var1644}
;seq 
;cnt {}
;stmts r6 := @this: com.alibaba.fastjson2.JSONPathSegment$AllSegment;	r0 := @parameter0: com.alibaba.fastjson2.JSONPath$Context;	r12 := @parameter1: java.util.function.BiFunction;	$r1 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	if $r1 != null goto $r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r2 = r0.<com.alibaba.fastjson2.JSONPath$Context: com.alibaba.fastjson2.JSONPath$Context parent>;	$r16 = $r2.<com.alibaba.fastjson2.JSONPath$Context: java.lang.Object value>;	r3 = $r16;	$z0 = $r16 instanceof java.util.Map;	if $z0 == 0 goto $z1 = $r16 instanceof java.util.List;	r17 = (java.util.Map) $r16;	$r13 = interfaceinvoke r17.<java.util.Map: java.util.Set entrySet()>();	r18 = interfaceinvoke $r13.<java.util.Set: java.util.Iterator iterator()>();	$z3 = interfaceinvoke r18.<java.util.Iterator: boolean hasNext()>();	if $z3 == 0 goto return;	return
;block_num 6