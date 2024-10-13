(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2628 0)
(declare-sort var1820 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1820_isNotEmpty/-74719548 (String) Bool)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var0 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var0 null-String)))
(declare-const var581 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var581 null-String)))
(define-const var3052 Bool (var1820_isNotEmpty/-74719548 var0)) ; Statement: z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r0) 
(define-const var2896 Bool (var1820_isNotEmpty/-74719548 var581)) ; Statement: z1 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r1) 
 ; Statement: if z0 == 0 goto (branch) 
(assert (not (= (ite var3052 1 0) 0))) ; Negate: Cond: z0 == 0  
 ; Statement: if z1 == 0 goto (branch) 
(assert (not (= (ite var2896 1 0) 0))) ; Negate: Cond: z1 == 0  
(define-const var2656 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2656)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2656!1 String)
(assert (= var2656!1 ""))
(assert true)
(define-const var536 String (append/672562846 var2656!1 "( ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("( ") 
(declare-const var2656!2 String)
(assert (= var2656!2 (str.++ var2656!1 "( ")))
(assert true)
(define-const var110 String (append/672562846 var536 var0)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var536!1 String)
(assert (= var536!1 (str.++ var536 var0)))
(assert true)
(define-const var3546 String (append/672562846 var110 " ) and ( ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) and ( ") 
(declare-const var110!1 String)
(assert (= var110!1 (str.++ var110 " ) and ( ")))
(assert true)
(define-const var1007 String (append/672562846 var3546 var581)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3546!1 String)
(assert (= var3546!1 (str.++ var3546 var581)))
(assert true)
;(assert (append/672562846 var1007 " )")) ; Statement: virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )") 
(declare-const var1007!1 String)
(assert (= var1007!1 (str.++ var1007 " )")))
(assert true)
(define-const var1520 String (toString/-2075883882 var2656!2)) ; Statement: $r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {var1820_isNotEmpty/-74719548=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var0=r0, var2628=null_type, var581=r1, var1820=org.hibernate.internal.util.StringHelper, var3052=z0, var2896=z1, var2656=$r2, var536=$r3, var110=$r4, var3546=$r5, var1007=$r6, var1520=$r7}
; {r0=var0, null_type=var2628, r1=var581, org.hibernate.internal.util.StringHelper=var1820, z0=var3052, z1=var2896, $r2=var2656, $r3=var536, $r4=var110, $r5=var3546, $r6=var1007, $r7=var1520}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r0);	z1 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isNotEmpty(java.lang.String)>(r1);	if z0 == 0 goto (branch);	if z1 == 0 goto (branch);	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("( ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ) and ( ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" )");	$r7 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 3