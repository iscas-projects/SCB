(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1898 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun getBytes/1068683673 (String) (Array Int Int))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var3413 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3413 null-String)))
(declare-const var2855 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2855 null-Int)))
(declare-const var675 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var675 null-Int)))
(define-const var1059 Int (+ var2855 var675)) ; Statement: $i2 = i0 + i1 
(assert (not (and true (and (>= var2855 0) (>= (str.len var3413) var1059) (>= var1059 var2855)))))
(check-sat)
(get-model)
(get-unsat-core)
; {substring/-1240304868=([java.lang.String, int, int], java.lang.String), getBytes/1068683673=([java.lang.String], byte[])}
; {var3413=r0, var1898=null_type, var2855=i0, var675=i1, var1059=$i2, var3925=$r1, var3388=$r2}
; {r0=var3413, null_type=var1898, i0=var2855, i1=var675, $i2=var1059, $r1=var3925, $r2=var3388}
;seq <java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: byte[] getBytes()>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: byte[] getBytes()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	i1 := @parameter2: int;	$i2 = i0 + i1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i0, $i2);	$r2 = virtualinvoke $r1.<java.lang.String: byte[] getBytes()>();	return $r2
;block_num 1