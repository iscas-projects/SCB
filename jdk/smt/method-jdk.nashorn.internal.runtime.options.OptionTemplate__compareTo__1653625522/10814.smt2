(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3216 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getKey/-2048089503 (var3216) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-const null-var3216 var3216)
(declare-const var2104 var3216) ; Statement: r0 := @this: jdk.nashorn.internal.runtime.options.OptionTemplate 
(assert (not (= var2104 null-var3216)))
(declare-const var3172 var3216) ; Statement: r1 := @parameter0: jdk.nashorn.internal.runtime.options.OptionTemplate 
(assert (not (= var3172 null-var3216)))
(assert true)
(define-const var416 String (getKey/-2048089503 var2104)) ; Statement: $r3 = virtualinvoke r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String getKey()>() 
(assert true)
(define-const var2590 String (getKey/-2048089503 var3172)) ; Statement: $r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String getKey()>() 
(assert true)
(define-const var1106 Int (compareTo/1411385946 var416 var2590)) ; Statement: $i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2) 
(assert (let ((this<other (str.< var416 var2590)) (this<=other (str.<= var416 var2590)) (compareRes (compareTo/1411385946 var416 var2590))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {getKey/-2048089503=([jdk.nashorn.internal.runtime.options.OptionTemplate], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int)}
; {var3216=jdk.nashorn.internal.runtime.options.OptionTemplate, var2104=r0, var3172=r1, var416=$r3, var2590=$r2, var1106=$i0}
; {jdk.nashorn.internal.runtime.options.OptionTemplate=var3216, r0=var2104, r1=var3172, $r3=var416, $r2=var2590, $i0=var1106}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r0 := @this: jdk.nashorn.internal.runtime.options.OptionTemplate;	r1 := @parameter0: jdk.nashorn.internal.runtime.options.OptionTemplate;	$r3 = virtualinvoke r0.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String getKey()>();	$r2 = virtualinvoke r1.<jdk.nashorn.internal.runtime.options.OptionTemplate: java.lang.String getKey()>();	$i0 = virtualinvoke $r3.<java.lang.String: int compareTo(java.lang.String)>($r2);	return $i0
;block_num 1