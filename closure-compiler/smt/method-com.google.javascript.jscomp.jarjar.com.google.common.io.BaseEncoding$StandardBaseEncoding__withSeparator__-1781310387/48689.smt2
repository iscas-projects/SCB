(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3826 0)
(declare-sort var1052 0)
(declare-sort var3862 0)
(declare-sort var1486 0)
(declare-sort var2722 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun paddingChar/988383717 (var3826) var3862)
(declare-fun var1486-init () var1486)
(declare-fun <init>/-1346027554 (var1486 var2722 String Int) void)
(declare-fun cast-from-var3826-to-var2722 (var3826) var2722)
(declare-const null-var3826 var3826)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-var3862 var3862)
(declare-const var771 var3826) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding 
(assert (not (= var771 null-var3826)))
(declare-const var778 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var778 null-String)))
(declare-const var3866 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var3866 null-Int)))
(define-const var2881 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var516 Int (length/-134980193 var778)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i5 >= $i0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: java.lang.Character paddingChar> 
(assert (>= var2881 var516)) ; Cond: i5 >= $i0 
(define-const var2753 var3862 (paddingChar/988383717 var771)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: java.lang.Character paddingChar> 
 ; Statement: if $r2 == null goto $r6 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding 
(assert (= var2753 null-var3862)) ; Cond: $r2 == null 
(define-const var845 var1486 var1486-init) ; Statement: $r6 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding 
(assert true)
;(assert (<init>/-1346027554 var845 (cast-from-var3826-to-var2722 var771) var778 var3866)) ; Statement: specialinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding,java.lang.String,int)>(r1, r0, i1) 

(declare-const var845!1 var1486)
(declare-const var771!1 var3826)
(declare-const var778!1 String)
(declare-const var3866!1 Int)
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), paddingChar/988383717=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding], java.lang.Character), var1486-init=([], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding), <init>/-1346027554=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding, java.lang.String, int], void), cast-from-var3826-to-var2722=([com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding], com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding)}
; {var3826=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding, var771=r1, var778=r0, var1052=null_type, var3866=i1, var2881=i5, var516=$i0, var3862=java.lang.Character, var2753=$r2, var1486=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding, var845=$r6, var2722=com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding=var3826, r1=var771, r0=var778, null_type=var1052, i1=var3866, i5=var2881, $i0=var516, java.lang.Character=var3862, $r2=var2753, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding=var1486, $r6=var845, com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding=var2722}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding;	r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	i5 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i5 >= $i0 goto $r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: java.lang.Character paddingChar>;	$r2 = r1.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$StandardBaseEncoding: java.lang.Character paddingChar>;	if $r2 == null goto $r6 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding;	$r6 = new com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding;	specialinvoke $r6.<com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding$SeparatedBaseEncoding: void <init>(com.google.javascript.jscomp.jarjar.com.google.common.io.BaseEncoding,java.lang.String,int)>(r1, r0, i1);	return $r6
;block_num 4