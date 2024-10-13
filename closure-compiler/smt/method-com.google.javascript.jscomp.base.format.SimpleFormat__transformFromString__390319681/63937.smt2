(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2650 0)
(declare-sort var2142 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arg/-1920232736 (var2650) var2142)
(declare-fun String_valueOf/-333372740 (var2142) String)
(declare-fun padding/-1138304859 (var2650 String Int) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-const null-var2650 var2650)
(declare-const var2768 var2650) ; Statement: r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat 
(assert (not (= var2768 null-var2650)))
(define-const var1624 var2142 (arg/-1920232736 var2768)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg> 
(define-const var3066 String (String_valueOf/-333372740 var1624)) ; Statement: r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1) 
(assert true)
(define-const var1055 String (padding/-1138304859 var2768 (cast-from-String-to-String var3066) 0)) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.CharSequence padding(java.lang.CharSequence,int)>(r2, 0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {arg/-1920232736=([com.google.javascript.jscomp.base.format.SimpleFormat], java.lang.Object), String_valueOf/-333372740=([java.lang.Object], java.lang.String), padding/-1138304859=([com.google.javascript.jscomp.base.format.SimpleFormat, java.lang.CharSequence, int], java.lang.CharSequence), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence)}
; {var2650=com.google.javascript.jscomp.base.format.SimpleFormat, var2768=r0, var2142=java.lang.Object, var1624=$r1, var3066=r2, var1055=$r3}
; {com.google.javascript.jscomp.base.format.SimpleFormat=var2650, r0=var2768, java.lang.Object=var2142, $r1=var1624, r2=var3066, $r3=var1055}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.base.format.SimpleFormat;	$r1 = r0.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.Object arg>;	r2 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r1);	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.base.format.SimpleFormat: java.lang.CharSequence padding(java.lang.CharSequence,int)>(r2, 0);	return $r3
;block_num 1