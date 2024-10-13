(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2182 0)
(declare-sort var3467 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkNotClosed/1581773351 (var2182) void)
(declare-fun target/-708181309 (var2182) var3467)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun var3467_append/1177541664 (var3467 String) var3467)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var2182 var2182)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var2077 var2182) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.AppendableWriter 
(assert (not (= var2077 null-var2182)))
(declare-const var2526 (Array Int Int)) ; Statement: r2 := @parameter0: char[] 
(assert (not (= var2526 null-__Array__Int__Int__)))
(declare-const var2868 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2868 null-Int)))
(declare-const var1894 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var1894 null-Int)))
(assert true)
;(assert (checkNotClosed/1581773351 var2077)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.AppendableWriter: void checkNotClosed()>() 

(declare-const var2077!1 var2182)
(define-const var3357 var3467 (target/-708181309 var2077!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.AppendableWriter: java.lang.Appendable target> 
(define-const var243 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var243 var2526 var2868 var1894)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>(r2, i0, i1) 

(declare-const var243!1 String)
(declare-const var2526!1 (Array Int Int))
(declare-const var2868!1 Int)
(declare-const var1894!1 Int)
;(assert (var3467_append/1177541664 var3357 (cast-from-String-to-String var243!1))) ; Statement: interfaceinvoke $r3.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>($r1) 

(declare-const var3357!1 var3467)
(declare-const var243!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {checkNotClosed/1581773351=([com.google.javascript.jscomp.jarjar.com.google.common.io.AppendableWriter], void), target/-708181309=([com.google.javascript.jscomp.jarjar.com.google.common.io.AppendableWriter], java.lang.Appendable), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), var3467_append/1177541664=([java.lang.Appendable, java.lang.CharSequence], java.lang.Appendable), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2182=com.google.javascript.jscomp.jarjar.com.google.common.io.AppendableWriter, var2077=r0, var2526=r2, var2868=i0, var1894=i1, var3467=java.lang.Appendable, var3357=$r3, var243=$r1}
; {com.google.javascript.jscomp.jarjar.com.google.common.io.AppendableWriter=var2182, r0=var2077, r2=var2526, i0=var2868, i1=var1894, java.lang.Appendable=var3467, $r3=var3357, $r1=var243}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.com.google.common.io.AppendableWriter;	r2 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.AppendableWriter: void checkNotClosed()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.com.google.common.io.AppendableWriter: java.lang.Appendable target>;	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>(r2, i0, i1);	interfaceinvoke $r3.<java.lang.Appendable: java.lang.Appendable append(java.lang.CharSequence)>($r1);	return
;block_num 1