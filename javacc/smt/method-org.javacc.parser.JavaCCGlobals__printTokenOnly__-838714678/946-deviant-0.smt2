(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1610 0)
(declare-sort var2763 0)
(declare-sort var1493 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun beginLine/197050796 (var1610) Int)
(declare-fun beginColumn/197050796 (var1610) Int)
(declare-fun kind/197050796 (var1610) Int)
(declare-fun image/197050796 (var1610) String)
(declare-fun var1493_addUnicodeEscapes/1686793564 (String) String)
(declare-fun print/-2007916749 (var2763 String) void)
(declare-fun endLine/197050796 (var1610) Int)
(declare-fun endColumn/197050796 (var1610) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun charAt/698050440 ((s String) (index Int)) Int (str.to_code (str.at s index)))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-var1610 var1610)
(declare-const null-var2763 var2763)
(declare-const var1493-cline Int)
(declare-const var1493-ccol Int)
(declare-const var3308 var1610) ; Statement: r0 := @parameter0: org.javacc.parser.Token 
(assert (not (= var3308 null-var1610)))
(declare-const var359 var2763) ; Statement: r1 := @parameter1: java.io.PrintWriter 
(assert (not (= var359 null-var2763)))
(assert true) ; Non Conditional
(define-const var2400 Int var1493-cline) ; Statement: $i1 = <org.javacc.parser.JavaCCGlobals: int cline> 
(define-const var200 Int (beginLine/197050796 var3308)) ; Statement: $i0 = r0.<org.javacc.parser.Token: int beginLine> 
 ; Statement: if $i1 >= $i0 goto $i3 = <org.javacc.parser.JavaCCGlobals: int ccol> 
(assert (>= var2400 var200)) ; Cond: $i1 >= $i0 
(define-const var3729 Int var1493-ccol) ; Statement: $i3 = <org.javacc.parser.JavaCCGlobals: int ccol> 
(define-const var798 Int (beginColumn/197050796 var3308)) ; Statement: $i2 = r0.<org.javacc.parser.Token: int beginColumn> 
 ; Statement: if $i3 >= $i2 goto $i4 = r0.<org.javacc.parser.Token: int kind> 
(assert (>= var3729 var798)) ; Cond: $i3 >= $i2 
(define-const var1286 Int (kind/197050796 var3308)) ; Statement: $i4 = r0.<org.javacc.parser.Token: int kind> 
 ; Statement: if $i4 == 94 goto $r2 = r0.<org.javacc.parser.Token: java.lang.String image> 
(assert (= var1286 94)) ; Cond: $i4 == 94 
(define-const var3876 String (image/197050796 var3308)) ; Statement: $r2 = r0.<org.javacc.parser.Token: java.lang.String image> 
(define-const var1792 String (var1493_addUnicodeEscapes/1686793564 var3876)) ; Statement: $r3 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String addUnicodeEscapes(java.lang.String)>($r2) 
(assert true)
;(assert (print/-2007916749 var359 var1792)) ; Statement: virtualinvoke r1.<java.io.PrintWriter: void print(java.lang.String)>($r3) 

(declare-const var359!1 var2763)
(declare-const var1792!1 String)
 ; Statement: goto [?= $i5 = r0.<org.javacc.parser.Token: int endLine>] 
(assert true) ; Non Conditional
(define-const var7 Int (endLine/197050796 var3308)) ; Statement: $i5 = r0.<org.javacc.parser.Token: int endLine> 
(define-const var2467 Int var7) ; Statement: <org.javacc.parser.JavaCCGlobals: int cline> = $i5 
(define-const var2433 Int (endColumn/197050796 var3308)) ; Statement: $i6 = r0.<org.javacc.parser.Token: int endColumn> 
(define-const var911 Int (+ var2433 1)) ; Statement: $i7 = $i6 + 1 
(define-const var88 Int var911) ; Statement: <org.javacc.parser.JavaCCGlobals: int ccol> = $i7 
(define-const var769 String (image/197050796 var3308)) ; Statement: $r5 = r0.<org.javacc.parser.Token: java.lang.String image> 
(define-const var2854 String (image/197050796 var3308)) ; Statement: $r4 = r0.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var2266 Int (length/-134980193 var2854)) ; Statement: $i8 = virtualinvoke $r4.<java.lang.String: int length()>() 
(define-const var3337 Int (- var2266 1)) ; Statement: $i9 = $i8 - 1 
(assert (not (and true (and (> (str.len var769) var3337) (<= 0 var3337)))))
(check-sat)
(get-model)
(get-unsat-core)
; {beginLine/197050796=([org.javacc.parser.Token], int), beginColumn/197050796=([org.javacc.parser.Token], int), kind/197050796=([org.javacc.parser.Token], int), image/197050796=([org.javacc.parser.Token], java.lang.String), var1493_addUnicodeEscapes/1686793564=([java.lang.String], java.lang.String), print/-2007916749=([java.io.PrintWriter, java.lang.String], void), endLine/197050796=([org.javacc.parser.Token], int), endColumn/197050796=([org.javacc.parser.Token], int), length/-134980193=([java.lang.String], int), charAt/698050440=([java.lang.String, int], char), cast-from-Int-to-Int=([char], int)}
; {var1610=org.javacc.parser.Token, var3308=r0, var2763=java.io.PrintWriter, var359=r1, var1493=org.javacc.parser.JavaCCGlobals, var2400=$i1, var200=$i0, var3729=$i3, var798=$i2, var1286=$i4, var3876=$r2, var1792=$r3, var7=$i5, var2467=<org.javacc.parser.JavaCCGlobals: int cline>, var2433=$i6, var911=$i7, var88=<org.javacc.parser.JavaCCGlobals: int ccol>, var769=$r5, var2854=$r4, var2266=$i8, var3337=$i9, var1917=$c13, var1387=$i18, var2623=$i19}
; {org.javacc.parser.Token=var1610, r0=var3308, java.io.PrintWriter=var2763, r1=var359, org.javacc.parser.JavaCCGlobals=var1493, $i1=var2400, $i0=var200, $i3=var3729, $i2=var798, $i4=var1286, $r2=var3876, $r3=var1792, $i5=var7, <org.javacc.parser.JavaCCGlobals: int cline>=var2467, $i6=var2433, $i7=var911, <org.javacc.parser.JavaCCGlobals: int ccol>=var88, $r5=var769, $r4=var2854, $i8=var2266, $i9=var3337, $c13=var1917, $i18=var1387, $i19=var2623}
;seq <java.lang.String: int length()>;	<java.lang.String: char charAt(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: char charAt(int)>": 1}
;stmts r0 := @parameter0: org.javacc.parser.Token;	r1 := @parameter1: java.io.PrintWriter;	$i1 = <org.javacc.parser.JavaCCGlobals: int cline>;	$i0 = r0.<org.javacc.parser.Token: int beginLine>;	if $i1 >= $i0 goto $i3 = <org.javacc.parser.JavaCCGlobals: int ccol>;	$i3 = <org.javacc.parser.JavaCCGlobals: int ccol>;	$i2 = r0.<org.javacc.parser.Token: int beginColumn>;	if $i3 >= $i2 goto $i4 = r0.<org.javacc.parser.Token: int kind>;	$i4 = r0.<org.javacc.parser.Token: int kind>;	if $i4 == 94 goto $r2 = r0.<org.javacc.parser.Token: java.lang.String image>;	$r2 = r0.<org.javacc.parser.Token: java.lang.String image>;	$r3 = staticinvoke <org.javacc.parser.JavaCCGlobals: java.lang.String addUnicodeEscapes(java.lang.String)>($r2);	virtualinvoke r1.<java.io.PrintWriter: void print(java.lang.String)>($r3);	goto [?= $i5 = r0.<org.javacc.parser.Token: int endLine>];	$i5 = r0.<org.javacc.parser.Token: int endLine>;	<org.javacc.parser.JavaCCGlobals: int cline> = $i5;	$i6 = r0.<org.javacc.parser.Token: int endColumn>;	$i7 = $i6 + 1;	<org.javacc.parser.JavaCCGlobals: int ccol> = $i7;	$r5 = r0.<org.javacc.parser.Token: java.lang.String image>;	$r4 = r0.<org.javacc.parser.Token: java.lang.String image>;	$i8 = virtualinvoke $r4.<java.lang.String: int length()>();	$i9 = $i8 - 1;	$c13 = virtualinvoke $r5.<java.lang.String: char charAt(int)>($i9);	$i18 = (int) $c13;	if $i18 == 10 goto $i10 = <org.javacc.parser.JavaCCGlobals: int cline>;	$i19 = (int) $c13;	if $i19 != 13 goto return;	return
;block_num 8