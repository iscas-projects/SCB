(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1938 0)
(declare-sort var2974 0)
(declare-sort var2521 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2521_fromUTF16/2025473734 (String) var2521)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun doExecute/-338585897 (var1938 var2521 Int Int Int) (Array Int Int))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1938 var1938)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var134 var1938) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.RE2 
(assert (not (= var134 null-var1938)))
(declare-const var2835 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2835 null-String)))
(define-const var3712 var2521 (var2521_fromUTF16/2025473734 (cast-from-String-to-String var2835))) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput: com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput fromUTF16(java.lang.CharSequence)>(r1) 
(assert true)
(define-const var2819 (Array Int Int) (doExecute/-338585897 var134 var3712 0 0 2)) ; Statement: r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2: int[] doExecute(com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput,int,int,int)>($r2, 0, 0, 2) 
 ; Statement: if r3 != null goto $i1 = r3[0] 
(assert (not (= var2819 null-__Array__Int__Int__))) ; Cond: r3 != null 
(define-const var3641 Int (select var2819 0)) ; Statement: $i1 = r3[0] 
(define-const var3257 Int (select var2819 1)) ; Statement: $i0 = r3[1] 
(assert (not (and true (and (>= var3641 0) (>= (str.len var2835) var3257) (>= var3257 var3641)))))
(check-sat)
(get-model)
(get-unsat-core)
; {var2521_fromUTF16/2025473734=([java.lang.CharSequence], com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), doExecute/-338585897=([com.google.javascript.jscomp.jarjar.com.google.re2j.RE2, com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput, int, int, int], int[]), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1938=com.google.javascript.jscomp.jarjar.com.google.re2j.RE2, var134=r0, var2835=r1, var2974=null_type, var2521=com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput, var3712=$r2, var2819=r3, var3641=$i1, var3257=$i0, var3082=$r4}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.RE2=var1938, r0=var134, r1=var2835, null_type=var2974, com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput=var2521, $r2=var3712, r3=var2819, $i1=var3641, $i0=var3257, $r4=var3082}
;seq <java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.RE2;	r1 := @parameter0: java.lang.String;	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput: com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput fromUTF16(java.lang.CharSequence)>(r1);	r3 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.re2j.RE2: int[] doExecute(com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput,int,int,int)>($r2, 0, 0, 2);	if r3 != null goto $i1 = r3[0];	$i1 = r3[0];	$i0 = r3[1];	$r4 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int,int)>($i1, $i0);	return $r4
;block_num 2