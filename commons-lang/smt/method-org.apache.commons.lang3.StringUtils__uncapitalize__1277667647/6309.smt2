(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var415 0)
(declare-sort var3818 0)
(declare-sort var3124 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3818_length/1752045268 (String) Int)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun codePointAt/-1532245030 (String Int) Int)
(declare-fun var3124_toLowerCase/1002571586 (Int) Int)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun var3124_charCount/-1254868283 (Int) Int)
(declare-fun String-init () String)
(declare-fun <init>/1703972987 (String (Array Int Int) Int Int) void)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var994 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var994 null-String)))
(define-const var2824 Int (var3818_length/1752045268 (cast-from-String-to-String var994))) ; Statement: i0 = staticinvoke <org.apache.commons.lang3.StringUtils: int length(java.lang.CharSequence)>(r0) 
 ; Statement: if i0 != 0 goto i1 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(0) 
(assert (not (= var2824 0))) ; Cond: i0 != 0 
(assert true)
(define-const var104 Int (codePointAt/-1532245030 var994 0)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(0) 
(define-const var3458 Int (var3124_toLowerCase/1002571586 var104)) ; Statement: i2 = staticinvoke <java.lang.Character: int toLowerCase(int)>(i1) 
 ; Statement: if i1 != i2 goto r1 = newarray (int)[i0] 
(assert (not (= var104 var3458))) ; Cond: i1 != i2 
(define-const var639 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (int)[i0] 
(define-const var785 Int 1) ; Statement: i6 = 1 
(declare-const var639!1 (Array Int Int))
(assert (not (= var639!1 null-__Array__Int__Int__)))
(assert (= (select var639!1 0) var3458)) ; Statement: r1[0] = i2 
(define-const var1132 Int (var3124_charCount/-1254868283 var104)) ; Statement: i7 = staticinvoke <java.lang.Character: int charCount(int)>(i1) 
(assert true) ; Non Conditional
 ; Statement: if i7 >= i0 goto $r2 = new java.lang.String 
(assert (>= var1132 var2824)) ; Cond: i7 >= i0 
(define-const var745 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/1703972987 var745 var639!1 0 var785)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(int[],int,int)>(r1, 0, i6) 

(declare-const var745!1 String)
(declare-const var639!2 (Array Int Int))
(declare-const var1047 Int)
(declare-const var785!1 Int)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3818_length/1752045268=([java.lang.CharSequence], int), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), codePointAt/-1532245030=([java.lang.String, int], int), var3124_toLowerCase/1002571586=([int], int), arr-Int-init=([], int[]), var3124_charCount/-1254868283=([int], int), String-init=([], java.lang.String), <init>/1703972987=([java.lang.String, int[], int, int], void)}
; {var994=r0, var415=null_type, var3818=org.apache.commons.lang3.StringUtils, var2824=i0, var104=i1, var3124=java.lang.Character, var3458=i2, var639=r1, var785=i6, var1132=i7, var745=$r2, var1047=0}
; {r0=var994, null_type=var415, org.apache.commons.lang3.StringUtils=var3818, i0=var2824, i1=var104, java.lang.Character=var3124, i2=var3458, r1=var639, i6=var785, i7=var1132, $r2=var745, 0=var1047}
;seq <java.lang.String: int codePointAt(int)>;	<java.lang.String: void <init>(int[],int,int)>
;cnt {"<java.lang.String: int codePointAt(int)>": 1,"<java.lang.String: void <init>(int[],int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 = staticinvoke <org.apache.commons.lang3.StringUtils: int length(java.lang.CharSequence)>(r0);	if i0 != 0 goto i1 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(0);	i1 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(0);	i2 = staticinvoke <java.lang.Character: int toLowerCase(int)>(i1);	if i1 != i2 goto r1 = newarray (int)[i0];	r1 = newarray (int)[i0];	i6 = 1;	r1[0] = i2;	i7 = staticinvoke <java.lang.Character: int charCount(int)>(i1);	if i7 >= i0 goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(int[],int,int)>(r1, 0, i6);	return $r2
;block_num 5