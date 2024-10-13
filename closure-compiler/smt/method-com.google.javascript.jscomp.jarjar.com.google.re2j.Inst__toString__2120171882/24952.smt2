(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2128 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun op/1283148626 (var2128) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun runes/1283148626 (var2128) (Array Int Int))
(declare-fun var2128_escapeRunes/972616399 ((Array Int Int)) String)
(declare-fun out/1283148626 (var2128) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2128 var2128)
(declare-const var1504 var2128) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Inst 
(assert (not (= var1504 null-var2128)))
(define-const var2685 Int (op/1283148626 var1504)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int op> 
 ; Statement: tableswitch($i0) {     case 1: goto $r49 = new java.lang.StringBuilder;     case 2: goto $r43 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r31 = new java.lang.StringBuilder;     case 5: goto return "fail";     case 6: goto return "match";     case 7: goto $r27 = new java.lang.StringBuilder;     case 8: goto $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;     case 9: goto $r9 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r1 = new java.lang.StringBuilder;     default: goto $r55 = new java.lang.IllegalStateException; } 
(assert (and (= var2685 9) (and (not (= var2685 8)) (and (not (= var2685 7)) (and (not (= var2685 6)) (and (not (= var2685 5)) (and (not (= var2685 4)) (and (not (= var2685 3)) (and (not (= var2685 2)) (and (not (= var2685 1)) true)))))))))) ; Intersect: Cond: $i0 == 9  and Intersect: Negate: Cond: $i0 == 8   and Intersect: Negate: Cond: $i0 == 7   and Intersect: Negate: Cond: $i0 == 6   and Intersect: Negate: Cond: $i0 == 5   and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Non Conditional         
(define-const var2757 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2757)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2757!1 String)
(assert (= var2757!1 ""))
(assert true)
(define-const var1373 String (append/672562846 var2757!1 "rune1 ")) ; Statement: $r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rune1 ") 
(declare-const var2757!2 String)
(assert (= var2757!2 (str.++ var2757!1 "rune1 ")))
(define-const var1443 (Array Int Int) (runes/1283148626 var1504)) ; Statement: $r10 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes> 
(define-const var215 String (var2128_escapeRunes/972616399 var1443)) ; Statement: $r11 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: java.lang.String escapeRunes(int[])>($r10) 
(assert true)
(define-const var25 String (append/672562846 var1373 var215)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var1373!1 String)
(assert (= var1373!1 (str.++ var1373 var215)))
(assert true)
(define-const var3252 String (append/672562846 var25 " -> ")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ") 
(declare-const var25!1 String)
(assert (= var25!1 (str.++ var25 " -> ")))
(define-const var3634 Int (out/1283148626 var1504)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int out> 
(assert true)
(define-const var1654 String (append/-1001720160 var3252 var3634)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var3252!1 String)
(assert (str.prefixof var3252 var3252!1))
(assert true)
(define-const var351 String (toString/-2075883882 var1654)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {op/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), runes/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int[]), var2128_escapeRunes/972616399=([int[]], java.lang.String), out/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2128=com.google.javascript.jscomp.jarjar.com.google.re2j.Inst, var1504=r0, var2685=$i0, var2757=$r9, var1373=$r12, var1443=$r10, var215=$r11, var25=$r13, var3252=$r14, var3634=$i3, var1654=$r15, var351=$r16}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Inst=var2128, r0=var1504, $i0=var2685, $r9=var2757, $r12=var1373, $r10=var1443, $r11=var215, $r13=var25, $r14=var3252, $i3=var3634, $r15=var1654, $r16=var351}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Inst;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int op>;	tableswitch($i0) {     case 1: goto $r49 = new java.lang.StringBuilder;     case 2: goto $r43 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r31 = new java.lang.StringBuilder;     case 5: goto return "fail";     case 6: goto return "match";     case 7: goto $r27 = new java.lang.StringBuilder;     case 8: goto $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;     case 9: goto $r9 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r1 = new java.lang.StringBuilder;     default: goto $r55 = new java.lang.IllegalStateException; };	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("rune1 ");	$r10 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;	$r11 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: java.lang.String escapeRunes(int[])>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" -> ");	$i3 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int out>;	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.String toString()>();	return $r16
;block_num 2