(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var598 0)
(declare-sort var2352 0)
(declare-sort var2292 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun token/55237717 (var598) var2352)
(declare-fun append/-1031950772 (String var2292) String)
(declare-fun cast-from-var2352-to-var2292 (var2352) var2292)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun getString/-897720134 (var598) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var598 var598)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3317 var598) ; Statement: r1 := @this: com.google.javascript.rhino.Node 
(assert (not (= var3317 null-var598)))
(declare-const var794 String) ; Statement: r0 := @parameter0: java.lang.StringBuilder 
(assert (not (= var794 null-String)))
(declare-const var1938 Bool) ; Statement: z1 := @parameter1: boolean 
(assert (not (= var1938 null-Bool)))
(declare-const var1944 Bool) ; Statement: z2 := @parameter2: boolean 
(assert (not (= var1944 null-Bool)))
(declare-const var2904 Bool) ; Statement: z3 := @parameter3: boolean 
(assert (not (= var2904 null-Bool)))
(define-const var3683 var2352 (token/55237717 var3317)) ; Statement: $r2 = r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token token> 
(assert true)
;(assert (append/-1031950772 var794 (cast-from-var2352-to-var2292 var3683))) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var794!1 String)
(assert (str.prefixof var794 var794!1))
(define-const var902 Bool false) ; Statement: $z0 = r1 instanceof com.google.javascript.rhino.Node$StringNode 
 ; Statement: if $z0 == 0 goto $r4 = r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token token> 
(assert (not (= (ite var902 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
;(assert (append/-1166366385 var794!1 32)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var794!2 String)
(assert (str.prefixof var794!1 var794!2))
(assert true)
(define-const var1090 String (getString/-897720134 var3317)) ; Statement: $r22 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>() 
(assert true)
;(assert (append/672562846 var794!2 var1090)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var794!3 String)
(assert (= var794!3 (str.++ var794!2 var1090)))
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z1 == 0 goto (branch) 
(assert (= (ite var1938 1 0) 0)) ; Cond: z1 == 0 
 ; Statement: if z2 == 0 goto (branch) 
(assert (= (ite var1944 1 0) 0)) ; Cond: z2 == 0 
 ; Statement: if z3 == 0 goto return 
(assert (= (ite var2904 1 0) 0)) ; Cond: z3 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {token/55237717=([com.google.javascript.rhino.Node], com.google.javascript.rhino.Token), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2352-to-var2292=([com.google.javascript.rhino.Token], java.lang.Object), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), getString/-897720134=([com.google.javascript.rhino.Node], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var598=com.google.javascript.rhino.Node, var3317=r1, var794=r0, var1938=z1, var1944=z2, var2904=z3, var2352=com.google.javascript.rhino.Token, var3683=$r2, var2292=java.lang.Object, var902=$z0, var1090=$r22}
; {com.google.javascript.rhino.Node=var598, r1=var3317, r0=var794, z1=var1938, z2=var1944, z3=var2904, com.google.javascript.rhino.Token=var2352, $r2=var3683, java.lang.Object=var2292, $z0=var902, $r22=var1090}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r1 := @this: com.google.javascript.rhino.Node;	r0 := @parameter0: java.lang.StringBuilder;	z1 := @parameter1: boolean;	z2 := @parameter2: boolean;	z3 := @parameter3: boolean;	$r2 = r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token token>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$z0 = r1 instanceof com.google.javascript.rhino.Node$StringNode;	if $z0 == 0 goto $r4 = r1.<com.google.javascript.rhino.Node: com.google.javascript.rhino.Token token>;	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r22 = virtualinvoke r1.<com.google.javascript.rhino.Node: java.lang.String getString()>();	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	goto [?= (branch)];	if z1 == 0 goto (branch);	if z2 == 0 goto (branch);	if z3 == 0 goto return;	return
;block_num 6