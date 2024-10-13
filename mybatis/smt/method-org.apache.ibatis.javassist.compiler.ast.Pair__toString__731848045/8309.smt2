(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2365 0)
(declare-sort var2321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun left/-269031027 (var2365) var2321)
(declare-fun right/-269031027 (var2365) var2321)
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2365 var2365)
(declare-const null-var2321 var2321)
(declare-const var1260 var2365) ; Statement: r1 := @this: org.apache.ibatis.javassist.compiler.ast.Pair 
(assert (not (= var1260 null-var2365)))
(define-const var1637 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1637)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1637!1 String)
(assert (= var1637!1 ""))
(assert true)
;(assert (append/672562846 var1637!1 "(<Pair> ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(<Pair> ") 
(declare-const var1637!2 String)
(assert (= var1637!2 (str.++ var1637!1 "(<Pair> ")))
(define-const var1970 var2321 (left/-269031027 var1260)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left> 
 ; Statement: if $r2 != null goto $r3 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left> 
(assert (not (not (= var1970 null-var2321)))) ; Negate: Cond: $r2 != null  
(define-const var2790 String "<null>") ; Statement: $r7 = "<null>" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1637!2 var2790)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1637!3 String)
(assert (= var1637!3 (str.++ var1637!2 var2790)))
(assert true)
;(assert (append/672562846 var1637!3 " . ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" . ") 
(declare-const var1637!4 String)
(assert (= var1637!4 (str.++ var1637!3 " . ")))
(define-const var810 var2321 (right/-269031027 var1260)) ; Statement: $r4 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right> 
 ; Statement: if $r4 != null goto $r5 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right> 
(assert (not (not (= var810 null-var2321)))) ; Negate: Cond: $r4 != null  
(define-const var913 String "<null>") ; Statement: $r8 = "<null>" 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1637!4 var913)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1637!5 String)
(assert (= var1637!5 (str.++ var1637!4 var913)))
(assert true)
;(assert (append/-1166366385 var1637!5 41)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41) 
(declare-const var1637!6 String)
(assert (str.prefixof var1637!5 var1637!6))
(assert true)
(define-const var582 String (toString/-2075883882 var1637!6)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), left/-269031027=([org.apache.ibatis.javassist.compiler.ast.Pair], org.apache.ibatis.javassist.compiler.ast.ASTree), right/-269031027=([org.apache.ibatis.javassist.compiler.ast.Pair], org.apache.ibatis.javassist.compiler.ast.ASTree), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2365=org.apache.ibatis.javassist.compiler.ast.Pair, var1260=r1, var1637=$r0, var2321=org.apache.ibatis.javassist.compiler.ast.ASTree, var1970=$r2, var2790=$r7, var810=$r4, var913=$r8, var582=$r6}
; {org.apache.ibatis.javassist.compiler.ast.Pair=var2365, r1=var1260, $r0=var1637, org.apache.ibatis.javassist.compiler.ast.ASTree=var2321, $r2=var1970, $r7=var2790, $r4=var810, $r8=var913, $r6=var582}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.compiler.ast.Pair;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(<Pair> ");	$r2 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left>;	if $r2 != null goto $r3 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree left>;	$r7 = "<null>";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" . ");	$r4 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right>;	if $r4 != null goto $r5 = r1.<org.apache.ibatis.javassist.compiler.ast.Pair: org.apache.ibatis.javassist.compiler.ast.ASTree right>;	$r8 = "<null>";	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(41);	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 5