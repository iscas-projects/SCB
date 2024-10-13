(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1447 0)
(declare-sort var2751 0)
(declare-sort var3051 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun getTypeThroughNamespace/1107022354 (var1447 String) var3051)
(declare-const null-var1447 var1447)
(declare-const null-String String)
(declare-const null-var3051 var3051)
(declare-const var693 var1447) ; Statement: r1 := @this: com.google.javascript.jscomp.TypedScope 
(assert (not (= var693 null-var1447)))
(declare-const var3412 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3412 null-String)))
(assert true)
(define-const var2516 Int (lastIndexOf/-1292097097 var3412 46)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 < 0 goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.TypedScope: com.google.javascript.jscomp.AbstractVar getSlot(java.lang.String)>(r0) 
(assert (not (< var2516 0))) ; Negate: Cond: i0 < 0  
(assert (and true (and (>= 0 0) (>= (str.len var3412) var2516) (>= var2516 0))))
(define-const var2450 String (substring/-1240304868 var3412 0 var2516)) ; Statement: r8 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0) 
(define-const var133 Int (+ var2516 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= var133 0) (>= (str.len var3412) var133))))
(define-const var3623 String (substring/850833817 var3412 var133)) ; Statement: r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1) 
(assert true)
(define-const var2575 var3051 (getTypeThroughNamespace/1107022354 var693 var2450)) ; Statement: r4 = virtualinvoke r1.<com.google.javascript.jscomp.TypedScope: com.google.javascript.rhino.jstype.JSType getTypeThroughNamespace(java.lang.String)>(r8) 
 ; Statement: if r4 == null goto return null 
(assert (= var2575 null-var3051)) ; Cond: r4 == null 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {lastIndexOf/-1292097097=([java.lang.String, int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), getTypeThroughNamespace/1107022354=([com.google.javascript.jscomp.TypedScope, java.lang.String], com.google.javascript.rhino.jstype.JSType)}
; {var1447=com.google.javascript.jscomp.TypedScope, var693=r1, var3412=r0, var2751=null_type, var2516=i0, var2450=r8, var133=$i1, var3623=r3, var3051=com.google.javascript.rhino.jstype.JSType, var2575=r4}
; {com.google.javascript.jscomp.TypedScope=var1447, r1=var693, r0=var3412, null_type=var2751, i0=var2516, r8=var2450, $i1=var133, r3=var3623, com.google.javascript.rhino.jstype.JSType=var3051, r4=var2575}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.TypedScope;	r0 := @parameter0: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>(46);	if i0 < 0 goto $r2 = virtualinvoke r1.<com.google.javascript.jscomp.TypedScope: com.google.javascript.jscomp.AbstractVar getSlot(java.lang.String)>(r0);	r8 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$i1 = i0 + 1;	r3 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>($i1);	r4 = virtualinvoke r1.<com.google.javascript.jscomp.TypedScope: com.google.javascript.rhino.jstype.JSType getTypeThroughNamespace(java.lang.String)>(r8);	if r4 == null goto return null;	return null
;block_num 3