(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2109 0)
(declare-sort var2092 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2092_isQuoted/462235606 (String) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const var3678 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3678 null-String)))
(define-const var2014 Bool (var2092_isQuoted/462235606 var3678)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isQuoted(java.lang.String)>(r0) 
 ; Statement: if $z0 == 0 goto $r1 = r0 
(assert (not (= (ite var2014 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1957 Int (length/-134980193 var3678)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var128 Int (- var1957 1)) ; Statement: $i1 = $i0 - 1 
(assert (not (and true (and (>= 1 0) (>= (str.len var3678) var128) (>= var128 1)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var2092_isQuoted/462235606=([java.lang.String], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3678=r0, var2109=null_type, var2092=org.hibernate.internal.util.StringHelper, var2014=$z0, var1957=$i0, var128=$i1, var903=$r1}
; {r0=var3678, null_type=var2109, org.hibernate.internal.util.StringHelper=var2092, $z0=var2014, $i0=var1957, $i1=var128, $r1=var903}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isQuoted(java.lang.String)>(r0);	if $z0 == 0 goto $r1 = r0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, $i1);	goto [?= return $r1];	return $r1
;block_num 3