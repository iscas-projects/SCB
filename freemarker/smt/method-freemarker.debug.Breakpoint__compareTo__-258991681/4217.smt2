(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1809 0)
(declare-sort var2357 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var2357-to-var1809 (var2357) var1809)
(declare-fun templateName/223838676 (var1809) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var1809 var1809)
(declare-const null-var2357 var2357)
(declare-const var2505 var1809) ; Statement: r2 := @this: freemarker.debug.Breakpoint 
(assert (not (= var2505 null-var1809)))
(declare-const var1455 var2357) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var1455 null-var2357)))
(define-const var3120 var1809 (cast-from-var2357-to-var1809 var1455)) ; Statement: r1 = (freemarker.debug.Breakpoint) r0 
(define-const var2906 String (templateName/223838676 var2505)) ; Statement: $r4 = r2.<freemarker.debug.Breakpoint: java.lang.String templateName> 
(define-const var3539 String (templateName/223838676 var3120)) ; Statement: $r3 = r1.<freemarker.debug.Breakpoint: java.lang.String templateName> 
(assert true)
(define-const var2963 Int (compareTo/1411385946 var2906 var3539)) ; Statement: i0 = virtualinvoke $r4.<java.lang.String: int compareTo(java.lang.String)>($r3) 
(assert (let ((this<other (str.< var2906 var3539)) (this<=other (str.<= var2906 var3539)) (compareRes (compareTo/1411385946 var2906 var3539))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if i0 != 0 goto $i3 = i0 
(assert (not (= var2963 0))) ; Cond: i0 != 0 
(define-const var1057 Int var2963) ; Statement: $i3 = i0 
(assert true) ; Non Conditional
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var2357-to-var1809=([java.lang.Object], freemarker.debug.Breakpoint), templateName/223838676=([freemarker.debug.Breakpoint], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var1809=freemarker.debug.Breakpoint, var2505=r2, var2357=java.lang.Object, var1455=r0, var3120=r1, var2906=$r4, var3539=$r3, var2963=i0, var1057=$i3}
; {freemarker.debug.Breakpoint=var1809, r2=var2505, java.lang.Object=var2357, r0=var1455, r1=var3120, $r4=var2906, $r3=var3539, i0=var2963, $i3=var1057}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r2 := @this: freemarker.debug.Breakpoint;	r0 := @parameter0: java.lang.Object;	r1 = (freemarker.debug.Breakpoint) r0;	$r4 = r2.<freemarker.debug.Breakpoint: java.lang.String templateName>;	$r3 = r1.<freemarker.debug.Breakpoint: java.lang.String templateName>;	i0 = virtualinvoke $r4.<java.lang.String: int compareTo(java.lang.String)>($r3);	if i0 != 0 goto $i3 = i0;	$i3 = i0;	return $i3
;block_num 3