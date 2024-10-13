(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var857 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun op/1283148626 (var857) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun out/1283148626 (var857) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var857 var857)
(declare-const var2386 var857) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Inst 
(assert (not (= var2386 null-var857)))
(define-const var1639 Int (op/1283148626 var2386)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int op> 
 ; Statement: tableswitch($i0) {     case 1: goto $r49 = new java.lang.StringBuilder;     case 2: goto $r43 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r31 = new java.lang.StringBuilder;     case 5: goto return "fail";     case 6: goto return "match";     case 7: goto $r27 = new java.lang.StringBuilder;     case 8: goto $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;     case 9: goto $r9 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r1 = new java.lang.StringBuilder;     default: goto $r55 = new java.lang.IllegalStateException; } 
(assert (and (= var1639 7) (and (not (= var1639 6)) (and (not (= var1639 5)) (and (not (= var1639 4)) (and (not (= var1639 3)) (and (not (= var1639 2)) (and (not (= var1639 1)) true)))))))) ; Intersect: Cond: $i0 == 7  and Intersect: Negate: Cond: $i0 == 6   and Intersect: Negate: Cond: $i0 == 5   and Intersect: Negate: Cond: $i0 == 4   and Intersect: Negate: Cond: $i0 == 3   and Intersect: Negate: Cond: $i0 == 2   and Intersect: Negate: Cond: $i0 == 1   and Non Conditional       
(define-const var291 String String-init) ; Statement: $r27 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var291)) ; Statement: specialinvoke $r27.<java.lang.StringBuilder: void <init>()>() 
(declare-const var291!1 String)
(assert (= var291!1 ""))
(assert true)
(define-const var1359 String (append/672562846 var291!1 "nop -> ")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nop -> ") 
(declare-const var291!2 String)
(assert (= var291!2 (str.++ var291!1 "nop -> ")))
(define-const var2525 Int (out/1283148626 var2386)) ; Statement: $i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int out> 
(assert true)
(define-const var1889 String (append/-1001720160 var1359 var2525)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7) 
(declare-const var1359!1 String)
(assert (str.prefixof var1359 var1359!1))
(assert true)
(define-const var2000 String (toString/-2075883882 var1889)) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {op/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), out/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var857=com.google.javascript.jscomp.jarjar.com.google.re2j.Inst, var2386=r0, var1639=$i0, var291=$r27, var1359=$r28, var2525=$i7, var1889=$r29, var2000=$r30}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Inst=var857, r0=var2386, $i0=var1639, $r27=var291, $r28=var1359, $i7=var2525, $r29=var1889, $r30=var2000}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Inst;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int op>;	tableswitch($i0) {     case 1: goto $r49 = new java.lang.StringBuilder;     case 2: goto $r43 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r31 = new java.lang.StringBuilder;     case 5: goto return "fail";     case 6: goto return "match";     case 7: goto $r27 = new java.lang.StringBuilder;     case 8: goto $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;     case 9: goto $r9 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r1 = new java.lang.StringBuilder;     default: goto $r55 = new java.lang.IllegalStateException; };	$r27 = new java.lang.StringBuilder;	specialinvoke $r27.<java.lang.StringBuilder: void <init>()>();	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("nop -> ");	$i7 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int out>;	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i7);	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.String toString()>();	return $r30
;block_num 2