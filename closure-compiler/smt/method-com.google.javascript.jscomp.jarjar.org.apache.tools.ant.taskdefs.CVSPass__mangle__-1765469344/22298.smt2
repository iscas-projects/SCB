(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3308 0)
(declare-sort var3093 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3308 var3308)
(declare-const null-String String)
(declare-const var2820 var3308) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.CVSPass 
(assert (not (= var2820 null-var3308)))
(declare-const var1879 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1879 null-String)))
(define-const var2053 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2053)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2053!1 String)
(assert (= var2053!1 ""))
(assert true)
(define-const var2629 (Array Int Int) (toCharArray/415275702 var1879)) ; Statement: r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(define-const var714 Int (getLength-Arr-Int-1 var2629)) ; Statement: i0 = lengthof r2 
(define-const var2709 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2709 var714)) ; Cond: i3 >= i0 
(assert true)
(define-const var689 String (toString/-2075883882 var2053!1)) ; Statement: $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3308=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.CVSPass, var2820=r4, var1879=r1, var3093=null_type, var2053=$r6, var2629=r2, var714=i0, var2709=i3, var689=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.CVSPass=var3308, r4=var2820, r1=var1879, null_type=var3093, $r6=var2053, r2=var2629, i0=var714, i3=var2709, $r3=var689}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.CVSPass;	r1 := @parameter0: java.lang.String;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	i0 = lengthof r2;	i3 = 0;	if i3 >= i0 goto $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3