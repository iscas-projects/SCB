(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var874 0)
(declare-sort var2841 0)
(declare-sort var985 0)
(declare-sort var260 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun legacyScriptNamespacesAndPrefixes/-2005638214 (var874) var985)
(declare-fun var985_add/-1142548109 (var985 var260) Bool)
(declare-fun cast-from-String-to-var260 (String) var260)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var874 var874)
(declare-const null-String String)
(declare-const var2912 var874) ; Statement: r0 := @this: com.google.javascript.jscomp.ClosureRewriteModule 
(assert (not (= var2912 null-var874)))
(declare-const var15 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var15 null-String)))
(define-const var3074 var985 (legacyScriptNamespacesAndPrefixes/-2005638214 var2912)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.ClosureRewriteModule: java.util.Set legacyScriptNamespacesAndPrefixes> 
;(assert (var985_add/-1142548109 var3074 (cast-from-String-to-var260 var15))) ; Statement: interfaceinvoke $r1.<java.util.Set: boolean add(java.lang.Object)>(r3) 

(declare-const var3074!1 var985)
(declare-const var15!1 String)
(assert true)
(define-const var1904 Int (lastIndexOf/-1292097097 var15!1 46)) ; Statement: i0 = virtualinvoke r3.<java.lang.String: int lastIndexOf(int)>(46) 
(assert true) ; Non Conditional
(define-const var2135 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i2 = (int) -1 
 ; Statement: if i0 == $i2 goto return 
(assert (= var1904 var2135)) ; Cond: i0 == $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {legacyScriptNamespacesAndPrefixes/-2005638214=([com.google.javascript.jscomp.ClosureRewriteModule], java.util.Set), var985_add/-1142548109=([java.util.Set, java.lang.Object], boolean), cast-from-String-to-var260=([java.lang.String], java.lang.Object), lastIndexOf/-1292097097=([java.lang.String, int], int), cast-from-Int-to-Int=([int], int)}
; {var874=com.google.javascript.jscomp.ClosureRewriteModule, var2912=r0, var15=r3, var2841=null_type, var985=java.util.Set, var3074=$r1, var260=java.lang.Object, var1904=i0, var2135=$i2}
; {com.google.javascript.jscomp.ClosureRewriteModule=var874, r0=var2912, r3=var15, null_type=var2841, java.util.Set=var985, $r1=var3074, java.lang.Object=var260, i0=var1904, $i2=var2135}
;seq <java.lang.String: int lastIndexOf(int)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.ClosureRewriteModule;	r3 := @parameter0: java.lang.String;	$r1 = r0.<com.google.javascript.jscomp.ClosureRewriteModule: java.util.Set legacyScriptNamespacesAndPrefixes>;	interfaceinvoke $r1.<java.util.Set: boolean add(java.lang.Object)>(r3);	i0 = virtualinvoke r3.<java.lang.String: int lastIndexOf(int)>(46);	$i2 = (int) -1;	if i0 == $i2 goto return;	return
;block_num 3