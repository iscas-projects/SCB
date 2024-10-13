(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3349 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun deleteChars/-1001244198 (var3349) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var3349 var3349)
(declare-const null-Int Int)
(declare-const var2409 var3349) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$DeleteCharacters 
(assert (not (= var2409 null-var3349)))
(declare-const var554 Int) ; Statement: c1 := @parameter0: char 
(assert (not (= var554 null-Int)))
(define-const var3207 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var1942 String (deleteChars/-1001244198 var2409)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$DeleteCharacters: java.lang.String deleteChars> 
(assert true)
(define-const var1601 Int (length/-134980193 var1942)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
 ; Statement: if i3 >= $i0 goto return 0 
(assert (>= var3207 var1601)) ; Cond: i3 >= $i0 
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {deleteChars/-1001244198=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$DeleteCharacters], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var3349=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$DeleteCharacters, var2409=r0, var554=c1, var3207=i3, var1942=$r1, var1601=$i0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$DeleteCharacters=var3349, r0=var2409, c1=var554, i3=var3207, $r1=var1942, $i0=var1601}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$DeleteCharacters;	c1 := @parameter0: char;	i3 = 0;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.filters.TokenFilter$DeleteCharacters: java.lang.String deleteChars>;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	if i3 >= $i0 goto return 0;	return 0
;block_num 3