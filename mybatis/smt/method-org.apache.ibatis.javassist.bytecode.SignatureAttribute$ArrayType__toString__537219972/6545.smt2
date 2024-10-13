(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var292 0)
(declare-sort var3799 0)
(declare-sort var3335 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun componentType/2128108516 (var292) var3799)
(declare-fun toString/-522406933 (var3335) String)
(declare-fun cast-from-var3799-to-var3335 (var3799) var3335)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-fun dim/2128108516 (var292) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var292 var292)
(declare-const var1188 var292) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType 
(assert (not (= var1188 null-var292)))
(define-const var62 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var227 var3799 (componentType/2128108516 var1188)) ; Statement: $r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type componentType> 
(assert true)
(define-const var1774 String (toString/-522406933 (cast-from-var3799-to-var3335 var227))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1061048412 var62 var1774)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3) 
(declare-const var62!1 String)
(assert (= var62!1 var1774))
(define-const var68 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
(define-const var3850 Int (dim/2128108516 var1188)) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType: int dim> 
 ; Statement: if i1 >= $i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var68 var3850)) ; Cond: i1 >= $i0 
(assert true)
(define-const var3068 String (toString/-2075883882 var62!1)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), componentType/2128108516=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType], org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3799-to-var3335=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type], java.lang.Object), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void), dim/2128108516=([org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var292=org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType, var1188=r1, var62=$r0, var3799=org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type, var227=$r2, var3335=java.lang.Object, var1774=$r3, var68=i1, var3850=$i0, var3068=$r4}
; {org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType=var292, r1=var1188, $r0=var62, org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type=var3799, $r2=var227, java.lang.Object=var3335, $r3=var1774, i1=var68, $i0=var3850, $r4=var3068}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType: org.apache.ibatis.javassist.bytecode.SignatureAttribute$Type componentType>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	specialinvoke $r0.<java.lang.StringBuilder: void <init>(java.lang.String)>($r3);	i1 = 0;	$i0 = r1.<org.apache.ibatis.javassist.bytecode.SignatureAttribute$ArrayType: int dim>;	if i1 >= $i0 goto $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3