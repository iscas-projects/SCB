(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var213 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var213 null-Int)))
(declare-const var855 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var855 null-Int)))
(declare-const var353 String) ; Statement: r0 := @parameter2: java.lang.StringBuilder 
(assert (not (= var353 null-String)))
(define-const var3277 Int (cast-from-Int-to-Int var213)) ; Statement: $i2 = (int) c0 
 ; Statement: lookupswitch($i2) {     case 36: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 40: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 41: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 42: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 43: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 46: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 47: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 63: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 91: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 94: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 123: goto if 48 > i1 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);     case 124: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     default: goto staticinvoke <com.google.javascript.jscomp.regex.RegExpTree$Text: void escapeCharOnto(char,java.lang.StringBuilder)>(c0, r0); } 
(assert (and (= var3277 36) true)) ; Intersect: Cond: $i2 == 36  and Non Conditional 
(assert true)
(define-const var2948 String (append/-1166366385 var353 92)) ; Statement: $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92) 
(declare-const var353!1 String)
(assert (str.prefixof var353 var353!1))
(assert true)
;(assert (append/-1166366385 var2948 var213)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var2948!1 String)
(assert (str.prefixof var2948 var2948!1))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var213=c0, var855=i1, var353=r0, var3277=$i2, var2948=$r1}
; {c0=var213, i1=var855, r0=var353, $i2=var3277, $r1=var2948}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts c0 := @parameter0: char;	i1 := @parameter1: int;	r0 := @parameter2: java.lang.StringBuilder;	$i2 = (int) c0;	lookupswitch($i2) {     case 36: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 40: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 41: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 42: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 43: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 46: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 47: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 63: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 91: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 94: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 123: goto if 48 > i1 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);     case 124: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     default: goto staticinvoke <com.google.javascript.jscomp.regex.RegExpTree$Text: void escapeCharOnto(char,java.lang.StringBuilder)>(c0, r0); };	$r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	goto [?= return];	return
;block_num 3