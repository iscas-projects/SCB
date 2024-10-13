(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var115 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun var115_escapeCharOnto/-1550515371 (Int String) void)
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var2215 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var2215 null-Int)))
(declare-const var1197 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1197 null-Bool)))
(declare-const var3155 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3155 null-Bool)))
(declare-const var1938 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var1938 null-Bool)))
(declare-const var3197 String) ; Statement: r0 := @parameter4: java.lang.StringBuilder 
(assert (not (= var3197 null-String)))
(define-const var1763 Int (cast-from-Int-to-Int var2215)) ; Statement: $i1 = (int) c0 
 ; Statement: lookupswitch($i1) {     case 8: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b");     case 45: goto if z0 != 0 goto $r3 = "-";     case 92: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 93: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 94: goto if z0 == 0 goto $r2 = "^";     default: goto staticinvoke <com.google.javascript.jscomp.regex.RegExpTree: void escapeCharOnto(char,java.lang.StringBuilder)>(c0, r0); } 
(assert (and (not (= var1763 94)) (and (not (= var1763 93)) (and (not (= var1763 92)) (and (not (= var1763 45)) (and (not (= var1763 8)) true)))))) ; Intersect: Negate: Cond: $i1 == 94   and Intersect: Negate: Cond: $i1 == 93   and Intersect: Negate: Cond: $i1 == 92   and Intersect: Negate: Cond: $i1 == 45   and Intersect: Negate: Cond: $i1 == 8   and Non Conditional     
;(assert (var115_escapeCharOnto/-1550515371 var2215 var3197)) ; Statement: staticinvoke <com.google.javascript.jscomp.regex.RegExpTree: void escapeCharOnto(char,java.lang.StringBuilder)>(c0, r0) 

(declare-const var2215!1 Int)
(declare-const var3197!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), var115_escapeCharOnto/-1550515371=([char, java.lang.StringBuilder], void)}
; {var2215=c0, var1197=z1, var3155=z0, var1938=z2, var3197=r0, var1763=$i1, var115=com.google.javascript.jscomp.regex.RegExpTree}
; {c0=var2215, z1=var1197, z0=var3155, z2=var1938, r0=var3197, $i1=var1763, com.google.javascript.jscomp.regex.RegExpTree=var115}
;seq 
;cnt {}
;stmts c0 := @parameter0: char;	z1 := @parameter1: boolean;	z0 := @parameter2: boolean;	z2 := @parameter3: boolean;	r0 := @parameter4: java.lang.StringBuilder;	$i1 = (int) c0;	lookupswitch($i1) {     case 8: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b");     case 45: goto if z0 != 0 goto $r3 = "-";     case 92: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 93: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 94: goto if z0 == 0 goto $r2 = "^";     default: goto staticinvoke <com.google.javascript.jscomp.regex.RegExpTree: void escapeCharOnto(char,java.lang.StringBuilder)>(c0, r0); };	staticinvoke <com.google.javascript.jscomp.regex.RegExpTree: void escapeCharOnto(char,java.lang.StringBuilder)>(c0, r0);	return
;block_num 3