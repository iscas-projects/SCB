(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2076 0)
(declare-sort var946 0)
(declare-sort var1219 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1219_isQuoted/-1845873022 (String var946) Bool)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const null-var946 var946)
(declare-const var858 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var858 null-String)))
(declare-const var3446 var946) ; Statement: r1 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var3446 null-var946)))
(define-const var1081 Bool (var1219_isQuoted/-1845873022 var858 var3446)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isQuoted(java.lang.String,org.hibernate.dialect.Dialect)>(r0, r1) 
 ; Statement: if $z0 == 0 goto $r2 = r0 
(assert (not (= (ite var1081 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1468 Int (length/-134980193 var858)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1125 Int (- var1468 1)) ; Statement: $i1 = $i0 - 1 
(assert (and true (and (>= 1 0) (>= (str.len var858) var1125) (>= var1125 1))))
(define-const var3647 String (substring/-1240304868 var858 1 var1125)) ; Statement: $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, $i1) 
 ; Statement: goto [?= return $r2] 
(assert true) ; Non Conditional
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1219_isQuoted/-1845873022=([java.lang.String, org.hibernate.dialect.Dialect], boolean), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var858=r0, var2076=null_type, var946=org.hibernate.dialect.Dialect, var3446=r1, var1219=org.hibernate.internal.util.StringHelper, var1081=$z0, var1468=$i0, var1125=$i1, var3647=$r2}
; {r0=var858, null_type=var2076, org.hibernate.dialect.Dialect=var946, r1=var3446, org.hibernate.internal.util.StringHelper=var1219, $z0=var1081, $i0=var1468, $i1=var1125, $r2=var3647}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: org.hibernate.dialect.Dialect;	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isQuoted(java.lang.String,org.hibernate.dialect.Dialect)>(r0, r1);	if $z0 == 0 goto $r2 = r0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i1 = $i0 - 1;	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(1, $i1);	goto [?= return $r2];	return $r2
;block_num 3