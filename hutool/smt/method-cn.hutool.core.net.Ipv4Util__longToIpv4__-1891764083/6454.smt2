(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1441 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1441_builder/-311177978 () String)
(declare-fun append/-901862667 (String Int) String)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Int Int)
(declare-const var3477 Int) ; Statement: l0 := @parameter0: long 
(assert (not (= var3477 null-Int)))
(define-const var1716 String var1441_builder/-311177978) ; Statement: r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>() 
(define-const var3951 Int (div var3477 (to_int (^ 2 24)))) ; Statement: $l1 = l0 >> 24 
(define-const var445 Int (bv2nat (bvand ((_ int2bv 64) var3951) ((_ int2bv 64) 255)))) ; Statement: $l2 = $l1 & 255L 
(assert true)
;(assert (append/-901862667 var1716 var445)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2) 
(declare-const var1716!1 String)
(assert (str.prefixof var1716 var1716!1))
(assert true)
;(assert (append/-1166366385 var1716!1 46)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1716!2 String)
(assert (str.prefixof var1716!1 var1716!2))
(define-const var2123 Int (div var3477 (to_int (^ 2 16)))) ; Statement: $l3 = l0 >> 16 
(define-const var456 Int (bv2nat (bvand ((_ int2bv 64) var2123) ((_ int2bv 64) 255)))) ; Statement: $l4 = $l3 & 255L 
(assert true)
;(assert (append/-901862667 var1716!2 var456)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4) 
(declare-const var1716!3 String)
(assert (str.prefixof var1716!2 var1716!3))
(assert true)
;(assert (append/-1166366385 var1716!3 46)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1716!4 String)
(assert (str.prefixof var1716!3 var1716!4))
(define-const var616 Int (div var3477 (to_int (^ 2 8)))) ; Statement: $l5 = l0 >> 8 
(define-const var882 Int (bv2nat (bvand ((_ int2bv 64) var616) ((_ int2bv 64) 255)))) ; Statement: $l6 = $l5 & 255L 
(assert true)
;(assert (append/-901862667 var1716!4 var882)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l6) 
(declare-const var1716!5 String)
(assert (str.prefixof var1716!4 var1716!5))
(assert true)
;(assert (append/-1166366385 var1716!5 46)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var1716!6 String)
(assert (str.prefixof var1716!5 var1716!6))
(define-const var770 Int (bv2nat (bvand ((_ int2bv 64) var3477) ((_ int2bv 64) 255)))) ; Statement: $l7 = l0 & 255L 
(assert true)
;(assert (append/-901862667 var1716!6 var770)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l7) 
(declare-const var1716!7 String)
(assert (str.prefixof var1716!6 var1716!7))
(assert true)
(define-const var3511 String (toString/-2075883882 var1716!7)) ; Statement: $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1441_builder/-311177978=([], java.lang.StringBuilder), append/-901862667=([java.lang.StringBuilder, long], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3477=l0, var1441=cn.hutool.core.util.StrUtil, var1716=r0, var3951=$l1, var445=$l2, var2123=$l3, var456=$l4, var616=$l5, var882=$l6, var770=$l7, var3511=$r1}
; {l0=var3477, cn.hutool.core.util.StrUtil=var1441, r0=var1716, $l1=var3951, $l2=var445, $l3=var2123, $l4=var456, $l5=var616, $l6=var882, $l7=var770, $r1=var3511}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(long)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(long)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts l0 := @parameter0: long;	r0 = staticinvoke <cn.hutool.core.util.StrUtil: java.lang.StringBuilder builder()>();	$l1 = l0 >> 24;	$l2 = $l1 & 255L;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l2);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$l3 = l0 >> 16;	$l4 = $l3 & 255L;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l4);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$l5 = l0 >> 8;	$l6 = $l5 & 255L;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l6);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$l7 = l0 & 255L;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(long)>($l7);	$r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r1
;block_num 1