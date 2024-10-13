(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3503 0)
(declare-sort var1823 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun owner/-11258701 (var3503) var1823)
(declare-fun appendTo/-2046790522 (var1823 String) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun prop/-11258701 (var3503) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var3503 var3503)
(declare-const null-String String)
(declare-const var344 var3503) ; Statement: r0 := @this: com.google.javascript.rhino.QualifiedName$GetpropQname 
(assert (not (= var344 null-var3503)))
(declare-const var2682 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2682 null-String)))
(define-const var3029 var1823 (owner/-11258701 var344)) ; Statement: $r2 = r0.<com.google.javascript.rhino.QualifiedName$GetpropQname: com.google.javascript.rhino.QualifiedName owner> 
(assert true)
;(assert (appendTo/-2046790522 var3029 var2682)) ; Statement: virtualinvoke $r2.<com.google.javascript.rhino.QualifiedName: void appendTo(java.lang.StringBuilder)>(r1) 

(declare-const var3029!1 var1823)
(declare-const var2682!1 String)
(assert true)
(define-const var3304 String (append/-1166366385 var2682!1 46)) ; Statement: $r4 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2682!2 String)
(assert (str.prefixof var2682!1 var2682!2))
(define-const var2487 String (prop/-11258701 var344)) ; Statement: $r3 = r0.<com.google.javascript.rhino.QualifiedName$GetpropQname: java.lang.String prop> 
(assert true)
;(assert (append/672562846 var3304 var2487)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3304!1 String)
(assert (= var3304!1 (str.++ var3304 var2487)))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {owner/-11258701=([com.google.javascript.rhino.QualifiedName$GetpropQname], com.google.javascript.rhino.QualifiedName), appendTo/-2046790522=([com.google.javascript.rhino.QualifiedName, java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), prop/-11258701=([com.google.javascript.rhino.QualifiedName$GetpropQname], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var3503=com.google.javascript.rhino.QualifiedName$GetpropQname, var344=r0, var2682=r1, var1823=com.google.javascript.rhino.QualifiedName, var3029=$r2, var3304=$r4, var2487=$r3}
; {com.google.javascript.rhino.QualifiedName$GetpropQname=var3503, r0=var344, r1=var2682, com.google.javascript.rhino.QualifiedName=var1823, $r2=var3029, $r4=var3304, $r3=var2487}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @this: com.google.javascript.rhino.QualifiedName$GetpropQname;	r1 := @parameter0: java.lang.StringBuilder;	$r2 = r0.<com.google.javascript.rhino.QualifiedName$GetpropQname: com.google.javascript.rhino.QualifiedName owner>;	virtualinvoke $r2.<com.google.javascript.rhino.QualifiedName: void appendTo(java.lang.StringBuilder)>(r1);	$r4 = virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r3 = r0.<com.google.javascript.rhino.QualifiedName$GetpropQname: java.lang.String prop>;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	return
;block_num 1