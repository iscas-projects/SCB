(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var245 0)
(declare-sort var2645 0)
(declare-sort var1785 0)
(declare-sort var1141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun appendClassPath/-1864148416 (var245 String) var1141)
(declare-const null-var245 var245)
(declare-const null-String String)
(declare-const var1785-pathSeparatorChar Int)
(declare-const var930 var245) ; Statement: r1 := @this: org.apache.ibatis.javassist.ClassPool 
(assert (not (= var930 null-var245)))
(declare-const var810 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var810 null-String)))
(define-const var3399 Int var1785-pathSeparatorChar) ; Statement: c0 = <java.io.File: char pathSeparatorChar> 
(define-const var3383 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var580 Int (cast-from-Int-to-Int var3399)) ; Statement: $i3 = (int) c0 
(assert true)
(define-const var1499 Int (indexOf/1426977840 var810 var580 var3383)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>($i3, i2) 
 ; Statement: if $i1 >= 0 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i2, $i1) 
(assert (not (>= var1499 0))) ; Negate: Cond: $i1 >= 0  
(assert (and true (and (>= var3383 0) (>= (str.len var810) var3383))))
(define-const var835 String (substring/850833817 var810 var3383)) ; Statement: $r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i2) 
(assert true)
;(assert (appendClassPath/-1864148416 var930 var835)) ; Statement: virtualinvoke r1.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.ClassPath appendClassPath(java.lang.String)>($r3) 

(declare-const var930!1 var245)
(declare-const var835!1 String)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), indexOf/1426977840=([java.lang.String, int, int], int), substring/850833817=([java.lang.String, int], java.lang.String), appendClassPath/-1864148416=([org.apache.ibatis.javassist.ClassPool, java.lang.String], org.apache.ibatis.javassist.ClassPath)}
; {var245=org.apache.ibatis.javassist.ClassPool, var930=r1, var810=r0, var2645=null_type, var1785=java.io.File, var3399=c0, var3383=i2, var580=$i3, var1499=$i1, var835=$r3, var1141=org.apache.ibatis.javassist.ClassPath}
; {org.apache.ibatis.javassist.ClassPool=var245, r1=var930, r0=var810, null_type=var2645, java.io.File=var1785, c0=var3399, i2=var3383, $i3=var580, $i1=var1499, $r3=var835, org.apache.ibatis.javassist.ClassPath=var1141}
;seq <java.lang.String: int indexOf(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.ClassPool;	r0 := @parameter0: java.lang.String;	c0 = <java.io.File: char pathSeparatorChar>;	i2 = 0;	$i3 = (int) c0;	$i1 = virtualinvoke r0.<java.lang.String: int indexOf(int,int)>($i3, i2);	if $i1 >= 0 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i2, $i1);	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i2);	virtualinvoke r1.<org.apache.ibatis.javassist.ClassPool: org.apache.ibatis.javassist.ClassPath appendClassPath(java.lang.String)>($r3);	goto [?= return];	return
;block_num 4