(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1701 0)
(declare-sort var1417 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(declare-fun toCharArray/415275702 (String) (Array Int Int))
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1701 var1701)
(declare-const null-String String)
(declare-const var3803 var1701) ; Statement: r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream 
(assert (not (= var3803 null-var1701)))
(declare-const var3313 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3313 null-String)))
(define-const var1370 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var867 Int (length/-134980193 var3313)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
;(assert (<init>/543593434 var1370 var867)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var1370!1 String)
(declare-const var867!1 Int)
(assert true)
(define-const var3655 (Array Int Int) (toCharArray/415275702 var3313)) ; Statement: r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>() 
(define-const var2693 Int (getLength-Arr-Int-1 var3655)) ; Statement: i1 = lengthof r2 
(define-const var2886 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i1 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2886 var2693)) ; Cond: i5 >= i1 
(assert true)
(define-const var545 String (toString/-2075883882 var1370!1)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), toCharArray/415275702=([java.lang.String], char[]), getLength-Arr-Int-1=([char[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1701=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream, var3803=r4, var3313=r1, var1417=null_type, var1370=$r0, var867=$i0, var3655=r2, var2693=i1, var2886=i5, var545=$r3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream=var1701, r4=var3803, r1=var3313, null_type=var1417, $r0=var1370, $i0=var867, r2=var3655, i1=var2693, i5=var2886, $r3=var545}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.String: char[] toCharArray()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.String: char[] toCharArray()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarOutputStream;	r1 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i0);	r2 = virtualinvoke r1.<java.lang.String: char[] toCharArray()>();	i1 = lengthof r2;	i5 = 0;	if i5 >= i1 goto $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3