(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1918 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var1918_escapeCharOnto/-1550515371 (Int String) void)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var3252 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var3252 null-Int)))
(declare-const var2818 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var2818 null-Int)))
(declare-const var268 String) ; Statement: r0 := @parameter2: java.lang.StringBuilder 
(assert (not (= var268 null-String)))
(define-const var2523 Int (cast-from-Int-to-Int var3252)) ; Statement: $i2 = (int) c0 
 ; Statement: lookupswitch($i2) {     case 36: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 40: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 41: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 42: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 43: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 46: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 47: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 63: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 91: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 94: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 123: goto if 48 > i1 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);     case 124: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     default: goto staticinvoke <com.google.javascript.jscomp.regex.RegExpTree$Text: void escapeCharOnto(char,java.lang.StringBuilder)>(c0, r0); } 
(assert (and (not (= var2523 124)) (and (not (= var2523 123)) (and (not (= var2523 94)) (and (not (= var2523 91)) (and (not (= var2523 63)) (and (not (= var2523 47)) (and (not (= var2523 46)) (and (not (= var2523 43)) (and (not (= var2523 42)) (and (not (= var2523 41)) (and (not (= var2523 40)) (and (not (= var2523 36)) true))))))))))))) ; Intersect: Negate: Cond: $i2 == 124   and Intersect: Negate: Cond: $i2 == 123   and Intersect: Negate: Cond: $i2 == 94   and Intersect: Negate: Cond: $i2 == 91   and Intersect: Negate: Cond: $i2 == 63   and Intersect: Negate: Cond: $i2 == 47   and Intersect: Negate: Cond: $i2 == 46   and Intersect: Negate: Cond: $i2 == 43   and Intersect: Negate: Cond: $i2 == 42   and Intersect: Negate: Cond: $i2 == 41   and Intersect: Negate: Cond: $i2 == 40   and Intersect: Negate: Cond: $i2 == 36   and Non Conditional            
;(assert (var1918_escapeCharOnto/-1550515371 var3252 var268)) ; Statement: staticinvoke <com.google.javascript.jscomp.regex.RegExpTree$Text: void escapeCharOnto(char,java.lang.StringBuilder)>(c0, r0) 

(declare-const var3252!1 Int)
(declare-const var268!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), var1918_escapeCharOnto/-1550515371=([char, java.lang.StringBuilder], void)}
; {var3252=c0, var2818=i1, var268=r0, var2523=$i2, var1918=com.google.javascript.jscomp.regex.RegExpTree}
; {c0=var3252, i1=var2818, r0=var268, $i2=var2523, com.google.javascript.jscomp.regex.RegExpTree=var1918}
;seq 
;cnt {}
;stmts c0 := @parameter0: char;	i1 := @parameter1: int;	r0 := @parameter2: java.lang.StringBuilder;	$i2 = (int) c0;	lookupswitch($i2) {     case 36: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 40: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 41: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 42: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 43: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 46: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 47: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 63: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 91: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 94: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 123: goto if 48 > i1 goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c0);     case 124: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     default: goto staticinvoke <com.google.javascript.jscomp.regex.RegExpTree$Text: void escapeCharOnto(char,java.lang.StringBuilder)>(c0, r0); };	staticinvoke <com.google.javascript.jscomp.regex.RegExpTree$Text: void escapeCharOnto(char,java.lang.StringBuilder)>(c0, r0);	return
;block_num 3