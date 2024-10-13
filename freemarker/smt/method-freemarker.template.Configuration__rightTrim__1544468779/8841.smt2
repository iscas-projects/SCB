(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3375 0)
(declare-sort var2391 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3375 var3375)
(declare-const null-String String)
(declare-const var3764 var3375) ; Statement: r2 := @this: freemarker.template.Configuration 
(assert (not (= var3764 null-var3375)))
(declare-const var466 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var466 null-String)))
(assert true)
(define-const var3911 Int (length/-134980193 var466)) ; Statement: i2 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
 ; Statement: if i2 <= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i2) 
(assert (<= var3911 0)) ; Cond: i2 <= 0 
(assert (and true (and (>= 0 0) (>= (str.len var466) var3911) (>= var3911 0))))
(define-const var2013 String (substring/-1240304868 var466 0 var3911)) ; Statement: $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i2) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3375=freemarker.template.Configuration, var3764=r2, var466=r0, var2391=null_type, var3911=i2, var2013=$r1}
; {freemarker.template.Configuration=var3375, r2=var3764, r0=var466, null_type=var2391, i2=var3911, $r1=var2013}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r2 := @this: freemarker.template.Configuration;	r0 := @parameter0: java.lang.String;	i2 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 <= 0 goto $r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i2);	$r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i2);	return $r1
;block_num 3