(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var815 0)
(declare-sort var3150 0)
(declare-sort var1584 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-var1584-init () (Array Int var1584))
(declare-fun cast-from-String-to-var1584 (String) var1584)
(declare-fun String_format/1339386452 (String (Array Int var1584)) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var815 var815)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const null-__Array__Int__var1584__ (Array Int var1584))
(declare-const var1883 var815) ; Statement: r11 := @this: org.hibernate.dialect.MySQL8Dialect 
(assert (not (= var1883 null-var815)))
(declare-const var2783 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2783 null-String)))
(declare-const var3014 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3014 null-Int)))
(define-const var1590 (Array Int var1584) arr-var1584-init) ; Statement: $r0 = newarray (java.lang.Object)[1] 
(declare-const var1590!1 (Array Int var1584))
(assert (not (= var1590!1 null-__Array__Int__var1584__)))
(assert (= (select var1590!1 0) (cast-from-String-to-var1584 var2783))) ; Statement: $r0[0] = r1 
(define-const var2905 String (String_format/1339386452 " for share of %s " var1590!1)) ; Statement: r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" for share of %s ", $r0) 
 ; Statement: if i0 != 0 goto $i2 = (int) -2 
(assert (not (not (= var3014 0)))) ; Negate: Cond: i0 != 0  
(define-const var360 String String-init) ; Statement: $r12 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var360)) ; Statement: specialinvoke $r12.<java.lang.StringBuilder: void <init>()>() 
(declare-const var360!1 String)
(assert (= var360!1 ""))
(assert true)
(define-const var1502 String (append/672562846 var360!1 var2905)) ; Statement: $r8 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var360!2 String)
(assert (= var360!2 (str.++ var360!1 var2905)))
(assert true)
(define-const var2437 String (append/672562846 var1502 " nowait ")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ") 
(declare-const var1502!1 String)
(assert (= var1502!1 (str.++ var1502 " nowait ")))
(assert true)
(define-const var2868 String (toString/-2075883882 var2437)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-var1584-init=([], java.lang.Object[]), cast-from-String-to-var1584=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var815=org.hibernate.dialect.MySQL8Dialect, var1883=r11, var2783=r1, var3150=null_type, var3014=i0, var1584=java.lang.Object, var1590=$r0, var2905=r2, var360=$r12, var1502=$r8, var2437=$r9, var2868=$r10}
; {org.hibernate.dialect.MySQL8Dialect=var815, r11=var1883, r1=var2783, null_type=var3150, i0=var3014, java.lang.Object=var1584, $r0=var1590, r2=var2905, $r12=var360, $r8=var1502, $r9=var2437, $r10=var2868}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r11 := @this: org.hibernate.dialect.MySQL8Dialect;	r1 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r0 = newarray (java.lang.Object)[1];	$r0[0] = r1;	r2 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>(" for share of %s ", $r0);	if i0 != 0 goto $i2 = (int) -2;	$r12 = new java.lang.StringBuilder;	specialinvoke $r12.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" nowait ");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 2