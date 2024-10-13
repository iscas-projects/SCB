(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2939 0)
(declare-sort var3409 0)
(declare-sort var1808 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3409_instance/-1028431714 () var3409)
(declare-fun getLastRegExpResult/-565647473 (var3409) var1808)
(declare-fun getInput/611598652 (var1808) String)
(declare-fun getIndex/-1629618270 (var1808) Int)
(declare-fun length/-1401205800 (var1808) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-const null-var2939 var2939)
(declare-const null-var1808 var1808)
(declare-const var3078 var2939) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var3078 null-var2939)))
(define-const var1422 var3409 var3409_instance/-1028431714) ; Statement: $r0 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.objects.Global instance()>() 
(assert true)
(define-const var1428 var1808 (getLastRegExpResult/-565647473 var1422)) ; Statement: r1 = virtualinvoke $r0.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.regexp.RegExpResult getLastRegExpResult()>() 
 ; Statement: if r1 != null goto $r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.RegExpResult: java.lang.String getInput()>() 
(assert (not (= var1428 null-var1808))) ; Cond: r1 != null 
(assert true)
(define-const var2804 String (getInput/611598652 var1428)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.RegExpResult: java.lang.String getInput()>() 
(assert true)
(define-const var2764 Int (getIndex/-1629618270 var1428)) ; Statement: $i1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.RegExpResult: int getIndex()>() 
(assert true)
(define-const var691 Int (length/-1401205800 var1428)) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.RegExpResult: int length()>() 
(define-const var3668 Int (+ var2764 var691)) ; Statement: $i2 = $i1 + $i0 
(assert (not (and true (and (>= var3668 0) (>= (str.len var2804) var3668)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var3409_instance/-1028431714=([], jdk.nashorn.internal.objects.Global), getLastRegExpResult/-565647473=([jdk.nashorn.internal.objects.Global], jdk.nashorn.internal.runtime.regexp.RegExpResult), getInput/611598652=([jdk.nashorn.internal.runtime.regexp.RegExpResult], java.lang.String), getIndex/-1629618270=([jdk.nashorn.internal.runtime.regexp.RegExpResult], int), length/-1401205800=([jdk.nashorn.internal.runtime.regexp.RegExpResult], int), substring/850833817=([java.lang.String, int], java.lang.String)}
; {var2939=java.lang.Object, var3078=r3, var3409=jdk.nashorn.internal.objects.Global, var1422=$r0, var1808=jdk.nashorn.internal.runtime.regexp.RegExpResult, var1428=r1, var2804=$r2, var2764=$i1, var691=$i0, var3668=$i2, var2225=$r4}
; {java.lang.Object=var2939, r3=var3078, jdk.nashorn.internal.objects.Global=var3409, $r0=var1422, jdk.nashorn.internal.runtime.regexp.RegExpResult=var1808, r1=var1428, $r2=var2804, $i1=var2764, $i0=var691, $i2=var3668, $r4=var2225}
;seq <java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r3 := @parameter0: java.lang.Object;	$r0 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.objects.Global instance()>();	r1 = virtualinvoke $r0.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.regexp.RegExpResult getLastRegExpResult()>();	if r1 != null goto $r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.RegExpResult: java.lang.String getInput()>();	$r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.RegExpResult: java.lang.String getInput()>();	$i1 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.RegExpResult: int getIndex()>();	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.RegExpResult: int length()>();	$i2 = $i1 + $i0;	$r4 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int)>($i2);	return $r4
;block_num 3