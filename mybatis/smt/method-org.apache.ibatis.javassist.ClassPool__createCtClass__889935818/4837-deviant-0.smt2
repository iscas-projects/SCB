(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2964 0)
(declare-sort var1852 0)
(declare-sort var158 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun find/1743038193 (var2964 String) var158)
(declare-const null-var2964 var2964)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var158 var158)
(declare-const var1805 var2964) ; Statement: r0 := @this: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var1805 null-var2964)))
(declare-const var2033 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var2033 null-String)))
(declare-const var418 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var418 null-Bool)))
(assert (not (and true (and (> (str.len var2033) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), endsWith/985337093=([java.lang.String, java.lang.String], boolean), find/1743038193=([org.apache.ibatis.javassist.ClassPool, java.lang.String], java.net.URL)}
; {var2964=org.apache.ibatis.javassist.ClassPool, var1805=r0, var2033=r7, var1852=null_type, var418=z1, var854=$c0, var3235=$i2, var1452=$z0, var158=java.net.URL, var1994=$r1}
; {org.apache.ibatis.javassist.ClassPool=var2964, r0=var1805, r7=var2033, null_type=var1852, z1=var418, $c0=var854, $i2=var3235, $z0=var1452, java.net.URL=var158, $r1=var1994}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.ClassPool;	r7 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	$c0 = virtualinvoke r7.<java.lang.String: char charAt(int)>(0);	$i2 = (int) $c0;	if $i2 != 91 goto $z0 = virtualinvoke r7.<java.lang.String: boolean endsWith(java.lang.String)>("[]");	$z0 = virtualinvoke r7.<java.lang.String: boolean endsWith(java.lang.String)>("[]");	if $z0 == 0 goto $r1 = virtualinvoke r0.<org.apache.ibatis.javassist.ClassPool: java.net.URL find(java.lang.String)>(r7);	$r1 = virtualinvoke r0.<org.apache.ibatis.javassist.ClassPool: java.net.URL find(java.lang.String)>(r7);	if $r1 != null goto $r9 = new org.apache.ibatis.javassist.CtClassType;	return null
;block_num 4