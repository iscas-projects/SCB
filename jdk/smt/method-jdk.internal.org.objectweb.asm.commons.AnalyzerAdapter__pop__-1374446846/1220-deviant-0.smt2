(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1246 0)
(declare-sort var2217 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun pop/348358588 (var1246 Int) void)
(declare-const null-var1246 var1246)
(declare-const null-String String)
(declare-const var3750 var1246) ; Statement: r1 := @this: jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter 
(assert (not (= var3750 null-var1246)))
(declare-const var3235 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3235 null-String)))
(assert (not (and true (and (> (str.len var3235) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), pop/348358588=([jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter, int], void)}
; {var1246=jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter, var3750=r1, var3235=r0, var2217=null_type, var2060=c0, var3475=$i5, var836=$i6, var1174=2}
; {jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter=var1246, r1=var3750, r0=var3235, null_type=var2217, c0=var2060, $i5=var3475, $i6=var836, 2=var1174}
;seq <java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: char charAt(int)>": 1}
;stmts r1 := @this: jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter;	r0 := @parameter0: java.lang.String;	c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$i5 = (int) c0;	if $i5 != 40 goto $i6 = (int) c0;	$i6 = (int) c0;	if $i6 == 74 goto specialinvoke r1.<jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter: void pop(int)>(2);	specialinvoke r1.<jdk.internal.org.objectweb.asm.commons.AnalyzerAdapter: void pop(int)>(2);	goto [?= return];	return
;block_num 4