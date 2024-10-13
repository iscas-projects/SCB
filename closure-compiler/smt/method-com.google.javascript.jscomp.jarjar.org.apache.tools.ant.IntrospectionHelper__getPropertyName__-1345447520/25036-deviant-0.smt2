(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3021 0)
(declare-sort var1593 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun toLowerCase/1946809429 (String var1593) String)
(declare-const null-String String)
(declare-const var1593-ENGLISH var1593)
(declare-const var3316 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3316 null-String)))
(declare-const var3218 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var3218 null-String)))
(assert true)
(define-const var1202 Int (length/-134980193 var3218)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert (not (and true (and (>= var1202 0) (>= (str.len var3316) var1202)))))
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), toLowerCase/1946809429=([java.lang.String, java.util.Locale], java.lang.String)}
; {var3316=r0, var3021=null_type, var3218=r1, var1202=$i0, var2913=$r3, var1593=java.util.Locale, var2663=$r2, var1996=$r4}
; {r0=var3316, null_type=var3021, r1=var3218, $i0=var1202, $r3=var2913, java.util.Locale=var1593, $r2=var2663, $r4=var1996}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i0);	$r2 = <java.util.Locale: java.util.Locale ENGLISH>;	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String toLowerCase(java.util.Locale)>($r2);	return $r4
;block_num 1