(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3444 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3444-init () var3444)
(declare-fun String_length/-667254855 (String) Int)
(declare-fun <init>/1316064077 (var3444 String Int Int) void)
(declare-const null-String String)
(declare-const var3273 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var3273 null-String)))
(define-const var3010 var3444 var3444-init) ; Statement: $r0 = new com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input 
(define-const var2868 Int (String_length/-667254855 var3273)) ; Statement: $i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>() 
(assert true)
;(assert (<init>/1316064077 var3010 var3273 0 var2868)) ; Statement: specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input: void <init>(java.lang.CharSequence,int,int)>(r1, 0, $i0) 

(declare-const var3010!1 var3444)
(declare-const var3273!1 String)
(declare-const var624 Int)
(declare-const var2868!1 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3444-init=([], com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input), String_length/-667254855=([java.lang.CharSequence], int), <init>/1316064077=([com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input, java.lang.CharSequence, int, int], void)}
; {var3273=r1, var3444=com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input, var3010=$r0, var2868=$i0, var624=0}
; {r1=var3273, com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input=var3444, $r0=var3010, $i0=var2868, 0=var624}
;seq <java.lang.CharSequence: int length()>
;cnt {"<java.lang.CharSequence: int length()>": 1}
;stmts r1 := @parameter0: java.lang.CharSequence;	$r0 = new com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input;	$i0 = interfaceinvoke r1.<java.lang.CharSequence: int length()>();	specialinvoke $r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput$UTF16Input: void <init>(java.lang.CharSequence,int,int)>(r1, 0, $i0);	return $r0
;block_num 1