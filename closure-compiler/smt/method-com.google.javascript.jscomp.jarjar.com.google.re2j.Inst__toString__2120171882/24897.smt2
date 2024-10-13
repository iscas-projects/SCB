(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var858 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun op/1283148626 (var858) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun out/1283148626 (var858) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun arg/1283148626 (var858) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var858 var858)
(declare-const var2475 var858) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Inst 
(assert (not (= var2475 null-var858)))
(define-const var2864 Int (op/1283148626 var2475)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int op> 
 ; Statement: tableswitch($i0) {     case 1: goto $r49 = new java.lang.StringBuilder;     case 2: goto $r43 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r31 = new java.lang.StringBuilder;     case 5: goto return "fail";     case 6: goto return "match";     case 7: goto $r27 = new java.lang.StringBuilder;     case 8: goto $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;     case 9: goto $r9 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r1 = new java.lang.StringBuilder;     default: goto $r55 = new java.lang.IllegalStateException; } 
(assert (and (= var2864 2) (and (not (= var2864 1)) true))) ; Intersect: Cond: $i0 == 2  and Intersect: Negate: Cond: $i0 == 1   and Non Conditional  
(define-const var3116 String String-init) ; Statement: $r43 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3116)) ; Statement: specialinvoke $r43.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3116!1 String)
(assert (= var3116!1 ""))
(assert true)
(define-const var2459 String (append/672562846 var3116!1 "altmatch -> ")) ; Statement: $r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("altmatch -> ") 
(declare-const var3116!2 String)
(assert (= var3116!2 (str.++ var3116!1 "altmatch -> ")))
(define-const var505 Int (out/1283148626 var2475)) ; Statement: $i12 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int out> 
(assert true)
(define-const var467 String (append/-1001720160 var2459 var505)) ; Statement: $r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12) 
(declare-const var2459!1 String)
(assert (str.prefixof var2459 var2459!1))
(assert true)
(define-const var2282 String (append/672562846 var467 ", ")) ; Statement: $r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var467!1 String)
(assert (= var467!1 (str.++ var467 ", ")))
(define-const var1112 Int (arg/1283148626 var2475)) ; Statement: $i13 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int arg> 
(assert true)
(define-const var3800 String (append/-1001720160 var2282 var1112)) ; Statement: $r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i13) 
(declare-const var2282!1 String)
(assert (str.prefixof var2282 var2282!1))
(assert true)
(define-const var3781 String (toString/-2075883882 var3800)) ; Statement: $r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r48 
(check-sat)
(get-model)
(get-unsat-core)
; {op/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), out/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), arg/1283148626=([com.google.javascript.jscomp.jarjar.com.google.re2j.Inst], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var858=com.google.javascript.jscomp.jarjar.com.google.re2j.Inst, var2475=r0, var2864=$i0, var3116=$r43, var2459=$r44, var505=$i12, var467=$r45, var2282=$r46, var1112=$i13, var3800=$r47, var3781=$r48}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.Inst=var858, r0=var2475, $i0=var2864, $r43=var3116, $r44=var2459, $i12=var505, $r45=var467, $r46=var2282, $i13=var1112, $r47=var3800, $r48=var3781}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.Inst;	$i0 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int op>;	tableswitch($i0) {     case 1: goto $r49 = new java.lang.StringBuilder;     case 2: goto $r43 = new java.lang.StringBuilder;     case 3: goto $r37 = new java.lang.StringBuilder;     case 4: goto $r31 = new java.lang.StringBuilder;     case 5: goto return "fail";     case 6: goto return "match";     case 7: goto $r27 = new java.lang.StringBuilder;     case 8: goto $r17 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int[] runes>;     case 9: goto $r9 = new java.lang.StringBuilder;     case 10: goto $r5 = new java.lang.StringBuilder;     case 11: goto $r1 = new java.lang.StringBuilder;     default: goto $r55 = new java.lang.IllegalStateException; };	$r43 = new java.lang.StringBuilder;	specialinvoke $r43.<java.lang.StringBuilder: void <init>()>();	$r44 = virtualinvoke $r43.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("altmatch -> ");	$i12 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int out>;	$r45 = virtualinvoke $r44.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i12);	$r46 = virtualinvoke $r45.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$i13 = r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.Inst: int arg>;	$r47 = virtualinvoke $r46.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i13);	$r48 = virtualinvoke $r47.<java.lang.StringBuilder: java.lang.String toString()>();	return $r48
;block_num 2