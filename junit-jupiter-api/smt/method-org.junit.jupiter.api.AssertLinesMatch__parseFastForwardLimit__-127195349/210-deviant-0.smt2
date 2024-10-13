(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3295 0)
(declare-sort var3371 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-String String)
(declare-const null-var3371 var3371)
(declare-const var1756 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var1756 null-String)))
(assert true)
(define-const var10 String (trim/-847153721 var1756)) ; Statement: r5 = virtualinvoke r4.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var862 Int (length/-134980193 var10)) ; Statement: $i0 = virtualinvoke r5.<java.lang.String: int length()>() 
(define-const var2191 Int (- var862 2)) ; Statement: $i1 = $i0 - 2 
(assert (not (and true (and (>= 2 0) (>= (str.len var10) var2191) (>= var2191 2)))))
(check-sat)
(get-model)
(get-unsat-core)
; {trim/-847153721=([java.lang.String], java.lang.String), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1756=r4, var3295=null_type, var10=r5, var862=$i0, var2191=$i1, var1353=$r0, var391=r1, var3371=java.lang.NumberFormatException, var533=$r3}
; {r4=var1756, null_type=var3295, r5=var10, $i0=var862, $i1=var2191, $r0=var1353, r1=var391, java.lang.NumberFormatException=var3371, $r3=var533}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 2,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r4 := @parameter0: java.lang.String;	r5 = virtualinvoke r4.<java.lang.String: java.lang.String trim()>();	$i0 = virtualinvoke r5.<java.lang.String: int length()>();	$i1 = $i0 - 2;	$r0 = virtualinvoke r5.<java.lang.String: java.lang.String substring(int,int)>(2, $i1);	r1 = virtualinvoke $r0.<java.lang.String: java.lang.String trim()>();	$r3 := @caughtexception;	return 2147483647
;block_num 2