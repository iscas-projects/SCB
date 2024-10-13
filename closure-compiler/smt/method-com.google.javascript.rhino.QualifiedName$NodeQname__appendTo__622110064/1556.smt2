(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3315 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun join/1545614924 (var3315) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3315 var3315)
(declare-const null-String String)
(declare-const var1275 var3315) ; Statement: r1 := @this: com.google.javascript.rhino.QualifiedName$NodeQname 
(assert (not (= var1275 null-var3315)))
(declare-const var619 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var619 null-String)))
(assert true)
(define-const var1753 String (join/1545614924 var1275)) ; Statement: $r2 = virtualinvoke r1.<com.google.javascript.rhino.QualifiedName$NodeQname: java.lang.String join()>() 
(assert true)
;(assert (append/672562846 var619 var1753)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var619!1 String)
(assert (= var619!1 (str.++ var619 var1753)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {join/1545614924=([com.google.javascript.rhino.QualifiedName$NodeQname], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3315=com.google.javascript.rhino.QualifiedName$NodeQname, var1275=r1, var619=r0, var1753=$r2}
; {com.google.javascript.rhino.QualifiedName$NodeQname=var3315, r1=var1275, r0=var619, $r2=var1753}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.rhino.QualifiedName$NodeQname;	r0 := @parameter0: java.lang.StringBuilder;	$r2 = virtualinvoke r1.<com.google.javascript.rhino.QualifiedName$NodeQname: java.lang.String join()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	return
;block_num 1