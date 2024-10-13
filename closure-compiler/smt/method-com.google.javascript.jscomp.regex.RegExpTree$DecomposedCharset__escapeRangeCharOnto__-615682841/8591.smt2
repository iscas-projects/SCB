(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-Int Int)
(declare-const null-Bool Bool)
(declare-const null-String String)
(declare-const var1119 Int) ; Statement: c0 := @parameter0: char 
(assert (not (= var1119 null-Int)))
(declare-const var1879 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1879 null-Bool)))
(declare-const var3893 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var3893 null-Bool)))
(declare-const var2721 Bool) ; Statement: z2 := @parameter3: boolean 
(assert (not (= var2721 null-Bool)))
(declare-const var420 String) ; Statement: r0 := @parameter4: java.lang.StringBuilder 
(assert (not (= var420 null-String)))
(define-const var2469 Int (cast-from-Int-to-Int var1119)) ; Statement: $i1 = (int) c0 
 ; Statement: lookupswitch($i1) {     case 8: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b");     case 45: goto if z0 != 0 goto $r3 = "-";     case 92: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 93: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 94: goto if z0 == 0 goto $r2 = "^";     default: goto staticinvoke <com.google.javascript.jscomp.regex.RegExpTree: void escapeCharOnto(char,java.lang.StringBuilder)>(c0, r0); } 
(assert (and (= var2469 8) true)) ; Intersect: Cond: $i1 == 8  and Non Conditional 
(assert true)
;(assert (append/672562846 var420 "\u005cb")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b") 
(declare-const var420!1 String)
(assert (= var420!1 (str.++ var420 "\u005cb")))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var1119=c0, var1879=z1, var3893=z0, var2721=z2, var420=r0, var2469=$i1}
; {c0=var1119, z1=var1879, z0=var3893, z2=var2721, r0=var420, $i1=var2469}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts c0 := @parameter0: char;	z1 := @parameter1: boolean;	z0 := @parameter2: boolean;	z2 := @parameter3: boolean;	r0 := @parameter4: java.lang.StringBuilder;	$i1 = (int) c0;	lookupswitch($i1) {     case 8: goto virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b");     case 45: goto if z0 != 0 goto $r3 = "-";     case 92: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 93: goto $r1 = virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(92);     case 94: goto if z0 == 0 goto $r2 = "^";     default: goto staticinvoke <com.google.javascript.jscomp.regex.RegExpTree: void escapeCharOnto(char,java.lang.StringBuilder)>(c0, r0); };	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\b");	goto [?= return];	return
;block_num 3