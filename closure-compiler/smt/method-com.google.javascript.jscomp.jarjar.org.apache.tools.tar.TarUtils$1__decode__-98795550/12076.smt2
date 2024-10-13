(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2910 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun getLength-Arr-Int-1 ((Array Int Int)) Int)
(declare-fun <init>/543593434 (String Int) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2910 var2910)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3665 var2910) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarUtils$1 
(assert (not (= var3665 null-var2910)))
(declare-const var3690 (Array Int Int)) ; Statement: r1 := @parameter0: byte[] 
(assert (not (= var3690 null-__Array__Int__Int__)))
(define-const var1743 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(define-const var3716 Int (getLength-Arr-Int-1 var3690)) ; Statement: $i0 = lengthof r1 
(assert true)
;(assert (<init>/543593434 var1743 var3716)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>($i0) 

(declare-const var1743!1 String)
(declare-const var3716!1 Int)
(define-const var1843 Int (getLength-Arr-Int-1 var3690)) ; Statement: i1 = lengthof r1 
(define-const var1151 Int 0) ; Statement: i5 = 0 
(assert true) ; Non Conditional
 ; Statement: if i5 >= i1 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var1151 var1843)) ; Cond: i5 >= i1 
(assert true)
(define-const var91 String (toString/-2075883882 var1743!1)) ; Statement: $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), getLength-Arr-Int-1=([byte[]], int), <init>/543593434=([java.lang.StringBuilder, int], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2910=com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarUtils$1, var3665=r3, var3690=r1, var1743=$r4, var3716=$i0, var1843=i1, var1151=i5, var91=$r2}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarUtils$1=var2910, r3=var3665, r1=var3690, $r4=var1743, $i0=var3716, i1=var1843, i5=var1151, $r2=var91}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.tar.TarUtils$1;	r1 := @parameter0: byte[];	$r4 = new java.lang.StringBuilder;	$i0 = lengthof r1;	specialinvoke $r4.<java.lang.StringBuilder: void <init>(int)>($i0);	i1 = lengthof r1;	i5 = 0;	if i5 >= i1 goto $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3