(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var685 0)
(declare-sort var1048 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var685 var685)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1428 var685) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc 
(assert (not (= var1428 null-var685)))
(declare-const var2423 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2423 null-String)))
(declare-const var3647 Int) ; Statement: c2 := @parameter1: char 
(assert (not (= var3647 null-Int)))
(define-const var468 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
(define-const var1158 Int (length/-134980193 var2423)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1057 Int (* var1158 2)) ; Statement: $i1 = $i0 * 2 
(assert true)
;(assert (<init>/543593434 var468 var1057)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var468!1 String)
(declare-const var1057!1 Int)
(assert true)
;(assert (append/-1166366385 var468!1 var3647)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2) 
(declare-const var468!2 String)
(assert (str.prefixof var468!1 var468!2))
(define-const var3665 Bool (ite (= 1 0) true false)) ; Statement: z0 = 0 
(assert true)
(define-const var1029 (Array Int Int) (toCharArray/415275702 var2423)) ; Statement: r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(define-const var1231 Int (getLength-Arr-Int-1 var1029)) ; Statement: i3 = lengthof r2 
(define-const var834 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i3 goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2) 
(assert (>= var834 var1231)) ; Cond: i5 >= i3 
(assert true)
;(assert (append/-1166366385 var468!2 var3647)) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2) 
(declare-const var468!3 String)
(assert (str.prefixof var468!2 var468!3))
(assert true)
(define-const var1677 String (toString/-2075883882 var468!3)) ; Statement: $r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var685=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc, var1428=r5, var2423=r1, var1048=null_type, var3647=c2, var468=$r6, var1158=$i0, var1057=$i1, var3665=z0, var1029=r2, var1231=i3, var834=i5, var1677=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc=var685, r5=var1428, r1=var2423, null_type=var1048, c2=var3647, $r6=var468, $i0=var1158, $i1=var1057, z0=var3665, r2=var1029, i3=var1231, i5=var834, $r3=var1677}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Javadoc;	r1 := @parameter0: java.lang.String;	c2 := @parameter1: char;	$r6 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 * 2;	specialinvoke $r6.<java.lang.StringBuilder: void <init>(int)>($i1);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2);	z0 = 0;	r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	i3 = lengthof r2;	i5 = 0;	if i5 >= i3 goto virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(c2);	$r3 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3