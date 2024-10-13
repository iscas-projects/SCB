(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var279 0)
(declare-sort var3423 0)
(declare-sort var3298 0)
(declare-sort var3823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(declare-fun cast-from-var3298-to-var3423 (var3298) var3423)
(declare-fun var3298_valueOf/-1186540555 (Int) var3298)
(declare-fun String_valueOf/-333372740 (var3823) String)
(declare-fun cast-from-var3423-to-var3823 (var3423) var3823)
(declare-const null-String String)
(declare-const var1887 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1887 null-String)))
(assert true)
(define-const var1546 Int (length/-134980193 var1887)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 <= 0 goto $r2 = "" 
(assert (not (<= var1546 0))) ; Negate: Cond: $i0 <= 0  
(assert (and true (and (> (str.len var1887) 0) (<= 0 0))))
(define-const var2465 Int (charAt/698050440 var1887 0)) ; Statement: $c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(define-const var3180 var3423 (cast-from-var3298-to-var3423 (var3298_valueOf/-1186540555 var2465))) ; Statement: $r2 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c1) 
 ; Statement: goto [?= $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2)] 
(assert true) ; Non Conditional
(define-const var3859 String (String_valueOf/-333372740 (cast-from-var3423-to-var3823 var3180))) ; Statement: $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2) 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-var3298-to-var3423=([java.lang.Character], java.io.Serializable), var3298_valueOf/-1186540555=([char], java.lang.Character), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-var3423-to-var3823=([java.io.Serializable], java.lang.Object)}
; {var1887=r0, var279=null_type, var1546=$i0, var2465=$c1, var3423=java.io.Serializable, var3298=java.lang.Character, var3180=$r2, var3823=java.lang.Object, var3859=$r1}
; {r0=var1887, null_type=var279, $i0=var1546, $c1=var2465, java.io.Serializable=var3423, java.lang.Character=var3298, $r2=var3180, java.lang.Object=var3823, $r1=var3859}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 <= 0 goto $r2 = "";	$c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	$r2 = staticinvoke <java.lang.Character: java.lang.Character valueOf(char)>($c1);	goto [?= $r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2)];	$r1 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r2);	return $r1
;block_num 3