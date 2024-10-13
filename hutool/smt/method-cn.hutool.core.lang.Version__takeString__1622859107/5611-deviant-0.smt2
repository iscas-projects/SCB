(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2106 0)
(declare-sort var3914 0)
(declare-sort var982 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-fun var3914_add/328494887 (var3914 var982) Bool)
(declare-fun cast-from-String-to-var982 (String) var982)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3914 var3914)
(declare-const var121 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var121 null-String)))
(declare-const var1992 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var1992 null-Int)))
(declare-const var400 var3914) ; Statement: r1 := @parameter2: java.util.List 
(assert (not (= var400 null-var3914)))
(define-const var2403 Int var1992) ; Statement: i0 = i3 
(assert true)
(define-const var1700 Int (length/-134980193 var121)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert true) ; Non Conditional
(define-const var1992!1 Int (+ var1992 1)) ; Statement: i3 = i3 + 1 
 ; Statement: if i3 >= i1 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i3) 
(assert (>= var1992!1 var1700)) ; Cond: i3 >= i1 
(assert (not (and true (and (>= var2403 0) (>= (str.len var121) var1992!1) (>= var1992!1 var2403)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), var3914_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var982=([java.lang.String], java.lang.Object)}
; {var121=r0, var2106=null_type, var1992=i3, var3914=java.util.List, var400=r1, var2403=i0, var1700=i1, var2853=$r2, var982=java.lang.Object}
; {r0=var121, null_type=var2106, i3=var1992, java.util.List=var3914, r1=var400, i0=var2403, i1=var1700, $r2=var2853, java.lang.Object=var982}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i3 := @parameter1: int;	r1 := @parameter2: java.util.List;	i0 = i3;	i1 = virtualinvoke r0.<java.lang.String: int length()>();	i3 = i3 + 1;	if i3 >= i1 goto $r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i3);	$r2 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(i0, i3);	interfaceinvoke r1.<java.util.List: boolean add(java.lang.Object)>($r2);	return i3
;block_num 3