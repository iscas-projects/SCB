(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3554 0)
(declare-sort var211 0)
(declare-sort var1779 0)
(declare-sort var3773 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun find/1743038193 (var3554 String) var1779)
(declare-fun var3773-init () var3773)
(declare-fun <init>/1650614087 (var3773 String var3554) void)
(declare-const null-var3554 var3554)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var1779 var1779)
(declare-const var2360 var3554) ; Statement: r0 := @this: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var2360 null-var3554)))
(declare-const var2301 String) ; Statement: r7 := @parameter0: java.lang.String 
(assert (not (= var2301 null-String)))
(declare-const var3859 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var3859 null-Bool)))
(assert (not (and true (and (> (str.len var2301) 0) (<= 0 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int), endsWith/985337093=([java.lang.String, java.lang.String], boolean), find/1743038193=([org.apache.ibatis.javassist.ClassPool, java.lang.String], java.net.URL), var3773-init=([], org.apache.ibatis.javassist.CtClassType), <init>/1650614087=([org.apache.ibatis.javassist.CtClassType, java.lang.String, org.apache.ibatis.javassist.ClassPool], void)}
; {var3554=org.apache.ibatis.javassist.ClassPool, var2360=r0, var2301=r7, var211=null_type, var3859=z1, var1064=$c0, var1946=$i2, var1272=$z0, var1779=java.net.URL, var3772=$r1, var3773=org.apache.ibatis.javassist.CtClassType, var1212=$r9}
; {org.apache.ibatis.javassist.ClassPool=var3554, r0=var2360, r7=var2301, null_type=var211, z1=var3859, $c0=var1064, $i2=var1946, $z0=var1272, java.net.URL=var1779, $r1=var3772, org.apache.ibatis.javassist.CtClassType=var3773, $r9=var1212}
;seq <java.lang.String: char charAt(int)>;	<java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.ClassPool;	r7 := @parameter0: java.lang.String;	z1 := @parameter1: boolean;	$c0 = virtualinvoke r7.<java.lang.String: char charAt(int)>(0);	$i2 = (int) $c0;	if $i2 != 91 goto $z0 = virtualinvoke r7.<java.lang.String: boolean endsWith(java.lang.String)>("[]");	$z0 = virtualinvoke r7.<java.lang.String: boolean endsWith(java.lang.String)>("[]");	if $z0 == 0 goto $r1 = virtualinvoke r0.<org.apache.ibatis.javassist.ClassPool: java.net.URL find(java.lang.String)>(r7);	$r1 = virtualinvoke r0.<org.apache.ibatis.javassist.ClassPool: java.net.URL find(java.lang.String)>(r7);	if $r1 != null goto $r9 = new org.apache.ibatis.javassist.CtClassType;	$r9 = new org.apache.ibatis.javassist.CtClassType;	specialinvoke $r9.<org.apache.ibatis.javassist.CtClassType: void <init>(java.lang.String,org.apache.ibatis.javassist.ClassPool)>(r7, r0);	return $r9
;block_num 4