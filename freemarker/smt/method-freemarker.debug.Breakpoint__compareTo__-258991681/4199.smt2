(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var440 0)
(declare-sort var1380 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var1380-to-var440 (var1380) var440)
(declare-fun templateName/223838676 (var440) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-fun line/223838676 (var440) Int)
(declare-const null-var440 var440)
(declare-const null-var1380 var1380)
(declare-const var2317 var440) ; Statement: r2 := @this: freemarker.debug.Breakpoint 
(assert (not (= var2317 null-var440)))
(declare-const var709 var1380) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var709 null-var1380)))
(define-const var3195 var440 (cast-from-var1380-to-var440 var709)) ; Statement: r1 = (freemarker.debug.Breakpoint) r0 
(define-const var220 String (templateName/223838676 var2317)) ; Statement: $r4 = r2.<freemarker.debug.Breakpoint: java.lang.String templateName> 
(define-const var655 String (templateName/223838676 var3195)) ; Statement: $r3 = r1.<freemarker.debug.Breakpoint: java.lang.String templateName> 
(assert true)
(define-const var2487 Int (compareTo/1411385946 var220 var655)) ; Statement: i0 = virtualinvoke $r4.<java.lang.String: int compareTo(java.lang.String)>($r3) 
(assert (let ((this<other (str.< var220 var655)) (this<=other (str.<= var220 var655)) (compareRes (compareTo/1411385946 var220 var655))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if i0 != 0 goto $i3 = i0 
(assert (not (not (= var2487 0)))) ; Negate: Cond: i0 != 0  
(define-const var2260 Int (line/223838676 var2317)) ; Statement: $i2 = r2.<freemarker.debug.Breakpoint: int line> 
(define-const var1761 Int (line/223838676 var3195)) ; Statement: $i1 = r1.<freemarker.debug.Breakpoint: int line> 
(define-const var2782 Int (- var2260 var1761)) ; Statement: $i3 = $i2 - $i1 
 ; Statement: goto [?= return $i3] 
(assert true) ; Non Conditional
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var1380-to-var440=([java.lang.Object], freemarker.debug.Breakpoint), templateName/223838676=([freemarker.debug.Breakpoint], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int), line/223838676=([freemarker.debug.Breakpoint], int)}
; {var440=freemarker.debug.Breakpoint, var2317=r2, var1380=java.lang.Object, var709=r0, var3195=r1, var220=$r4, var655=$r3, var2487=i0, var2260=$i2, var1761=$i1, var2782=$i3}
; {freemarker.debug.Breakpoint=var440, r2=var2317, java.lang.Object=var1380, r0=var709, r1=var3195, $r4=var220, $r3=var655, i0=var2487, $i2=var2260, $i1=var1761, $i3=var2782}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r2 := @this: freemarker.debug.Breakpoint;	r0 := @parameter0: java.lang.Object;	r1 = (freemarker.debug.Breakpoint) r0;	$r4 = r2.<freemarker.debug.Breakpoint: java.lang.String templateName>;	$r3 = r1.<freemarker.debug.Breakpoint: java.lang.String templateName>;	i0 = virtualinvoke $r4.<java.lang.String: int compareTo(java.lang.String)>($r3);	if i0 != 0 goto $i3 = i0;	$i2 = r2.<freemarker.debug.Breakpoint: int line>;	$i1 = r1.<freemarker.debug.Breakpoint: int line>;	$i3 = $i2 - $i1;	goto [?= return $i3];	return $i3
;block_num 3