(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3724 0)
(declare-sort var1548 0)
(declare-sort var2163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getName/199949321 (var2163) String)
(declare-fun cast-from-var3724-to-var2163 (var3724) var2163)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun offset/1654065290 (var3724) Int)
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3724 var3724)
(declare-const null-var1548 var1548)
(declare-const var2582 var3724) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$UninitData 
(assert (not (= var2582 null-var3724)))
(declare-const var2455 var1548) ; Statement: r7 := @parameter0: java.util.Set 
(assert (not (= var2455 null-var1548)))
(define-const var2823 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2823)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2823!1 String)
(assert (= var2823!1 ""))
(assert true)
(define-const var2819 String (getName/199949321 (cast-from-var3724-to-var2163 var2582))) ; Statement: $r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$UninitData: java.lang.String getName()>() 
(assert true)
(define-const var2683 String (append/672562846 var2823!1 var2819)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2823!2 String)
(assert (= var2823!2 (str.++ var2823!1 var2819)))
(assert true)
(define-const var1275 String (append/672562846 var2683 ",")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",") 
(declare-const var2683!1 String)
(assert (= var2683!1 (str.++ var2683 ",")))
(define-const var3001 Int (offset/1654065290 var2582)) ; Statement: $i0 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$UninitData: int offset> 
(assert true)
(define-const var2700 String (append/-1001720160 var1275 var3001)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0) 
(declare-const var1275!1 String)
(assert (str.prefixof var1275 var1275!1))
(assert true)
(define-const var1478 String (toString/-2075883882 var2700)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getName/199949321=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName], java.lang.String), cast-from-var3724-to-var2163=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData$UninitData], org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), offset/1654065290=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData$UninitData], int), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3724=org.apache.ibatis.javassist.bytecode.stackmap.TypeData$UninitData, var2582=r1, var1548=java.util.Set, var2455=r7, var2823=$r0, var2163=org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName, var2819=$r2, var2683=$r3, var1275=$r4, var3001=$i0, var2700=$r5, var1478=$r6}
; {org.apache.ibatis.javassist.bytecode.stackmap.TypeData$UninitData=var3724, r1=var2582, java.util.Set=var1548, r7=var2455, $r0=var2823, org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ClassName=var2163, $r2=var2819, $r3=var2683, $r4=var1275, $i0=var3001, $r5=var2700, $r6=var1478}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$UninitData;	r7 := @parameter0: java.util.Set;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$UninitData: java.lang.String getName()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",");	$i0 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$UninitData: int offset>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i0);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1