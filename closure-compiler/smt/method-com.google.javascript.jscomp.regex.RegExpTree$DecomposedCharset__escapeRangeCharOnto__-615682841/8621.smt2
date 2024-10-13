(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var822 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var822 null-Int)))
(declare-const var2825 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var2825 null-Bool)))
(declare-const var829 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var829 null-Bool)))
(declare-const var3334 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var3334 null-Bool)))
(declare-const var2947 String) ; Statement: r0 := @parameter4: java.lang.StringBuilder 
(assert (not (= var2947 null-String)))
(define-const var2826 Int (cast-from-Int-to-Int var822)) ; Statement: $i1 = (int) c0 
 ; Statement: lookupswitch($i1) {     case 8: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b");     case 45: goto if z0 != 0 goto $r3 = "-";     case 92: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 93: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 94: goto if z0 == 0 goto $r2 = "^";     default: goto staticinvoke <com.google.javascript.jscomp.regex.RegExpTree: void escapeCharOnto(char,java.lang.StringBuilder)>(c0, r0); } 
(assert (and (= var2826 92) (and (not (= var2826 45)) (and (not (= var2826 8)) true)))) ; Intersect: Cond: $i1 == 92  and Intersect: Negate: Cond: $i1 == 45   and Intersect: Negate: Cond: $i1 == 8   and Non Conditional   
(assert true)
(define-const var2184 String (append/-1166366385 var2947 92)) ; Statement: $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92) 
(declare-const var2947!1 String)
(assert (str.prefixof var2947 var2947!1))
(assert true)
;(assert (append/-1166366385 var2184 var822)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0) 
(declare-const var2184!1 String)
(assert (str.prefixof var2184 var2184!1))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var822=c0, var2825=z1, var829=z0, var3334=z2, var2947=r0, var2826=$i1, var2184=$r1}
; {c0=var822, z1=var2825, z0=var829, z2=var3334, r0=var2947, $i1=var2826, $r1=var2184}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2}
;stmts c0 := @parameter0: char;	z1 := @parameter1: boolean;	z0 := @parameter2: boolean;	z2 := @parameter3: boolean;	r0 := @parameter4: java.lang.StringBuilder;	$i1 = (int) c0;	lookupswitch($i1) {     case 8: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b");     case 45: goto if z0 != 0 goto $r3 = "-";     case 92: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 93: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 94: goto if z0 == 0 goto $r2 = "^";     default: goto staticinvoke <com.google.javascript.jscomp.regex.RegExpTree: void escapeCharOnto(char,java.lang.StringBuilder)>(c0, r0); };	$r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);	goto [?= return];	return
;block_num 3