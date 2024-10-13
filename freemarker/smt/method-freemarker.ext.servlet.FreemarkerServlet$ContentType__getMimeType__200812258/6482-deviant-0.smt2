(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1287 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun httpHeaderValue/-987515536 (var1287) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var1287 var1287)
(declare-const var3246 var1287) ; Statement: r0 := @this: freemarker.ext.servlet.FreemarkerServlet$ContentType 
(assert (not (= var3246 null-var1287)))
(define-const var606 String (httpHeaderValue/-987515536 var3246)) ; Statement: $r1 = r0.<freemarker.ext.servlet.FreemarkerServlet$ContentType: java.lang.String httpHeaderValue> 
(assert true)
(define-const var1218 Int (indexOf/-1037706067 var606 59)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>(59) 
(define-const var2793 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r2 = r0.<freemarker.ext.servlet.FreemarkerServlet$ContentType: java.lang.String httpHeaderValue> 
(assert (not (= var1218 var2793))) ; Cond: i0 != $i2 
(define-const var147 String (httpHeaderValue/-987515536 var3246)) ; Statement: $r2 = r0.<freemarker.ext.servlet.FreemarkerServlet$ContentType: java.lang.String httpHeaderValue> 
(assert (not (and true (and (>= 0 0) (>= (str.len var147) var1218) (>= var1218 0)))))
(check-sat)
(get-model)
(get-unsat-core)
; {httpHeaderValue/-987515536=([freemarker.ext.servlet.FreemarkerServlet$ContentType], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String)}
; {var1287=freemarker.ext.servlet.FreemarkerServlet$ContentType, var3246=r0, var606=$r1, var1218=i0, var2793=$i2, var147=$r2, var2750=$r4, var1403=$r3}
; {freemarker.ext.servlet.FreemarkerServlet$ContentType=var1287, r0=var3246, $r1=var606, i0=var1218, $i2=var2793, $r2=var147, $r4=var2750, $r3=var1403}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: freemarker.ext.servlet.FreemarkerServlet$ContentType;	$r1 = r0.<freemarker.ext.servlet.FreemarkerServlet$ContentType: java.lang.String httpHeaderValue>;	i0 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>(59);	$i2 = (int) -1;	if i0 != $i2 goto $r2 = r0.<freemarker.ext.servlet.FreemarkerServlet$ContentType: java.lang.String httpHeaderValue>;	$r2 = r0.<freemarker.ext.servlet.FreemarkerServlet$ContentType: java.lang.String httpHeaderValue>;	$r4 = virtualinvoke $r2.<java.lang.String: java.lang.String substring(int,int)>(0, i0);	$r3 = virtualinvoke $r4.<java.lang.String: java.lang.String trim()>();	return $r3
;block_num 3