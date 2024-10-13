(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1546 0)
(declare-sort var1822 0)
(declare-sort var1187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun whereString/500907501 (var1187 String (Array Int String) Int) String)
(declare-fun cast-from-var1546-to-var1187 (var1546) var1187)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun appendNullValues/-984265359 (var1546 (Array Int Bool) String Bool) void)
(declare-const null-var1546 var1546)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-__Array__Int__Bool__ (Array Int Bool))
(declare-const null-Int Int)
(declare-const var1113 var1546) ; Statement: r0 := @this: org.hibernate.loader.entity.NaturalIdEntityJoinWalker 
(assert (not (= var1113 null-var1546)))
(declare-const var678 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var678 null-String)))
(declare-const var655 (Array Int String)) ; Statement: r2 := @parameter1: java.lang.String[] 
(assert (not (= var655 null-__Array__Int__String__)))
(declare-const var1043 (Array Int Bool)) ; Statement: r5 := @parameter2: boolean[] 
(assert (not (= var1043 null-__Array__Int__Bool__)))
(declare-const var1081 Int) ; Statement: i0 := @parameter3: int 
(assert (not (= var1081 null-Int)))
(assert true)
(define-const var2866 String (whereString/500907501 (cast-from-var1546-to-var1187 var1113) var678 var655 var1081)) ; Statement: r3 = specialinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.StringBuilder whereString(java.lang.String,java.lang.String[],int)>(r1, r2, i0) 
(assert true)
(define-const var2534 String (toString/-2075883882 var2866)) ; Statement: r4 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2518 Bool (isEmpty/-1285796103 var2534)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>() 
(assert true)
;(assert (appendNullValues/-984265359 var1113 var1043 var2866 var2518)) ; Statement: specialinvoke r0.<org.hibernate.loader.entity.NaturalIdEntityJoinWalker: void appendNullValues(boolean[],java.lang.StringBuilder,boolean)>(r5, r3, $z0) 

(declare-const var1113!1 var1546)
(declare-const var1043!1 (Array Int Bool))
(declare-const var2866!1 String)
(declare-const var2518!1 Bool)
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {whereString/500907501=([org.hibernate.loader.JoinWalker, java.lang.String, java.lang.String[], int], java.lang.StringBuilder), cast-from-var1546-to-var1187=([org.hibernate.loader.entity.NaturalIdEntityJoinWalker], org.hibernate.loader.JoinWalker), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), appendNullValues/-984265359=([org.hibernate.loader.entity.NaturalIdEntityJoinWalker, boolean[], java.lang.StringBuilder, boolean], void)}
; {var1546=org.hibernate.loader.entity.NaturalIdEntityJoinWalker, var1113=r0, var678=r1, var1822=null_type, var655=r2, var1043=r5, var1081=i0, var1187=org.hibernate.loader.JoinWalker, var2866=r3, var2534=r4, var2518=$z0}
; {org.hibernate.loader.entity.NaturalIdEntityJoinWalker=var1546, r0=var1113, r1=var678, null_type=var1822, r2=var655, r5=var1043, i0=var1081, org.hibernate.loader.JoinWalker=var1187, r3=var2866, r4=var2534, $z0=var2518}
;seq <java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: org.hibernate.loader.entity.NaturalIdEntityJoinWalker;	r1 := @parameter0: java.lang.String;	r2 := @parameter1: java.lang.String[];	r5 := @parameter2: boolean[];	i0 := @parameter3: int;	r3 = specialinvoke r0.<org.hibernate.loader.entity.EntityJoinWalker: java.lang.StringBuilder whereString(java.lang.String,java.lang.String[],int)>(r1, r2, i0);	r4 = virtualinvoke r3.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>();	specialinvoke r0.<org.hibernate.loader.entity.NaturalIdEntityJoinWalker: void appendNullValues(boolean[],java.lang.StringBuilder,boolean)>(r5, r3, $z0);	return r3
;block_num 1