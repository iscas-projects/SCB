(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3828 0)
(declare-sort var2381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAnnotations/-1017453953 (var3828) (Array Int var2381))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-var2381-1 ((Array Int var2381)) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3828 var3828)
(declare-const var1602 var3828) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.AnnotationsAttribute 
(assert (not (= var1602 null-var3828)))
(assert true)
(define-const var2634 (Array Int var2381) (getAnnotations/-1017453953 var1602)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.AnnotationsAttribute: org.apache.ibatis.javassist.bytecode.'annotation'.Annotation[] getAnnotations()>() 
(define-const var3568 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3568)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3568!1 String)
(assert (= var3568!1 ""))
(define-const var2386 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(define-const var2297 Int (getLength-Arr-var2381-1 var2634)) ; Statement: $i3 = lengthof r1 
 ; Statement: if i2 >= $i3 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2386 var2297)) ; Cond: i2 >= $i3 
(assert true)
(define-const var51 String (toString/-2075883882 var3568!1)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotations/-1017453953=([org.apache.ibatis.javassist.bytecode.AnnotationsAttribute], org.apache.ibatis.javassist.bytecode.annotation.Annotation[]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-var2381-1=([org.apache.ibatis.javassist.bytecode.annotation.Annotation[]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3828=org.apache.ibatis.javassist.bytecode.AnnotationsAttribute, var1602=r0, var2381=org.apache.ibatis.javassist.bytecode.annotation.Annotation, var2634=r1, var3568=$r2, var2386=i2, var2297=$i3, var51=$r3}
; {org.apache.ibatis.javassist.bytecode.AnnotationsAttribute=var3828, r0=var1602, org.apache.ibatis.javassist.bytecode.annotation.Annotation=var2381, r1=var2634, $r2=var3568, i2=var2386, $i3=var2297, $r3=var51}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.AnnotationsAttribute;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.AnnotationsAttribute: org.apache.ibatis.javassist.bytecode.'annotation'.Annotation[] getAnnotations()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	i2 = 0;	$i3 = lengthof r1;	if i2 >= $i3 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 3