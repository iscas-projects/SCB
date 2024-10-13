(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3186 0)
(declare-sort var1100 0)
(declare-sort var3682 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun selectValueList/-1791029020 (var3186) var1100)
(declare-fun size/-1863229846 (var1100) Int)
(declare-fun <init>/543593434 (String Int) void)
(declare-fun var3682-init () var3682)
(declare-fun <init>/451842749 (var3682) void)
(declare-fun iterator/529268990 (var1100) Iterator)
(declare-fun Iterator_hasNext/-1669924200 (Iterator) Bool)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3186 var3186)
(declare-const var2644 var3186) ; Statement: r1 := @this: org.hibernate.sql.SelectValues 
(assert (not (= var2644 null-var3186)))
(define-const var1106 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(define-const var719 var1100 (selectValueList/-1791029020 var2644)) ; Statement: $r2 = r1.<org.hibernate.sql.SelectValues: java.util.ArrayList selectValueList> 
(assert true)
(define-const var3787 Int (size/-1863229846 var719)) ; Statement: $i0 = virtualinvoke $r2.<java.util.ArrayList: int size()>() 
(define-const var1351 Int (* var3787 10)) ; Statement: $i1 = $i0 * 10 
(assert true)
;(assert (<init>/543593434 var1106 var1351)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1) 

(declare-const var1106!1 String)
(declare-const var1351!1 Int)
(define-const var2701 var3682 var3682-init) ; Statement: $r3 = new java.util.HashSet 
(assert true)
;(assert (<init>/451842749 var2701)) ; Statement: specialinvoke $r3.<java.util.HashSet: void <init>()>() 

(declare-const var2701!1 var3682)
(define-const var1215 Bool (ite (= 1 1) true false)) ; Statement: z1 = 1 
(define-const var3581 var1100 (selectValueList/-1791029020 var2644)) ; Statement: $r4 = r1.<org.hibernate.sql.SelectValues: java.util.ArrayList selectValueList> 
(assert true)
(define-const var1612 Iterator (iterator/529268990 var3581)) ; Statement: r5 = virtualinvoke $r4.<java.util.ArrayList: java.util.Iterator iterator()>() 
(assert true) ; Non Conditional
(define-const var864 Bool (Iterator_hasNext/-1669924200 var1612)) ; Statement: $z2 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>() 
 ; Statement: if $z2 == 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (= (ite var864 1 0) 0)) ; Cond: $z2 == 0 
(assert true)
(define-const var2579 String (toString/-2075883882 var1106!1)) ; Statement: $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), selectValueList/-1791029020=([org.hibernate.sql.SelectValues], java.util.ArrayList), size/-1863229846=([java.util.ArrayList], int), <init>/543593434=([java.lang.StringBuilder, int], void), var3682-init=([], java.util.HashSet), <init>/451842749=([java.util.HashSet], void), iterator/529268990=([java.util.ArrayList], java.util.Iterator), Iterator_hasNext/-1669924200=([java.util.Iterator], boolean), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3186=org.hibernate.sql.SelectValues, var2644=r1, var1106=$r0, var1100=java.util.ArrayList, var719=$r2, var3787=$i0, var1351=$i1, var3682=java.util.HashSet, var2701=$r3, var1215=z1, var3581=$r4, var1612=r5, var864=$z2, var2579=$r6}
; {org.hibernate.sql.SelectValues=var3186, r1=var2644, $r0=var1106, java.util.ArrayList=var1100, $r2=var719, $i0=var3787, $i1=var1351, java.util.HashSet=var3682, $r3=var2701, z1=var1215, $r4=var3581, r5=var1612, $z2=var864, $r6=var2579}
;seq <java.lang.StringBuilder: void <init>(int)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.sql.SelectValues;	$r0 = new java.lang.StringBuilder;	$r2 = r1.<org.hibernate.sql.SelectValues: java.util.ArrayList selectValueList>;	$i0 = virtualinvoke $r2.<java.util.ArrayList: int size()>();	$i1 = $i0 * 10;	specialinvoke $r0.<java.lang.StringBuilder: void <init>(int)>($i1);	$r3 = new java.util.HashSet;	specialinvoke $r3.<java.util.HashSet: void <init>()>();	z1 = 1;	$r4 = r1.<org.hibernate.sql.SelectValues: java.util.ArrayList selectValueList>;	r5 = virtualinvoke $r4.<java.util.ArrayList: java.util.Iterator iterator()>();	$z2 = interfaceinvoke r5.<java.util.Iterator: boolean hasNext()>();	if $z2 == 0 goto $r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 3