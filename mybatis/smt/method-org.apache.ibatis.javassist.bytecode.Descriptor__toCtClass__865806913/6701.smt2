(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var712 0)
(declare-sort var373 0)
(declare-sort var2371 0)
(declare-sort var1990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var2371-init () (Array Int var2371))
(declare-fun var1990_toCtClass/2062678924 (var373 String Int (Array Int var2371) Int) Int)
(define-fun replace/1524665721 ((s String) (old_char Int) (new_char Int)) String (str.replace_all s (str.from_code old_char) (str.from_code new_char)))
(declare-fun get/-1068841021 (var373 String) var2371)
(declare-const null-String String)
(declare-const null-var373 var373)
(declare-const var1891 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1891 null-String)))
(declare-const var803 var373) ; Statement: r1 := @parameter1: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var803 null-var373)))
(define-const var3692 (Array Int var2371) arr-var2371-init) ; Statement: r0 = newarray (org.apache.ibatis.javassist.CtClass)[1] 
(define-const var3097 Int (var1990_toCtClass/2062678924 var803 var1891 0 var3692 0)) ; Statement: i0 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: int toCtClass(org.apache.ibatis.javassist.ClassPool,java.lang.String,int,org.apache.ibatis.javassist.CtClass[],int)>(r1, r2, 0, r0, 0) 
 ; Statement: if i0 < 0 goto $r3 = virtualinvoke r2.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(assert (< var3097 0)) ; Cond: i0 < 0 
(assert true)
(define-const var1282 String (replace/1524665721 var1891 47 46)) ; Statement: $r3 = virtualinvoke r2.<java.lang.String: java.lang.String replace(char,char)>(47, 46) 
(assert true)
(define-const var484 var2371 (get/-1068841021 var803 var1282)) ; Statement: $r4 = virtualinvoke r1.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass get(java.lang.String)>($r3) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var2371-init=([], org.apache.ibatis.javassist.CtClass[]), var1990_toCtClass/2062678924=([org.apache.ibatis.javassist.ClassPool, java.lang.String, int, org.apache.ibatis.javassist.CtClass[], int], int), replace/1524665721=([java.lang.String, char, char], java.lang.String), get/-1068841021=([org.apache.ibatis.javassist.ClassPool, java.lang.String], org.apache.ibatis.javassist.CtClass)}
; {var1891=r2, var712=null_type, var373=org.apache.ibatis.javassist.ClassPool, var803=r1, var2371=org.apache.ibatis.javassist.CtClass, var3692=r0, var1990=org.apache.ibatis.javassist.bytecode.Descriptor, var3097=i0, var1282=$r3, var484=$r4}
; {r2=var1891, null_type=var712, org.apache.ibatis.javassist.ClassPool=var373, r1=var803, org.apache.ibatis.javassist.CtClass=var2371, r0=var3692, org.apache.ibatis.javassist.bytecode.Descriptor=var1990, i0=var3097, $r3=var1282, $r4=var484}
;seq <java.lang.String: java.lang.String replace(char,char)>
;cnt {"<java.lang.String: java.lang.String replace(char,char)>": 1}
;stmts r2 := @parameter0: java.lang.String;	r1 := @parameter1: org.apache.ibatis.javassist.ClassPool;	r0 = newarray (org.apache.ibatis.javassist.CtClass)[1];	i0 = staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: int toCtClass(org.apache.ibatis.javassist.ClassPool,java.lang.String,int,org.apache.ibatis.javassist.CtClass[],int)>(r1, r2, 0, r0, 0);	if i0 < 0 goto $r3 = virtualinvoke r2.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	$r3 = virtualinvoke r2.<java.lang.String: java.lang.String replace(char,char)>(47, 46);	$r4 = virtualinvoke r1.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.CtClass get(java.lang.String)>($r3);	return $r4
;block_num 2