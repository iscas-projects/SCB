(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2263 0)
(declare-sort var2938 0)
(declare-sort var3558 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2938_length/1752045268 (String) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun codePointAt/-1532245030 (String Int) Int)
(declare-fun var3558_toLowerCase/1002571586 (Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var3558_charCount/-1254868283 (Int) Int)
(declare-fun String-init () String)
(declare-fun <init>/1703972987 (String (Array Int Int) Int Int) void)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1149 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1149 null-String)))
(define-const var2455 Int (var2938_length/1752045268 (cast-from-String-to-String var1149))) ; Statement: i0 = staticinvoke <org.apache.commons.lang3.StringUtils: int length(java.lang.CharSequence)>(r0) 
 ; Statement: if i0 != 0 goto i1 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(0) 
(assert (not (= var2455 0))) ; Cond: i0 != 0 
(assert true)
(define-const var758 Int (codePointAt/-1532245030 var1149 0)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(0) 
(define-const var1047 Int (var3558_toLowerCase/1002571586 var758)) ; Statement: i2 = staticinvoke <java.lang.Character: int toLowerCase(int)>(i1) 
 ; Statement: if i1 != i2 goto r1 = newarray (int)[i0] 
(assert (not (= var758 var1047))) ; Cond: i1 != i2 
(define-const var1356 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (int)[i0] 
(define-const var2564 Int 1) ; Statement: i6 = 1 
(declare-const var1356!1 (Array Int Int))
(assert (not (= var1356!1 null-__Array__Int__Int__)))
(assert (= (select var1356!1 0) var1047)) ; Statement: r1[0] = i2 
(define-const var589 Int (var3558_charCount/-1254868283 var758)) ; Statement: i7 = staticinvoke <java.lang.Character: int charCount(int)>(i1) 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto $r2 = new java.lang.String 
(assert (not (>= var589 var2455))) ; Negate: Cond: i7 >= i0  
(assert true)
(define-const var2030 Int (codePointAt/-1532245030 var1149 var589)) ; Statement: i3 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(i7) 
(define-const var729 Int var2564) ; Statement: $i4 = i6 
(define-const var2564!1 Int (+ var2564 1)) ; Statement: i6 = i6 + 1 
(declare-const var1356!2 (Array Int Int))
(assert (not (= var1356!2 null-__Array__Int__Int__)))
(assert (= (select var1356!2 var729) var2030)) ; Statement: r1[$i4] = i3 
(define-const var2408 Int (var3558_charCount/-1254868283 var2030)) ; Statement: $i5 = staticinvoke <java.lang.Character: int charCount(int)>(i3) 
(define-const var589!1 Int (+ var589 var2408)) ; Statement: i7 = i7 + $i5 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto $r2 = new java.lang.String 
(assert (>= var589!1 var2455)) ; Cond: i7 >= i0 
(define-const var2258 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/1703972987 var2258 var1356!2 0 var2564!1)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(int[],int,int)>(r1, 0, i6) 

(declare-const var2258!1 String)
(declare-const var1356!3 (Array Int Int))
(declare-const var3046 Int)
(declare-const var2564!2 Int)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var2938_length/1752045268=([java.lang.CharSequence], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), codePointAt/-1532245030=([java.lang.String, int], int), var3558_toLowerCase/1002571586=([int], int), arr-Int-init=([], int[]), var3558_charCount/-1254868283=([int], int), String-init=([], java.lang.String), <init>/1703972987=([java.lang.String, int[], int, int], void)}
; {var1149=r0, var2263=null_type, var2938=org.apache.commons.lang3.StringUtils, var2455=i0, var758=i1, var3558=java.lang.Character, var1047=i2, var1356=r1, var2564=i6, var589=i7, var2030=i3, var729=$i4, var2408=$i5, var2258=$r2, var3046=0}
; {r0=var1149, null_type=var2263, org.apache.commons.lang3.StringUtils=var2938, i0=var2455, i1=var758, java.lang.Character=var3558, i2=var1047, r1=var1356, i6=var2564, i7=var589, i3=var2030, $i4=var729, $i5=var2408, $r2=var2258, 0=var3046}
;seq <java.lang.String: int codePointAt(int)>;	<java.lang.String: int codePointAt(int)>;	<java.lang.String: void <init>(int[],int,int)>
;cnt {"<java.lang.String: int codePointAt(int)>": 2,"<java.lang.String: void <init>(int[],int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = staticinvoke <org.apache.commons.lang3.StringUtils: int length(java.lang.CharSequence)>(r0);	if i0 != 0 goto i1 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(0);	i1 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(0);	i2 = staticinvoke <java.lang.Character: int toLowerCase(int)>(i1);	if i1 != i2 goto r1 = newarray (int)[i0];	r1 = newarray (int)[i0];	i6 = 1;	r1[0] = i2;	i7 = staticinvoke <java.lang.Character: int charCount(int)>(i1);	if i7 >= i0 goto $r2 = new java.lang.String;	i3 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(i7);	$i4 = i6;	i6 = i6 + 1;	r1[$i4] = i3;	$i5 = staticinvoke <java.lang.Character: int charCount(int)>(i3);	i7 = i7 + $i5;	goto [?= (branch)];	if i7 >= i0 goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(int[],int,int)>(r1, 0, i6);	return $r2
;block_num 7