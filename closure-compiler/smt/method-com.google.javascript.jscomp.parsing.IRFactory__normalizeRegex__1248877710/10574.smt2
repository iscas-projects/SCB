(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3842 0)
(declare-sort var2637 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun value/-732511682 (var2637) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var3842 var3842)
(declare-const null-var2637 var2637)
(declare-const var3018 var3842) ; Statement: r5 := @this: com.google.javascript.jscomp.parsing.IRFactory 
(assert (not (= var3018 null-var3842)))
(declare-const var2784 var2637) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken 
(assert (not (= var2784 null-var2637)))
(define-const var1098 String (value/-732511682 var2784)) ; Statement: r1 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value> 
(assert true)
(define-const var3102 Int (lastIndexOf/-1292097097 var1098 47)) ; Statement: i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(47) 
(assert true)
(define-const var657 Int (indexOf/-1037706067 var1098 92)) ; Statement: i3 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(92) 
(define-const var1258 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i7 = (int) -1 
 ; Statement: if i3 != $i7 goto $r6 = new java.lang.StringBuilder 
(assert (not (not (= var657 var1258)))) ; Negate: Cond: i3 != $i7  
(assert (and true (and (>= 1 0) (>= (str.len var1098) var3102) (>= var3102 1))))
(define-const var3742 String (substring/-1240304868 var1098 1 var3102)) ; Statement: $r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(1, i0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {value/-732511682=([com.google.javascript.jscomp.parsing.parser.LiteralToken], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), indexOf/-1037706067=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var3842=com.google.javascript.jscomp.parsing.IRFactory, var3018=r5, var2637=com.google.javascript.jscomp.parsing.parser.LiteralToken, var2784=r0, var1098=r1, var3102=i0, var657=i3, var1258=$i7, var3742=$r4}
; {com.google.javascript.jscomp.parsing.IRFactory=var3842, r5=var3018, com.google.javascript.jscomp.parsing.parser.LiteralToken=var2637, r0=var2784, r1=var1098, i0=var3102, i3=var657, $i7=var1258, $r4=var3742}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.parsing.IRFactory;	r0 := @parameter0: com.google.javascript.jscomp.parsing.parser.LiteralToken;	r1 = r0.<com.google.javascript.jscomp.parsing.parser.LiteralToken: java.lang.String value>;	i0 = virtualinvoke r1.<java.lang.String: int lastIndexOf(int)>(47);	i3 = virtualinvoke r1.<java.lang.String: int indexOf(int)>(92);	$i7 = (int) -1;	if i3 != $i7 goto $r6 = new java.lang.StringBuilder;	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>(1, i0);	return $r4
;block_num 2