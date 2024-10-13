(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2523 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun op/1283148626 (var2523) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun out/1283148626 (var2523) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun arg/1283148626 (var2523) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2523 var2523)
(declare-const var3142 var2523) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Inst 
(assert (not (= var3142 null-var2523)))
(define-const var3252 Int (op/1283148626 var3142)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int op> 
 ; Statement: tableswitch($i0) {     case 1: goto $r49 = new java.lang.StringBuilder;     case 2: goto $r43 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r31 = new java.lang.StringBuilder;     case 5: goto return "fail";     case 6: goto return "match";     case 7: goto $r27 = new java.lang.StringBuilder;     case 8: goto $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;     case 9: goto $r9 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r1 = new java.lang.StringBuilder;     default: goto $r55 = new java.lang.IllegalStateException; } 
(assert (and (= var3252 1) true)) ; Intersect: Cond: $i0 == 1  and Non Conditional 
(define-const var1479 String String-init) ; Statement: $r49 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1479)) ; Statement: specialinvoke $r49.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1479!1 String)
(assert (= var1479!1 ""))
(assert true)
(define-const var310 String (append/672562846 var1479!1 "alt -> ")) ; Statement: $r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("alt -> ") 
(declare-const var1479!2 String)
(assert (= var1479!2 (str.++ var1479!1 "alt -> ")))
(define-const var2696 Int (out/1283148626 var3142)) ; Statement: $i14 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int out> 
(assert true)
(define-const var1307 String (append/-1001720160 var310 var2696)) ; Statement: $r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i14) 
(declare-const var310!1 String)
(assert (str.prefixof var310 var310!1))
(assert true)
(define-const var1194 String (append/672562846 var1307 ", ")) ; Statement: $r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1307!1 String)
(assert (= var1307!1 (str.++ var1307 ", ")))
(define-const var606 Int (arg/1283148626 var3142)) ; Statement: $i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int arg> 
(assert true)
(define-const var1228 String (append/-1001720160 var1194 var606)) ; Statement: $r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i15) 
(declare-const var1194!1 String)
(assert (str.prefixof var1194 var1194!1))
(assert true)
(define-const var3413 String (toString/-2075883882 var1228)) ; Statement: $r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r54 
(check-sat)
(get-model)
(get-unsat-core)
; {op/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), out/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), arg/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2523=com.google.javascript.jscomp.jarjar.com.google.re2j.Inst, var3142=r0, var3252=$i0, var1479=$r49, var310=$r50, var2696=$i14, var1307=$r51, var1194=$r52, var606=$i15, var1228=$r53, var3413=$r54}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Inst=var2523, r0=var3142, $i0=var3252, $r49=var1479, $r50=var310, $i14=var2696, $r51=var1307, $r52=var1194, $i15=var606, $r53=var1228, $r54=var3413}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Inst;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int op>;	tableswitch($i0) {     case 1: goto $r49 = new java.lang.StringBuilder;     case 2: goto $r43 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r31 = new java.lang.StringBuilder;     case 5: goto return "fail";     case 6: goto return "match";     case 7: goto $r27 = new java.lang.StringBuilder;     case 8: goto $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;     case 9: goto $r9 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r1 = new java.lang.StringBuilder;     default: goto $r55 = new java.lang.IllegalStateException; };	$r49 = new java.lang.StringBuilder;	specialinvoke $r49.<java.lang.StringBuilder: void <init>()>();	$r50 = virtualinvoke $r49.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("alt -> ");	$i14 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int out>;	$r51 = virtualinvoke $r50.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i14);	$r52 = virtualinvoke $r51.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$i15 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int arg>;	$r53 = virtualinvoke $r52.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i15);	$r54 = virtualinvoke $r53.<java.lang.StringBuilder: java.lang.String toString()>();	return $r54
;block_num 2