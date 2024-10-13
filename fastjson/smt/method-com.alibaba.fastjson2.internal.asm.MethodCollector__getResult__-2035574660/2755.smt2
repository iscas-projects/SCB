(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3392 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun result/715258311 (var3392) String)
(declare-fun length/-171891354 (String) Int)
(declare-fun substring/-975425934 (String Int) String)
(declare-const null-var3392 var3392)
(declare-const var1681 var3392) ; Statement: r0 := @this: com.alibaba.fastjson2.internal.asm.MethodCollector 
(assert (not (= var1681 null-var3392)))
(define-const var1027 String (result/715258311 var1681)) ; Statement: $r1 = r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: java.lang.StringBuilder result> 
(assert true)
(define-const var2111 Int (length/-171891354 var1027)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>() 
 ; Statement: if $i0 == 0 goto $r3 = "" 
(assert (not (= var2111 0))) ; Negate: Cond: $i0 == 0  
(define-const var986 String (result/715258311 var1681)) ; Statement: $r2 = r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: java.lang.StringBuilder result> 
(assert true)
(define-const var1629 String (substring/-975425934 var986 1)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String substring(int)>(1) 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {result/715258311=([com.alibaba.fastjson2.internal.asm.MethodCollector], java.lang.StringBuilder), length/-171891354=([java.lang.StringBuilder], int), substring/-975425934=([java.lang.StringBuilder, int], java.lang.String)}
; {var3392=com.alibaba.fastjson2.internal.asm.MethodCollector, var1681=r0, var1027=$r1, var2111=$i0, var986=$r2, var1629=$r3}
; {com.alibaba.fastjson2.internal.asm.MethodCollector=var3392, r0=var1681, $r1=var1027, $i0=var2111, $r2=var986, $r3=var1629}
;seq <java.lang.StringBuilder: int length()>;	<java.lang.StringBuilder: java.lang.String substring(int)>
;cnt {"<java.lang.StringBuilder: int length()>": 1,"<java.lang.StringBuilder: java.lang.String substring(int)>": 1}
;stmts r0 := @this: com.alibaba.fastjson2.internal.asm.MethodCollector;	$r1 = r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: java.lang.StringBuilder result>;	$i0 = virtualinvoke $r1.<java.lang.StringBuilder: int length()>();	if $i0 == 0 goto $r3 = "";	$r2 = r0.<com.alibaba.fastjson2.internal.asm.MethodCollector: java.lang.StringBuilder result>;	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String substring(int)>(1);	goto [?= return $r3];	return $r3
;block_num 3