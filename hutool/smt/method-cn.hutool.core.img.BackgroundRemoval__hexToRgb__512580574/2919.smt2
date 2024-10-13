(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3767 0)
(declare-sort var2701 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2701-init () var2701)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun Int_parseInt/-1412036412 (String Int) Int)
(declare-fun <init>/845229105 (var2701 Int) void)
(declare-const null-String String)
(declare-const var2792 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2792 null-String)))
(define-const var2103 var2701 var2701-init) ; Statement: $r0 = new java.awt.Color 
(assert (and true (and (>= 1 0) (>= (str.len var2792) 1))))
(define-const var584 String (substring/850833817 var2792 1)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(1) 
(define-const var2599 Int (Int_parseInt/-1412036412 var584 16)) ; Statement: $i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String,int)>($r2, 16) 
(assert true)
;(assert (<init>/845229105 var2103 var2599)) ; Statement: specialinvoke $r0.<java.awt.Color: void <init>(int)>($i0) 

(declare-const var2103!1 var2701)
(declare-const var2599!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2701-init=([], java.awt.Color), substring/850833817=([java.lang.String, int], java.lang.String), Int_parseInt/-1412036412=([java.lang.String, int], int), <init>/845229105=([java.awt.Color, int], void)}
; {var2792=r1, var3767=null_type, var2701=java.awt.Color, var2103=$r0, var584=$r2, var2599=$i0}
; {r1=var2792, null_type=var3767, java.awt.Color=var2701, $r0=var2103, $r2=var584, $i0=var2599}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	$r0 = new java.awt.Color;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(1);	$i0 = staticinvoke <java.lang.Integer: int parseInt(java.lang.String,int)>($r2, 16);	specialinvoke $r0.<java.awt.Color: void <init>(int)>($i0);	return $r0
;block_num 1