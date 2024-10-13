(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3310 0)
(declare-sort var2769 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2769_checkObjectToString/539912867 (var3310) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3310 var3310)
(declare-const var172 var3310) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var172 null-var3310)))
(define-const var1131 String (var2769_checkObjectToString/539912867 var172)) ; Statement: r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0) 
(assert true)
(define-const var2694 Int (length/-134980193 var1131)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1334 Int (- var2694 1)) ; Statement: i3 = $i0 - 1 
(assert true) ; Non Conditional
 ; Statement: if i3 < 0 goto $i1 = i3 + 1 
(assert (< var1334 0)) ; Cond: i3 < 0 
(define-const var2067 Int (+ var1334 1)) ; Statement: $i1 = i3 + 1 
(assert (and true (and (>= 0 0) (>= (str.len var1131) var2067) (>= var2067 0))))
(define-const var41 String (substring/-1240304868 var1131 0 var2067)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2769_checkObjectToString/539912867=([java.lang.Object], java.lang.String), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3310=java.lang.Object, var172=r0, var2769=jdk.nashorn.internal.objects.NativeString, var1131=r1, var2694=$i0, var1334=i3, var2067=$i1, var41=$r2}
; {java.lang.Object=var3310, r0=var172, jdk.nashorn.internal.objects.NativeString=var2769, r1=var1131, $i0=var2694, i3=var1334, $i1=var2067, $r2=var41}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @parameter0: java.lang.Object;	r1 = staticinvoke <jdk.nashorn.internal.objects.NativeString: java.lang.String checkObjectToString(java.lang.Object)>(r0);	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	i3 = $i0 - 1;	if i3 < 0 goto $i1 = i3 + 1;	$i1 = i3 + 1;	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(0, $i1);	return $r2
;block_num 3