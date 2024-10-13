(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1416 0)
(declare-sort var1307 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1416 var1416)
(declare-const null-String String)
(declare-const var2451 var1416) ; Statement: r9 := @this: org.hibernate.query.criteria.internal.expression.BinaryArithmeticOperation$Operation$6 
(assert (not (= var2451 null-var1416)))
(declare-const var139 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var139 null-String)))
(declare-const var2227 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2227 null-String)))
(define-const var1697 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1697)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1697!1 String)
(assert (= var1697!1 ""))
(assert true)
(define-const var374 String (append/672562846 var1697!1 "mod(")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("mod(") 
(declare-const var1697!2 String)
(assert (= var1697!2 (str.++ var1697!1 "mod(")))
(assert true)
(define-const var312 String (append/672562846 var374 var139)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var374!1 String)
(assert (= var374!1 (str.++ var374 var139)))
(assert true)
(define-const var216 String (append/672562846 var312 ",")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var312!1 String)
(assert (= var312!1 (str.++ var312 ",")))
(assert true)
(define-const var2061 String (append/672562846 var216 var2227)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var216!1 String)
(assert (= var216!1 (str.++ var216 var2227)))
(assert true)
(define-const var3162 String (append/672562846 var2061 ")")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2061!1 String)
(assert (= var2061!1 (str.++ var2061 ")")))
(assert true)
(define-const var1385 String (toString/-2075883882 var3162)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1416=org.hibernate.query.criteria.internal.expression.BinaryArithmeticOperation$Operation$6, var2451=r9, var139=r1, var1307=null_type, var2227=r4, var1697=$r0, var374=$r2, var312=$r3, var216=$r5, var2061=$r6, var3162=$r7, var1385=$r8}
; {org.hibernate.query.criteria.internal.expression.BinaryArithmeticOperation$Operation$6=var1416, r9=var2451, r1=var139, null_type=var1307, r4=var2227, $r0=var1697, $r2=var374, $r3=var312, $r5=var216, $r6=var2061, $r7=var3162, $r8=var1385}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @this: org.hibernate.query.criteria.internal.expression.BinaryArithmeticOperation$Operation$6;	r1 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("mod(");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1