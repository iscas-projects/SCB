(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1216 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun op/1283148626 (var1216) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun arg/1283148626 (var1216) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun out/1283148626 (var1216) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1216 var1216)
(declare-const var2801 var1216) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Inst 
(assert (not (= var2801 null-var1216)))
(define-const var3670 Int (op/1283148626 var2801)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int op> 
 ; Statement: tableswitch($i0) {     case 1: goto $r49 = new java.lang.StringBuilder;     case 2: goto $r43 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r31 = new java.lang.StringBuilder;     case 5: goto return "fail";     case 6: goto return "match";     case 7: goto $r27 = new java.lang.StringBuilder;     case 8: goto $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;     case 9: goto $r9 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r1 = new java.lang.StringBuilder;     default: goto $r55 = new java.lang.IllegalStateException; } 
(assert (and (= var3670 3) (and (not (= var3670 2)) (and (not (= var3670 1)) true)))) ; Intersect: Cond: $i0 == 3  and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Non Conditional   
(define-const var622 String String-init) ; Statement: $r37 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var622)) ; Statement: specialinvoke $r37.<java.lang.StringBuilder: void <init>()>() 
(declare-const var622!1 String)
(assert (= var622!1 ""))
(assert true)
(define-const var869 String (append/672562846 var622!1 "cap ")) ; Statement: $r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cap ") 
(declare-const var622!2 String)
(assert (= var622!2 (str.++ var622!1 "cap ")))
(define-const var51 Int (arg/1283148626 var2801)) ; Statement: $i10 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int arg> 
(assert true)
(define-const var2010 String (append/-1001720160 var869 var51)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10) 
(declare-const var869!1 String)
(assert (str.prefixof var869 var869!1))
(assert true)
(define-const var2118 String (append/672562846 var2010 " -> ")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var2010!1 String)
(assert (= var2010!1 (str.++ var2010 " -> ")))
(define-const var3378 Int (out/1283148626 var2801)) ; Statement: $i11 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int out> 
(assert true)
(define-const var1506 String (append/-1001720160 var2118 var3378)) ; Statement: $r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i11) 
(declare-const var2118!1 String)
(assert (str.prefixof var2118 var2118!1))
(assert true)
(define-const var721 String (toString/-2075883882 var1506)) ; Statement: $r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r42 
(check-sat)
(get-model)
(get-unsat-core)
; {op/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), arg/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), out/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1216=com.google.javascript.jscomp.jarjar.com.google.re2j.Inst, var2801=r0, var3670=$i0, var622=$r37, var869=$r38, var51=$i10, var2010=$r39, var2118=$r40, var3378=$i11, var1506=$r41, var721=$r42}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Inst=var1216, r0=var2801, $i0=var3670, $r37=var622, $r38=var869, $i10=var51, $r39=var2010, $r40=var2118, $i11=var3378, $r41=var1506, $r42=var721}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Inst;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int op>;	tableswitch($i0) {     case 1: goto $r49 = new java.lang.StringBuilder;     case 2: goto $r43 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r31 = new java.lang.StringBuilder;     case 5: goto return "fail";     case 6: goto return "match";     case 7: goto $r27 = new java.lang.StringBuilder;     case 8: goto $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;     case 9: goto $r9 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r1 = new java.lang.StringBuilder;     default: goto $r55 = new java.lang.IllegalStateException; };	$r37 = new java.lang.StringBuilder;	specialinvoke $r37.<java.lang.StringBuilder: void <init>()>();	$r38 = virtualinvoke $r37.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("cap ");	$i10 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int arg>;	$r39 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i10);	$r40 = virtualinvoke $r39.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$i11 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int out>;	$r41 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i11);	$r42 = virtualinvoke $r41.<java.lang.StringBuilder: java.lang.String toString()>();	return $r42
;block_num 2