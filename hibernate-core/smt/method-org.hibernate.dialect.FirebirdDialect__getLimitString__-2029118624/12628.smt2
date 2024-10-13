(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1271 0)
(declare-sort var586 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun <init>/543593434 (String Int) void)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun insert/1196171004 (String Int String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1271 var1271)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var2610 var1271) ; Statement: r5 := @this: org.hibernate.dialect.FirebirdDialect 
(assert (not (= var2610 null-var1271)))
(declare-const var2656 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2656 null-String)))
(declare-const var3440 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var3440 null-Bool)))
(define-const var3928 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
(define-const var1548 Int (length/-134980193 var2656)) ; Statement: $i0 = virtualinvoke r1.<java.lang.String: int length()>() 
(define-const var1723 Int (+ var1548 20)) ; Statement: $i1 = $i0 + 20 
(assert true)
;(assert (<init>/543593434 var3928 var1723)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var3928!1 String)
(declare-const var1723!1 Int)
(assert true)
(define-const var823 String (append/672562846 var3928!1 var2656)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3928!2 String)
(assert (= var3928!2 (str.++ var3928!1 var2656)))
 ; Statement: if z0 == 0 goto $r6 = " first ?" 
(assert (not (= (ite var3440 1 0) 0))) ; Negate: Cond: z0 == 0  
(define-const var3982 String " first ? skip ?") ; Statement: $r6 = " first ? skip ?" 
 ; Statement: goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(6, $r6)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1195 String (insert/1196171004 var823 6 var3982)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(6, $r6) 
(assert true)
(define-const var359 String (toString/-2075883882 var1195)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), length/-134980193=([java.lang.String], int), <init>/543593434=([java.lang.StringBuilder, int], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), insert/1196171004=([java.lang.StringBuilder, int, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1271=org.hibernate.dialect.FirebirdDialect, var2610=r5, var2656=r1, var586=null_type, var3440=z0, var3928=$r0, var1548=$i0, var1723=$i1, var823=$r2, var3982=$r6, var1195=$r3, var359=$r4}
; {org.hibernate.dialect.FirebirdDialect=var1271, r5=var2610, r1=var2656, null_type=var586, z0=var3440, $r0=var3928, $i0=var1548, $i1=var1723, $r2=var823, $r6=var3982, $r3=var1195, $r4=var359}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: org.hibernate.dialect.FirebirdDialect;	r1 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	$r0 = new java.lang.StringBuilder;	$i0 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = $i0 + 20;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	if z0 == 0 goto $r6 = " first ?";	$r6 = " first ? skip ?";	goto [?= $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(6, $r6)];	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder insert(int,java.lang.String)>(6, $r6);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3