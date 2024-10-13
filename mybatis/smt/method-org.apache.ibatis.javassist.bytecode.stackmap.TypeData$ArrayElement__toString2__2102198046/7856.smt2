(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2953 0)
(declare-sort var3405 0)
(declare-sort var3800 0)
(declare-sort var2631 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun array/-301377862 (var2953) var3800)
(declare-fun toString2/1616026601 (var2631 var3405) String)
(declare-fun cast-from-var3800-to-var2631 (var3800) var2631)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2953 var2953)
(declare-const null-var3405 var3405)
(declare-const var2308 var2953) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayElement 
(assert (not (= var2308 null-var2953)))
(declare-const var1691 var3405) ; Statement: r2 := @parameter0: java.util.Set 
(assert (not (= var1691 null-var3405)))
(define-const var95 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var95)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var95!1 String)
(assert (= var95!1 ""))
(assert true)
(define-const var3300 String (append/672562846 var95!1 "*")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*") 
(declare-const var95!2 String)
(assert (= var95!2 (str.++ var95!1 "*")))
(define-const var2009 var3800 (array/-301377862 var2308)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayElement: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar array> 
(assert true)
(define-const var1049 String (toString2/1616026601 (cast-from-var3800-to-var2631 var2009) var1691)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar: java.lang.String toString2(java.util.Set)>(r2) 
(assert true)
(define-const var1431 String (append/672562846 var3300 var1049)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3300!1 String)
(assert (= var3300!1 (str.++ var3300 var1049)))
(assert true)
(define-const var1893 String (toString/-2075883882 var1431)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), array/-301377862=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayElement], org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar), toString2/1616026601=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData, java.util.Set], java.lang.String), cast-from-var3800-to-var2631=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar], org.apache.ibatis.javassist.bytecode.stackmap.TypeData), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2953=org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayElement, var2308=r1, var3405=java.util.Set, var1691=r2, var95=$r0, var3300=$r5, var3800=org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar, var2009=$r3, var2631=org.apache.ibatis.javassist.bytecode.stackmap.TypeData, var1049=$r4, var1431=$r6, var1893=$r7}
; {org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayElement=var2953, r1=var2308, java.util.Set=var3405, r2=var1691, $r0=var95, $r5=var3300, org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar=var3800, $r3=var2009, org.apache.ibatis.javassist.bytecode.stackmap.TypeData=var2631, $r4=var1049, $r6=var1431, $r7=var1893}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.apache.ibatis.javassist.bytecode.stackmap.TypeData: java.lang.String toString2(java.util.Set)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayElement;	r2 := @parameter0: java.util.Set;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("*");	$r3 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayElement: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar array>;	$r4 = virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar: java.lang.String toString2(java.util.Set)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1