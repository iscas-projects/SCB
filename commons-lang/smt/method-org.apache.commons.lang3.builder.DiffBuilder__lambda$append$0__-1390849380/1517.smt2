(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var110 0)
(declare-sort var1767 0)
(declare-sort var3015 0)
(declare-sort var3150 0)
(declare-sort var3326 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getFieldName/-673177798 (var3015) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLeft/1053147166 (var3326) var3150)
(declare-fun cast-from-var3015-to-var3326 (var3015) var3326)
(declare-fun getRight/-570391911 (var3326) var3150)
(declare-fun append/-2087050170 (var110 String var3150 var3150) var110)
(declare-const null-var110 var110)
(declare-const null-String String)
(declare-const null-var3015 var3015)
(declare-const var2051 var110) ; Statement: r0 := @this: org.apache.commons.lang3.builder.DiffBuilder 
(assert (not (= var2051 null-var110)))
(declare-const var2078 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2078 null-String)))
(declare-const var762 var3015) ; Statement: r4 := @parameter1: org.apache.commons.lang3.builder.Diff 
(assert (not (= var762 null-var3015)))
(define-const var143 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var143)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var143!1 String)
(assert (= var143!1 ""))
(assert true)
(define-const var1626 String (append/672562846 var143!1 var2078)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var143!2 String)
(assert (= var143!2 (str.++ var143!1 var2078)))
(assert true)
(define-const var3438 String (append/672562846 var1626 ".")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".") 
(declare-const var1626!1 String)
(assert (= var1626!1 (str.++ var1626 ".")))
(assert true)
(define-const var3075 String (getFieldName/-673177798 var762)) ; Statement: $r5 = virtualinvoke r4.<org.apache.commons.lang3.builder.Diff: java.lang.String getFieldName()>() 
(assert true)
(define-const var2854 String (append/672562846 var3438 var3075)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3438!1 String)
(assert (= var3438!1 (str.++ var3438 var3075)))
(assert true)
(define-const var979 String (toString/-2075883882 var2854)) ; Statement: $r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var130 var3150 (getLeft/1053147166 (cast-from-var3015-to-var3326 var762))) ; Statement: $r9 = virtualinvoke r4.<org.apache.commons.lang3.builder.Diff: java.lang.Object getLeft()>() 
(assert true)
(define-const var1220 var3150 (getRight/-570391911 (cast-from-var3015-to-var3326 var762))) ; Statement: $r8 = virtualinvoke r4.<org.apache.commons.lang3.builder.Diff: java.lang.Object getRight()>() 
(assert true)
;(assert (append/-2087050170 var2051 var979 var130 var1220)) ; Statement: virtualinvoke r0.<org.apache.commons.lang3.builder.DiffBuilder: org.apache.commons.lang3.builder.DiffBuilder append(java.lang.String,java.lang.Object,java.lang.Object)>($r10, $r9, $r8) 

(declare-const var2051!1 var110)
(declare-const var979!1 String)
(declare-const var130!1 var3150)
(declare-const var1220!1 var3150)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getFieldName/-673177798=([org.apache.commons.lang3.builder.Diff], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLeft/1053147166=([org.apache.commons.lang3.tuple.Pair], java.lang.Object), cast-from-var3015-to-var3326=([org.apache.commons.lang3.builder.Diff], org.apache.commons.lang3.tuple.Pair), getRight/-570391911=([org.apache.commons.lang3.tuple.Pair], java.lang.Object), append/-2087050170=([org.apache.commons.lang3.builder.DiffBuilder, java.lang.String, java.lang.Object, java.lang.Object], org.apache.commons.lang3.builder.DiffBuilder)}
; {var110=org.apache.commons.lang3.builder.DiffBuilder, var2051=r0, var2078=r2, var1767=null_type, var3015=org.apache.commons.lang3.builder.Diff, var762=r4, var143=$r1, var1626=$r3, var3438=$r6, var3075=$r5, var2854=$r7, var979=$r10, var3150=java.lang.Object, var3326=org.apache.commons.lang3.tuple.Pair, var130=$r9, var1220=$r8}
; {org.apache.commons.lang3.builder.DiffBuilder=var110, r0=var2051, r2=var2078, null_type=var1767, org.apache.commons.lang3.builder.Diff=var3015, r4=var762, $r1=var143, $r3=var1626, $r6=var3438, $r5=var3075, $r7=var2854, $r10=var979, java.lang.Object=var3150, org.apache.commons.lang3.tuple.Pair=var3326, $r9=var130, $r8=var1220}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.commons.lang3.builder.DiffBuilder;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: org.apache.commons.lang3.builder.Diff;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".");	$r5 = virtualinvoke r4.<org.apache.commons.lang3.builder.Diff: java.lang.String getFieldName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r10 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = virtualinvoke r4.<org.apache.commons.lang3.builder.Diff: java.lang.Object getLeft()>();	$r8 = virtualinvoke r4.<org.apache.commons.lang3.builder.Diff: java.lang.Object getRight()>();	virtualinvoke r0.<org.apache.commons.lang3.builder.DiffBuilder: org.apache.commons.lang3.builder.DiffBuilder append(java.lang.String,java.lang.Object,java.lang.Object)>($r10, $r9, $r8);	return
;block_num 1