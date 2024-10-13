(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1764 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun httpHeaderValue/-987515536 (var1764) String)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-const null-var1764 var1764)
(declare-const var1261 var1764) ; Statement: r0 := @this: freemarker.ext.servlet.FreemarkerServlet$ContentType 
(assert (not (= var1261 null-var1764)))
(define-const var3957 String (httpHeaderValue/-987515536 var1261)) ; Statement: $r1 = r0.<freemarker.ext.servlet.FreemarkerServlet$ContentType: java.lang.String httpHeaderValue> 
(assert true)
(define-const var468 Int (indexOf/-1037706067 var3957 59)) ; Statement: i0 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>(59) 
(define-const var3161 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 != $i2 goto $r2 = r0.<freemarker.ext.servlet.FreemarkerServlet$ContentType: java.lang.String httpHeaderValue> 
(assert (not (not (= var468 var3161)))) ; Negate: Cond: i0 != $i2  
(define-const var1634 String (httpHeaderValue/-987515536 var1261)) ; Statement: $r4 = r0.<freemarker.ext.servlet.FreemarkerServlet$ContentType: java.lang.String httpHeaderValue> 
 ; Statement: goto [?= $r3 = virtualinvoke $r4.<java.lang.String: java.lang.String trim()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var162 String (trim/-847153721 var1634)) ; Statement: $r3 = virtualinvoke $r4.<java.lang.String: java.lang.String trim()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {httpHeaderValue/-987515536=([freemarker.ext.servlet.FreemarkerServlet$ContentType], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), trim/-847153721=([java.lang.String], java.lang.String)}
; {var1764=freemarker.ext.servlet.FreemarkerServlet$ContentType, var1261=r0, var3957=$r1, var468=i0, var3161=$i2, var1634=$r4, var162=$r3}
; {freemarker.ext.servlet.FreemarkerServlet$ContentType=var1764, r0=var1261, $r1=var3957, i0=var468, $i2=var3161, $r4=var1634, $r3=var162}
;seq <java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: freemarker.ext.servlet.FreemarkerServlet$ContentType;	$r1 = r0.<freemarker.ext.servlet.FreemarkerServlet$ContentType: java.lang.String httpHeaderValue>;	i0 = virtualinvoke $r1.<java.lang.String: int indexOf(int)>(59);	$i2 = (int) -1;	if i0 != $i2 goto $r2 = r0.<freemarker.ext.servlet.FreemarkerServlet$ContentType: java.lang.String httpHeaderValue>;	$r4 = r0.<freemarker.ext.servlet.FreemarkerServlet$ContentType: java.lang.String httpHeaderValue>;	goto [?= $r3 = virtualinvoke $r4.<java.lang.String: java.lang.String trim()>()];	$r3 = virtualinvoke $r4.<java.lang.String: java.lang.String trim()>();	return $r3
;block_num 3