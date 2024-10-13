(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3787 0)
(declare-sort var2340 0)
(declare-sort var1960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun beginLine/197050796 (var3787) Int)
(declare-fun beginColumn/197050796 (var3787) Int)
(declare-fun kind/197050796 (var3787) Int)
(declare-fun image/197050796 (var3787) String)
(declare-fun var1960_addUnicodeEscapes/1686793564 (String) String)
(declare-fun print/-2007916749 (var2340 String) void)
(declare-fun endLine/197050796 (var3787) Int)
(declare-fun endColumn/197050796 (var3787) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var3787 var3787)
(declare-const null-var2340 var2340)
(declare-const var1960-cline Int)
(declare-const var1960-ccol Int)
(declare-const var2821 var3787) ; Statement: r0 := @parameter0: org.javacc.parser.Token 
(assert (not (= var2821 null-var3787)))
(declare-const var1051 var2340) ; Statement: r1 := @parameter1: java.io.PrintWriter 
(assert (not (= var1051 null-var2340)))
(assert true) ; Non Conditional
(define-const var3687 Int var1960-cline) ; Statement: $i1 = <org.javacc.parser.JavaCCGlobals: int cline> 
(define-const var282 Int (beginLine/197050796 var2821)) ; Statement: $i0 = r0.<org.javacc.parser.Token: int beginLine> 
 ; Statement: if $i1 >= $i0 goto $i3 = <org.javacc.parser.JavaCCGlobals: int ccol> 
(assert (>= var3687 var282)) ; Cond: $i1 >= $i0 
(define-const var3233 Int var1960-ccol) ; Statement: $i3 = <org.javacc.parser.JavaCCGlobals: int ccol> 
(define-const var2572 Int (beginColumn/197050796 var2821)) ; Statement: $i2 = r0.<org.javacc.parser.Token: int beginColumn> 
 ; Statement: if $i3 >= $i2 goto $i4 = r0.<org.javacc.parser.Token: int kind> 
(assert (>= var3233 var2572)) ; Cond: $i3 >= $i2 
(define-const var3195 Int (kind/197050796 var2821)) ; Statement: $i4 = r0.<org.javacc.parser.Token: int kind> 
 ; Statement: if $i4 == 94 goto $r2 = r0.<org.javacc.parser.Token: java.lang.String image> 
(assert (= var3195 94)) ; Cond: $i4 == 94 
(define-const var1778 String (image/197050796 var2821)) ; Statement: $r2 = r0.<org.javacc.parser.Token: java.lang.String image> 
(define-const var3739 String (var1960_addUnicodeEscapes/1686793564 var1778)) ; Statement: $r3 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String addUnicodeEscapes(java.lang.String)>($r2) 
(assert true)
;(assert (print/-2007916749 var1051 var3739)) ; Statement: virtualinvoke r1.<java.io.PrintWriter: void print(java.lang.String)>($r3) 

(declare-const var1051!1 var2340)
(declare-const var3739!1 String)
 ; Statement: goto [?= $i5 = r0.<org.javacc.parser.Token: int endLine>] 
(assert true) ; Non Conditional
(define-const var604 Int (endLine/197050796 var2821)) ; Statement: $i5 = r0.<org.javacc.parser.Token: int endLine> 
(define-const var7 Int var604) ; Statement: <org.javacc.parser.JavaCCGlobals: int cline> = $i5 
(define-const var2707 Int (endColumn/197050796 var2821)) ; Statement: $i6 = r0.<org.javacc.parser.Token: int endColumn> 
(define-const var539 Int (+ var2707 1)) ; Statement: $i7 = $i6 + 1 
(define-const var1186 Int var539) ; Statement: <org.javacc.parser.JavaCCGlobals: int ccol> = $i7 
(define-const var1627 String (image/197050796 var2821)) ; Statement: $r5 = r0.<org.javacc.parser.Token: java.lang.String image> 
(define-const var596 String (image/197050796 var2821)) ; Statement: $r4 = r0.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var3013 Int (length/-134980193 var596)) ; Statement: $i8 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var3314 Int (- var3013 1)) ; Statement: $i9 = $i8 - 1 
(assert (and true (and (> (str.len var1627) var3314) (<= 0 var3314))))
(define-const var1630 Int (charAt/698050440 var1627 var3314)) ; Statement: $c13 = virtualinvoke $r5.<java.lang.String: char charAt(int)>($i9) 
(define-const var3868 Int (cast-from-Int-to-Int var1630)) ; Statement: $i18 = (int) $c13 
 ; Statement: if $i18 == 10 goto $i10 = <org.javacc.parser.JavaCCGlobals: int cline> 
(assert (= var3868 10)) ; Cond: $i18 == 10 
(define-const var3975 Int var1960-cline) ; Statement: $i10 = <org.javacc.parser.JavaCCGlobals: int cline> 
(define-const var2467 Int (+ var3975 1)) ; Statement: $i11 = $i10 + 1 
(define-const var1023 Int var2467) ; Statement: <org.javacc.parser.JavaCCGlobals: int cline> = $i11 
(define-const var2231 Int 1) ; Statement: <org.javacc.parser.JavaCCGlobals: int ccol> = 1 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {beginLine/197050796=([org.javacc.parser.Token], int), beginColumn/197050796=([org.javacc.parser.Token], int), kind/197050796=([org.javacc.parser.Token], int), image/197050796=([org.javacc.parser.Token], java.lang.String), var1960_addUnicodeEscapes/1686793564=([java.lang.String], java.lang.String), print/-2007916749=([java.io.PrintWriter, java.lang.String], void), endLine/197050796=([org.javacc.parser.Token], int), endColumn/197050796=([org.javacc.parser.Token], int), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var3787=org.javacc.parser.Token, var2821=r0, var2340=java.io.PrintWriter, var1051=r1, var1960=org.javacc.parser.JavaCCGlobals, var3687=$i1, var282=$i0, var3233=$i3, var2572=$i2, var3195=$i4, var1778=$r2, var3739=$r3, var604=$i5, var7=<org.javacc.parser.JavaCCGlobals: int cline>, var2707=$i6, var539=$i7, var1186=<org.javacc.parser.JavaCCGlobals: int ccol>, var1627=$r5, var596=$r4, var3013=$i8, var3314=$i9, var1630=$c13, var3868=$i18, var3975=$i10, var2467=$i11, var1023=<org.javacc.parser.JavaCCGlobals: int cline>, var2231=<org.javacc.parser.JavaCCGlobals: int ccol>}
; {org.javacc.parser.Token=var3787, r0=var2821, java.io.PrintWriter=var2340, r1=var1051, org.javacc.parser.JavaCCGlobals=var1960, $i1=var3687, $i0=var282, $i3=var3233, $i2=var2572, $i4=var3195, $r2=var1778, $r3=var3739, $i5=var604, <org.javacc.parser.JavaCCGlobals: int cline>=var7, $i6=var2707, $i7=var539, <org.javacc.parser.JavaCCGlobals: int ccol>=var1186, $r5=var1627, $r4=var596, $i8=var3013, $i9=var3314, $c13=var1630, $i18=var3868, $i10=var3975, $i11=var2467, <org.javacc.parser.JavaCCGlobals: int cline>=var1023, <org.javacc.parser.JavaCCGlobals: int ccol>=var2231}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: org.javacc.parser.Token;	r1 := @parameter1: java.io.PrintWriter;	$i1 = <org.javacc.parser.JavaCCGlobals: int cline>;	$i0 = r0.<org.javacc.parser.Token: int beginLine>;	if $i1 >= $i0 goto $i3 = <org.javacc.parser.JavaCCGlobals: int ccol>;	$i3 = <org.javacc.parser.JavaCCGlobals: int ccol>;	$i2 = r0.<org.javacc.parser.Token: int beginColumn>;	if $i3 >= $i2 goto $i4 = r0.<org.javacc.parser.Token: int kind>;	$i4 = r0.<org.javacc.parser.Token: int kind>;	if $i4 == 94 goto $r2 = r0.<org.javacc.parser.Token: java.lang.String image>;	$r2 = r0.<org.javacc.parser.Token: java.lang.String image>;	$r3 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String addUnicodeEscapes(java.lang.String)>($r2);	virtualinvoke r1.<java.io.PrintWriter: void print(java.lang.String)>($r3);	goto [?= $i5 = r0.<org.javacc.parser.Token: int endLine>];	$i5 = r0.<org.javacc.parser.Token: int endLine>;	<org.javacc.parser.JavaCCGlobals: int cline> = $i5;	$i6 = r0.<org.javacc.parser.Token: int endColumn>;	$i7 = $i6 + 1;	<org.javacc.parser.JavaCCGlobals: int ccol> = $i7;	$r5 = r0.<org.javacc.parser.Token: java.lang.String image>;	$r4 = r0.<org.javacc.parser.Token: java.lang.String image>;	$i8 = virtualinvoke $r4.<java.lang.String: int length()>();	$i9 = $i8 - 1;	$c13 = virtualinvoke $r5.<java.lang.String: char charAt(int)>($i9);	$i18 = (int) $c13;	if $i18 == 10 goto $i10 = <org.javacc.parser.JavaCCGlobals: int cline>;	$i10 = <org.javacc.parser.JavaCCGlobals: int cline>;	$i11 = $i10 + 1;	<org.javacc.parser.JavaCCGlobals: int cline> = $i11;	<org.javacc.parser.JavaCCGlobals: int ccol> = 1;	return
;block_num 8