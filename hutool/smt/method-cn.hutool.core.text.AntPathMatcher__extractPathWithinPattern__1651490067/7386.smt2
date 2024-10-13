(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2004 0)
(declare-sort var457 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun tokenizePath/778922633 (var2004 String) (Array Int String))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2004 var2004)
(declare-const null-String String)
(declare-const var2195 var2004) ; Statement: r0 := @this: cn.hutool.core.text.AntPathMatcher 
(assert (not (= var2195 null-var2004)))
(declare-const var1029 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1029 null-String)))
(declare-const var1521 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var1521 null-String)))
(assert true)
(define-const var1743 (Array Int String) (tokenizePath/778922633 var2195 var1029)) ; Statement: r2 = virtualinvoke r0.<cn.hutool.core.text.AntPathMatcher: java.lang.String[] tokenizePath(java.lang.String)>(r1) 
(assert true)
(define-const var1256 (Array Int String) (tokenizePath/778922633 var2195 var1521)) ; Statement: r4 = virtualinvoke r0.<cn.hutool.core.text.AntPathMatcher: java.lang.String[] tokenizePath(java.lang.String)>(r3) 
(define-const var3570 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3570)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3570!1 String)
(assert (= var3570!1 ""))
(define-const var143 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3924 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
(define-const var374 Int (getLength-Arr-String-1 var1743)) ; Statement: $i0 = lengthof r2 
 ; Statement: if i3 >= $i0 goto $r6 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var3924 var374)) ; Cond: i3 >= $i0 
(assert true)
(define-const var2028 String (toString/-2075883882 var3570!1)) ; Statement: $r6 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {tokenizePath/778922633=([cn.hutool.core.text.AntPathMatcher, java.lang.String], java.lang.String[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-String-1=([java.lang.String[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2004=cn.hutool.core.text.AntPathMatcher, var2195=r0, var1029=r1, var457=null_type, var1521=r3, var1743=r2, var1256=r4, var3570=$r11, var143=z1, var3924=i3, var374=$i0, var2028=$r6}
; {cn.hutool.core.text.AntPathMatcher=var2004, r0=var2195, r1=var1029, null_type=var457, r3=var1521, r2=var1743, r4=var1256, $r11=var3570, z1=var143, i3=var3924, $i0=var374, $r6=var2028}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: cn.hutool.core.text.AntPathMatcher;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r2 = virtualinvoke r0.<cn.hutool.core.text.AntPathMatcher: java.lang.String[] tokenizePath(java.lang.String)>(r1);	r4 = virtualinvoke r0.<cn.hutool.core.text.AntPathMatcher: java.lang.String[] tokenizePath(java.lang.String)>(r3);	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	z1 = 0;	i3 = 0;	$i0 = lengthof r2;	if i3 >= $i0 goto $r6 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3