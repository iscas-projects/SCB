(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1407 0)
(declare-sort var3398 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var3398-init () var3398)
(declare-fun <init>/195659191 (var3398 Int Int Int) void)
(declare-const null-String String)
(declare-const var2315 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2315 null-String)))
(assert true)
(define-const var3108 Int (indexOf/-1037706067 var2315 46)) ; Statement: i8 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46) 
(define-const var3343 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i14 = (int) -1 
 ; Statement: if i8 == $i14 goto $r10 = new com.mysql.cj.ServerVersion 
(assert (= var3108 var3343)) ; Cond: i8 == $i14 
(define-const var3011 var3398 var3398-init) ; Statement: $r10 = new com.mysql.cj.ServerVersion 
(assert true)
;(assert (<init>/195659191 var3011 0 0 0)) ; Statement: specialinvoke $r10.<com.mysql.cj.ServerVersion: void <init>(int,int,int)>(0, 0, 0) 

(declare-const var3011!1 var3398)
(declare-const var3139 Int)
(declare-const var3139!1 Int)
(declare-const var3139!2 Int)
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), var3398-init=([], com.mysql.cj.ServerVersion), <init>/195659191=([com.mysql.cj.ServerVersion, int, int, int], void)}
; {var2315=r0, var1407=null_type, var3108=i8, var3343=$i14, var3398=com.mysql.cj.ServerVersion, var3011=$r10, var3139=0}
; {r0=var2315, null_type=var1407, i8=var3108, $i14=var3343, com.mysql.cj.ServerVersion=var3398, $r10=var3011, 0=var3139}
;seq <java.lang.String: int indexOf(int)>
;cnt {"<java.lang.String: int indexOf(int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i8 = virtualinvoke r0.<java.lang.String: int indexOf(int)>(46);	$i14 = (int) -1;	if i8 == $i14 goto $r10 = new com.mysql.cj.ServerVersion;	$r10 = new com.mysql.cj.ServerVersion;	specialinvoke $r10.<com.mysql.cj.ServerVersion: void <init>(int,int,int)>(0, 0, 0);	return $r10
;block_num 2