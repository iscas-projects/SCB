(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3778 0)
(declare-sort var2646 0)
(declare-sort var1895 0)
(declare-sort var3566 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun var3566_fromUTF16/2025473734 (String) var3566)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3778 var3778)
(declare-const null-String String)
(declare-const null-var1895 var1895)
(declare-const null-Int Int)
(declare-const var857 var3778) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.RE2 
(assert (not (= var857 null-var3778)))
(declare-const var2799 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2799 null-String)))
(declare-const var2250 var1895) ; Statement: r6 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$ReplaceFunc 
(assert (not (= var2250 null-var1895)))
(declare-const var3674 Int) ; Statement: i8 := @parameter2: int 
(assert (not (= var3674 null-Int)))
(define-const var3407 Int 0) ; Statement: i10 = 0 
(define-const var3482 Int 0) ; Statement: i11 = 0 
(define-const var537 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var537)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var537!1 String)
(assert (= var537!1 ""))
(define-const var931 var3566 (var3566_fromUTF16/2025473734 (cast-from-String-to-String var2799))) ; Statement: r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput: com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput fromUTF16(java.lang.CharSequence)>(r1) 
(define-const var853 Int 0) ; Statement: i12 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var209 Int (length/-134980193 var2799)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if i11 > $i0 goto $r9 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i10) 
(assert (> var3482 var209)) ; Cond: i11 > $i0 
(assert (not (and true (and (>= var3407 0) (>= (str.len var2799) var3407)))))
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), var3566_fromUTF16/2025473734=([java.lang.CharSequence], com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int), substring/850833817=([java.lang.String, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3778=com.google.javascript.jscomp.jarjar.com.google.re2j.RE2, var857=r3, var2799=r1, var2646=null_type, var1895=com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$ReplaceFunc, var2250=r6, var3674=i8, var3407=i10, var3482=i11, var537=$r0, var3566=com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput, var931=r2, var853=i12, var209=$i0, var484=$r9, var1435=$r10}
; {com.google.javascript.jscomp.jarjar.com.google.re2j.RE2=var3778, r3=var857, r1=var2799, null_type=var2646, com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$ReplaceFunc=var1895, r6=var2250, i8=var3674, i10=var3407, i11=var3482, $r0=var537, com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput=var3566, r2=var931, i12=var853, $i0=var209, $r9=var484, $r10=var1435}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.com.google.re2j.RE2;	r1 := @parameter0: java.lang.String;	r6 := @parameter1: com.google.javascript.jscomp.jarjar.com.google.re2j.RE2$ReplaceFunc;	i8 := @parameter2: int;	i10 = 0;	i11 = 0;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r2 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput: com.google.javascript.jscomp.jarjar.com.google.re2j.MachineInput fromUTF16(java.lang.CharSequence)>(r1);	i12 = 0;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	if i11 > $i0 goto $r9 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i10);	$r9 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(i10);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r10 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3