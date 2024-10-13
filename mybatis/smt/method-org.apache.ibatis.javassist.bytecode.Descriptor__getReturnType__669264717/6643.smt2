(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1882 0)
(declare-sort var644 0)
(declare-sort var1052 0)
(declare-sort var3905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun arr-var1052-init () (Array Int var1052))
(declare-fun var3905_toCtClass/2062678924 (var644 String Int (Array Int var1052) Int) Int)
(declare-const null-String String)
(declare-const null-var644 var644)
(declare-const var434 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var434 null-String)))
(declare-const var84 var644) ; Statement: r2 := @parameter1: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var84 null-var644)))
(assert true)
(define-const var2162 Int (indexOf/-1037706067 var434 41)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41) 
 ; Statement: if i0 >= 0 goto r1 = newarray (org.apache.ibatis.javassist.CtClass)[1] 
(assert (>= var2162 0)) ; Cond: i0 >= 0 
(define-const var422 (Array Int var1052) arr-var1052-init) ; Statement: r1 = newarray (org.apache.ibatis.javassist.CtClass)[1] 
(define-const var2212 Int (+ var2162 1)) ; Statement: $i1 = i0 + 1 
;(assert (var3905_toCtClass/2062678924 var84 var434 var2212 var422 0)) ; Statement: staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: int toCtClass(org.apache.ibatis.javassist.ClassPool,java.lang.String,int,org.apache.ibatis.javassist.CtClass[],int)>(r2, r0, $i1, r1, 0) 

(declare-const var84!1 var644)
(declare-const var434!1 String)
(declare-const var2212!1 Int)
(declare-const var422!1 (Array Int var1052))
(declare-const var3875 Int)
(define-const var104 var1052 (select var422!1 0)) ; Statement: $r3 = r1[0] 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), arr-var1052-init=([], org.apache.ibatis.javassist.CtClass[]), var3905_toCtClass/2062678924=([org.apache.ibatis.javassist.ClassPool, java.lang.String, int, org.apache.ibatis.javassist.CtClass[], int], int)}
; {var434=r0, var1882=null_type, var644=org.apache.ibatis.javassist.ClassPool, var84=r2, var2162=i0, var1052=org.apache.ibatis.javassist.CtClass, var422=r1, var2212=$i1, var3905=org.apache.ibatis.javassist.bytecode.Descriptor, var3875=0, var104=$r3}
; {r0=var434, null_type=var1882, org.apache.ibatis.javassist.ClassPool=var644, r2=var84, i0=var2162, org.apache.ibatis.javassist.CtClass=var1052, r1=var422, $i1=var2212, org.apache.ibatis.javassist.bytecode.Descriptor=var3905, 0=var3875, $r3=var104}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: org.apache.ibatis.javassist.ClassPool;	i0 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(41);	if i0 >= 0 goto r1 = newarray (org.apache.ibatis.javassist.CtClass)[1];	r1 = newarray (org.apache.ibatis.javassist.CtClass)[1];	$i1 = i0 + 1;	staticinvoke <org.apache.ibatis.javassist.bytecode.Descriptor: int toCtClass(org.apache.ibatis.javassist.ClassPool,java.lang.String,int,org.apache.ibatis.javassist.CtClass[],int)>(r2, r0, $i1, r1, 0);	$r3 = r1[0];	return $r3
;block_num 2