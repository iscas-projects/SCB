(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var138 0)
(declare-sort var3491 0)
(declare-sort var2797 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3491_isEmpty/1595667738 (String) Bool)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun codePointAt/-1532245030 (String Int) Int)
(declare-fun var2797_isUpperCase/-1392178035 (Int) Bool)
(declare-fun var2797_toLowerCase/1002571586 (Int) Int)
(declare-fun var2797_charCount/-1254868283 (Int) Int)
(declare-fun String-init () String)
(declare-fun <init>/1703972987 (String (Array Int Int) Int Int) void)
(declare-const null-String String)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3724 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3724 null-String)))
(define-const var1749 Bool (var3491_isEmpty/1595667738 (cast-from-String-to-String var3724))) ; Statement: $z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0) 
 ; Statement: if $z0 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (= (ite var1749 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var3892 Int (length/-134980193 var3724)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var3384 (Array Int Int) arr-Int-init) ; Statement: r1 = newarray (int)[i0] 
(define-const var16 Int 0) ; Statement: i2 = 0 
(define-const var188 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r2 = new java.lang.String 
(assert (not (>= var188 var3892))) ; Negate: Cond: i3 >= i0  
(assert true)
(define-const var3377 Int (codePointAt/-1532245030 var3724 var188)) ; Statement: i1 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(i3) 
(define-const var2736 Bool (var2797_isUpperCase/-1392178035 var3377)) ; Statement: $z1 = staticinvoke <java.lang.Character: boolean isUpperCase(int)>(i1) 
 ; Statement: if $z1 != 0 goto i4 = staticinvoke <java.lang.Character: int toLowerCase(int)>(i1) 
(assert (not (= (ite var2736 1 0) 0))) ; Cond: $z1 != 0 
(define-const var1925 Int (var2797_toLowerCase/1002571586 var3377)) ; Statement: i4 = staticinvoke <java.lang.Character: int toLowerCase(int)>(i1) 
 ; Statement: goto [?= $i5 = i2] 
(assert true) ; Non Conditional
(define-const var498 Int var16) ; Statement: $i5 = i2 
(define-const var16!1 Int (+ var16 1)) ; Statement: i2 = i2 + 1 
(declare-const var3384!1 (Array Int Int))
(assert (not (= var3384!1 null-__Array__Int__Int__)))
(assert (= (select var3384!1 var498) var1925)) ; Statement: r1[$i5] = i4 
(define-const var3483 Int (var2797_charCount/-1254868283 var1925)) ; Statement: $i6 = staticinvoke <java.lang.Character: int charCount(int)>(i4) 
(define-const var188!1 Int (+ var188 var3483)) ; Statement: i3 = i3 + $i6 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r2 = new java.lang.String 
(assert (>= var188!1 var3892)) ; Cond: i3 >= i0 
(define-const var1797 String String-init) ; Statement: $r2 = new java.lang.String 
(assert true)
;(assert (<init>/1703972987 var1797 var3384!1 0 var16!1)) ; Statement: specialinvoke $r2.<java.lang.String: void <init>(int[],int,int)>(r1, 0, i2) 

(declare-const var1797!1 String)
(declare-const var3384!2 (Array Int Int))
(declare-const var2281 Int)
(declare-const var16!2 Int)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {var3491_isEmpty/1595667738=([java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), length/-134980193=([java.lang.String], int), arr-Int-init=([], int[]), codePointAt/-1532245030=([java.lang.String, int], int), var2797_isUpperCase/-1392178035=([int], boolean), var2797_toLowerCase/1002571586=([int], int), var2797_charCount/-1254868283=([int], int), String-init=([], java.lang.String), <init>/1703972987=([java.lang.String, int[], int, int], void)}
; {var3724=r0, var138=null_type, var3491=org.apache.commons.lang3.StringUtils, var1749=$z0, var3892=i0, var3384=r1, var16=i2, var188=i3, var3377=i1, var2797=java.lang.Character, var2736=$z1, var1925=i4, var498=$i5, var3483=$i6, var1797=$r2, var2281=0}
; {r0=var3724, null_type=var138, org.apache.commons.lang3.StringUtils=var3491, $z0=var1749, i0=var3892, r1=var3384, i2=var16, i3=var188, i1=var3377, java.lang.Character=var2797, $z1=var2736, i4=var1925, $i5=var498, $i6=var3483, $r2=var1797, 0=var2281}
;seq <java.lang.String: int length()>;	<java.lang.String: int codePointAt(int)>;	<java.lang.String: void <init>(int[],int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: int codePointAt(int)>": 1,"<java.lang.String: void <init>(int[],int,int)>": 1}
;stmts r0 := @parameter0: java.lang.String;	$z0 = staticinvoke <org.apache.commons.lang3.StringUtils: boolean isEmpty(java.lang.CharSequence)>(r0);	if $z0 == 0 goto i0 = virtualinvoke r0.<java.lang.String: int length()>();	i0 = virtualinvoke r0.<java.lang.String: int length()>();	r1 = newarray (int)[i0];	i2 = 0;	i3 = 0;	if i3 >= i0 goto $r2 = new java.lang.String;	i1 = virtualinvoke r0.<java.lang.String: int codePointAt(int)>(i3);	$z1 = staticinvoke <java.lang.Character: boolean isUpperCase(int)>(i1);	if $z1 != 0 goto i4 = staticinvoke <java.lang.Character: int toLowerCase(int)>(i1);	i4 = staticinvoke <java.lang.Character: int toLowerCase(int)>(i1);	goto [?= $i5 = i2];	$i5 = i2;	i2 = i2 + 1;	r1[$i5] = i4;	$i6 = staticinvoke <java.lang.Character: int charCount(int)>(i4);	i3 = i3 + $i6;	goto [?= (branch)];	if i3 >= i0 goto $r2 = new java.lang.String;	$r2 = new java.lang.String;	specialinvoke $r2.<java.lang.String: void <init>(int[],int,int)>(r1, 0, i2);	return $r2
;block_num 8