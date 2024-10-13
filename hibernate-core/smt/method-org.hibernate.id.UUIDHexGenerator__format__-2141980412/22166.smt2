(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2922 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun Int_toHexString/1865784998 (Int) String)
(declare-fun String-init () String)
(define-fun <init>/-1061048412 ((s String)) String s)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun replace/-994417198 (String Int Int String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2922 var2922)
(declare-const null-Int Int)
(declare-const var2362 var2922) ; Statement: r3 := @this: org.hibernate.id.UUIDHexGenerator 
(assert (not (= var2362 null-var2922)))
(declare-const var1421 Int) ; Statement: i0 := @parameter0: int 
(assert (not (= var1421 null-Int)))
(define-const var2794 String (Int_toHexString/1865784998 var1421)) ; Statement: r0 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0) 
(define-const var2146 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/-1061048412 var2146 "00000000")) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>("00000000") 
(declare-const var2146!1 String)
(assert (= var2146!1 "00000000"))
(assert true)
(define-const var2954 Int (length/-134980193 var2794)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var310 Int (- 8 var2954)) ; Statement: $i2 = 8 - $i1 
(assert true)
;(assert (replace/-994417198 var2146!1 var310 8 var2794)) ; Statement: virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>($i2, 8, r0) 

(declare-const var2146!2 String)
(declare-const var310!1 Int)
(declare-const var1746 Int)
(declare-const var2794!1 String)
(assert true)
(define-const var2371 String (toString/-2075883882 var2146!2)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {Int_toHexString/1865784998=([int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), length/-134980193=([java.lang.String], int), replace/-994417198=([java.lang.StringBuilder, int, int, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2922=org.hibernate.id.UUIDHexGenerator, var2362=r3, var1421=i0, var2794=r0, var2146=$r1, var2954=$i1, var310=$i2, var1746=8, var2371=$r2}
; {org.hibernate.id.UUIDHexGenerator=var2922, r3=var2362, i0=var1421, r0=var2794, $r1=var2146, $i1=var2954, $i2=var310, 8=var1746, $r2=var2371}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: org.hibernate.id.UUIDHexGenerator;	i0 := @parameter0: int;	r0 = staticinvoke <java.lang.Integer: java.lang.String toHexString(int)>(i0);	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>(java.lang.String)>("00000000");	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	$i2 = 8 - $i1;	virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder replace(int,int,java.lang.String)>($i2, 8, r0);	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 1