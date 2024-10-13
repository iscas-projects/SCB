(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2856 0)
(declare-sort var266 0)
(declare-sort var179 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var266_instance/-1028431714 () var266)
(declare-fun getLastRegExpResult/-565647473 (var266) var179)
(declare-fun getInput/611598652 (var179) String)
(declare-fun getIndex/-1629618270 (var179) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var2856 var2856)
(declare-const null-var179 var179)
(declare-const var3678 var2856) ; Statement: r3 := @parameter0: java.lang.Object 
(assert (not (= var3678 null-var2856)))
(define-const var1081 var266 var266_instance/-1028431714) ; Statement: $r0 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.objects.Global instance()>() 
(assert true)
(define-const var2843 var179 (getLastRegExpResult/-565647473 var1081)) ; Statement: r1 = virtualinvoke $r0.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.regexp.RegExpResult getLastRegExpResult()>() 
 ; Statement: if r1 != null goto $r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.RegExpResult: java.lang.String getInput()>() 
(assert (not (= var2843 null-var179))) ; Cond: r1 != null 
(assert true)
(define-const var2865 String (getInput/611598652 var2843)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.RegExpResult: java.lang.String getInput()>() 
(assert true)
(define-const var2617 Int (getIndex/-1629618270 var2843)) ; Statement: $i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.RegExpResult: int getIndex()>() 
(assert (and true (and (>= 0 0) (>= (str.len var2865) var2617) (>= var2617 0))))
(define-const var3889 String (substring/-1240304868 var2865 0 var2617)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i0) 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var266_instance/-1028431714=([], jdk.nashorn.internal.objects.Global), getLastRegExpResult/-565647473=([jdk.nashorn.internal.objects.Global], jdk.nashorn.internal.runtime.regexp.RegExpResult), getInput/611598652=([jdk.nashorn.internal.runtime.regexp.RegExpResult], java.lang.String), getIndex/-1629618270=([jdk.nashorn.internal.runtime.regexp.RegExpResult], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var2856=java.lang.Object, var3678=r3, var266=jdk.nashorn.internal.objects.Global, var1081=$r0, var179=jdk.nashorn.internal.runtime.regexp.RegExpResult, var2843=r1, var2865=$r2, var2617=$i0, var3889=$r4}
; {java.lang.Object=var2856, r3=var3678, jdk.nashorn.internal.objects.Global=var266, $r0=var1081, jdk.nashorn.internal.runtime.regexp.RegExpResult=var179, r1=var2843, $r2=var2865, $i0=var2617, $r4=var3889}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r3 := @parameter0: java.lang.Object;	$r0 = staticinvoke <jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.objects.Global instance()>();	r1 = virtualinvoke $r0.<jdk.nashorn.internal.objects.Global: jdk.nashorn.internal.runtime.regexp.RegExpResult getLastRegExpResult()>();	if r1 != null goto $r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.RegExpResult: java.lang.String getInput()>();	$r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.RegExpResult: java.lang.String getInput()>();	$i0 = virtualinvoke r1.<jdk.nashorn.internal.runtime.regexp.RegExpResult: int getIndex()>();	$r4 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(0, $i0);	return $r4
;block_num 3