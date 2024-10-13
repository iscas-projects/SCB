(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1725 0)
(declare-sort var77 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun outerJoinsAfterFrom/-766285534 (var1725) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-fun outerJoinsAfterWhere/-766285534 (var1725) String)
(declare-fun guesstimatedBufferSize/-766285534 (var1725) Int)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1725 var1725)
(declare-const null-String String)
(declare-const var1365 var1725) ; Statement: r0 := @this: org.hibernate.sql.Select 
(assert (not (= var1365 null-var1725)))
(declare-const var3858 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3858 null-String)))
(declare-const var2488 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var2488 null-String)))
(declare-const var1365!1 var1725)
(assert (not (= var1365!1 null-var1725)))
(assert (= (outerJoinsAfterFrom/-766285534 var1365!1) var3858)) ; Statement: r0.<org.hibernate.sql.Select: java.lang.String outerJoinsAfterFrom> = r1 
(assert true)
(define-const var96 String (trim/-847153721 var2488)) ; Statement: r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>() 
(assert true)
(define-const var2217 Bool (startsWith/-1785782452 var96 "and")) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>("and") 
 ; Statement: if $z0 == 0 goto r0.<org.hibernate.sql.Select: java.lang.String outerJoinsAfterWhere> = r3 
(assert (= (ite var2217 1 0) 0)) ; Cond: $z0 == 0 
(declare-const var1365!2 var1725)
(assert (not (= var1365!2 null-var1725)))
(assert (= (outerJoinsAfterWhere/-766285534 var1365!2) var96)) ; Statement: r0.<org.hibernate.sql.Select: java.lang.String outerJoinsAfterWhere> = r3 
(define-const var3120 Int (guesstimatedBufferSize/-766285534 var1365!2)) ; Statement: $i0 = r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> 
(assert true)
(define-const var202 Int (length/-134980193 var3858)) ; Statement: $i2 = virtualinvoke r1.<java.lang.String: int length()>() 
(assert true)
(define-const var475 Int (length/-134980193 var2488)) ; Statement: $i1 = virtualinvoke r2.<java.lang.String: int length()>() 
(define-const var2987 Int (+ var202 var475)) ; Statement: $i3 = $i2 + $i1 
(define-const var2322 Int (+ var3120 var2987)) ; Statement: $i4 = $i0 + $i3 
(declare-const var1365!3 var1725)
(assert (not (= var1365!3 null-var1725)))
(assert (= (guesstimatedBufferSize/-766285534 var1365!3) var2322)) ; Statement: r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> = $i4 
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {outerJoinsAfterFrom/-766285534=([org.hibernate.sql.Select], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean), outerJoinsAfterWhere/-766285534=([org.hibernate.sql.Select], java.lang.String), guesstimatedBufferSize/-766285534=([org.hibernate.sql.Select], int), length/-134980193=([java.lang.String], int)}
; {var1725=org.hibernate.sql.Select, var1365=r0, var3858=r1, var77=null_type, var2488=r2, var96=r3, var2217=$z0, var3120=$i0, var202=$i2, var475=$i1, var2987=$i3, var2322=$i4}
; {org.hibernate.sql.Select=var1725, r0=var1365, r1=var3858, null_type=var77, r2=var2488, r3=var96, $z0=var2217, $i0=var3120, $i2=var202, $i1=var475, $i3=var2987, $i4=var2322}
;seq <java.lang.String: java.lang.String trim()>;	<java.lang.String: boolean startsWith(java.lang.String)>;	<java.lang.String: int length()>;	<java.lang.String: int length()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1,"<java.lang.String: int length()>": 2}
;stmts r0 := @this: org.hibernate.sql.Select;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String;	r0.<org.hibernate.sql.Select: java.lang.String outerJoinsAfterFrom> = r1;	r3 = virtualinvoke r2.<java.lang.String: java.lang.String trim()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean startsWith(java.lang.String)>("and");	if $z0 == 0 goto r0.<org.hibernate.sql.Select: java.lang.String outerJoinsAfterWhere> = r3;	r0.<org.hibernate.sql.Select: java.lang.String outerJoinsAfterWhere> = r3;	$i0 = r0.<org.hibernate.sql.Select: int guesstimatedBufferSize>;	$i2 = virtualinvoke r1.<java.lang.String: int length()>();	$i1 = virtualinvoke r2.<java.lang.String: int length()>();	$i3 = $i2 + $i1;	$i4 = $i0 + $i3;	r0.<org.hibernate.sql.Select: int guesstimatedBufferSize> = $i4;	return r0
;block_num 2