(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2472 0)
(declare-sort var1558 0)
(declare-sort var1368 0)
(declare-sort var1568 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun element/648781884 (var2472) var1368)
(declare-fun toString2/1616026601 (var1568 var1558) String)
(declare-fun cast-from-var1368-to-var1568 (var1368) var1568)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2472 var2472)
(declare-const null-var1558 var1558)
(declare-const var2934 var2472) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayType 
(assert (not (= var2934 null-var2472)))
(declare-const var2099 var1558) ; Statement: r2 := @parameter0: java.util.Set 
(assert (not (= var2099 null-var1558)))
(define-const var3697 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3697)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3697!1 String)
(assert (= var3697!1 ""))
(assert true)
(define-const var779 String (append/672562846 var3697!1 "[")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var3697!2 String)
(assert (= var3697!2 (str.++ var3697!1 "[")))
(define-const var1045 var1368 (element/648781884 var2934)) ; Statement: $r3 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayType: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar element> 
(assert true)
(define-const var502 String (toString2/1616026601 (cast-from-var1368-to-var1568 var1045) var2099)) ; Statement: $r4 = virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar: java.lang.String toString2(java.util.Set)>(r2) 
(assert true)
(define-const var1503 String (append/672562846 var779 var502)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var779!1 String)
(assert (= var779!1 (str.++ var779 var502)))
(assert true)
(define-const var858 String (toString/-2075883882 var1503)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), element/648781884=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayType], org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar), toString2/1616026601=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData, java.util.Set], java.lang.String), cast-from-var1368-to-var1568=([org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar], org.apache.ibatis.javassist.bytecode.stackmap.TypeData), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2472=org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayType, var2934=r1, var1558=java.util.Set, var2099=r2, var3697=$r0, var779=$r5, var1368=org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar, var1045=$r3, var1568=org.apache.ibatis.javassist.bytecode.stackmap.TypeData, var502=$r4, var1503=$r6, var858=$r7}
; {org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayType=var2472, r1=var2934, java.util.Set=var1558, r2=var2099, $r0=var3697, $r5=var779, org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar=var1368, $r3=var1045, org.apache.ibatis.javassist.bytecode.stackmap.TypeData=var1568, $r4=var502, $r6=var1503, $r7=var858}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.apache.ibatis.javassist.bytecode.stackmap.TypeData: java.lang.String toString2(java.util.Set)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayType;	r2 := @parameter0: java.util.Set;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	$r3 = r1.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$ArrayType: org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar element>;	$r4 = virtualinvoke $r3.<org.apache.ibatis.javassist.bytecode.stackmap.TypeData$AbsTypeVar: java.lang.String toString2(java.util.Set)>(r2);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1