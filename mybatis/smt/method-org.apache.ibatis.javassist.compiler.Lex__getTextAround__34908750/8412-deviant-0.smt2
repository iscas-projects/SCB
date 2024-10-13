(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun position/-806106376 (var3150) Int)
(declare-fun maxlen/-806106376 (var3150) Int)
(declare-fun input/-806106376 (var3150) String)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3150 var3150)
(declare-const var3541 var3150) ; Statement: r0 := @this: org.apache.ibatis.javassist.compiler.Lex 
(assert (not (= var3541 null-var3150)))
(define-const var570 Int (position/-806106376 var3541)) ; Statement: $i0 = r0.<org.apache.ibatis.javassist.compiler.Lex: int position> 
(define-const var2164 Int (- var570 10)) ; Statement: i4 = $i0 - 10 
 ; Statement: if i4 >= 0 goto $i1 = r0.<org.apache.ibatis.javassist.compiler.Lex: int position> 
(assert (>= var2164 0)) ; Cond: i4 >= 0 
(define-const var2644 Int (position/-806106376 var3541)) ; Statement: $i1 = r0.<org.apache.ibatis.javassist.compiler.Lex: int position> 
(define-const var470 Int (+ var2644 10)) ; Statement: $i3 = $i1 + 10 
(define-const var3251 Int var470) ; Statement: i5 = $i3 
(define-const var2110 Int (maxlen/-806106376 var3541)) ; Statement: $i2 = r0.<org.apache.ibatis.javassist.compiler.Lex: int maxlen> 
 ; Statement: if $i3 <= $i2 goto $r1 = r0.<org.apache.ibatis.javassist.compiler.Lex: java.lang.String input> 
(assert (<= var470 var2110)) ; Cond: $i3 <= $i2 
(define-const var2254 String (input/-806106376 var3541)) ; Statement: $r1 = r0.<org.apache.ibatis.javassist.compiler.Lex: java.lang.String input> 
(assert (not (and true (and (>= var2164 0) (>= (str.len var2254) var3251) (>= var3251 var2164)))))
(check-sat)
(get-model)
(get-unsat-core)
; {position/-806106376=([org.apache.ibatis.javassist.compiler.Lex], int), maxlen/-806106376=([org.apache.ibatis.javassist.compiler.Lex], int), input/-806106376=([org.apache.ibatis.javassist.compiler.Lex], java.lang.String), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3150=org.apache.ibatis.javassist.compiler.Lex, var3541=r0, var570=$i0, var2164=i4, var2644=$i1, var470=$i3, var3251=i5, var2110=$i2, var2254=$r1, var2804=$r2}
; {org.apache.ibatis.javassist.compiler.Lex=var3150, r0=var3541, $i0=var570, i4=var2164, $i1=var2644, $i3=var470, i5=var3251, $i2=var2110, $r1=var2254, $r2=var2804}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.compiler.Lex;	$i0 = r0.<org.apache.ibatis.javassist.compiler.Lex: int position>;	i4 = $i0 - 10;	if i4 >= 0 goto $i1 = r0.<org.apache.ibatis.javassist.compiler.Lex: int position>;	$i1 = r0.<org.apache.ibatis.javassist.compiler.Lex: int position>;	$i3 = $i1 + 10;	i5 = $i3;	$i2 = r0.<org.apache.ibatis.javassist.compiler.Lex: int maxlen>;	if $i3 <= $i2 goto $r1 = r0.<org.apache.ibatis.javassist.compiler.Lex: java.lang.String input>;	$r1 = r0.<org.apache.ibatis.javassist.compiler.Lex: java.lang.String input>;	$r2 = virtualinvoke $r1.<java.lang.String: java.lang.String substring(int,int)>(i4, i5);	return $r2
;block_num 3