(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1646 0)
(declare-sort var3834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun substring/-975425934 (String Int) String)
(declare-const null-var1646 var1646)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2625 var1646) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter 
(assert (not (= var2625 null-var1646)))
(declare-const var459 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var459 null-String)))
(declare-const var3008 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3008 null-Bool)))
(define-const var2725 String String-init) ; Statement: $r7 = new java.lang.StringBuilder 
(assert true)
(define-const var1728 Int (length/-134980193 var459)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/543593434 var2725 var1728)) ; Statement: specialinvoke $r7.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var2725!1 String)
(declare-const var1728!1 Int)
(assert true)
(define-const var215 (Array Int Int) (toCharArray/415275702 var459)) ; Statement: r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(define-const var3260 Int (getLength-Arr-Int-1 var215)) ; Statement: i1 = lengthof r2 
(define-const var1694 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= i1 goto $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String substring(int)>(0) 
(assert (>= var1694 var3260)) ; Cond: i4 >= i1 
(assert true)
(define-const var1736 String (substring/-975425934 var2725!1 0)) ; Statement: $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String substring(int)>(0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), substring/-975425934=([java.lang.StringBuilder, int], java.lang.String)}
; {var1646=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter, var2625=r6, var459=r1, var3834=null_type, var3008=z0, var2725=$r7, var1728=$i0, var215=r2, var3260=i1, var1694=i4, var1736=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter=var1646, r6=var2625, r1=var459, null_type=var3834, z0=var3008, $r7=var2725, $i0=var1728, r2=var215, i1=var3260, i4=var1694, $r3=var1736}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String substring(int)>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.DOMElementWriter;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r7 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	specialinvoke $r7.<java.lang.StringBuilder: void <init>(int)>($i0);	r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	i1 = lengthof r2;	i4 = 0;	if i4 >= i1 goto $r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String substring(int)>(0);	$r3 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String substring(int)>(0);	return $r3
;block_num 3