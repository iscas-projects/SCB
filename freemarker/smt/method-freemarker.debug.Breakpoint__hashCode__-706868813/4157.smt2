(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var693 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun templateName/223838676 (var693) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun line/223838676 (var693) Int)
(declare-const null-var693 var693)
(declare-const var2650 var693) ; Statement: r0 := @this: freemarker.debug.Breakpoint 
(assert (not (= var2650 null-var693)))
(define-const var2074 String (templateName/223838676 var2650)) ; Statement: $r1 = r0.<freemarker.debug.Breakpoint: java.lang.String templateName> 
(assert true)
(define-const var1384 Int (hashCode/-467973558 var2074)) ; Statement: $i2 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var1728 Int (line/223838676 var2650)) ; Statement: $i0 = r0.<freemarker.debug.Breakpoint: int line> 
(define-const var1995 Int (* 31 var1728)) ; Statement: $i1 = 31 * $i0 
(define-const var1190 Int (+ var1384 var1995)) ; Statement: $i3 = $i2 + $i1 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {templateName/223838676=([freemarker.debug.Breakpoint], java.lang.String), hashCode/-467973558=([java.lang.String], int), line/223838676=([freemarker.debug.Breakpoint], int)}
; {var693=freemarker.debug.Breakpoint, var2650=r0, var2074=$r1, var1384=$i2, var1728=$i0, var1995=$i1, var1190=$i3}
; {freemarker.debug.Breakpoint=var693, r0=var2650, $r1=var2074, $i2=var1384, $i0=var1728, $i1=var1995, $i3=var1190}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: freemarker.debug.Breakpoint;	$r1 = r0.<freemarker.debug.Breakpoint: java.lang.String templateName>;	$i2 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	$i0 = r0.<freemarker.debug.Breakpoint: int line>;	$i1 = 31 * $i0;	$i3 = $i2 + $i1;	return $i3
;block_num 1