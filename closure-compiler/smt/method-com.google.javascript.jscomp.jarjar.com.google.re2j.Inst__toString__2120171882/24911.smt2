(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2003 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun op/1283148626 (var2003) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun arg/1283148626 (var2003) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun out/1283148626 (var2003) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2003 var2003)
(declare-const var711 var2003) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Inst 
(assert (not (= var711 null-var2003)))
(define-const var3507 Int (op/1283148626 var711)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int op> 
 ; Statement: tableswitch($i0) {     case 1: goto $r49 = new java.lang.StringBuilder;     case 2: goto $r43 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r31 = new java.lang.StringBuilder;     case 5: goto return "fail";     case 6: goto return "match";     case 7: goto $r27 = new java.lang.StringBuilder;     case 8: goto $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;     case 9: goto $r9 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r1 = new java.lang.StringBuilder;     default: goto $r55 = new java.lang.IllegalStateException; } 
(assert (and (= var3507 4) (and (not (= var3507 3)) (and (not (= var3507 2)) (and (not (= var3507 1)) true))))) ; Intersect: Cond: $i0 == 4  and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Non Conditional    
(define-const var523 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var523)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var523!1 String)
(assert (= var523!1 ""))
(assert true)
(define-const var1308 String (append/672562846 var523!1 "empty ")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("empty ") 
(declare-const var523!2 String)
(assert (= var523!2 (str.++ var523!1 "empty ")))
(define-const var2637 Int (arg/1283148626 var711)) ; Statement: $i8 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int arg> 
(assert true)
(define-const var3438 String (append/-1001720160 var1308 var2637)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i8) 
(declare-const var1308!1 String)
(assert (str.prefixof var1308 var1308!1))
(assert true)
(define-const var2510 String (append/672562846 var3438 " -> ")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var3438!1 String)
(assert (= var3438!1 (str.++ var3438 " -> ")))
(define-const var29 Int (out/1283148626 var711)) ; Statement: $i9 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int out> 
(assert true)
(define-const var3999 String (append/-1001720160 var2510 var29)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9) 
(declare-const var2510!1 String)
(assert (str.prefixof var2510 var2510!1))
(assert true)
(define-const var514 String (toString/-2075883882 var3999)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r36 
(check-sat)
(get-model)
(get-unsat-core)
; {op/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), arg/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), out/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2003=com.google.javascript.jscomp.jarjar.com.google.re2j.Inst, var711=r0, var3507=$i0, var523=$r31, var1308=$r32, var2637=$i8, var3438=$r33, var2510=$r34, var29=$i9, var3999=$r35, var514=$r36}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Inst=var2003, r0=var711, $i0=var3507, $r31=var523, $r32=var1308, $i8=var2637, $r33=var3438, $r34=var2510, $i9=var29, $r35=var3999, $r36=var514}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Inst;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int op>;	tableswitch($i0) {     case 1: goto $r49 = new java.lang.StringBuilder;     case 2: goto $r43 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r31 = new java.lang.StringBuilder;     case 5: goto return "fail";     case 6: goto return "match";     case 7: goto $r27 = new java.lang.StringBuilder;     case 8: goto $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;     case 9: goto $r9 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r1 = new java.lang.StringBuilder;     default: goto $r55 = new java.lang.IllegalStateException; };	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("empty ");	$i8 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int arg>;	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i8);	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$i9 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int out>;	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i9);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>();	return $r36
;block_num 2