(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3808 0)
(declare-sort var1725 0)
(declare-sort var548 0)
(declare-sort var1207 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/-522406933 (var1725) String)
(declare-fun cast-from-var3808-to-var1725 (var3808) var1725)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var548-init () var548)
(declare-fun <init>/451842749 (var548) void)
(declare-fun toString2/1616026601 (var3808 var1207) String)
(declare-fun cast-from-var548-to-var1207 (var548) var1207)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3808 var3808)
(declare-const var737 var3808) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData 
(assert (not (= var737 null-var3808)))
(define-const var1596 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1596)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1596!1 String)
(assert (= var1596!1 ""))
(assert true)
(define-const var1713 String (toString/-522406933 (cast-from-var3808-to-var1725 var737))) ; Statement: $r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var3771 String (append/672562846 var1596!1 var1713)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1596!2 String)
(assert (= var1596!2 (str.++ var1596!1 var1713)))
(assert true)
(define-const var3628 String (append/672562846 var3771 "(")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(") 
(declare-const var3771!1 String)
(assert (= var3771!1 (str.++ var3771 "(")))
(define-const var129 var548 var548-init) ; Statement: $r4 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var129)) ; Statement: specialinvoke $r4.<java.util.HashSet: void <init>()>() 

(declare-const var129!1 var548)
(assert true)
(define-const var2018 String (toString2/1616026601 var737 (cast-from-var548-to-var1207 var129!1))) ; Statement: $r5 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData: java.lang.String toString2(java.util.Set)>($r4) 
(assert true)
(define-const var1074 String (append/672562846 var3628 var2018)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3628!1 String)
(assert (= var3628!1 (str.++ var3628 var2018)))
(assert true)
(define-const var944 String (append/672562846 var1074 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1074!1 String)
(assert (= var1074!1 (str.++ var1074 ")")))
(assert true)
(define-const var3739 String (toString/-2075883882 var944)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3808-to-var1725=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData], java.lang.Object), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var548-init=([], java.util.HashSet), <init>/451842749=([java.util.HashSet], void), toString2/1616026601=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData, java.util.Set], java.lang.String), cast-from-var548-to-var1207=([java.util.HashSet], java.util.Set), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3808=org.apache.ibatis.javassist.bytecode.stackmap.TypeData, var737=r1, var1596=$r0, var1725=java.lang.Object, var1713=$r2, var3771=$r3, var3628=$r6, var548=java.util.HashSet, var129=$r4, var1207=java.util.Set, var2018=$r5, var1074=$r7, var944=$r8, var3739=$r9}
; {org.apache.ibatis.javassist.bytecode.stackmap.TypeData=var3808, r1=var737, $r0=var1596, java.lang.Object=var1725, $r2=var1713, $r3=var3771, $r6=var3628, java.util.HashSet=var548, $r4=var129, java.util.Set=var1207, $r5=var2018, $r7=var1074, $r8=var944, $r9=var3739}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.apache.ibatis.javassist.bytecode.stackmap.TypeData: java.lang.String toString2(java.util.Set)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<java.lang.Object: java.lang.String toString()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("(");	$r4 = new java.util.HashSet;	specialinvoke $r4.<java.util.HashSet: void <init>()>();	$r5 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData: java.lang.String toString2(java.util.Set)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 1