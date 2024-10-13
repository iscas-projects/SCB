(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1869 0)
(declare-sort var3749 0)
(declare-sort var1119 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun v/187381314 (var1869) var3749)
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-fun addElement/-1717065458 (var3749 var1119) void)
(declare-fun cast-from-String-to-var1119 (String) var1119)
(declare-const null-var1869 var1869)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const null-Int Int)
(declare-const var754 var1869) ; Statement: r0 := @this: org.apache.log4j.spi.VectorWriter 
(assert (not (= var754 null-var1869)))
(declare-const var3448 (Array Int Int)) ; Statement: r2 := @parameter0: char[] 
(assert (not (= var3448 null-__Array__Int__Int__)))
(declare-const var3280 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3280 null-Int)))
(declare-const var2216 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2216 null-Int)))
(define-const var745 var3749 (v/187381314 var754)) ; Statement: $r3 = r0.<org.apache.log4j.spi.VectorWriter: java.util.Vector v> 
(define-const var3203 String String-init) ; Statement: $r1 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var3203 var3448 var3280 var2216)) ; Statement: specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>(r2, i0, i1) 

(declare-const var3203!1 String)
(declare-const var3448!1 (Array Int Int))
(declare-const var3280!1 Int)
(declare-const var2216!1 Int)
(assert true)
;(assert (addElement/-1717065458 var745 (cast-from-String-to-var1119 var3203!1))) ; Statement: virtualinvoke $r3.<java.util.Vector: void addElement(java.lang.Object)>($r1) 

(declare-const var745!1 var3749)
(declare-const var3203!2 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {v/187381314=([org.apache.log4j.spi.VectorWriter], java.util.Vector), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void), addElement/-1717065458=([java.util.Vector, java.lang.Object], void), cast-from-String-to-var1119=([java.lang.String], java.lang.Object)}
; {var1869=org.apache.log4j.spi.VectorWriter, var754=r0, var3448=r2, var3280=i0, var2216=i1, var3749=java.util.Vector, var745=$r3, var3203=$r1, var1119=java.lang.Object}
; {org.apache.log4j.spi.VectorWriter=var1869, r0=var754, r2=var3448, i0=var3280, i1=var2216, java.util.Vector=var3749, $r3=var745, $r1=var3203, java.lang.Object=var1119}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r0 := @this: org.apache.log4j.spi.VectorWriter;	r2 := @parameter0: char[];	i0 := @parameter1: int;	i1 := @parameter2: int;	$r3 = r0.<org.apache.log4j.spi.VectorWriter: java.util.Vector v>;	$r1 = new java.lang.String;	specialinvoke $r1.<java.lang.String: void <init>(char[],int,int)>(r2, i0, i1);	virtualinvoke $r3.<java.util.Vector: void addElement(java.lang.Object)>($r1);	return
;block_num 1