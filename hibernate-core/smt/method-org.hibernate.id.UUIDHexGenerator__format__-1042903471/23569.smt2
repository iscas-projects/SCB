(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2146 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun Int_toHexString/1865784998 (Int) String)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun replace/-994417198 (String Int Int String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2146 var2146)
(declare-const null-Int Int)
(declare-const var289 var2146) ; Statement: r3 := @this: org.hibernate.id.UUIDHexGenerator 
(assert (not (= var289 null-var2146)))
(declare-const var2921 Int) ; Statement: s0 := @parameter0: short 
(assert (not (= var2921 null-Int)))
(define-const var256 Int (cast-from-Int-to-Int var2921)) ; Statement: $i3 = (int) s0 
(define-const var3011 String (Int_toHexString/1865784998 var256)) ; Statement: r0 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i3) 
(define-const var2968 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2968 "0000")) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>(java.lang.String)>("0000") 
(declare-const var2968!1 String)
(assert (= var2968!1 "0000"))
(assert true)
(define-const var1399 Int (length/-134980193 var3011)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var1274 Int (- 4 var1399)) ; Statement: $i2 = 4 - $i1 
(assert true)
;(assert (replace/-994417198 var2968!1 var1274 4 var3011)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>($i2, 4, r0) 

(declare-const var2968!2 String)
(declare-const var1274!1 Int)
(declare-const var1799 Int)
(declare-const var3011!1 String)
(assert true)
(define-const var1461 String (toString/-2075883882 var2968!2)) ; Statement: $r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([short], int), Int_toHexString/1865784998=([int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), length/-134980193=([java.lang.String], int), replace/-994417198=([java.lang.StringBuilder, int, int, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2146=org.hibernate.id.UUIDHexGenerator, var289=r3, var2921=s0, var256=$i3, var3011=r0, var2968=$r4, var1399=$i1, var1274=$i2, var1799=4, var1461=$r2}
; {org.hibernate.id.UUIDHexGenerator=var2146, r3=var289, s0=var2921, $i3=var256, r0=var3011, $r4=var2968, $i1=var1399, $i2=var1274, 4=var1799, $r2=var1461}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.id.UUIDHexGenerator;	s0 := @parameter0: short;	$i3 = (int) s0;	r0 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>($i3);	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>(java.lang.String)>("0000");	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = 4 - $i1;	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>($i2, 4, r0);	$r2 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1