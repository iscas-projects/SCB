(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2692 0)
(declare-sort var733 0)
(declare-sort var861 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var733-init () var733)
(declare-fun <init>/-1913910780 (var733) void)
(define-fun indexOf/1426977840 ((s String) (c Int) (fromIndex Int)) Int (str.indexof s (str.from_code c) fromIndex))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun addElement/-1717065458 (var733 var861) void)
(declare-fun cast-from-String-to-var861 (String) var861)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var982 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var982 null-String)))
(declare-const var1482 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1482 null-Int)))
(define-const var1431 var733 var733-init) ; Statement: $r4 = new java.util.Vector 
(assert true)
;(assert (<init>/-1913910780 var1431)) ; Statement: specialinvoke $r4.<java.util.Vector: void <init>()>() 

(declare-const var1431!1 var733)
(define-const var2968 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var873 Int (indexOf/1426977840 var982 var1482 var2968)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>(i0, i2) 
(define-const var3654 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i4 = (int) -1 
 ; Statement: if $i1 == $i4 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2) 
(assert (= var873 var3654)) ; Cond: $i1 == $i4 
(assert (not (and true (and (>= var2968 0) (>= (str.len var982) var2968)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var733-init=([], java.util.Vector), <init>/-1913910780=([java.util.Vector], void), indexOf/1426977840=([java.lang.String, int, int], int), cast-from-Int-to-Int=([int], int), substring/850833817=([java.lang.String, int], java.lang.String), addElement/-1717065458=([java.util.Vector, java.lang.Object], void), cast-from-String-to-var861=([java.lang.String], java.lang.Object)}
; {var982=r1, var2692=null_type, var1482=i0, var733=java.util.Vector, var1431=$r4, var2968=i2, var873=$i1, var3654=$i4, var1076=$r2, var861=java.lang.Object}
; {r1=var982, null_type=var2692, i0=var1482, java.util.Vector=var733, $r4=var1431, i2=var2968, $i1=var873, $i4=var3654, $r2=var1076, java.lang.Object=var861}
;seq <java.lang.String: int indexOf(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int indexOf(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r4 = new java.util.Vector;	specialinvoke $r4.<java.util.Vector: void <init>()>();	i2 = 0;	$i1 = virtualinvoke r1.<java.lang.String: int indexOf(int,int)>(i0, i2);	$i4 = (int) -1;	if $i1 == $i4 goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2);	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i2);	virtualinvoke $r4.<java.util.Vector: void addElement(java.lang.Object)>($r2);	return $r4
;block_num 3