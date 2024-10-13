(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var408 0)
(declare-sort var1267 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getAnnotations/-1837603104 (var408) (Array Int (Array Int var1267)))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getLength-Arr-var1267-2 ((Array Int (Array Int var1267))) Int)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-const null-var408 var408)
(declare-const var3930 var408) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.ParameterAnnotationsAttribute 
(assert (not (= var3930 null-var408)))
(assert true)
(define-const var1517 (Array Int (Array Int var1267)) (getAnnotations/-1837603104 var3930)) ; Statement: r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ParameterAnnotationsAttribute: org.apache.ibatis.javassist.bytecode.'annotation'.Annotation[][] getAnnotations()>() 
(define-const var3453 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3453)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3453!1 String)
(assert (= var3453!1 ""))
(define-const var2848 Int (getLength-Arr-var1267-2 var1517)) ; Statement: i0 = lengthof r1 
(define-const var2233 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2233 var2848)) ; Cond: i2 >= i0 
(assert true)
(define-const var739 String (toString/-2075883882 var3453!1)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var571 String (replaceAll/1692887130 var739 " (?=,)|, $" "")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(" (?=,)|, $", "") 
(assert (= (replaceAll/1692887130 var739 " (?=,)|, $" "") (str.replace_re_all var739 (re.union (re.++ (str.to_re " ") (str.to_re "?=,")) (str.to_re ", $")) "")))
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getAnnotations/-1837603104=([org.apache.ibatis.javassist.bytecode.ParameterAnnotationsAttribute], org.apache.ibatis.javassist.bytecode.annotation.Annotation[][]), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getLength-Arr-var1267-2=([org.apache.ibatis.javassist.bytecode.annotation.Annotation[][]], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String)}
; {var408=org.apache.ibatis.javassist.bytecode.ParameterAnnotationsAttribute, var3930=r0, var1267=org.apache.ibatis.javassist.bytecode.annotation.Annotation, var1517=r1, var3453=$r2, var2848=i0, var2233=i2, var739=$r3, var571=$r4}
; {org.apache.ibatis.javassist.bytecode.ParameterAnnotationsAttribute=var408, r0=var3930, org.apache.ibatis.javassist.bytecode.annotation.Annotation=var1267, r1=var1517, $r2=var3453, i0=var2848, i2=var2233, $r3=var739, $r4=var571}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.ParameterAnnotationsAttribute;	r1 = virtualinvoke r0.<org.apache.ibatis.javassist.bytecode.ParameterAnnotationsAttribute: org.apache.ibatis.javassist.bytecode.'annotation'.Annotation[][] getAnnotations()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	i0 = lengthof r1;	i2 = 0;	if i2 >= i0 goto $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r4 = virtualinvoke $r3.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>(" (?=,)|, $", "");	return $r4
;block_num 3